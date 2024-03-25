"Task description link - https://leetcode.com/problems/valid-parentheses/

CLASS zcl_valid_parentheses DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS valid_parentheses
      IMPORTING iv_string     TYPE string
      RETURNING VALUE(result) TYPE abap_bool.

    INTERFACES if_oo_adt_classrun.
ENDCLASS.


CLASS zcl_valid_parentheses IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( valid_parentheses( iv_string = '()[]{}' ) ).
  ENDMETHOD.

  METHOD valid_parentheses.
    TYPES:
      BEGIN OF parentheses,
        symbol TYPE c LENGTH 1,
      END OF parentheses.

    DATA lv_index       TYPE i.
    DATA lv_char        TYPE c LENGTH 1.
    DATA lt_opened      TYPE TABLE OF parentheses.
    DATA lt_parentheses TYPE TABLE OF parentheses.

    lt_parentheses = VALUE #( ( symbol = '(' )
                              ( symbol = '{' )
                              ( symbol = '[' ) ).

    DATA(lv_string) = iv_string.
    DATA(lv_length) = strlen( lv_string ).

    WHILE lv_index < lv_length.
      lv_char = lv_string+lv_index(1).

      IF line_exists( lt_parentheses[ symbol = lv_char ] ).
        APPEND lv_char TO lt_opened.
      ELSE.
        IF    lt_opened IS INITIAL
           OR ( lv_char = ')' AND lt_opened[ lines( lt_opened ) ] <> '(' )
           OR ( lv_char = '}' AND lt_opened[ lines( lt_opened ) ] <> '{' )
           OR ( lv_char = ']' AND lt_opened[ lines( lt_opened ) ] <> '[' ).
          RETURN abap_false.
        ELSE.
          DELETE lt_opened INDEX lines( lt_opened ).
        ENDIF.
      ENDIF.

      lv_index += 1.
    ENDWHILE.

    IF lt_opened IS INITIAL.
      RETURN abap_true.
    ENDIF.

  ENDMETHOD.
ENDCLASS.
