with services_src as (
    select * from {{ source('PREVENTIVE_HEALTHCARE','SERVICES') }}
),
final as (
    select TRANSFERTIME from services_src
)

select * from final