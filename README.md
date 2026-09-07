# CMS Medicare Program Analytics Portfolio

An interactive healthcare analytics portfolio examining Medicare enrollment, beneficiary demographics, claims and utilization, quality and Star Ratings, provider-network participation, and Part B utilization and cost.

## Explore the Project

| Resource | Description |
| --- | --- |
| **[Interactive Tableau Public workbook](https://public.tableau.com/views/CMS_Medicare_Analytics_Publication/EnrollmentBeneficiaries)** | Five dashboards with filters, parameters, tooltips, and dashboard actions |

## Dashboard Gallery

Select a dashboard preview or its link to open the interactive view in Tableau Public.

### 1. Enrollment & Beneficiaries

[![Enrollment and Beneficiaries dashboard preview](https://public.tableau.com/static/images/CM/CMS_Medicare_Analytics_Publication/EnrollmentBeneficiaries/1_rss.png)](https://public.tableau.com/views/CMS_Medicare_Analytics_Publication/EnrollmentBeneficiaries?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

**[Open Dashboard 1: Enrollment & Beneficiaries](https://public.tableau.com/views/CMS_Medicare_Analytics_Publication/EnrollmentBeneficiaries?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)**

### 2. Claims & Utilization

[![Claims and Utilization dashboard preview](https://public.tableau.com/static/images/CM/CMS_Medicare_Analytics_Publication/ClaimsUtilization/1_rss.png)](https://public.tableau.com/views/CMS_Medicare_Analytics_Publication/ClaimsUtilization?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

**[Open Dashboard 2: Claims & Utilization](https://public.tableau.com/views/CMS_Medicare_Analytics_Publication/ClaimsUtilization?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)**

### 3. Medicare Part B Utilization & Cost

[![Medicare Part B Utilization and Cost dashboard preview](https://public.tableau.com/static/images/CM/CMS_Medicare_Analytics_Publication/MedicarePartBUtilizationCost/1_rss.png)](https://public.tableau.com/views/CMS_Medicare_Analytics_Publication/MedicarePartBUtilizationCost?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

**[Open Dashboard 3: Medicare Part B Utilization & Cost](https://public.tableau.com/views/CMS_Medicare_Analytics_Publication/MedicarePartBUtilizationCost?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)**

### 4. Quality Measures & Star Ratings

[![Quality Measures and Star Ratings dashboard preview](https://public.tableau.com/static/images/CM/CMS_Medicare_Analytics_Publication/QualityMeasuresStarRatings/1_rss.png)](https://public.tableau.com/views/CMS_Medicare_Analytics_Publication/QualityMeasuresStarRatings?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

**[Open Dashboard 4: Quality Measures & Star Ratings](https://public.tableau.com/views/CMS_Medicare_Analytics_Publication/QualityMeasuresStarRatings?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)**

### 5. Medicare Provider Network

[![Medicare Provider Network dashboard preview](https://public.tableau.com/static/images/CM/CMS_Medicare_Analytics_Publication/MedicareProviderNetwork/1_rss.png)](https://public.tableau.com/views/CMS_Medicare_Analytics_Publication/MedicareProviderNetwork?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

**[Open Dashboard 5: Medicare Provider Network](https://public.tableau.com/views/CMS_Medicare_Analytics_Publication/MedicareProviderNetwork?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)**

> **Portfolio disclosure:** This independent portfolio project was created from public or analyst-prepared healthcare data for educational and professional demonstration purposes. It was not commissioned, sponsored, reviewed, or endorsed by CMS. It does not contain beneficiary-level records, protected health information, confidential payer data, or internal CMS systems data.

## Portfolio Overview

The portfolio brings five related Medicare perspectives into one Tableau workbook:

| Dashboard | Primary question | Analytical focus |
| --- | --- | --- |
| **Enrollment & Beneficiaries** | How is Medicare enrollment distributed and changing? | Enrollment trends, beneficiary demographics, geography, and age distribution |
| **Claims & Utilization** | What patterns appear in claim volume, service use, and payments? | Claim counts, utilization, payment amounts, service categories, and denial indicators |
| **Part B Utilization & Cost** | Which specialties drive national Part B services and payments? | Multi-year spending, service volume, payment intensity, specialty ranking, segmentation, and trend analysis |
| **Quality Measures & Star Ratings** | How do Medicare contracts perform across quality measures and rating years? | Overall ratings, measure stars, domain performance, and contract comparison |
| **Medicare Provider Network** | Where and how are Medicare providers enrolled? | Organization and individual-practitioner enrollment, provider types, entity types, and geography |

## Business Problem

Medicare information is distributed across datasets with different reporting periods, geographic levels, and analytical grains. Decision-makers need a concise way to explore enrollment, utilization, quality, provider participation, and cost without treating unlike measures as if they came from one operational system.

This portfolio addresses five business questions:

1. How are enrollment and beneficiary characteristics changing over time and across locations?
2. Where do claim volume, utilization, payments, and denial patterns warrant further review?
3. Which Part B specialties account for the greatest service volume, spending, and payment intensity?
4. How do contract-level quality results vary across measures, domains, and rating years?
5. Where are organizations and individual practitioners enrolled, and which provider types are most prevalent?

The intended audience includes healthcare analytics, Medicare operations, finance, network management, quality, compliance, and business-intelligence teams.

## Data Sources and Scope

The workbook uses separate analytical tables because each subject area has a different grain. The dashboards are connected as a portfolio, but the underlying measures are not physically combined into one claims or beneficiary-level table.

| Subject area | Official source and release used | Primary analytical grain |
| --- | --- | --- |
| Enrollment and beneficiaries | [Medicare Monthly Enrollment](https://data.cms.gov/summary-statistics-on-beneficiary-enrollment/medicare-enrollment/medicare-monthly-enrollment), May 2026 | Reporting period × geography × beneficiary category |
| Claims and utilization | [Medicare Geographic Variation – by National, State & County](https://data.cms.gov/summary-statistics-on-use-and-payments/medicare-geographic-comparisons/medicare-geographic-variation-by-national-state-county), data years 2014–2024 | Year × geography × service or utilization measure |
| Part B utilization and cost | [CY 2022](https://www.cms.gov/files/document/cy-2022-expenditures-and-services-specialty.xlsx), [CY 2023](https://www.cms.gov/files/document/cy-2023-expenditures-and-services-specialty.xlsx), and [CY 2024](https://www.cms.gov/files/document/cy-2024-expenditures-and-services-specialty.xlsx) Expenditures and Services by Specialty | Calendar year × provider specialty |
| Quality and Star Ratings | [Part C and D Performance Data](https://www.cms.gov/medicare/health-drug-plans/part-c-d-performance-data), 2024–2026 Star Ratings files | Rating year × contract × domain or measure |
| Provider network | [Medicare Fee-for-Service Public Provider Enrollment](https://data.cms.gov/provider-characteristics/medicare-provider-supplier-enrollment/medicare-fee-for-service-public-provider-enrollment), Q3 2026 | Enrollment record × provider or organization |

Each dashboard should be interpreted using its own reporting period, population, and grain. Values from different dashboards are complementary but are not automatically comparable.

## Dashboard Details

### 1. Enrollment & Beneficiaries

This dashboard provides an overview of Medicare enrollment and beneficiary characteristics. It supports exploration of monthly trends, geographic distribution, and age-group patterns through coordinated filters and map interactions.

**Portfolio skills demonstrated:** time-series analysis, geographic analysis, KPI design, demographic segmentation, and interactive filtering.

### 2. Claims & Utilization

This dashboard examines claim volume, service utilization, payment amounts, service-type differences, and denial indicators using standardized analytical fields. It is designed to help users distinguish activity levels from cost intensity and identify patterns that merit deeper investigation.

**Portfolio skills demonstrated:** claims normalization, utilization metrics, payment analysis, service-category comparison, and exception identification.

### 3. Part B Utilization & Cost

This dashboard analyzes national Medicare Part B physician and supplier expenditures and services from 2022 through 2024. It distinguishes high-volume specialties from high-cost and high-intensity specialties and translates the findings into practical monitoring questions.

Six core measures support the analysis:

| Measure | Definition |
| --- | --- |
| Allowed Services | Number of covered services delivered |
| Allowed Charges | Medicare-approved amount across allowed services |
| Medicare Payment | Amount paid by Medicare |
| Charge per Service | Allowed Charges ÷ Allowed Services |
| Payment per Service | Medicare Payment ÷ Allowed Services |
| Payment Rate | Medicare Payment ÷ Allowed Charges |

The dashboard includes KPI tiles, a three-year payment trend, a dynamic specialty ranking, a cost-intensity scatterplot, year and specialty controls, and click-to-filter dashboard actions.

### 4. Quality Measures & Star Ratings

This dashboard compares Medicare quality performance across contracts, measures, domains, and rating years. A year parameter and contract selection support consistent comparison while preserving the distinction between overall, domain, and measure-level results.

**Portfolio skills demonstrated:** multi-table quality modeling, parameter-driven analysis, contract benchmarking, measure-level drill-down, and filter design.

### 5. Medicare Provider Network

This dashboard analyzes organizational and individual-practitioner enrollment patterns by state, primary provider type, and entity type. Ranked and unrestricted views allow users to identify leading provider categories without applying the same Top-N restriction to every worksheet.

**Portfolio skills demonstrated:** provider-data integration, geographic comparison, entity classification, Top-N design, and cross-source relationships.

## Part B Analytical Findings

### Findings directly supported by the CMS specialty files

- Medicare Part B payments reached **$131.7 billion in 2024**, compared with approximately **$115.9 billion in 2022**, a **13.6% two-year increase**.
- Annual payment growth slowed from **8.4% in 2023** to **4.8% in 2024**.
- Medicare paid **$131.7 billion** against **$171.4 billion** in allowed charges in 2024.
- The national payment rate remained near 77%: **77.3% in 2022, 77.1% in 2023, and 76.8% in 2024**.
- Service volume peaked at approximately **6.14 billion services in 2023** and declined to approximately **5.96 billion in 2024**.
- Payment per service increased to approximately **$22.08 in 2024**, indicating that the latest spending increase was associated more with unit cost than service-volume growth.
- In the complete CY 2022 specialty extract, the top 10 specialties represented approximately **$54.8 billion** in Medicare payments.
- Internal Medicine ranked first in CY 2022 with approximately **$7.29 billion** in payments and **175.2 million services**.
- Payment per service varied by roughly **160 times** across selected specialties, from approximately **$1.71 for Pharmacy** to **$276.37 for Thoracic Surgery**.

### Specialty segmentation

K-means clustering was applied to specialty-level volume, payment, payment per service, and payment rate. The analysis produced three practical specialty archetypes:

1. **High-Volume Commodity:** laboratories, pharmacy, imaging, and supplies with low unit cost and very high throughput.
2. **Balanced High-Spend:** internal medicine, family practice, nurse practitioners, and ophthalmology with moderate unit cost at large scale.
3. **Specialized High-Intensity:** cardiac, thoracic, and neurosurgery and selected oncology services with lower volume but high payment per service.

These clusters describe provider specialties—not individual beneficiaries.

### Structural regression

A log-log regression evaluated the contemporaneous relationship between total Medicare payment, service volume, and allowed charge per service:

`ln(Payment) = 1.00 × ln(Services) + 0.99 × ln(Charge per Service)`

The CY 2022 model produced an R² of 0.9995, a 70/30 holdout R² of approximately 1.00, and a median payment error of 1.9%. This result should be interpreted as structural validation—not a future-payment forecast—because total payment is mathematically related to service volume, unit price, and the relatively stable payment rate.

## Analytical and Dashboard Methods

- Multi-source data cleaning and standardization
- Multi-year unions and append workflows
- Tableau logical relationships that preserve source-table grain
- Calculated fields, KPI definitions, parameters, and dynamic filters
- Dashboard actions for selection and drill-down
- Geographic, trend, ranking, and distribution analysis
- Descriptive segmentation using K-means clustering
- Log-log regression with holdout validation
- Validation checks for totals, filters, labels, and Top-N behavior
- Clear separation of reported values, calculated measures, and analytical interpretation

## Selected Business Recommendations

1. **Monitor high-volume specialties separately from high-intensity specialties.** Large payment totals can arise from very different combinations of volume and unit cost.
2. **Use claims and utilization indicators as screening signals.** Unusual volume, payment, or denial patterns warrant validation before operational conclusions are drawn.
3. **Pair quality results with their rating year and measurement level.** Overall, domain, and measure stars should not be treated as interchangeable.
4. **Assess provider participation by geography and provider type.** Enrollment counts can identify network patterns, but they do not establish access, appointment availability, or active patient volume.
5. **Track source-specific refresh periods.** Each dashboard should retain its own reporting date rather than implying that every subject area updates simultaneously.

## Limitations

- The portfolio uses public, aggregated, or analyst-prepared data and is not a reproduction of a CMS production environment.
- The datasets do not contain beneficiary-level claims or protected health information.
- Reporting periods, populations, geographies, and analytical grains vary across dashboards.
- Some CMS public-use files suppress low-volume observations or use reporting rules that can understate totals.
- Original Medicare and Medicare Advantage measures should not be combined without confirming that their populations and definitions align.
- Provider enrollment does not prove that a provider is actively practicing, accepting new patients, or delivering a particular volume of services.
- Quality and Star Ratings reflect defined measurement periods and may lag current performance.
- Part B specialty rankings use CY 2022 where that year provides the complete specialty-level detail in the project extract; national totals and trend measures span 2022–2024.
- K-means clusters depend on feature selection, scaling, and the chosen number of clusters.
- The regression describes a contemporaneous accounting relationship and does not establish causation or future predictive accuracy.
- Dashboard results support exploration and prioritization; they do not determine clinical appropriateness, fraud, waste, patient outcomes, or policy effectiveness.

## Project Value

This portfolio demonstrates the ability to:

- Translate Medicare business questions into measurable analytical requirements.
- Prepare and relate datasets with different grains without duplicating measures.
- Design executive-ready dashboards for enrollment, claims, quality, providers, and cost.
- Build reusable KPIs, parameters, filters, rankings, and dashboard actions.
- Apply descriptive analytics and statistical methods responsibly.
- Communicate findings, assumptions, and limitations without overstating conclusions.
- Turn complex healthcare information into clear decision-support tools.

## Technologies

**Data preparation:** Excel and Power Query  
**Visualization:** Tableau Desktop and Tableau Public  
**Analysis:** KPI development, trend analysis, geographic analysis, ranking, segmentation, and regression  
**Data:** CMS public-use Medicare enrollment, utilization, quality, provider-enrollment, and Part B specialty sources
