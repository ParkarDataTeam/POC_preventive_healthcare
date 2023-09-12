with admission_details_src as (
    select * from {{ source('PREVENTIVE_HEALTHCARE','ADMISSIONS') }}
),
final as (
    select ADMITTIME,
           DISCHTIME,
           DEATHTIME,
           ADMISSION_TYPE
           from admission_details_src
)

select * from final