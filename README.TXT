res资源打包工具

功能描述
	1.点击svn信息可以获得对应时间段内的svn信息
	 开启时系统自动从51上获取上次的版本作为开始时间， 当前时间作为结束时间
	2.点击上传，自动将该时间段内的svn导出到本地，并压缩，上传到50，

工具相关配置
	安装目录 res/config.xml		该工具的配置
			 res/local.xml		该工具一些本地操作的保存
			 file:////192.168.2.50/ftp/tool/remotdata/packres/list.config 	项目列表配置
			 bin/rarbin
			 bin/svnbin
安装文件
	\\192.168.2.50\ftp\tool
	 资源打包工具_*.rar

更新历史
	2017-11-27
		第一版，测试版，上传到50，
		1.增加config\nightly\res.dat修改文件的has值也对应的修改.
		2.增加版本更新提示
		3.修复地图中lib文件夹位置的问题
	2017-11-29
		1.增加从50上读取文件，保存到本地，顺便res.dat中hash值也和之前版本的一致。
			另外 速度比之前直接从svn中导出快了 如1万个文件，从svn中导出大概148min， 从50上大概20min
	2017-12-04
		增加日志文件res_XXX_XXX.txt文件\
	2018-01-10
		1.增加日期输入框中对含有版本号信息的数字过滤赋值.
		2.增加打开51目录的快捷按钮
		3.优化显示加上当前导出文件的大小
		4.修复应用框小的bug
		
==list.config
<config>
	<project 
		name="皇城站"
		id="hcz"
		svnroot="https://svn/svn/{$id}/"
		svncmd="log https://svn/svn/{$id}/trunk/res/ -r {==starttime==}:{==endtime==} -v  "
		svnoutingoredic="/trunk/res/"
		updir="\\192.168.2.51\packages\{$id}_version\online\res"
		resdicpath="\\192.168.2.50\{$id}\zhcn\config\nightly\res.dat"
		res50path="\\192.168.2.50\{$id}\res"
		encryptMap="1"
		mapkey="3tion"
		mapextion="mpq"
		weburl="http://192.168.2.50:9090/cq_build/dobuild.do"
	/>
	<project 
		name="H5-观海策"
		id="h5_ghc"
		svnroot="https://svn/svn/{$id}/"
		svncmd="log https://svn/svn/{$id}/trunk/res/cn/ -r {==starttime==}:{==endtime==} -v  "
		svnoutingoredic="/trunk/res/cn/"
		updir="\\192.168.2.51\packages\{$id}_version\online\res"
		resdicpath="\\192.168.2.50\ftp\tool\remotdata\tempdata\h5res\res.dat"
		res50path="\\192.168.2.50\{$id}\res\cn"
		encryptMap="2"
		mapkey=""
		mapextion=""
		weburl="http://192.168.2.50:60200/build/index.html"
	/>
</config>