"Task description link - https://leetcode.com/problems/two-sum/

 METHOD if_oo_adt_classrun~main.

 "Data for Check time execution
    DATA: lv_timestamp_start TYPE timestampl,
          lv_timestamp_end   TYPE timestampl.

    "Start timer
    GET TIME STAMP FIELD lv_timestamp_start.


    TYPES:i_table TYPE TABLE OF i WITH DEFAULT KEY.
    DATA: lt_nums   TYPE i_table,
          lt_result TYPE i_table,
          lv_i      TYPE i VALUE 1,
          lv_j      TYPE i VALUE 1,
          lv_target TYPE i VALUE 9,

          BEGIN OF map,
            value TYPE i,
            index TYPE i,
          END OF map,
          lt_map LIKE HASHED TABLE OF map
            WITH UNIQUE KEY index.

    lt_nums = VALUE #( ( 2 ) ( 7 ) ( 7 ) ( 15 ) ).
    lv_j = lines( lt_nums ).

    DO lv_j TIMES.

      READ TABLE lt_map TRANSPORTING NO FIELDS
       WITH KEY value = ( lv_target - lt_nums[ lv_i ] ).

      IF sy-subrc EQ 0.

        READ TABLE lt_map WITH KEY
        value = ( lv_target - lt_nums[ lv_i ] )
        ASSIGNING FIELD-SYMBOL(<val>).

        APPEND lv_i TO lt_result.
        APPEND <val>-index  TO lt_result.

        EXIT.

      ENDIF.

      INSERT VALUE #( value = lt_nums[ lv_i ] index = lv_i )
       INTO TABLE lt_map.

      lv_i += 1.

    ENDDO.

 "Stop timer
    GET TIME STAMP FIELD lv_timestamp_end.
    out->write( lv_timestamp_end - lv_timestamp_start ).
  ENDMETHOD.
