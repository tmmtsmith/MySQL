CREATE TABLE Symbols(
  SymbolID INT,
  Symbol VARCHAR(25)
);


CREATE TABLE StockData(
  SymbolID INT,
  Price DECIMAL(22,4),
  PriceDate TIMESTAMP
);


INSERT INTO Symbols (SymbolID,Symbol)
VALUES (1,'SPY')
  , (2,'GLD');


INSERT INTO StockData (SymbolID,Price)
VALUES (1,120)
  , (2,120)
  
  
SELECT *
FROM Symbols sy 
  INNER JOIN Stockdata st ON sy.SymbolID = st.SymbolID
