{{
    config(
        materialized='table'
    )
}}


with stg_ExpenseData as(
  SELECT t.DATE, t.ITEM, t.COST
   FROM Expenses.ExpenseData t
)

SELECT * FROM stg_ExpenseData
