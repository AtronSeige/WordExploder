USE WordExploder
GO

DROP TABLE IF EXISTS #tmpWords
CREATE TABLE #tmpWords (word VARCHAR(50))

-- Use BULK INSERT to read data from the text file and insert into the database table
BULK INSERT #tmpWords
FROM 'C:\MyCode\WordExploder\words_alpha.txt'
WITH (
	ROWTERMINATOR = '\n',
	FIRSTROW = 0
);

GO

TRUNCATE TABLE WordsExploded;

INSERT INTO WordsExploded (Fullword)
SELECT LOWER(word)
FROM #tmpWords

DROP TABLE IF EXISTS #tmpWords

GO

UPDATE dbo.WordsExploded
	SET
	WordLength = LEN(Fullword),
	Letter01 = SUBSTRING(Fullword, 1,1),
	Letter02 = SUBSTRING(Fullword, 2,1),
	Letter03 = SUBSTRING(Fullword, 3,1),
	Letter04 = SUBSTRING(Fullword, 4,1),
	Letter05 = SUBSTRING(Fullword, 5,1),
	Letter06 = SUBSTRING(Fullword, 6,1),
	Letter07 = SUBSTRING(Fullword, 7,1),
	Letter08 = SUBSTRING(Fullword, 8,1),
	Letter09 = SUBSTRING(Fullword, 9,1),
	Letter10 = SUBSTRING(Fullword, 10,1),
	Letter11 = SUBSTRING(Fullword, 11,1),
	Letter12 = SUBSTRING(Fullword, 12,1),
	Letter13 = SUBSTRING(Fullword, 13,1),
	Letter14 = SUBSTRING(Fullword, 14,1),
	Letter15 = SUBSTRING(Fullword, 15,1),
	Letter16 = SUBSTRING(Fullword, 16,1),
	Letter17 = SUBSTRING(Fullword, 17,1),
	Letter18 = SUBSTRING(Fullword, 18,1),
	Letter19 = SUBSTRING(Fullword, 19,1),
	Letter20 = SUBSTRING(Fullword, 20,1),
	Letter21 = SUBSTRING(Fullword, 21,1),
	Letter22 = SUBSTRING(Fullword, 22,1),
	Letter23 = SUBSTRING(Fullword, 23,1),
	Letter24 = SUBSTRING(Fullword, 24,1),
	Letter25 = SUBSTRING(Fullword, 25,1),
	Letter26 = SUBSTRING(Fullword, 26,1),
	Letter27 = SUBSTRING(Fullword, 27,1),
	Letter28 = SUBSTRING(Fullword, 28,1),
	Letter29 = SUBSTRING(Fullword, 29,1),
	Letter30 = SUBSTRING(Fullword, 30,1),
	Letter31 = SUBSTRING(Fullword, 31,1),
	Letter32 = SUBSTRING(Fullword, 32,1),
	Letter33 = SUBSTRING(Fullword, 33,1),
	Letter34 = SUBSTRING(Fullword, 34,1),
	Letter35 = SUBSTRING(Fullword, 35,1),
	Letter36 = SUBSTRING(Fullword, 36,1),
	Letter37 = SUBSTRING(Fullword, 37,1),
	Letter38 = SUBSTRING(Fullword, 38,1),
	Letter39 = SUBSTRING(Fullword, 39,1),
	Letter40 = SUBSTRING(Fullword, 40,1),
	CountA = LEN(Fullword) - LEN(REPLACE(Fullword, 'a', '')),
	CountB = LEN(Fullword) - LEN(REPLACE(Fullword, 'b', '')),
	CountC = LEN(Fullword) - LEN(REPLACE(Fullword, 'c', '')),
	CountD = LEN(Fullword) - LEN(REPLACE(Fullword, 'd', '')),
	CountE = LEN(Fullword) - LEN(REPLACE(Fullword, 'e', '')),
	CountF = LEN(Fullword) - LEN(REPLACE(Fullword, 'f', '')),
	CountG = LEN(Fullword) - LEN(REPLACE(Fullword, 'g', '')),
	CountH = LEN(Fullword) - LEN(REPLACE(Fullword, 'h', '')),
	CountI = LEN(Fullword) - LEN(REPLACE(Fullword, 'i', '')),
	CountJ = LEN(Fullword) - LEN(REPLACE(Fullword, 'j', '')),
	CountK = LEN(Fullword) - LEN(REPLACE(Fullword, 'k', '')),
	CountL = LEN(Fullword) - LEN(REPLACE(Fullword, 'l', '')),
	CountM = LEN(Fullword) - LEN(REPLACE(Fullword, 'm', '')),
	CountN = LEN(Fullword) - LEN(REPLACE(Fullword, 'n', '')),
	CountO = LEN(Fullword) - LEN(REPLACE(Fullword, 'o', '')),
	CountP = LEN(Fullword) - LEN(REPLACE(Fullword, 'p', '')),
	CountQ = LEN(Fullword) - LEN(REPLACE(Fullword, 'q', '')),
	CountR = LEN(Fullword) - LEN(REPLACE(Fullword, 'r', '')),
	CountS = LEN(Fullword) - LEN(REPLACE(Fullword, 's', '')),
	CountT = LEN(Fullword) - LEN(REPLACE(Fullword, 't', '')),
	CountU = LEN(Fullword) - LEN(REPLACE(Fullword, 'u', '')),
	CountV = LEN(Fullword) - LEN(REPLACE(Fullword, 'v', '')),
	CountW = LEN(Fullword) - LEN(REPLACE(Fullword, 'w', '')),
	CountX = LEN(Fullword) - LEN(REPLACE(Fullword, 'x', '')),
	CountY = LEN(Fullword) - LEN(REPLACE(Fullword, 'y', '')),
	CountZ = LEN(Fullword) - LEN(REPLACE(Fullword, 'z', ''))
