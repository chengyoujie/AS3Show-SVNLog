package
{
	public class SvnLogItem
	{
		public var oper:String;
		public var file:String;
		public var from:String;
		public var fromver:int;
		
		public static const OPER:Object = {"M":"修改", "D":"删除", "A":"增加"};
		public static const OPER_COLOR:Object = {"M":"<font color='#ffff00'>修改</font>", "D":"<font color='#ff0000'>删除</font>", "A":"<font color='#00ff00'>增加</font>"};
		
		public static const OPER_DEL:String = "D";
		public static const OPER_ADD:String = "A";
		public static const OPER_MOD:String = "M";
		
		public function SvnLogItem(msg:String)
		{
			msg = msg.replace(/^\s*((.|\n)*\S)?\s*$/,"$1" ); 
			oper = msg.substr(0, 1);
			file = msg.substr(2);
			var reg:RegExp = /(.*?)\s+\(from\s+(.*?)\s*:\s*(\d+)\)/gi;
			var arr = reg.exec(file);
			from = "";
			if(arr)
			{
				file = arr[1];
				from = arr[2];
				fromver = arr[3];
			}
//			var ind:int = file.indexOf(" ");
//			if(ind!=-1)
//			{
//				var arr:Array = file.split(" ");
//				file = arr[0];
//				other = arr[1];
//			}
		}
		
		public function str():String
		{
			if(oper in OPER)
				return OPER[oper]+" : "+file.replace(/\/?trunk\/?/gi, "");//file.lastIndexOf("/"));
			return oper + " : "+ file.replace(/\/?trunk\/?/gi, "");
		}
		
		
		public function colorstr():String
		{
			if(oper in OPER)
				return OPER_COLOR[oper]+" : "+file.replace(/\/?trunk\/?/gi, "")+(from?("<font color='#FFFFFF'>from:"+fromver+"</font>"):"");//file.lastIndexOf("/"));
			return oper + " : "+ file.replace(/\/?trunk\/?/gi, "");
		}
		
	}
}