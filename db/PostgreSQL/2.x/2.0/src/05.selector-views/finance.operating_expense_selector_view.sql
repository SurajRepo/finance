﻿DROP VIEW IF EXISTS finance.operating_expense_selector_view;

CREATE VIEW finance.operating_expense_selector_view
AS
SELECT 
    finance.account_scrud_view.account_id AS operating_expense_id,
    finance.account_scrud_view.account_name AS operating_expense_name
FROM finance.account_scrud_view
WHERE account_master_id IN(SELECT * FROM finance.get_account_master_ids(20600))
ORDER BY account_id;


