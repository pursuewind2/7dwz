# 7dwz

“七天短网址”是轻量的短网址工具，短网址7天有效，可重复利用。

# 特点

1.每个生成的短网址仅具有7天有效期，7天后自动删除；

2.短网址可重复利用，过期的短网址将可能被重复生成使用；

3.生成的sign仅4位，进一步缩减网址长度。


# 安装步骤

1.上传源码到服务器；

2.导入数据库"installationTools/7dwz.sql"；

3.（可选）访问"installationTools/generateCharTable.php"得到新的随机字符表数组，替换“7dwz.php”中“$charTable”的值；

4.修改“7dwz.php”中“$dbInfo”的对应数据库地址（address）、用户名（username）、密码（password）、数据库名（database）；

5.修改“7dwz.php”中“$webUrl”值为你的网址，形如“[https://www.baidu.com/](https://www.baidu.com/ "https://www.baidu.com/")”；

6.（Nginx用户）手动添加伪静态规则“installationTools/nginx.htaccess”；

7.添加自动清理任务：每天凌晨0:00运行“clear.php”。

- 宝塔面板可添加计划任务：任务类型“Shell脚本”，任务内容“php /www/wwwroot/7dwz.cc/clear.php”，其中的地址改为你的具体绝对地址。
- Linux可使用“Crontab定时任务”，具体请百度。
- Windows可添加“计划任务”，具体请百度。
- 也可以运用网站监控平台，监控“clear.php”对应的网址。


# 其他拓展

1.若要短网址永久有效，则忽略“安装步骤”第7步即可。

2.若要扩充sign位数，请修改数据库中的sign数据类型，以及修改“7dwz.php”中sign的生成与解析逻辑（参考[https://www.pursuewind.com/247.html](https://www.pursuewind.com/247.html "参考网址")中提到的设计思路）。


# 在线演示

http://7dwz.cc/

# 作者

https://www.pursuewind.com/
