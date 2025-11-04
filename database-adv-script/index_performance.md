# BEFORE ADDING INDEXES

addr  opcode         p1    p2    p3    p4             p5  comment      
----  -------------  ----  ----  ----  -------------  --  -------------
0     Init           0     54    0                    0   Start at 54
1     SorterOpen     2     17    0     k(1,-B)        0   
2     OpenRead       1     2     0     7              0   root=2 iDb=0; User
3     OpenRead       3     4     0     k(1,)          2   root=4 iDb=0; sqlite_autoindex_User_2
4     OpenRead       0     7     0     8              0   root=7 iDb=0; Booking
5     String8        0     1     0     alicejohnson@gmail.com 0   r[1]='alicejohnson@gmail.com'
6     SeekGE         3     33    1     1              0   key=r[1]
7     IdxGT          3     33    1     1              0   key=r[1]
8     DeferredSeek   3     0     1                    0   Move 1 to 3.rowid if needed
9     Rewind         0     33    0                    0   
10      Column         0     6     2                    0   r[2]= cursor 0 column 6
11      Ne             3     32    2     BINARY-8       82  if r[2]!=r[3] goto 32
12      Column         0     2     2                    0   r[2]= cursor 0 column 2
13      Column         1     0     4                    0   r[4]= cursor 1 column 0
14      Ne             4     32    2     BINARY-8       81  if r[2]!=r[4] goto 32
15      Column         0     0     6                    0   r[6]= cursor 0 column 0
16      Column         0     1     7                    0   r[7]= cursor 0 column 1
17      Column         0     2     8                    0   r[8]= cursor 0 column 2
18      Column         0     4     9                    0   r[9]= cursor 0 column 4
19      Column         0     5     10                   0   r[10]= cursor 0 column 5
20      Column         0     6     11                   0   r[11]= cursor 0 column 6
21      Column         0     7     12                   0   r[12]=Booking.created_at
22      Column         1     0     13                   0   r[13]= cursor 1 column 0
23      Column         1     1     14                   0   r[14]= cursor 1 column 1
24      Column         1     2     15                   0   r[15]= cursor 1 column 2
25      Column         3     0     16                   0   r[16]= cursor 3 column 0
26      Column         1     4     17                   0   r[17]= cursor 1 column 4
27      Column         1     5     18                   0   r[18]= cursor 1 column 5
28      Column         1     6     19                   0   r[19]=User.created_at
29      Column         0     3     5                    0   r[5]= cursor 0 column 3
30      MakeRecord     5     15    21                   0   r[21]=mkrec(r[5..19])
31      SorterInsert   2     21    5     15             0   key=r[21]
32    Next           0     10    0                    1   
33    OpenPseudo     4     22    17                   0   17 columns in r[22]
34    SorterSort     2     53    0                    0   
35      SorterData     2     22    4                    0   r[22]=data
36      Column         4     14    20                   0   r[20]=created_at
37      Column         4     13    19                   0   r[19]=phone_number
38      Column         4     12    18                   0   r[18]=password_hash
39      Column         4     11    17                   0   r[17]=email
40      Column         4     10    16                   0   r[16]=last_name
41      Column         4     9     15                   0   r[15]=first_name
42      Column         4     8     14                   0   r[14]=user_id
43      Column         4     7     13                   0   r[13]=created_at
44      Column         4     6     12                   0   r[12]=status
45      Column         4     5     11                   0   r[11]=total_price
46      Column         4     4     10                   0   r[10]=end_date
47      Column         4     0     9                    0   r[9]=start_date
48      Column         4     3     8                    0   r[8]=user_id
49      Column         4     2     7                    0   r[7]=property_id
50      Column         4     1     6                    0   r[6]=booking_id
51      ResultRow      6     15    0                    0   output=r[6..20]
52    SorterNext     2     35    0                    0   
53    Halt           0     0     0                    0   
54    Transaction    0     0     6     0              1   usesStmtJournal=0
55    String8        0     3     0     confirmed      0   r[3]='confirmed'
56    Goto           0     1     0                    0   


# AFTER ADDING INDEXES

