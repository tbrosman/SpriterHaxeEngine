package spriter.interfaces;
import spriter.definitions.PivotInfo;
import spriter.definitions.ScmlObject.MetaDispatch;
import spriter.definitions.SpatialInfo;
import spriter.definitions.SpriterEntity;
import spriter.library.AbstractLibrary;

/**
 * @author Loudo
 */

interface IScml 
{
	function getPivots(folder:Int, file:Int):PivotInfo;
	function getFileName(folder:Int, file:Int):String;
	function setSubEntityCurrentTime(library:AbstractLibrary, t:Float, entity:Int, animation:Int, spatialInfo:SpatialInfo, spriter:ISpriter):Void;
}