select classe.nom, count(ideleve) AS NBeleve from classe inner join eleve ON eleve.IDclasse=classe.IDclasse group by classe.nom;