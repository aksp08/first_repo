use ig_clone;
# A-Marketing Analysis

# 1-Loyal User Reward
SELECT *
FROM users
ORDER BY created_at ASC
LIMIT 5;

# 2-Inactive User Engagement
SELECT u.*
FROM users u
LEFT JOIN photos p 
ON u.id = p.user_id
WHERE p.id IS NULL;

# Percent of Inactive Users
SELECT 
    COUNT(*) AS total_users,
    SUM(CASE WHEN p.user_id IS NULL THEN 1 ELSE 0 END) AS inactive_users,
    ROUND(SUM(CASE WHEN p.user_id IS NULL THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS inactive_percentage
FROM users u
LEFT JOIN photos p ON u.id = p.user_id;


# 3-Contest Winner Declaration
SELECT 
    p.id AS photo_id, 
    u.id AS user_id, 
    u.username, 
    COUNT(l.photo_id) AS total_likes
FROM photos p
JOIN users u ON p.user_id = u.id
JOIN likes l ON p.id = l.photo_id
GROUP BY p.id, u.id, u.username
ORDER BY total_likes DESC
LIMIT 1;

# 4-Hashtag Research
SELECT t.tag_name, COUNT(*) AS usage_count
FROM photo_tags pt
JOIN tags t ON pt.tag_id = t.id
GROUP BY t.tag_name
ORDER BY usage_count DESC
LIMIT 5;

# 5-Ad Campaign Launch
SELECT 
  DAYNAME(created_at) AS registration_day,
  COUNT(*) AS total_users
FROM users
GROUP BY registration_day
ORDER BY total_users DESC;

# B-Investor Metrics

# 1-User Engagement
SELECT 
    COUNT(DISTINCT p.id) AS total_photos,
    COUNT(DISTINCT u.id) AS total_users,
    ROUND(COUNT(DISTINCT p.id) * 1.0 / COUNT(DISTINCT u.id), 2) AS avg_posts_per_user
FROM users u
LEFT JOIN photos p 
    ON u.id = p.user_id;

# 2-Bots & Fake Accounts
SELECT l.user_id, u.username
FROM likes l
JOIN users u ON l.user_id = u.id
GROUP BY l.user_id, u.username
HAVING COUNT(photo_id) = (SELECT COUNT(*) FROM photos);