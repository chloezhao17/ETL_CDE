SELECT l.name,l.address,s.walkscore,s."ws description",s.bike,s."b description"
FROM location as l
JOIN scores as s
ON l.address=s.address;