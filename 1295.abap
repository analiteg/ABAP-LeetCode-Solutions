"Task description link - https://leetcode.com/problems/find-numbers-with-even-number-of-digits/

CLASS zcl_linkedin_02 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    CLASS-METHODS:

      number_of_digits
        IMPORTING iv_number        TYPE i
        RETURNING VALUE(rv_result) TYPE i.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.

CLASS zcl_linkedin_02 IMPLEMENTATION.

  METHOD number_of_digits.
    rv_result = 0.
    DATA(n) = iv_number.
    WHILE n > 0.
      n = n DIV 10.
      rv_result = rv_result + 1.
    ENDWHILE.
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
    TYPES: i_table TYPE TABLE OF i WITH EMPTY KEY.
    DATA:  lt_array         TYPE i_table,
           lv_count         TYPE i VALUE 0,
           lt_array_result  TYPE i_table.
    lt_array = VALUE #( ( 44 ) ( 526 ) ( 15 ) ( 7 ) ( 38968 ) ( 15 ) ( 7896 ) ( 865 ) ).

    LOOP AT lt_array ASSIGNING FIELD-SYMBOL(<fs>).
      IF number_of_digits( <fs> ) MOD 2 = 0.
        lt_array_result = VALUE #( BASE lt_array_result ( <fs> )  ).
      ENDIF.
    ENDLOOP.

    out->write( lt_array_result ).
  ENDMETHOD.
ENDCLASS.
