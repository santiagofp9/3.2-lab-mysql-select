--Challenge1

SELECT au.au_id AS ID, 
	au.au_fname AS First_Name, 
	au.au_lname AS Last_Name,
    tit.title AS Title,
    pu.pub_name AS Publisher
    
   
FROM authors AS au

LEFT JOIN titleauthor AS tau ON au.au_id = tau.au_id 
LEFT JOIN titles AS tit ON tit.title_id = tau.title_id
LEFT JOIN publishers AS pu ON pu.pub_id = tit.pub_id;

