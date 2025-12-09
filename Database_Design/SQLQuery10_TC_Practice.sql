USE TC_Practice
GO

select *
from fact.sales s
inner join dim.Stores st
on s.store_id = st.store_id
inner join dim.Calendar c
on s.transaction_date = c.DateValue