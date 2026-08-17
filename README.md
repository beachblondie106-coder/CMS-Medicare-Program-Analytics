# Medicare Part B Utilization & Cost Analytics

## Project Overview

This project analyzes national Medicare Part B physician and supplier expenditures and services from 2022 through 2024. The goal was to identify the specialties and cost patterns driving Medicare spending, distinguish high-volume services from high-cost services, and translate the findings into practical monitoring and cost-management recommendations.

The project combines healthcare business framing, public-data preparation, descriptive analysis, specialty segmentation, regression analysis, and an executive Tableau dashboard. All figures are derived from aggregated public CMS data; none are presented as confidential or internal Medicare, payer, provider, or patient information.

## Business Problem

Healthcare leaders need to understand whether spending growth is driven by service volume, unit cost, reimbursement patterns, or specialty mix. Without that distinction, organizations may apply the same cost-control strategy to specialties with very different operating and clinical profiles.

This analysis addresses four business questions:

1. How did national Medicare Part B utilization and payments change from 2022 to 2024?
2. Which specialties account for the most spending and service volume?
3. How do high-volume specialties differ from high-intensity specialties?
4. Which monitoring and management strategies are most appropriate for each specialty segment?

The intended stakeholders include Medicare leadership, finance, clinical operations, care management, network management, data analytics, and compliance teams.

## Data Source and Scope

| Component | Description |
| --- | --- |
| Source | CMS Part B Expenditures and Services by Specialty public-use files |
| Period | Calendar years 2022–2024 |
| Population | Original Medicare Part B physician and supplier activity |
| Geography | National summary |
| Grain | One record per provider specialty and year |
| Source extract | 391 specialty-year rows across more than 100 specialties |
| Privacy | Aggregated public-use data with no beneficiary-level records or protected health information |

CMS source files:

