/*success sql*/ select a,b,c from t where a > 1;
/*error sql*/ select * from t where ;
/*success sql*/ select a,b,c from t where b > 1;
