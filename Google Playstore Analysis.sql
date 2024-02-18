-- Null Values --
Select * From dbo.googleplaystore
Where App is Null
or Category is Null
or Rating is Null
or Reviews is Null
or Size is Null
or Installs is Null
or Type is Null
or Price is Null
or Content_Rating is Null
or Genres is Null
or Last_Updated is Null
or Current_Ver is Null
or Android_Ver is Null

-- Deleting the Null Rows --
Delete From dbo.googleplaystore
Where App is Null
or Category is Null
or Rating is Null
or Reviews is Null
or Size is Null
or Installs is Null
or Type is Null
or Price is Null
or Content_Rating is Null
or Genres is Null
or Last_Updated is Null
or Current_Ver is Null
or Android_Ver is Null

-- Callout Total Unique Apps and Categories in the Dataset --
Select 
COUNT(distinct App) AS Total_Apps,
COUNT(Distinct Category) As Total_Categories
From dbo.googleplaystore

-- App Categories and Counts --
Select Top 5
Category,
COUNT(App) As Total_App
From dbo.googleplaystore
Group by Category
Order by Total_App DESC

-- Top Rated free App --
Select Top 10
App,
Category,
Rating,
Reviews
From dbo.googleplaystore
Where Type = 'Free' And Rating <> 'NaN'
Order by Rating DESC

-- Most Reviewed App --
Select Top 10
App,
Category,
Reviews
from dbo.googleplaystore
Order by Reviews DESC

-- Avg rating by Categories --
Select Top 5
Category,
AVG(TRY_CAST(rating As Float)) As Avg_Ratings
from dbo.googleplaystore
Group by Category
Order by Avg_Ratings DESC

-- Top Categories By Number Of Installs --
Select
Category,
SUM(cast(Replace(SUBSTRING(Installs, 1, Patindex('%[^0-9]%', Installs + ' ') - 1), ',', '') As int))
As Total_Installs
From dbo.googleplaystore
Group by Category
order by Total_Installs DESC

-- AVG Sentiment Polarity by App Sentiment --
Select Top 10
Category,
AVG(TRY_CAST(Sentiment_Polarity as FLOAT)) AS Avg_sentiment_polarity
from dbo.googleplaystore
JOIN dbo.googleplaystore_user_reviews
on dbo.googleplaystore.App = dbo.googleplaystore_user_reviews.App
Group by Category
Order by Avg_sentiment_polarity DESC

-- Sentiment reviews by App category --
Select Top 10
Category,
Sentiment,
Count(*) As Total_sentiment
from dbo.googleplaystore
Join dbo.googleplaystore_user_reviews
on dbo.googleplaystore.App = dbo.googleplaystore_user_reviews.App
Where Sentiment <> 'nan'
Group by Category, Sentiment
Order by Total_sentiment DESC
