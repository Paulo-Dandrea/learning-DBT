WITH raw_reviews AS (
    SELECT
        *
    FROM
        airbnb.RAW.raw_reviews
)
SELECT
    listing_id review_id,
    DATE review_date,
    reviewer_name,
    comments review_text,
    sentiment review_sentiment
FROM
    raw_reviews
