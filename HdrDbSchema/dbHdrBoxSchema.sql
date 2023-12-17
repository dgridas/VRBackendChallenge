
CREATE TABLE HdrBox (
	Id SERIAL PRIMARY KEY,
    SupplierIdentifier VARCHAR(128) NOT NULL,
    Identifier VARCHAR(128) NOT NULL,
    CreatedOn TIMESTAMP NOT NULL,
	ModifiedOn TIMESTAMP NOT NULL
);

CREATE TABLE HdrBoxContent (

	Id SERIAL PRIMARY KEY,
	HdrBoxId INT NOT NULL,
    PoNumber VARCHAR(128) NOT NULL,
    Isbn VARCHAR(128) NOT NULL,
    Quantity INT NOT NULL,
	CreatedOn TIMESTAMP NOT NULL,
	ModifiedOn TIMESTAMP NOT NULL,
	CONSTRAINT FK_HdrBox FOREIGN KEY(HdrBoxId) REFERENCES HdrBox(Id)
);
