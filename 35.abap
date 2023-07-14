"Task description link - https://leetcode.com/problems/search-insert-position/

METHOD if_oo_adt_classrun~main.


    DATA: lt_array  TYPE STANDARD TABLE OF i,
          lv_target TYPE i VALUE 7,
          lv_left   TYPE i VALUE 1,
          lv_right  TYPE i,
          lv_mid    TYPE i.



    lt_array = VALUE #( ( 1 ) ( 3 ) ( 5 ) ( 6 ) ).
    lv_right = lines( lt_array ).

    WHILE lv_left <= lv_right.

      lv_mid = ( lv_left + lv_right ) / 2.

      IF  lt_array[ lv_mid ] = lv_target.
        lv_left = lv_mid.
        EXIT.
      ELSEIF  lt_array[ lv_mid ] > lv_target.
        lv_right = lv_mid - 1.
      ELSE.
        lv_left = lv_mid + 1.
      ENDIF.

    ENDWHILE.



    out->write( lv_left ).

  ENDMETHOD.
