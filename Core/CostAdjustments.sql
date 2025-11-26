
-- All districts costs x100
UPDATE Districts SET Cost=Cost * 100;
UPDATE Districts SET Cost=0    WHERE DistrictType='DISTRICT_WONDER';
UPDATE Districts SET Cost=100  WHERE DistrictType='DISTRICT_RANDOM_DISTRICT_LAND';
UPDATE Districts SET Cost=100  WHERE DistrictType='DISTRICT_RANDOM_DISTRICT_COAST';

-- All units cost x100
UPDATE Units SET Cost = Cost * 100 WHERE UnitType NOT IN ('UNIT_RANDOM_UNIT_LAND', 'UNIT_RANDOM_UNIT_SEA');
UPDATE UnitCosts SET FaithCost = FaithCost * 10 WHERE UnitType NOT IN ('UNIT_RANDOM_UNIT_LAND', 'UNIT_RANDOM_UNIT_SEA');

-- Military nuclear projects also more expensive
UPDATE Projects SET Cost = Cost * 10 WHERE ProjectType IN (
	'PROJECT_MANHATTAN_PROJECT',
	'PROJECT_OPERATION_IVY',
	'PROJECT_BUILD_NUCLEAR_DEVICE',
	'PROJECT_BUILD_THERMONUCLEAR_DEVICE'
);

--UPDATE Projects SET Cost = 500 WHERE ProjectType LIKE 'PROJECT_HERO_%';
