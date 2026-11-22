/// Module for [ISO8601TimestampParser] class
module gid_apache.arrow26.iso8601_timestamp_parser;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.timestamp_parser;
import gid_apache.arrow26.types;

/** */
class ISO8601TimestampParser : gid_apache.arrow26.timestamp_parser.TimestampParser
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
    return cast(void function())garrow_iso8601_timestamp_parser_get_type != &gidSymbolNotFound ? garrow_iso8601_timestamp_parser_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowISO8601TimestampParser";
  }

  /** Returns `this`, for use in `with` statements. */
  override ISO8601TimestampParser self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.iso8601_timestamp_parser.ISO8601TimestampParser]
      Returns: New builder object
  */
  static ISO8601TimestampParserGidBuilder builder() nothrow
  {
    return new ISO8601TimestampParserGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowISO8601TimestampParser* _cretval;
    _cretval = garrow_iso8601_timestamp_parser_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.iso8601_timestamp_parser.ISO8601TimestampParser]
class ISO8601TimestampParserGidBuilderImpl(T) : gid_apache.arrow26.timestamp_parser.TimestampParserGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow26.iso8601_timestamp_parser.ISO8601TimestampParser]
final class ISO8601TimestampParserGidBuilder : ISO8601TimestampParserGidBuilderImpl!ISO8601TimestampParserGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  ISO8601TimestampParser build() nothrow
  {
    return new ISO8601TimestampParser(cast(void*)createGObject(ISO8601TimestampParser._getGType), Yes.Take);
  }
}
