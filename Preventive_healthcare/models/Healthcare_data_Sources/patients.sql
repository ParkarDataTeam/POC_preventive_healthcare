with patient_details_src as (
    select * from {{ source('PREVENTIVE_HEALTHCARE','PATIENTS') }}
),
final as (
    select GENDER,
    DOB,
    DOD from patient_details_src
)

select * from final