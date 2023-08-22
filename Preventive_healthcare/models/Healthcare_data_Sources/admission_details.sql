with admission_details_src as (
    select * from {{ source('PREVENTIVE_HEALTHCARE','ADMISSIONDETAILS') }}
),
final as (
    select * from admission_details_src
)

select * from final