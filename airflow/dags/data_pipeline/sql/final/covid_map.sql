with data_map as (
    select 
    a.modzcta_name,
    cast(a.modzcta as string) as modzcta,
    a.percentpositivity_7day,
    a.median_daily_test_rate,
    a.hospitalization_count_28day,
    a.hospitalization_rate_28day,
    a.death_count_28day,
    a.death_rate_28day,
    a.daterange,
    b.date,
    b.count_fully_cumulative,
    b.perc_fully
    from `musa509-332421.staging.test_hosp_death` a
    full join `musa509-332421.staging.vac_now_neigh` b
    on a.modzcta=b.modzcta
)
select 
    a.modzcta_name,
    a.modzcta,
    a.percentpositivity_7day,
    a.median_daily_test_rate,
    a.hospitalization_count_28day,
    a.hospitalization_rate_28day,
    a.death_count_28day,
    a.death_rate_28day,
    a.daterange,
    a.date,
    a.count_fully_cumulative,
    a.perc_fully,
    b.geometry
from data_map a
full join `musa509-332421.staging.NYC_map` b
on a.modzcta=b.modzcta