SELECT CurrentPort.VoyageId, CurrentPort.PortIdCurrent as CurrentPortId, NextPort.PortIdCurrent as NextPortId, CurrentPort.DepartDate as currentDepart, CurrentPort.ArriveDate as currentArive, CurrentPort.ShipId, CurrentPort.ArriveDate as CurrentArrivalDate, NextPort.DepartDate as NextDepartionDate
FROM F_ShipmentVoyage AS CurrentPort
INNER JOIN F_ShipmentVoyage AS NextPort ON CurrentPort.PortIdNext = NextPort.PortIdCurrent
AND CurrentPort.VoyageId = NextPort.VoyageId
AND CurrentPort.ShipId = NextPort.ShipId
GROUP BY CurrentPort.VoyageId, CurrentPort.PortIdCurrent, CurrentPort.DepartDate, CurrentPort.ArriveDate, NextPort.PortIdCurrent, NextPort.DepartDate, CurrentPort.ShipId
GO