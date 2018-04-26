## 单表查询

	where
	[not] in
	between and 
	like
	is [not] null
	and or
	distinct
	group by ... having ...
	like
	limit
	order by 

## 聚合函数

	日期函数、字符串函数、数学函数
	count()
	sum()

## 连接查询

	https://www.w3cschool.cn/mysql/56ik1sqv.html

## 子查询

	标量子查询：返回单一值的标量，最简单的形式
	列子查询：返回的结果集是 N 行一列
	行子查询：返回的结果集是一行 N 列
	表子查询：返回的结果集是 N 行 N 列
	
	https://www.cnblogs.com/zhuiluoyu/p/5822481.html

## 合并查询结果

	union 合并后去重
	union all 合并后不去重


## 扩展：查看执行计划
	
	explain

## 锁、事务与并发控制
	
	https://blog.csdn.net/lemon89/article/details/51477497
	https://www.cnblogs.com/yelbosh/p/5813865.html
	

## 演示主从数据库

localhost:3307 (主)
mysql -h localhost -u root -p -P 3307

localhost:3308 (从)
mysql -h localhost -u root -p -P 3308

https://blog.csdn.net/white_ice/article/details/52598106

