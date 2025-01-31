--Utilização do describe e desc
describe employees;
desc employees;

--Utilização do select
select * from employees;
select department_id, department_name, manager_id from departments;
SELECT
    job_id,
    job_title,
    min_salary,
    max_salary
FROM
    jobs;
select first_name, last_name, salary, salary*1.15 from employees;
--Regra de precedência
select first_name, last_name, salary, (salary + 100) * 1.15 from employees;
-- valor null
SELECT  first_name, last_name, job_id, salary,  commission_pct
FROM    employees;
SELECT  first_name, last_name, job_id, commission_pct, 200000 * commission_pct
FROM    employees
WHERE   commission_pct IS NULL;
--Alias de coluna
SELECT first_name AS "Nome", last_name AS "Sobrenome", salary AS salário
FROM employees;
--Operador de concatenação
SELECT first_name || ' ' || last_name || ', data de admissão: ' || hire_date "Funcionário"
FROM   employees;
-- Utilizando Operador de concatenação e Strings de caracteres 
SELECT first_name || ' ' || last_name || ', data de admissão: ' || hire_date "Funcionário"
FROM   employees;
-- Utilizando Operador alternativo para aspas
SELECT department_name || q'[ Department's Manager Id: ]'
|| manager_id "Departamento e Gerente"
FROM departments;
-- Linhas duplicadas

SELECT department_id
FROM employees;

-- Utilizando DISTINCT para eliminar linhas duplicadas

SELECT DISTINCT department_id
FROM employees;

SELECT DISTINCT last_name
FROM employees;

SELECT DISTINCT last_name, first_name
FROM employees;