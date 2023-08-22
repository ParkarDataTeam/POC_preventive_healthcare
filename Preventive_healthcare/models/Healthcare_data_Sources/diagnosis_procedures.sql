with diagnosis_procedures_src as (
    select * from {{ source('PREVENTIVE_HEALTHCARE','DIAGNOSISPROCEDURES') }}
),
final as (
    select * from diagnosis_procedures_src
)

select * from final