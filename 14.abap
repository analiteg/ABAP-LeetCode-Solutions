"Tasl description link - https://leetcode.com/problems/longest-common-prefix/
METHOD if_oo_adt_classrun~main.

    DATA: lt_strings TYPE STANDARD TABLE OF string,
          lv_prefix  TYPE string,
          lv_i       TYPE i VALUE 2,
          lv_lines   TYPE i.

    lt_strings = VALUE #(
                   ( `flower` )
                   ( `flow`   )
                   ( `flight` )
                              ).

    lv_lines = lines( lt_strings ).
    IF lv_lines = 0.
      lv_prefix = ''.
      EXIT.
    ENDIF.
    lv_prefix = lt_strings[ 1 ].
    WHILE lv_i <= lv_lines.
      WHILE  lt_strings[ lv_i ] NS  lv_prefix.
        lv_prefix = substring( val = lv_prefix
                               off = 0
                               len = strlen( lv_prefix ) - 1 ).
      ENDWHILE.
      lv_i += 1.
    ENDWHILE.
    out->write( lv_prefix ).
  ENDMETHOD.
