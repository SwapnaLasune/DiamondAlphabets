USE [Sales]
GO

/****** Object:  StoredProcedure [dbo].[GetBooksTitleByRating]    Script Date: 20-08-2020 23:25:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[GetBooksTitleByRating] 
(
  @Rating   INT
)
AS
BEGIN

SET NOCOUNT ON
SELECT B.title,R.Rating 
       FROM dbo.Books B 
	   INNER JOIN dbo.Ratings R ON B.ID = R.Book_Id
	   WHERE R.Rating = @Rating AND R.Rating >= 4
	   ORDER BY B.title ASC

SET NOCOUNT OFF

END
GO


