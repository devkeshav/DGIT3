*&---------------------------------------------------------------------*
*& Report  ZRSUSR200
*&
*&---------------------------------------------------------------------*
*&
*&
*&---------------------------------------------------------------------*

REPORT  ZRSUSR200.
  AUTHORITY-CHECK OBJECT 'ZTEST12341'
    ID 'ACTVT'     FIELD '03'.

IF SY-SUBRC NE 0.
MESSAGE E006(PRS) WITH 'No Authorization'.
ENDIF.
CALL TRANSACTION 'SU01'.
