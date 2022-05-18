

hdfs dfs -rm -r  /user/anabig114245/categories/
hdfs dfs -rm -r /user/anabig114245/customers/
hdfs dfs -rm -r /user/anabig114245/departments/
hdfs dfs -rm -r  /user/anabig114245/order_items/
hdfs dfs -rm -r /user/anabig114245/orders/
hdfs dfs -rm -r /user/anabig114245/products/

hdfs dfs  -mkdir /user/anabig114245/Projectexl

sqoop import-all-tables --connect jdbc:mysql://ip-10-1-1-204.ap-south-1.compute.internal:3306/anabig114245
 --username anabig114245 --password Bigdata123 --as-parquetfile --warehouse-dir /user/anabig114245/Projectexl --m 1 --driver com.mysql.jdbc.Driver


