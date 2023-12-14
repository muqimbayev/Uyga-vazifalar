--  Write your MySQL query statement below
select query_name, round(avg(rating/position),2) as quality,
round(avg(rating < 3)*100,2) as poor_query_percentage
from Queries
group by 1




-- # Write your MySQL query statement below
SELECT
    p.product_id,
    COALESCE(ROUND(SUM(p.price * u.units) / NULLIF(SUM(u.units), 0), 2), 0) AS average_price
FROM
    Prices p
LEFT JOIN
    UnitsSold u ON p.product_id = u.product_id
           AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY
    p.product_id;





-- # Write your MySQL query statement below
SELECT
    s.student_id,
    s.student_name,
    sub.subject_name,
    COALESCE(COUNT(e.subject_name), 0) AS attended_exams
FROM
    Students s
CROSS JOIN
    Subjects sub
LEFT JOIN
    Examinations e ON s.student_id = e.student_id AND sub.subject_name = e.subject_name
GROUP BY
    s.student_id, sub.subject_name
ORDER BY
    s.student_id, sub.subject_name;






-- # Write your MySQL query statement below
Select p.product_name, sum(o.unit) as unit from Products as p
join Orders as o on p.product_id=o.product_id
where order_date between '2020-02-01' and '2020-02-29'
group by p.product_name
having sum(unit)>=100