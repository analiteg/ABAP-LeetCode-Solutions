"Solution description link - https://leetcode.com/problems/max-consecutive-ones/

    TYPES:i_table   TYPE TABLE OF i WITH EMPTY KEY.
    DATA: lt_array  TYPE i_table,
          lv_count  TYPE i VALUE 0,
          lv_result TYPE i VALUE 0.

    lt_array = VALUE #( ( 1 ) ( 1 ) ( 0 ) ( 0 ) ( 1 ) ( 0 ) ( 1 ) ( 1 ) ( 1 ) ).

    LOOP AT lt_array ASSIGNING FIELD-SYMBOL(<fs>).
      DATA(lv_tabix) = sy-tabix.
      IF lt_array[ lv_tabix ] = 0.
        lv_count = 0.
      ELSE.
        lv_count = lv_count + 1.
        IF lv_result <  lv_count.
          lv_result = lv_count.
        ENDIF.
      ENDIF.
    ENDLOOP.