addr  opcode         p1    p2    p3    p4             p5  comment      
----  -------------  ----  ----  ----  -------------  --  -------------
0     Init           0     56    0                    0   Start at 56
1     SorterOpen     2     17    0     k(1,-B)        0   
2     OpenRead       1     2     0     7              0   root=2 iDb=0; User
3     OpenRead       3     4     0     k(1,)          2   root=4 iDb=0; sqlite_autoindex_User_2
4     OpenRead       0     7     0     8              0   root=7 iDb=0; Booking
5     OpenRead       4     18    0     k(2,,)         2   root=18 iDb=0; idx_booking_user_id
6     String8        0     1     0     alicejohnson@gmail.com 0   r[1]='alicejohnson@gmail.com'
7     SeekGE         3     35    1     1              0   key=r[1]
8     IdxGT          3     35    1     1              0   key=r[1]
9     DeferredSeek   3     0     1                    0   Move 1 to 3.rowid if needed
10    Column         1     0     2                    0   r[2]= cursor 1 column 0
11    IsNull         2     35    0                    0   if r[2]==NULL goto 35
12    SeekGE         4     35    2     1              0   key=r[2]
13      IdxGT          4     35    2     1              0   key=r[2]
14      DeferredSeek   4     0     0                    0   Move 0 to 4.rowid if needed
15      Column         0     6     3                    0   r[3]= cursor 0 column 6
16      Ne             4     34    3     BINARY-8       82  if r[3]!=r[4] goto 34
17      Column         0     0     6                    0   r[6]= cursor 0 column 0
18      Column         0     1     7                    0   r[7]= cursor 0 column 1
19      Column         4     0     8                    0   r[8]= cursor 4 column 0
20      Column         0     4     9                    0   r[9]= cursor 0 column 4
21      Column         0     5     10                   0   r[10]= cursor 0 column 5
22      Column         0     6     11                   0   r[11]= cursor 0 column 6
23      Column         0     7     12                   0   r[12]=Booking.created_at
24      Column         1     0     13                   0   r[13]= cursor 1 column 0
25      Column         1     1     14                   0   r[14]= cursor 1 column 1
26      Column         1     2     15                   0   r[15]= cursor 1 column 2
27      Column         3     0     16                   0   r[16]= cursor 3 column 0
28      Column         1     4     17                   0   r[17]= cursor 1 column 4
29      Column         1     5     18                   0   r[18]= cursor 1 column 5
30      Column         1     6     19                   0   r[19]=User.created_at
31      Column         0     3     5                    0   r[5]= cursor 0 column 3
32      MakeRecord     5     15    21                   0   r[21]=mkrec(r[5..19])
33      SorterInsert   2     21    5     15             0   key=r[21]
34    Next           4     13    1                    0   
35    OpenPseudo     5     22    17                   0   17 columns in r[22]
36    SorterSort     2     55    0                    0   
37      SorterData     2     22    5                    0   r[22]=data
38      Column         5     14    20                   0   r[20]=created_at
39      Column         5     13    19                   0   r[19]=phone_number
40      Column         5     12    18                   0   r[18]=password_hash
41      Column         5     11    17                   0   r[17]=email
42      Column         5     10    16                   0   r[16]=last_name
43      Column         5     9     15                   0   r[15]=first_name
44      Column         5     8     14                   0   r[14]=user_id
45      Column         5     7     13                   0   r[13]=created_at
46      Column         5     6     12                   0   r[12]=status
47      Column         5     5     11                   0   r[11]=total_price
48      Column         5     4     10                   0   r[10]=end_date
49      Column         5     0     9                    0   r[9]=start_date
50      Column         5     3     8                    0   r[8]=user_id
51      Column         5     2     7                    0   r[7]=property_id
52      Column         5     1     6                    0   r[6]=booking_id
53      ResultRow      6     15    0                    0   output=r[6..20]
54    SorterNext     2     37    0                    0   
55    Halt           0     0     0                    0   
56    Transaction    0     0     15    0              1   usesStmtJournal=0
57    String8        0     4     0     confirmed      0   r[4]='confirmed'
58    Goto           0     1     0                    0   
