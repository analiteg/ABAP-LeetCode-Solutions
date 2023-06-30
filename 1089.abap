"Task Description Link - https://leetcode.com/problems/duplicate-zeros/

METHOD if_oo_adt_classrun~main.

    TYPES:i_table     TYPE TABLE OF i WITH DEFAULT KEY.
    DATA: lt_array    TYPE i_table,
          lv_pos_zero TYPE i VALUE 0,
          count       TYPE i VALUE 1.

    lt_array = VALUE #( ( 1 ) ( 0 ) ( 2 ) ( 3 ) ( 0 ) ( 4 ) ( 5 ) ( 0 ) ).

    DATA(lv_size) = lines( lt_array ).
    WHILE  count <= lv_size - lv_pos_zero.
      IF lt_array[ count ] = 0.
        IF count = lv_size - lv_pos_zero.
          lt_array[ lv_size ] = 0.
          lv_size = lv_size - 1.
          EXIT.
        ENDIF.
        lv_pos_zero = lv_pos_zero + 1.
      ENDIF.
      count = count + 1.
    ENDWHILE.

    DATA(last) = lv_size - lv_pos_zero.
    WHILE last > 0.
      IF lt_array[ last ] = 0.
        lt_array[ last + lv_pos_zero ] = 0.
        lv_pos_zero = lv_pos_zero - 1.
        lt_array[ last + lv_pos_zero ] = 0.
      ELSE.
        lt_array[ last + lv_pos_zero ] = lt_array[ last ].
      ENDIF.
      last = last - 1.
    ENDWHILE.

    out->write( lt_array ).

  ENDMETHOD.
