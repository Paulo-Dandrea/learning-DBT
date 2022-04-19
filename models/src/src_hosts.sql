WITH raw_rosts AS (
    SELECT
        *
    FROM
        airbnb.RAW.raw_hosts
)
SELECT
    id host_id,
    NAME host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    raw_rosts
