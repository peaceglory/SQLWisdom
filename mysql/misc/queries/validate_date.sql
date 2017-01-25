# Validate date format
select str_to_date('2017/01/24', '%d/%m/%Y') as Incorrect, str_to_date('24/01/2017', '%d/%m/%Y') as Correct