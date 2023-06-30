"Link description task - https://leetcode.com/problems/roman-to-integer/
METHOD if_oo_adt_classrun~main.

    DATA:
      ans TYPE i VALUE 0,
      num TYPE i VALUE 0,
      len TYPE i VALUE 0,
      s   TYPE string VALUE 'IV'.

    len = strlen( s ).

    DO len TIMES.

      num = SWITCH #( substring( val = s
                                off = len - sy-index
                                len = 1 )

                      WHEN 'I' THEN 1
                      WHEN 'V' THEN 5
                      WHEN 'X' THEN 10
                      WHEN 'L' THEN 50
                      WHEN 'C' THEN 100
                      WHEN 'D' THEN 500
                      WHEN 'M' THEN 1000
                      ELSE 0
                                        ).

      IF ( 4 * num < ans ).
        ans -= num.
      ELSE.
        ans += num.
      ENDIF.
    ENDDO.

    out->write( ans ).

  ENDMETHOD.
