-- Each node in the tree can be one of three types:

-- "Leaf": if the node is a leaf node.
-- "Root": if the node is the root of the tree.
-- "Inner": If the node is neither a leaf node nor a root node.
-- Write an SQL query to report the type of each node in the tree.

-- Return the result table in any order.

-- The query result format is in the following example.
-- 602: Friend Requests II: Who Has the Most Friends


select id, 'Root' as type from Tree where p_id is null

union

select  id, 'Inner' as type from Tree as t where exists(select 1 from tree where p_id = t.id) and p_id is not null

union

select  id, 'Leaf' as type from Tree as t where not exists(select 1 from tree where p_id = t.id) and p_id is not null;