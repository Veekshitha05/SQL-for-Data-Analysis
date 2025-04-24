-- Index on Geo since it's used in JOINs and WHERE clauses
CREATE INDEX idx_geo_geo ON geo(Geo(100));

-- Index on Region for WHERE filters or grouping
CREATE INDEX idx_geo_region ON geo(Region(100));
