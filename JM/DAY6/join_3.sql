-- 있었는데요 없었습니다

SELECT I.ANIMAL_ID, I.NAME
FROM ANIMAL_INS I, ANIMAL_OUTS O
WHERE I.ANIMAL_ID = O.ANIMAL_ID
AND 
I.DATETIME > O.DATETIME
ORDER BY I.DATETIME