--175. Combine Two Tables
SELECT PERSON.Firstname --Case-sensitive diff for this challenge
    , PERSON.Lastname
    , ADDRESS.City
    , ADDRESS.State
FROM PERSON
    LEFT JOIN ADDRESS
        ON ADDRESS.PERSONID = PERSON.PERSONID
