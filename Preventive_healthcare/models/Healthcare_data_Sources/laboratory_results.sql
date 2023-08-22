with laboratory_results_src as (
    select * from {{ source('PREVENTIVE_HEALTHCARE','LABORATORYRESULTS') }}
),
final as (
    select * from laboratory_results_src
)

select * from final