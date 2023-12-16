--(Question 1)------------------------------------------------------------------------------
+----------------+
| HeadOfState    |
+----------------+
| George W. Bush |
+----------------+
1 row in set (0.00 sec)

mysql> SELECT DISTINCT HeadOfState
    -> FROM Country
    -> WHERE HeadOfState = 'George W. Bush';

--(Question 2)------------------------------------------------------------------------------
mysql> UPDATE Country
    -> SET HeadOfState = 'Donald J. Trump'
    -> WHERE HeadOfState = 'George W. Bush';
Query OK, 7 rows affected (0.00 sec)
Rows matched: 7  Changed: 7  Warnings: 0

SELECT DISTINCT HeadOfState FROM Country WHERE HeadOfState = 'Donald J. Trump';
+-----------------+
| HeadOfState     |
+-----------------+
| Donald J. Trump |
+-----------------+
1 row in set (0.00 sec)


--(Question 3)------------------------------------------------------------------------------
mysql> SELECT Name
    -> FROM Country
    -> WHERE IndepYear IS NULL;
+----------------------------------------------+
| Name                                         |
+----------------------------------------------+
| Aruba                                        |
| Anguilla                                     |
| Netherlands Antilles                         |
| American Samoa                               |
| Antarctica                                   |
| French Southern territories                  |
| Bermuda                                      |
| Bouvet Island                                |
| Cocos (Keeling) Islands                      |
| Cook Islands                                 |
| Christmas Island                             |
| Cayman Islands                               |
| Western Sahara                               |
| Falkland Islands                             |
| Faroe Islands                                |
| Gibraltar                                    |
| Guadeloupe                                   |
| Greenland                                    |
| French Guiana                                |
| Guam                                         |
| Hong Kong                                    |
| Heard Island and McDonald Islands            |
| British Indian Ocean Territory               |
| Macao                                        |
| Northern Mariana Islands                     |
| Montserrat                                   |
| Martinique                                   |
| Mayotte                                      |
| New Caledonia                                |
| Norfolk Island                               |
| Niue                                         |
| Pitcairn                                     |
| Puerto Rico                                  |
| Palestine                                    |
| French Polynesia                             |
| Reunion                                      |
| South Georgia and the South Sandwich Islands |
| Saint Helena                                 |
| Svalbard and Jan Mayen                       |
| Saint Pierre and Miquelon                    |
| Turks and Caicos Islands                     |
| Tokelau                                      |
| East Timor                                   |
| United States Minor Outlying Islands         |
| Virgin Islands, British                      |
| Virgin Islands, U.S.                         |
| Wallis and Futuna                            |
+----------------------------------------------+
47 rows in set (0.00 sec)

--(Question 4)------------------------------------------------------------------------------
mysql> SELECT Name, Continent
    -> FROM Country
    -> WHERE Population > 1000000000 AND LifeExpectancy<= 80 AND 
    -> LifeExpectancy >= 70;

+-------+-----------+
| Name  | Continent |
+-------+-----------+
| China | Asia      |
+-------+-----------+
1 row in set (0.00 sec)

--(Question 5)------------------------------------------------------------------------------
mysql> SELECT Name 
	-> FROM Country                                                                 
    -> WHERE Continent = 'South America' OR Continent = 'North America';

+----------------------------------+
| Name                             |
+----------------------------------+
| Aruba                            |
| Anguilla                         |
| Netherlands Antilles             |
| Argentina                        |
| Antigua and Barbuda              |
| Bahamas                          |
| Belize                           |
| Bermuda                          |
| Bolivia                          |
| Brazil                           |
| Barbados                         |
| Canada                           |
| Chile                            |
| Colombia                         |
| Costa Rica                       |
| Cuba                             |
| Cayman Islands                   |
| Dominica                         |
| Dominican Republic               |
| Ecuador                          |
| Falkland Islands                 |
| Guadeloupe                       |
| Grenada                          |
| Greenland                        |
| Guatemala                        |
| French Guiana                    |
| Guyana                           |
| Honduras                         |
| Haiti                            |
| Jamaica                          |
| Saint Kitts and Nevis            |
| Saint Lucia                      |
| Mexico                           |
| Montserrat                       |
| Martinique                       |
| Nicaragua                        |
| Peru                             |
| Puerto Rico                      |
| Paraguay                         |
| El Salvador                      |
| Saint Pierre and Miquelon        |
| Suriname                         |
| Turks and Caicos Islands         |
| Trinidad and Tobago              |
| Uruguay                          |
| United States                    |
| Saint Vincent and the Grenadines |
| Venezuela                        |
| Virgin Islands, British          |
| Virgin Islands, U.S.             |
+----------------------------------+
50 rows in set (0.00 sec)
