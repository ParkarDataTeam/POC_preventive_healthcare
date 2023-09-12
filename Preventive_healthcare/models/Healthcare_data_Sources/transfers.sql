with transfers_src as (
    select * from {{ source('PREVENTIVE_HEALTHCARE','TRANSFERS') }}
),
final as (
    select PREV_CAREUNIT,
    CURR_CAREUNIT,
    PREV_WARDID,
    CURR_WARDID,
    INTIME,
    OUTTIME,
    LOS from transfers_src
)

select * from final