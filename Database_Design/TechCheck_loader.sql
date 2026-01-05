USE TechCheckDW
go


TRUNCATE TABLE Dim.Customer; 
GO

WITH Cte_dim_Customer (customer_id, FullName, email, phone, region_name, status_name, is_active)
AS
(
select c.customer_id
	,c.first_name + ' ' + c.last_name
	,c.email
	,c.phone
	,r.region_name
	,st.status_name
	,st.is_active
from src.Customers c
inner join src.Regions r
ON c.region_code = r.region_code
inner join [src].[Statuses] st
ON c.status_code = st.status_code
)
INSERT INTO [TechCheckDW].[dim].[Customer]
Select * 
From Cte_dim_Customer;



/**********************************/


INSERT INTO fact.Sales
SELECT * 
FROM src.Sales

--TRUNCATE TABLE fact.Sales; 





