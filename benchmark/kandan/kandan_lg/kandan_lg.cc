#include "kandan_lg.h"
TreeIndex<oid_t, size_t, 250000> idptr_ds_1;
TreeIndex<oid_t, size_t, 500> idptr_ds_16;
SmallBasicArray<Activity1, 250000> activity_1;
TreeIndex<ds_3_key_type, ItemPointer, 250000> ds_3;
SmallBasicArray<User4, 5000> user_4;
SortedArray<ds_12_key_type, Attachment12, 1000> ds_12;
SmallBasicArray<Channel16, 500> channel_16;
SortedArray<ds_22_key_type, Channel22, 500> ds_22;
TreeIndex<ds_43_key_type, ItemPointer, 500> ds_43;
void read_data() {
  char msg[] = "data structure loading time ";
  get_time_start();

  MYSQL *conn = mysql_init(NULL);
  if (conn == NULL){
    fprintf(stderr, "mysql_init() failed\n");
    exit(1);
  }
  if (mysql_real_connect(conn, "localhost", "root", "", "kandan_lg", 0, "/home/congy/mysqld/mysqld.sock", 0) == NULL){

    fprintf(stderr, "mysql connect failed\n");
    exit(1);
  }
  size_t cnt;
  for (size_t i=0; i<250000; i++)
  init_ds_1_from_sql(conn, i);
  printf("finish initialize ds 1\n");
  init_ds_4_from_sql(conn);
  printf("finish initialize ds 4\n");
  init_ds_12_from_sql(conn);
  printf("finish initialize ds 12\n");
  init_ds_16_from_sql(conn);
  printf("finish initialize ds 16\n");
  init_ds_22_from_sql(conn);
  printf("finish initialize ds 22\n");
  for (size_t i=0; i<250000; i++)
  init_ds_3_from_sql(conn, i);
  printf("finish initialize ds 3\n");
  init_ds_43_from_sql(conn);
  printf("finish initialize ds 43\n");
  oid_t obj_pos = 0;
  cnt = 0;
  SMALLBASICARRAY_FOR_BEGIN(activity_1_1, activity_1, obj_activity_1)
    init_ds_29_from_sql(conn, &obj_activity_1);

  SMALLBASICARRAY_FOR_END
    printf("finish initialize ds's object 1\n");

  cnt = 0;
  SMALLBASICARRAY_FOR_BEGIN(channel_16_2, channel_16, obj_channel_2)
    init_ds_30_from_sql(conn, &obj_channel_2);

  SMALLBASICARRAY_FOR_END
    printf("finish initialize ds's object 16\n");

  cnt = 0;
  SORTEDARRAY_RANGE_FOR_BEGIN(ds_22_3, nullptr, nullptr, ds_22, obj_channel_3)
    init_ds_31_from_sql(conn, &obj_channel_3);

  SORTEDARRAY_RANGE_FOR_END
    printf("finish initialize ds's object 22\n");


  print_time_diff(msg);
  printf("ds 1 sz = %d;\n", activity_1.size());
  printf("ds 3 sz = %d;\n", ds_3.size());
  printf("ds 4 sz = %d;\n", user_4.size());
  printf("ds 12 sz = %d;\n", ds_12.size());
  printf("ds 16 sz = %d;\n", channel_16.size());
  printf("ds 22 sz = %d;\n", ds_22.size());
  printf("ds 43 sz = %d;\n", ds_43.size());
  std::this_thread::sleep_for(std::chrono::seconds(1));
}
