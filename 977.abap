"Task description link - https://leetcode.com/problems/squares-of-a-sorted-array/

METHOD if_oo_adt_classrun~main.

    TYPES:i_table         TYPE TABLE OF i WITH DEFAULT KEY.
    DATA: lt_array        TYPE i_table,
          lt_array_result TYPE i_table.

    lt_array = VALUE #( ( -3 ) ( -2 ) ( 5 ) ( 7 ) ( 12 ) ).

    LOOP AT lt_array ASSIGNING FIELD-SYMBOL(<fs>).
      lt_array_result = VALUE #( BASE lt_array_result ( <fs> * <fs> )  ).
    ENDLOOP.
    SORT lt_array_result .

    out->write( lt_array_result  ).

  ENDMETHOD.
