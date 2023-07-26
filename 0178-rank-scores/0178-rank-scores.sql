/* Write your T-SQL query statement below */
-- Table: Scores
-- Primary Key: id
-- Problem: Score the games by score and add a rank column that should include ties.
-- Input Table: id, score
-- Output Table: score, rank

SELECT S.score,
DENSE_RANK() OVER (
ORDER BY
S.score DESC)
AS 'rank' FROM Scores S; 