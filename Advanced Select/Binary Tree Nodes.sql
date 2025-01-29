-- Problem Statement

-- You are given a table, BST, containing two columns: N and P,
-- where N represents the value of a node in Binary Tree, and P is the parent of N.

-- Column         Type
-----------------------
-- N          Integer
-- P          Integer

-- Write a query to find the node type of Binary Tree ordered by the value of the node.
-- Output one of the following for each node:

-- Root: If node is root node.
-- Leaf: If node is leaf node.
-- Inner: If node is neither root nor leaf node.

SELECT 
    N AS Node,
    CASE 
        WHEN P IS NULL THEN 'Root'
        WHEN N NOT IN (SELECT DISTINCT P FROM BST WHERE P IS NOT NULL) THEN 'Leaf'
        ELSE 'Inner'
    END AS NodeType
FROM BST
ORDER BY N;


-- Here I used ' WHEN N NOT IN (SELECT DISTINCT P FROM BST WHERE P IS NOT NULL) THEN 'Leaf'' - it means when a leaf node does not act as 
-- a parent to any other node, so it does not appear in the P column. 