with ICUSTAYS_src as (
    select * from {{ source('PREVENTIVE_HEALTHCARE','ICUSTAYS') }}
),
final as (
    select ICUSTAY_ID,
    FIRST_CAREUNIT,
    LAST_CAREUNIT,
    FIRST_WARDID,
    LAST_WARDID,
    INTIME,
    OUTTIME
LOS from ICUSTAYS_src
)

select * from final