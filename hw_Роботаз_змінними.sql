
--Обчислення суми двох чисел

DECLARE @num1 INT = 2;
DECLARE @num2 INT = 2;
DECLARE @result INT = @num1 + @num2;
PRINT @result;
GO

--2. Переведення тексту в верхній регістр

DECLARE @text VARCHAR(100);
DECLARE @upperText VARCHAR(100);
SET @text = 'Test Text';
SET @upperText = UPPER(@text);
PRINT @upperText;
GO

--3. Розрахунок добутку числа на певну константу

CREATE PROCEDURE Test
    @num INT,
	@result INT OUTPUT
AS
BEGIN
    DECLARE @const INT = 5;
    SET @result = @num * @const;
END;
GO

DECLARE @num INT = 2;
DECLARE @result INT
EXEC Test @num = @num, @result = @result OUTPUT;
PRINT @result
GO

--4. Перевірка, чи є число парним

DECLARE @num INT = 10+5;
DECLARE @result NVARCHAR(50);
IF @num % 2 = 0
BEGIN
    SET @result = 'The number is even';
END
ELSE
BEGIN
    SET @result = 'The number is odd';
END

PRINT @result;
GO