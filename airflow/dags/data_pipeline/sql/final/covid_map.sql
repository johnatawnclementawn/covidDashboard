with data_map as (
    select 
    a.modzcta_name,
    cast(a.modzcta as string) as modzcta,
    a.percentpositivity_7day,
    a.people_positive,
    a.median_daily_test_rate,
    a.hospitalization_count_28day,
    a.hospitalization_count_28day/28 as hospitalization_count_28day_avg,
    a.hospitalization_rate_28day,
    a.death_count_28day as death_count_28day,
    a.death_rate_28day,
    a.daterange,
    a.COVID_DEATH_COUNT,
    a.death_case_ratio as death_case_ratio_1day,
    b.date,
    b.count_fully_cumulative,
    b.perc_fully
    from `musa509cloudcomputing.staging.test_hosp_death` a
    full join `musa509cloudcomputing.staging.vac_now_neigh` b
    on a.modzcta=b.modzcta
)
select 
    a.modzcta_name,
    a.modzcta,
    a.percentpositivity_7day,
    a.people_positive,
    a.median_daily_test_rate,
    a.hospitalization_count_28day,
    a.hospitalization_rate_28day,
    a.death_count_28day,
    a.death_rate_28day,
    a.daterange,
    a.COVID_DEATH_COUNT,
    a.death_case_ratio_1day,
    a.hospitalization_count_28day/a.people_positive as hosp_case_ratio_avg,
    IF( hospitalization_count_28day_avg=0, 0, (a.COVID_DEATH_COUNT/a.hospitalization_count_28day_avg)) as death_hosp_ratio_mix,
    a.date,
    a.people_positive/a.count_fully_cumulative as case_vax_ratio,    
    a.count_fully_cumulative,
    a.perc_fully,
    b.geometry
from data_map a
full join `musa509cloudcomputing.staging.NYC_map` b
on a.modzcta=b.modzcta