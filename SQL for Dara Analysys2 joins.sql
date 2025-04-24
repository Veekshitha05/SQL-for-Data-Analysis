select s.SaleDate, s.Amount, p.Salesperson
from sales as s
join people as p on p.SPID = s.SPID;

select s.SaleDate, s.Amount, pr.Product
from sales s
left join products pr on pr.pid = s.pid;

select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.Team
from sales as s
join people as p on p.SPID = s.SPID
join products pr on pr.pid = s.pid
where s.Amount <500
and p.Team = 'Delish';

select s.SaleDate, s.Amount, p.Salesperson, pr.Product, p.Team
from sales as s
join people as p on p.SPID = s.SPID
join products pr on pr.pid = s.pid
where s.Amount <500
and p.Team = '';

SELECT 
    g.GeoID,
    g.Geo AS Country,
    g.Region,
    p.Salesperson,
    p.Team
FROM people p
RIGHT JOIN geo g ON p.Location = g.Geo;
