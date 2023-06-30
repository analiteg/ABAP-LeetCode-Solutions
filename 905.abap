"Task description link - https://leetcode.com/problems/sort-array-by-parity/

TYPES:i_table TYPE TABLE OF i WITH DEFAULT KEY.
    DATA: lt_nums TYPE i_table,
          lv_i    TYPE i VALUE 1,
          lv_j    TYPE i VALUE 1,
          lv_tmp  TYPE i VALUE 0.

    lt_nums = VALUE #( ( 3 ) ( 1 ) ( 2 ) ( 4 ) ).
    lv_j = lines( lt_nums ).

    WHILE lv_i < lv_j.
      IF lt_nums[ lv_i ] MOD 2 > lt_nums[ lv_j ] MOD 2.
        lv_tmp = lt_nums[ lv_i ].
        lt_nums[ lv_i ] = lt_nums[ lv_j ].
        lt_nums[ lv_j ] = lv_tmp.
      ENDIF.

      IF lt_nums[ lv_i ] MOD 2 = 0.
        lv_i += 1.
      ENDIF.
      IF lt_nums[ lv_j ] MOD 2 = 1.
        lv_j -= 1.
      ENDIF.
    ENDWHILE.
