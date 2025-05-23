
CREATE TABLE Posts ( post_id INTEGER PRIMARY KEY, post_content TEXT,post_date TIMESTAMP);
INSERT INTO Posts (post_id, post_content, post_date) VALUES
(1, 'Lorem ipsum dolor sit amet', '2023-08-25 10:00:00'),
(2, 'Exploring the beauty of nature', '2023-08-25 13:00:00'),
(3, 'Unveiling the latest tech trends', '2023-08-27 12:00:00'),
(4, 'Journey into the world of literature', '2023-08-28 09:45:00'),
(5, 'Capturing the essence of city life', '2023-08-29 16:20:00');
SELECT * FROM posts

CREATE TABLE UserReactions (reaction_id INTEGER PRIMARY KEY,user_id INTEGER,post_id INT ,reaction_type TEXT,
    reaction_date TIMESTAMP);

INSERT INTO UserReactions (reaction_id, user_id, post_id, reaction_type, reaction_date) VALUES
(1, 101, 1, 'like',    '2023-08-25 10:15:00'),
(2, 102, 1, 'comment', '2023-08-25 11:00:00'),
(3, 101, 1, 'share',   '2023-08-26 12:45:00'),
(4, 102, 2, 'like',    '2023-08-26 15:45:00'),
(5, 104, 2, 'comment', '2023-08-27 09:20:00'),
(6, 105, 2, 'like',    '2023-08-27 10:00:00'),
(7, 105, 3, 'comment', '2023-08-27 10:30:00'),
(8, 101, 3, 'like',    '2023-08-27 14:30:00'),
(9, 103, 4, 'like',    '2023-08-28 10:15:00'),
(10, 105, 4, 'share',  '2023-08-28 10:30:00'),
(11, 104, 5, 'like',   '2023-08-29 11:15:00'),
(12, 101, 5, 'comment','2023-08-30 09:45:00');
SELECT * FROM UserReactions


SELECT posts.post_id,posts.post_content,sum (CASE WHEN UserReactions.reaction_type='like' THEN 1 ELSE 0 END )AS num_like,
                                        sum (CASE WHEN UserReactions.reaction_type='comment'THEN 1 ELSE 0 END)AS num_comment,
                                        sum (CASE WHEN UserReactions.reaction_type='share'THEN 1 ELSE 0 END)AS num_share FROM posts
                                        
 LEFT OUTER JOIN UserReactions 
 ON posts.post_id =UserReactions.post_id
 WHERE posts.post_id=2 GROUP BY posts.post_id,posts.post_content
 
 CREATE TABLE viewss AS   
SELECT DISTINCT (date(reaction_date)) AS reaction_day ,count(DISTINCT user_id) AS distinct_user,count(reaction_type) AS total_reactions FROM userreactions 
GROUP BY reaction_day ORDER BY reaction_day
SELECT * FROM viewss
SELECT reaction_day,distinct_user,total_reactions,(distinct_user+total_reactions)/2 AS avg_reactions_per_user FROM viewss GROUP BY reaction_day,distinct_user,total_reactions ORDER BY reaction_day

SELECT posts.post_id,posts.post_content,count(userreactions.reaction_type) AS total_reactions FROM posts
LEFT OUTER JOIN userreactions
ON posts.post_id = userreactions.post_id 
GROUP BY posts.post_id,posts.post_content ORDER BY total_reactions DESC LIMIT 3
 
 
 
