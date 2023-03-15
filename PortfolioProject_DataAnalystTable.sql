-- Get all the data
SELECT *
FROM PortfolioProject..DataAnalyst
ORDER By ID

-- Get the distinct Job_Title and Job_Count 
SELECT DISTINCT Job_Title, COUNT(Job_Title) AS Job_Count
FROM PortfolioProject..DataAnalyst
GROUP BY Job_Title
ORDER BY Job_Count DESC

-- Get the distinct Salary_Estimate and Salary_Count
SELECT DISTINCT Salary_Estimate, COUNT(Salary_Estimate) AS Salary_Count
FROM PortfolioProject..DataAnalyst
GROUP BY Salary_Estimate
ORDER BY Salary_Count DESC

-- Get the distinct Job_Title and Job_Count 
SELECT DISTINCT Job_Title, COUNT(Job_Title) AS Job_Count
FROM PortfolioProject..DataAnalyst
GROUP BY Job_Title
ORDER BY Job_Count DESC

-- Get the distinc Company_Name and Company_Count
SELECT DISTINCT Company_Name, COUNT(Company_Name) AS Company_Count
FROM PortfolioProject..DataAnalyst
GROUP BY Company_Name
ORDER BY Company_Count DESC

-- Get the distinc Company_Name, Job_Title and the count per Job_Title
SELECT Company_Name, Job_Title, COUNT(Job_Title) AS Job_Count
FROM PortfolioProject..DataAnalyst
GROUP BY Company_Name, Job_Title
ORDER BY Job_Count DESC

-- Get the count for a Data Analyst job per company
SELECT Company_Name, Job_Title, COUNT(Job_Title) AS Job_Count
FROM PortfolioProject..DataAnalyst
WHERE Job_Title = 'Data Analyst'
GROUP BY Company_Name, Job_Title
ORDER BY Job_Count DESC
