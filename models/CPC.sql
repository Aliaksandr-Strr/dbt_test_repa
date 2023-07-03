with facebook_cpc as (
    SELECT sum(spend)/sum(clicks) as facebook
    FROM {{ ref('src_ads_creative_facebook_all_data') }}),
    bing_cpc as (
    SELECT sum(spend)/sum(clicks) as bing
    FROM {{ ref('src_ads_bing_all_data') }}),
    tiktok_cpc as (
    SELECT sum(spend)/sum(clicks) as tiktok
    FROM {{ ref('src_ads_tiktok_ads_all_data') }}),
    twitter_cpc as (
    SELECT sum(spend)/sum(clicks) as twitter
    FROM {{ ref('src_promoted_tweets_twitter_all_data') }})
SELECT *
FROM tiktok_cpc, facebook_cpc, twitter_cpc, bing_cpc