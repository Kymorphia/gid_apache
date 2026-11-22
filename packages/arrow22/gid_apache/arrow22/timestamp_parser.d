/// Module for [TimestampParser] class
module gid_apache.arrow22.timestamp_parser;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow22.c.functions;
import gid_apache.arrow22.c.types;
import gid_apache.arrow22.types;

/** */
class TimestampParser : gid.gobject2.object.ObjectWrap
{

  /** */
  this(void* ptr, Flag!"Take" take) nothrow
  {
    super(ptr, take);
  }

  /** */
  static GType _getGType() nothrow
  {
    import gid.core.loader : gidSymbolNotFound;
    return cast(void function())garrow_timestamp_parser_get_type != &gidSymbolNotFound ? garrow_timestamp_parser_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowTimestampParser";
  }

  /** Returns `this`, for use in `with` statements. */
  override TimestampParser self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow22.timestamp_parser.TimestampParser]
      Returns: New builder object
  */
  static TimestampParserGidBuilder builder() nothrow
  {
    return new TimestampParserGidBuilder;
  }

  /** */
  string getKind() nothrow
  {
    const(char)* _cretval;
    _cretval = garrow_timestamp_parser_get_kind(cast(GArrowTimestampParser*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(No.Free);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow22.timestamp_parser.TimestampParser]
class TimestampParserGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T parser(void* propval) nothrow
  {
    return setProperty("parser", propval);
  }
}

/// Fluent builder for [gid_apache.arrow22.timestamp_parser.TimestampParser]
final class TimestampParserGidBuilder : TimestampParserGidBuilderImpl!TimestampParserGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  TimestampParser build() nothrow
  {
    return new TimestampParser(cast(void*)createGObject(TimestampParser._getGType), Yes.Take);
  }
}
