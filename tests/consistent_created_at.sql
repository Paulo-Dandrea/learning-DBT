SELECT
    l.listing_id,
    l.created_at,
    r.review_date,
    r.listing_id
FROM
    {{ ref('dim_listings_cleansed') }} AS l
    JOIN {{ ref('fct_reviews') }} AS r
    ON l.listing_id = r.listing_id
    AND l.created_at > r.review_date
