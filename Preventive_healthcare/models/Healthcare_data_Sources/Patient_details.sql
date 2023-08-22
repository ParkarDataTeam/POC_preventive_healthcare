with patient_details_src as (
    select * from {{ source('PREVENTIVE_HEALTHCARE','PATIENTDETAILS') }}
),
final as (
    select * from patient_details_src
)

select * from final