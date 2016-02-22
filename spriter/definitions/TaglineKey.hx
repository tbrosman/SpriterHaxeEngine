package spriter.definitions;
import haxe.xml.Fast;

/**
 * ...
 * @author Loudo
 */
class TaglineKey
{
	public var id:Int;
	public var time:Int = 0;
	public var t:Array<Int>;
	public function new(fast:Fast = null) 
	{
		if(fast != null){
			id = fast.has.id ? Std.parseInt(fast.att.id) : 0;
			time = fast.has.time ? Std.parseInt(fast.att.time) : 0;
			t = [];
			for (tag in fast.nodes.tag)
			{
				t.push(Std.parseInt(tag.att.t));
			}
		}
	}
	public function copy ():TaglineKey
	{
		var	copy:TaglineKey = new TaglineKey();
		return clone (copy);
	}

	public function clone (clone:TaglineKey):TaglineKey
	{
		clone.id = id;
		clone.time = time;
		clone.t = t;
		return clone;
	}
}