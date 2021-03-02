CREATE TABLE category 
(catcode VARCHAR2(3),
catdesc VARCHAR2(11) NOT NULL,
CONSTRAINT category_code_pk PRIMARY KEY (catcode));




INSERT INTO category VALUES ('BUS', 'BUSINESS');
INSERT INTO category VALUES ('CHN', 'CHILDREN');
INSERT INTO category VALUES ('COK', 'COOKING');
INSERT INTO category VALUES ('COM', 'COMPUTER');
INSERT INTO category VALUES ('FAL', 'FAMILY LIFE');
INSERT INTO category VALUES ('FIT', 'FITNESS');
INSERT INTO category VALUES ('SEH', 'SELF HELP');
INSERT INTO category VALUES ('LIT', 'LITERATURE');

COMMIT;




ALTER TABLE books
ADD (catcode VARCHAR2(3),
CONSTRAINT books_catcode_fk FOREIGN KEY (catcode)
REFERENCES category(catcode));




UPDATE books
SET catcode = 'BUS'
WHERE category = 'BUSINESS';

UPDATE books
SET catcode = 'CHN'
WHERE category = 'CHILDREN';

UPDATE books
SET catcode = 'COK'
WHERE category = 'COOKING';

UPDATE books
SET catcode = 'COM'
WHERE category = 'COMPUTER';

UPDATE books
SET catcode = 'FAL'
WHERE category = 'FAMILY LIFE';

UPDATE books
SET catcode = 'FIT'
WHERE category = 'FITNESS';

UPDATE books
SET catcode = 'SEH'
WHERE category = 'SELF HELP';

UPDATE books
SET catcode = 'LIT'
WHERE category = 'LITERATURE';

COMMIT;




SELECT * FROM books;




ALTER TABLE books
DROP COLUMN category;