- [CY 2022 Expenditures and Services by Specialty](https://www.cms.gov/files/document/cy-2022-expenditures-and-services-specialty.xlsx)
- [CY 2023 Expenditures and Services by Specialty](https://www.cms.gov/files/document/cy-2023-expenditures-and-services-specialty.xlsx)
- [CY 2024 Expenditures and Services by Specialty](https://www.cms.gov/files/document/cy-2024-expenditures-and-services-specialty.xlsx)

## Data Preparation and KPI Design

The three annual files were stacked into a single specialty-year analytical table. Specialty names were standardized, numeric fields were validated, and aggregate or source rows were excluded from specialty-level analysis.

Six core measures were used throughout the analysis:

| Measure | Definition |
| --- | --- |
| Allowed Services | Number of covered services delivered |
| Allowed Charges | Medicare-approved amount across allowed services |
| Medicare Payment | Amount paid by Medicare |
| Charge per Service | Allowed Charges / Allowed Services |
| Payment per Service | Medicare Payment / Allowed Services |
| Payment Rate | Medicare Payment / Allowed Charges |

This model preserves the specialty-year grain and supports consistent comparisons across utilization, price, payment, and time.

## Analytical Approach

### Descriptive analysis

- Compared annual allowed charges, Medicare payments, service volume, payment per service, and payment rates.
- Calculated year-over-year and two-year growth.
- Ranked specialties by total payment, service volume, and payment intensity.
- Compared high-volume specialties with high-cost-per-service specialties.

### Specialty segmentation

K-means clustering was applied to specialty-level volume, payment, payment per service, and payment rate. The analysis identified three practical specialty archetypes:

1. **High-Volume Commodity:** laboratories, pharmacy, imaging, and supplies with low unit cost and very high throughput.
2. **Balanced High-Spend:** internal medicine, family practice, nurse practitioners, and ophthalmology with moderate unit cost at large scale.
3. **Specialized High-Intensity:** cardiac, thoracic, and neurosurgery and selected oncology services with lower volume but high payment per service.

These clusters describe provider specialties—not individual Medicare beneficiaries.

### Regression analysis

A log-log regression evaluated the relationship between total Medicare payment, service volume, and allowed charge per service. The fitted relationship was:

`ln(Payment) = 1.00 × ln(Services) + 0.99 × ln(Charge per Service)`

The CY 2022 model produced an R² of 0.9995, a 70/30 holdout R² of approximately 1.00, and a median payment error of 1.9%. Independent annual refits produced a similar relationship for 2023 and 2024.

This is best interpreted as an explanatory or structural validation model—not a future-payment forecast. Total payment is mathematically related to service volume, unit price, and the relatively stable payment rate, so an extremely high R² is expected.

### Tableau dashboard

The interactive dashboard was designed for leadership exploration and includes:

- Four KPI tiles for payment, services, payment per service, and payment rate.
- A three-year Medicare payment trend.
- A dynamic specialty ranking.
- A cost-intensity scatterplot comparing volume with payment per service.
- Year and specialty filters.
- Click-to-filter dashboard actions for specialty drill-down.

## Key Findings

### Findings directly supported by the CMS data

- Medicare Part B payments reached **$131.7 billion in 2024**, compared with approximately $115.9 billion in 2022—a **13.6% two-year increase**.
- Annual payment growth slowed from **8.4% in 2023** to **4.8% in 2024**, indicating continued spending growth at a decelerating rate.
- Medicare paid **$131.7 billion** against **$171.4 billion** in allowed charges in 2024.
- The national payment rate remained close to 77% throughout the period: **77.3% in 2022, 77.1% in 2023, and 76.8% in 2024**.
- Service volume peaked at **6.14 billion services in 2023** and declined to approximately **5.96 billion in 2024**.
- Payment per service rebounded to **$22.08 in 2024**, meaning that the latest annual spending increase was associated more with higher unit cost than with higher service volume.
- In the complete CY 2022 specialty extract, the top 10 specialties represented approximately **$54.8 billion** in Medicare payments.
- Internal Medicine ranked first in CY 2022 with approximately **$7.29 billion** in payments and **175.2 million services**.
- Payment per service varied by roughly **160 times** across selected specialties, from approximately **$1.71 for Pharmacy** to **$276.37 for Thoracic Surgery**.

### Model-supported findings

- Specialty spending separates into three recognizable patterns: high-volume commodity, balanced high-spend, and specialized high-intensity.
- Service volume is the dominant standardized predictor of total specialty payment, while unit price provides a secondary contribution.
- The regression relationship remains stable across annual refits because payment is structurally driven by volume, unit price, and a payment rate that changes very little over time.

### Business interpretation

The data shows that high spending does not have a single cause. Some specialties reach large payment totals through enormous service volume, while others generate high cost through expensive procedures, drugs, or supplies. These interpretations support management hypotheses and prioritization, but they do not establish clinical appropriateness, waste, fraud, or causation.

## Executive Recommendations

1. **Prioritize the balanced high-spend core.** Monitor primary care, nurse practitioner, and ophthalmology activity because small changes in these large-scale specialties can materially affect total spending.
2. **Track drug-driven charge growth separately.** Review oncology and ophthalmology trends alongside injectable and biologic pricing instead of treating all specialty growth as service-volume growth.
3. **Match interventions to specialty structure.** Use pricing and volume controls for commodity services while reserving clinical-appropriateness review for high-intensity surgical and procedural specialties.
4. **Monitor payment per service over time.** Specialty-level cost-intensity tracking can reveal unit-cost growth before it materially changes total payments.
5. **Create abnormal-growth alerts.** Flag specialties with unusual year-over-year growth in payment per service, allowed charges, or total payments for further investigation.

## Current Analysis vs. Future Data-Science Scope

The original project design also considered beneficiary-level classification, cost forecasting, and member segmentation. Those objectives require more detailed and appropriately authorized data than the aggregated CMS specialty files used here.

| Completed in this project | Future work requiring beneficiary-level data |
| --- | --- |
| National utilization and spending trends | Classify beneficiaries at risk of hospitalization or high future cost |
| Specialty-level cost and volume comparisons | Predict individual annual claims expenditures |
| Specialty-level K-means segmentation | Segment beneficiaries using utilization, chronic conditions, and demographics |
| Structural payment regression | Develop clinically useful prospective risk models |
| Executive Tableau dashboard | Integrate care-management workflows and intervention outcomes |

Any future member-level analysis would require appropriate data-use authorization, privacy review, access controls, encryption, and compliance with applicable HIPAA requirements.

## Limitations

- The files contain aggregated national summaries, not beneficiary-level claims.
- The analysis covers Original Medicare Part B physician and supplier activity and excludes Medicare Advantage.
- The available extract does not support state, facility, beneficiary, diagnosis, or detailed service-category analysis.
- Specialty rankings use CY 2022 because it was the year with complete specialty-level detail in the project extract; national totals and trend measures span 2022–2024.
- Specialty labels and available categories vary slightly across annual source files.
- Figures are rounded for presentation; source files should be used for exact values.
- K-means clusters are descriptive and depend on feature selection, scaling, and the selected number of clusters.
- The regression explains a contemporaneous accounting relationship and should not be interpreted as evidence of future forecasting accuracy or causal effects.
- Public aggregate data cannot determine whether utilization was necessary, efficient, or clinically appropriate.

## Project Value

This project demonstrates the ability to:

- Translate a healthcare cost problem into measurable analytical questions.
- Prepare and combine multi-year public healthcare datasets.
- Design reusable utilization and payment KPIs.
- Apply descriptive analysis, clustering, and regression responsibly.
- Explain model results and limitations without overstating conclusions.
- Build an executive-ready Tableau dashboard and translate findings into actionable recommendations.

## Technologies and Methods

**Data:** CMS public-use Medicare Part B files  
**Methods:** Data cleaning, multi-year union, KPI development, trend analysis, specialty ranking, K-means clustering, log-log regression, holdout validation  
**Visualization:** Tableau, executive presentation, cost-intensity scatterplots, KPI reporting

