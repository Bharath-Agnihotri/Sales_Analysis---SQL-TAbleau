-- cleansing the DimCustomer Table
SELECT [customerkey],
       --,[GeographyKey]
       --,[CustomerAlternateKey]
       --,[Title]
       [firstname]
       --[MiddleName]
       ,
       [lastname],
       [firstname] + ' ' + [lastname] AS NAME
       --,[NameStyle]
       --,[BirthDate]
       --,[MaritalStatus]
       --,[Suffix]
       ,
       CASE [gender]
         WHEN 'M' THEN 'MALE'
         WHEN 'F' THEN 'FEMALE'
       END                            AS Gender
       --,[EmailAddress]
       --,[YearlyIncome]
       --,[TotalChildren]
       --,[NumberChildrenAtHome]
       --,[EnglishEducation]
       --,[SpanishEducation]
       --,[FrenchEducation]
       --,[EnglishOccupation]
       --,[SpanishOccupation]
       --,[FrenchOccupation]
       --,[HouseOwnerFlag]
       --,[NumberCarsOwned]
       --,[AddressLine1]
       --,[AddressLine2]
       --,[Phone]
       ,
       [datefirstpurchase],
       --,[CommuteDistance]
       [city]                         AS Customer_city
FROM   [AdventureWorksDW2019].[dbo].[dimcustomer]
       LEFT JOIN [AdventureWorksDW2019].[dbo].[dimgeography]
              ON [dimcustomer].[geographykey] = [dimgeography].[geographykey]
ORDER  BY [customerkey] ASC 