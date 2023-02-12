-- Hospital management has requested that a report be generated from the 
-- Patient and Finance tables, to show the types of treatments currently 
-- being undertaken from the current list of all treatments on the system. 
-- They have asked for the treatmentCost and treatment to be returned.

SELECT treatmentCost, treatment
FROM Patient 
INTERSECT
SELECT treatmentCost, treatment
FROM Finance;