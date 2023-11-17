# Employee_RH
Ce projet en PLSQL 
1.	On dispose d’un package PLSQL  dbms_utility qui offre entre autres, une procédure get_dependency, permettant d’afficher la liste des objets qui dépendent d’un autre objet
2.	 (par exemple toutes les tables, vues, procédures,… qui dépendent  de la table jobs). Voici l’information sur cette procédure :
3.	 2.	La table Employees a les besoins suivants :
a.	Interdire tout changement  de l’émail de l’employé après son insertion.
b.	S’assurer que le salaire d’un employé ne puisse pas augmenter de plus de 10% du salaire actuel.
Si le nouveau salaire dépasse le 10%, on déclenche une exception et on ajoute une ligne dans une tablesql, journal, indiquant le id de l’employé,le nom de l’utilisateur qui a
exécuté l’instruction sql et  la date du jour.
•	Créer le (ou les) déclencheur(s) pour répondre à ces besoins.
•	Tester le fonctionnement du (ou des) déclencheurs ainsi créé(s)(il faut écrire le code (SQL ou PL/SQL) qui permet de faire le test.
3.	On voudrait créer un package qui va regrouper plusieurs traitement sur la table Employees. Parmi ces traitements :
a.	Une fonction qui permet de retourner le nombre d’emplois occupés par un employé quelconque.
b.	Une procédure qui sera utilisée pour  retourner dans une collection PL/SQL, les informations (toutes les colonnes de la table departments) sur les départements ayant des employés dont le salaire dépasse une certaine valeur que la procédure reçoit lorsqu’elle est appelée.
•	Créer le package
•	Créer un bloc pl/sql anonyme qui permet de tester la fonction et la procédure. Le test doit permettre d’afficher les résultats.

