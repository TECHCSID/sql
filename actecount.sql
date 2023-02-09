select year(docDATS) as Année, count(*) as Nbr_acte 
from tDocument where docBOId in ('DEED','FSIG') and docDATS is not null
group by  year(docDATS)
having count(*) > 1
