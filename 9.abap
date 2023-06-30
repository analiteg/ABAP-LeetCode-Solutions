"Task description link - https://leetcode.com/problems/palindrome-number/

METHOD if_oo_adt_classrun~main.

    DATA:
      x      TYPE i VALUE 323,
      n      TYPE i VALUE 0,
      rev_x  TYPE i VALUE 0,
      result TYPE abap_boolean VALUE abap_false.

    n = x.
    IF  n < 0 OR ( ( n <> 0 ) AND ( n MOD 10 )  = 0 ).
      EXIT.
    ELSE.

      WHILE n > 0.
        rev_x = 10 * rev_x + ( n MOD 10 ).
        n = n DIV 10.
      ENDWHILE.

      IF x = rev_x.
        result = abap_true.
      ENDIF.

    ENDIF.

    out->write( result ).




  ENDMETHOD.
