-- Get all the data from SurveyResults2020 table
SELECT *
FROM PortfolioProject..SurveyResults2020

-- Get the total number of respondents (64461)
SELECT COUNT(Respondent)
FROM PortfolioProject..SurveyResults2020

-- Get the profession of the respondents
SELECT DISTINCT MainBranch AS Profession
FROM PortfolioProject..SurveyResults2020
/*
I am a student who is learning to code
I am a developer by profession
I am not primarily a developer, but I write code sometimes as part of my work
I used to be a developer by profession, but no longer am
I code primarily as a hobby
NA
*/

-- Get the profession of the respondents and the population
SELECT DISTINCT MainBranch AS Profession, COUNT(MainBranch) AS Population
FROM PortfolioProject..SurveyResults2020
GROUP BY MainBranch

-- Get the distinct job satisfaction feedback
SELECT DISTINCT JobSat
FROM PortfolioProject..SurveyResults2020
/*
Very satisfied
Slightly satisfied
Neither satisfied nor dissatisfied
Slightly dissatisfied
Very dissatisfied
NA
*/

-- Get the distinct job seeking feedback
SELECT DISTINCT JobSeek
FROM PortfolioProject..SurveyResults2020
/*
I am actively looking for a job
I'm not actively looking, but I am open to new opportunities
I am not interested in new job opportunities
NA
*/

-- Get the distinct employment status
SELECT DISTINCT Employment
FROM PortfolioProject..SurveyResults2020
/*
Student
Not employed, and not looking for work
Not employed, but looking for work
Independent contractor, freelancer, or self-employed
Employed part-time
Employed full-time
Retired
NA
*/

-- Get the profession of the respondents and the population order by population
SELECT DISTINCT MainBranch AS Profession, COUNT(MainBranch) AS Population
FROM PortfolioProject..SurveyResults2020
GROUP BY MainBranch
ORDER BY Population

-- Get the population per country
SELECT Country, COUNT(Country) AS CountryPopulation
FROM PortfolioProject..SurveyResults2020
GROUP BY Country
ORDER BY 2 DESC,1 

-- Get the population of respondents from United States
SELECT COUNT(Country)
FROM PortfolioProject..SurveyResults2020
WHERE Country = 'United States'

-- Get the profession and the population per country
SELECT Country, MainBranch AS Profession, COUNT(MainBranch) AS Population
FROM PortfolioProject..SurveyResults2020
GROUP BY Country, MainBranch
ORDER BY 1,2

-- Get the population of developer per country starting with the highest population
SELECT Country, COUNT(MainBranch) AS Population
FROM PortfolioProject..SurveyResults2020
WHERE MainBranch = 'I am a developer by profession'
GROUP BY Country, MainBranch
ORDER BY 2 DESC,1

-- Get the education level and population of developers who were very satisfied with their full-time employment and not interested in new job opportunities
SELECT EdLevel, COUNT(MainBranch) as Population
FROM PortfolioProject..SurveyResults2020
	WHERE MainBranch = 'I am a developer by profession' 
	AND JobSat = 'Very satisfied'
	AND JobSeek = 'I am not interested in new job opportunities'
	AND Employment = 'Employed full-time'
GROUP BY MainBranch, JobSat, JobSeek, Employment, EdLevel
ORDER BY Population DESC

-- Get the population for each employment type of the developer
SELECT MainBranch AS Profession, Employment, COUNT(MainBranch) AS Population
FROM PortfolioProject..SurveyResults2020
WHERE MainBranch = 'I am a developer by profession'
GROUP BY MainBranch, Employment
ORDER BY Population DESC, Employment, MainBranch

-- Get the top 10 highest population of full-time employed developer by country
SELECT TOP(10) Country, COUNT(MainBranch) AS Population
FROM PortfolioProject..SurveyResults2020
WHERE MainBranch = 'I am a developer by profession'
AND Employment = 'Employed part-time'
GROUP BY Country
ORDER BY Population DESC

SELECT DISTINCT DatabaseWorkedWith --LanguageDesireNextYear
FROM PortfolioProject..SurveyResults2020
--ORDER BY LanguageDesireNextYear


SELECT *
FROM PortfolioProject..SurveyResults2020

SELECT *
FROM PortfolioProject..SurveyResultsSchema2020