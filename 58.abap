CLASS zcl_length_last_word DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    METHODS get_length
      IMPORTING iv_string        TYPE string
      RETURNING VALUE(rv_length) TYPE i.

    INTERFACES if_oo_adt_classrun.
ENDCLASS.


CLASS zcl_length_last_word IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( get_length( '   fly me   to   the moon  ' ) ).
  ENDMETHOD.

  METHOD get_length.
    DATA(lv_string) = iv_string.
    DATA lt_stack TYPE STANDARD TABLE OF string.
    SPLIT lv_string AT ' ' INTO TABLE lt_stack.
    rv_length = strlen( lt_stack[ lines( lt_stack ) ] ).
  ENDMETHOD.
ENDCLASS.
