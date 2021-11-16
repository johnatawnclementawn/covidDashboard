# Visualization of COVID-19 in Philadelphia

**By**:
* Anran Zheng, anranz@design.upenn.edu
* Johnathan Clementi, clementi@design.upenn.edu
* Lan Xiao, 

## Abstract
### Situation

COVID-19 has been spread worldwide since 2019, and there has been a new peek of the outbreak in the US at the beginning of 2021. So it is still significantly necessary for the government and institutions that face crowd gathering risk in Philadelphia to track the trend of reported cases, death, and hospitalization condition of COVID. In addition, as COVID vaccines are developed and used this year, the government and other stakeholders, such as universities, start to pay more attention to vaccine coverage, breakthrough infections, and hospitalization accessibility.

### Decision Metrics

First and foremost, this COVID dashboard will help to **track general infection trends** by time curve and 14-day changes of reported cases, death, hospitalization, and vaccination. Also, age, racial and sexual composition will be demonstrated to assist government and stakeholders in **identifying how to allocate related resources**. On top of that, hot pot maps by zip code will be helpful in **targeting breakout places and containing the spread of the epidemic promptly**. What's more important, the dashboard will combine data from different sources and engineer effect metrics, including ratio of positive test/vaccinated that will contribute to simulate breakthrough infections, and ratio of treated/death that will contribute to warn higher mortality due to poor hospitalization accessibility.

## Data Sources
We choose four aspects of COVID-19 data, confirmed cases, hospitalization, death and vaccination mainly from [OpenDataPhilly](https://www.opendataphilly.org/dataset/covid-cases). Some data from [CDC](https://data.cdc.gov/browse) might also be considered. The data form that we will utilized in our project includes csv, geojson, shp and API.  We will also use the aggregated number by different groups of sex, race and age categories provided by all these datasets. Both real-time and historical data by ZIP is needed in our project. All the datasets are open-accessed to us. 

**Test and cases:** -- [OpenDataPhilly](https://www.opendataphilly.org/dataset/covid-cases), updated "daily" at 4 pm every day (according to city [metadata](https://metadata.phila.gov/#home/datasetdetails/5ea725f6890f920015c17af8/representationdetails/5ea73b68890f920015c190d3/)). We choose the real-time cummulative test outcome data, historical test data and real-time test data by ZIP:

  name  | field  | format
  ------------- | ------------- | -------------
 COVID Tests by Outcome   | covid_outcome, count, etl_timestamp | csv
 COVID Tests by Date   | collection_date, test_result, count, etl_timestamp  | csv
COVID Tests by ZIP    | covid_status, zip_code, count, etl_timestamp  | GeoJSON

**Hospitalization:** -- [OpenDataPhilly](https://www.opendataphilly.org/dataset/covid-hospitalizations), updated "daily" at 4 pm every day (according to city [metadata](https://metadata.phila.gov/#home/datasetdetails/5efb5dc2bec0b10015172d9b/representationdetails/5efb6f4a2f3c4c00199b0c84/))

**Death:** -- [OpenDataPhilly](https://www.opendataphilly.org/dataset/covid-deaths), updated "daily" at 4 pm every day (according to city [metadata](https://metadata.phila.gov/#home/datasetdetails/5efb5dc2bec0b10015172d9b/representationdetails/5efb6f4a2f3c4c00199b0c84/))

**Vaccine:** -- [OpenDataPhilly](https://www.opendataphilly.org/dataset/covid-vaccinations), updated "daily" at 4 pm every day (according to city [metadata](https://metadata.phila.gov/#home/datasetdetails/601abeb9f910a2001ce794e2/representationdetails/60b93022a59bf60021d2a63a/))

**COVID Cumulative Historical Snapshots:** -- [OpenDataPhilly](https://www.opendataphilly.org/dataset/covid-cumulative-historical-data), updated "daily" at 4 pm every day.

**Total population by ZIP in Philadelphia:** -- BigQuery public datasets,updated with the national census, here we choose 2018 5-years ACS.


## Wireframes

![covidDashboardWireframe.drawio](covidDashboardWireframe.drawio.png)
