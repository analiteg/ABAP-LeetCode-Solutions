"Task description link - https://leetcode.com/problems/move-zeroes/

TYPES:i_table TYPE TABLE OF i WITH DEFAULT KEY.
    DATA: lt_nums TYPE i_table,
          lv_i    TYPE i VALUE 1,
          lv_j    TYPE i VALUE 1,
          lv_tmp  TYPE i VALUE 0.

    lt_nums = VALUE #( ( 0 ) ( 1 ) ( 0 ) ( 3 ) ( 12 )  ).
    DATA(lv_size) = lines( lt_nums ).

    WHILE lv_j <= lv_size.
      IF lt_nums[ lv_j ] = 0.
        lv_j += 1.
      ELSE.
        lv_tmp          = lt_nums[ lv_j ].
        lt_nums[ lv_j ] = lt_nums[ lv_i ].
        lt_nums[ lv_i ] = lv_tmp.
        lv_j += 1.
        lv_i += 1.
      ENDIF.
    ENDWHILE.

    out->write(  lt_nums ).
