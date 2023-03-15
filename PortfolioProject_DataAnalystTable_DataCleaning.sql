-- Get all the date from DataAnalyst table
SELECT *
FROM PortfolioProject..DataAnalyst


/**** Remove ' (Glassdoor est.)' from Salary_Estimate column ****/

-- Preview the expected format for Salary_Estimate column
SELECT Salary_Estimate, REPLACE(Salary_Estimate, ' (Glassdoor est.)', '')
FROM PortfolioProject..DataAnalyst

-- Apply the desired format to Salary_Estimate column
UPDATE PortfolioProject..DataAnalyst
SET Salary_Estimate = REPLACE(Salary_Estimate, ' (Glassdoor est.)', '')

-- Review the result of update
SELECT Salary_Estimate
FROM PortfolioProject..DataAnalyst


/**** Update the Rating column into 1 decimal places ****/

-- Preview changing the value of Rating from -1 to 0
SELECT Rating,
CASE
	WHEN Rating = -1  THEN 0
	ELSE Rating
END AS FixedRating
FROM PortfolioProject..DataAnalyst

-- Apply the desired changes of Rating from -1 to 0
UPDATE PortfolioProject..DataAnalyst
SET Rating = 
CASE
	WHEN Rating = -1  THEN 0
	ELSE Rating
END

-- Review the result of updating Rating from -1 to 0
SELECT Rating
FROM PortfolioProject..DataAnalyst

-- Preview the rounding of Rating into 1 decimal place
SELECT Rating, ROUND(Rating, 1)
FROM PortfolioProject..DataAnalyst

-- Apply the desired changes of Rating into 1 decimal place
UPDATE PortfolioProject..DataAnalyst
SET Rating = ROUND(Rating, 1)

-- Review the result of updating Rating into 1 decimal place
SELECT Rating
FROM PortfolioProject..DataAnalyst


/**** Update the Industy column from '-1' to 'Not specified' ****/

-- Preview the desired update
SELECT Industry,
CASE
	WHEN Industry = '-1' THEN 'Not specified'
	ELSE Industry
END AS IndustryFixed
FROM PortfolioProject..DataAnalyst

-- Apply the desired update
UPDATE PortfolioProject..DataAnalyst
SET Industry = CASE
	WHEN Industry = '-1' THEN 'Not specified'
	ELSE Industry
END

-- Review after the update
SELECT DISTINCT Industry
FROM PortfolioProject..DataAnalyst
ORDER BY Industry


/**** Update the Headquarters column from '-1' to 'Not specified' ****/

-- Preview the desired update
SELECT Headquarters,
CASE
	WHEN Headquarters = '-1' THEN 'Not specified'
	ELSE Headquarters
END AS HeadquartersFixed
FROM PortfolioProject..DataAnalyst

-- Apply the desired update
UPDATE PortfolioProject..DataAnalyst
SET Headquarters = CASE
	WHEN Headquarters = '-1' THEN 'Not specified'
	ELSE Headquarters
END

-- Review after the update
SELECT DISTINCT Headquarters
FROM PortfolioProject..DataAnalyst
ORDER BY Headquarters

/*
SELECT Founded,
CASE
	WHEN Founded = -1 THEN NULL
	ELSE Founded
END
FROM PortfolioProject..DataAnalyst
*/


SELECT Job_Description, Company_Name, Rating, Founded
FROM PortfolioProject..DataAnalyst
ORDER BY Company_Name

SELECT *
FROM PortfolioProject..DataAnalyst
