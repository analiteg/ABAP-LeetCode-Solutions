"Task Description Link - https://leetcode.com/problems/remove-element/

METHOD if_oo_adt_classrun~main.

    TYPES: i_table         TYPE TABLE OF i WITH DEFAULT KEY.
    DATA: lt_nums TYPE i_table,
          lv_i    TYPE i VALUE 1,
          lv_n    TYPE i,
          lv_val  TYPE i VALUE 3.

    lt_nums = VALUE #( ( 3 ) ( 2 ) ( 2 ) ( 3 ) ).
    lv_n = lines( lt_nums ).

    WHILE lv_i <= lv_n.
      IF lt_nums[ lv_i ] = lv_val.
        lt_nums[ lv_i ] = lt_nums[ lv_n ].
        lv_n = lv_n - 1.
      ELSE.
        lv_i = lv_i + 1.
      ENDIF.
    ENDWHILE.
    out->write( lv_n ).

  ENDMETHOD.
