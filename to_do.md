0. Brainstorm for aspects of your proposal
[X]
1. Develop metrics that will help inform the domain decisions
[X]
1. Get familiar with the content of potential datasets; understand what might inform your metrics, and what holes there still are
1. Consider best way to communicate metrics; for example:
   - Should you use time-series graphs? Density/heat-maps? You're certainly not limited in the number of visualizations you can include.
   - Should your report only be at one level of detail, or should you include a break-down by sub-geography (neighborhood, district, etc)?
1. Write proposal and develop wireframes
[X]
   * Include boxes for metrics and sample prose on wireframes
    [X]
1. Develop scripts to extract data from sources and load into PostgreSQL and/or BigQuery
    i.Retrieve datasets:
        i.Population (Zipcodes)
1. Create the structure for your Airflow pipeline and add your extract/load scripts to it
    i.Deploy airflow - create environment file (.yaml) 
    i.Extract processes:
        i.Dataset 1 = Daily cases 
        i.Dataset 2 = Vaccinations
        i.Dataset 3 = Hospitalizations
        i.Dataset 4 = Deaths
        * Build and test on local machines, then move to GCP

1. Deploy your pipeline to a cloud server (and document your deployment steps for _when_ -- not _if_ -- you forget them)
    i.Entity Relationship diagram(?)
1. Dive deeper into data
   * Experiment and develop queries for metrics, using tools such as PGAdmin, BigQuery, or Jupyter Notebooks
   * Note useful data transformations and queries
   i.Transformations - two ways to do it:
    * SQL (Complex(?))
    * Python - may be easier
1. Convert explorations into SQL and Python scripts to transform ingested data
1. Experiment with visualizations of metrics
1. Create "live mockup(s)" in HTML of dashboard page(s)
1. Configure a GCS
1. Convert mockup(s) to template(s)
1. Create scripts to render template(s) for dashboard page(s)


Meeting 11/19/21:
Action items:
* Kelly will get extract processes for datasets up and running on local machine
* Johnathan will get Airflow up and running on GCP for group to use
* Lan will develop a timeline & look at Mjumbe's example project to see what we need to do in the future