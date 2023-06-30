"Task Description Link - https://leetcode.com/problems/remove-duplicates-from-sorted-array/

METHOD if_oo_adt_classrun~main.

    TYPES:i_table TYPE TABLE OF i WITH DEFAULT KEY.
    DATA: lt_nums TYPE i_table,
          lv_i    TYPE i VALUE 1,
          lv_j    TYPE i VALUE 1,
          lv_n    TYPE i.

    lt_nums = VALUE #( ( 0 ) ( 0 ) ( 1 ) ( 1 ) ( 1 ) ( 2 ) ( 2 ) ( 3 ) ( 3 ) ( 4 ) ).
    lv_n = lines( lt_nums ).

    WHILE lv_j <= lv_n.
      IF lt_nums[ lv_i ] <> lt_nums[ lv_j ].
        lv_i = lv_i + 1.
        lt_nums[ lv_i ] = lt_nums[ lv_j ].
      ENDIF.
      lv_j = lv_j + 1.
    ENDWHILE.

    out->write( lv_i ).
  ENDMETHOD.
