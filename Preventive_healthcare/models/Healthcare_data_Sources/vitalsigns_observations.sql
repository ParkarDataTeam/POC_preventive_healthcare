with vitalsigns_observations_src as (
    select * from {{ source('PREVENTIVE_HEALTHCARE','VITALSIGNSOBSERVATIONS') }}
),
final as (
    select * from vitalsigns_observations_src
)

select * from final