FROM dbo.WordsExploded

UPDATE WordsExploded SET Letter01 = NULL WHERE Letter01 = ''
UPDATE WordsExploded SET Letter02 = NULL WHERE Letter02 = ''
UPDATE WordsExploded SET Letter03 = NULL WHERE Letter03 = ''
UPDATE WordsExploded SET Letter04 = NULL WHERE Letter04 = ''
UPDATE WordsExploded SET Letter05 = NULL WHERE Letter05 = ''
UPDATE WordsExploded SET Letter06 = NULL WHERE Letter06 = ''
UPDATE WordsExploded SET Letter07 = NULL WHERE Letter07 = ''
UPDATE WordsExploded SET Letter08 = NULL WHERE Letter08 = ''
UPDATE WordsExploded SET Letter09 = NULL WHERE Letter09 = ''
UPDATE WordsExploded SET Letter10 = NULL WHERE Letter10 = ''
UPDATE WordsExploded SET Letter11 = NULL WHERE Letter11 = ''
UPDATE WordsExploded SET Letter12 = NULL WHERE Letter12 = ''
UPDATE WordsExploded SET Letter13 = NULL WHERE Letter13 = ''
UPDATE WordsExploded SET Letter14 = NULL WHERE Letter14 = ''
UPDATE WordsExploded SET Letter15 = NULL WHERE Letter15 = ''
UPDATE WordsExploded SET Letter16 = NULL WHERE Letter16 = ''
UPDATE WordsExploded SET Letter17 = NULL WHERE Letter17 = ''
UPDATE WordsExploded SET Letter18 = NULL WHERE Letter18 = ''
UPDATE WordsExploded SET Letter19 = NULL WHERE Letter19 = ''
UPDATE WordsExploded SET Letter20 = NULL WHERE Letter20 = ''
UPDATE WordsExploded SET Letter21 = NULL WHERE Letter21 = ''
UPDATE WordsExploded SET Letter22 = NULL WHERE Letter22 = ''
UPDATE WordsExploded SET Letter23 = NULL WHERE Letter23 = ''
UPDATE WordsExploded SET Letter24 = NULL WHERE Letter24 = ''
UPDATE WordsExploded SET Letter25 = NULL WHERE Letter25 = ''
UPDATE WordsExploded SET Letter26 = NULL WHERE Letter26 = ''
UPDATE WordsExploded SET Letter27 = NULL WHERE Letter27 = ''
UPDATE WordsExploded SET Letter28 = NULL WHERE Letter28 = ''
UPDATE WordsExploded SET Letter29 = NULL WHERE Letter29 = ''
UPDATE WordsExploded SET Letter30 = NULL WHERE Letter30 = ''
UPDATE WordsExploded SET Letter31 = NULL WHERE Letter31 = ''
UPDATE WordsExploded SET Letter32 = NULL WHERE Letter32 = ''
UPDATE WordsExploded SET Letter33 = NULL WHERE Letter33 = ''
UPDATE WordsExploded SET Letter34 = NULL WHERE Letter34 = ''
UPDATE WordsExploded SET Letter35 = NULL WHERE Letter35 = ''
UPDATE WordsExploded SET Letter36 = NULL WHERE Letter36 = ''
UPDATE WordsExploded SET Letter37 = NULL WHERE Letter37 = ''
UPDATE WordsExploded SET Letter38 = NULL WHERE Letter38 = ''
UPDATE WordsExploded SET Letter39 = NULL WHERE Letter39 = ''
UPDATE WordsExploded SET Letter40 = NULL WHERE Letter40 = ''

GO