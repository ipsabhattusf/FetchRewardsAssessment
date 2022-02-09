/*Which brand has the most spend among users who were created within the past 6 months?*/

select name from brands b,
(select * from receipts 
where totalspent=(select max(totalspent) 
from receipts r,
(select * from users
where createddate>='01-SEP-20') u where u.id=r.userid)) r 
where b.brandcode=r.itl_brandcode;

/*Which brand has the most spend among users who were created within the past 6 months?*/
with innrq as (select count(*) cnt,itl_brandcode from rrecepts r, (select * from users
where createddate>='01-SEP-20') u where u.id=r.userid
group by itl_brandcode order by cnt desc)
select name from brands b,(select * from innrq where rownum=1) inn where b.brandcode=inn.itl_brandcode;