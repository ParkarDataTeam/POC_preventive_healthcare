with diagnosis_procedures_src as (
    select * from {{ source('PREVENTIVE_HEALTHCARE','DIAGNOSES_ICD') }}
),
final as (
    select SEQ_NUM,
           ICD9_CODE 
           from diagnosis_procedures_src
)

select * from final