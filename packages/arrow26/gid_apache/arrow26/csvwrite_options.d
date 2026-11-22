/// Module for [CSVWriteOptions] class
module gid_apache.arrow26.csvwrite_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.types;

/** */
class CSVWriteOptions : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_csv_write_options_get_type != &gidSymbolNotFound ? garrow_csv_write_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowCSVWriteOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override CSVWriteOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.csvwrite_options.CSVWriteOptions]
      Returns: New builder object
  */
  static CSVWriteOptionsGidBuilder builder() nothrow
  {
    return new CSVWriteOptionsGidBuilder;
  }

  /**
      Get `batchSize` property.
      Returns: Maximum number of rows processed at a time.
        
        The CSV writer converts and writes data in batches of N rows. This number can impact
        performance.
  */
  @property int batchSize() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(int)("batch-size");
  }

  /**
      Set `batchSize` property.
      Params:
        propval = Maximum number of rows processed at a time.
          
          The CSV writer converts and writes data in batches of N rows. This number can impact
          performance.
  */
  @property void batchSize(int propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(int)("batch-size", propval);
  }

  /**
      Get `delimiter` property.
      Returns: Field delimiter.
  */
  @property char delimiter() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(char)("delimiter");
  }

  /**
      Set `delimiter` property.
      Params:
        propval = Field delimiter.
  */
  @property void delimiter(char propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(char)("delimiter", propval);
  }

  /**
      Get `eol` property.
      Returns: The end of line character to use for ending rows.
  */
  @property string eol() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string)("eol");
  }

  /**
      Set `eol` property.
      Params:
        propval = The end of line character to use for ending rows.
  */
  @property void eol(string propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(string)("eol", propval);
  }

  /**
      Get `includeHeader` property.
      Returns: Whether to write an initial header line with column names.
  */
  @property bool includeHeader() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("include-header");
  }

  /**
      Set `includeHeader` property.
      Params:
        propval = Whether to write an initial header line with column names.
  */
  @property void includeHeader(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("include-header", propval);
  }

  /**
      Get `nullString` property.
      Returns: The string to write for null values. Quotes are not allowed in this string.
  */
  @property string nullString() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string)("null-string");
  }

  /**
      Set `nullString` property.
      Params:
        propval = The string to write for null values. Quotes are not allowed in this string.
  */
  @property void nullString(string propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(string)("null-string", propval);
  }

  /**
      Get `quotingHeader` property.
      Returns: Quoting style of header.
        
        Note that #GARROW_CSV_QUOTING_STYLE_NEEDED and #GARROW_CSV_QUOTING_STYLE_ALL_VALID
        have the same effect of quoting all column names.
  */
  @property gid_apache.arrow26.types.CSVQuotingStyle quotingHeader() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow26.types.CSVQuotingStyle)("quoting-header");
  }

  /**
      Set `quotingHeader` property.
      Params:
        propval = Quoting style of header.
          
          Note that #GARROW_CSV_QUOTING_STYLE_NEEDED and #GARROW_CSV_QUOTING_STYLE_ALL_VALID
          have the same effect of quoting all column names.
  */
  @property void quotingHeader(gid_apache.arrow26.types.CSVQuotingStyle propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow26.types.CSVQuotingStyle)("quoting-header", propval);
  }

  /**
      Get `quotingStyle` property.
      Returns: Quoting style.
  */
  @property gid_apache.arrow26.types.CSVQuotingStyle quotingStyle() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow26.types.CSVQuotingStyle)("quoting-style");
  }

  /**
      Set `quotingStyle` property.
      Params:
        propval = Quoting style.
  */
  @property void quotingStyle(gid_apache.arrow26.types.CSVQuotingStyle propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow26.types.CSVQuotingStyle)("quoting-style", propval);
  }

  /** */
  this() nothrow
  {
    GArrowCSVWriteOptions* _cretval;
    _cretval = garrow_csv_write_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.csvwrite_options.CSVWriteOptions]
class CSVWriteOptionsGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /**
      Set `batchSize` property.
      Params:
        propval = Maximum number of rows processed at a time.
          
          The CSV writer converts and writes data in batches of N rows. This number can impact
          performance.
      Returns: Builder instance for fluent chaining
  */
  T batchSize(int propval) nothrow
  {
    return setProperty("batch-size", propval);
  }

  /**
      Set `delimiter` property.
      Params:
        propval = Field delimiter.
      Returns: Builder instance for fluent chaining
  */
  T delimiter(char propval) nothrow
  {
    return setProperty("delimiter", propval);
  }

  /**
      Set `eol` property.
      Params:
        propval = The end of line character to use for ending rows.
      Returns: Builder instance for fluent chaining
  */
  T eol(string propval) nothrow
  {
    return setProperty("eol", propval);
  }

  /**
      Set `includeHeader` property.
      Params:
        propval = Whether to write an initial header line with column names.
      Returns: Builder instance for fluent chaining
  */
  T includeHeader(bool propval) nothrow
  {
    return setProperty("include-header", propval);
  }

  /**
      Set `nullString` property.
      Params:
        propval = The string to write for null values. Quotes are not allowed in this string.
      Returns: Builder instance for fluent chaining
  */
  T nullString(string propval) nothrow
  {
    return setProperty("null-string", propval);
  }

  /**
      Set `quotingHeader` property.
      Params:
        propval = Quoting style of header.
          
          Note that #GARROW_CSV_QUOTING_STYLE_NEEDED and #GARROW_CSV_QUOTING_STYLE_ALL_VALID
          have the same effect of quoting all column names.
      Returns: Builder instance for fluent chaining
  */
  T quotingHeader(gid_apache.arrow26.types.CSVQuotingStyle propval) nothrow
  {
    return setProperty("quoting-header", propval);
  }

  /**
      Set `quotingStyle` property.
      Params:
        propval = Quoting style.
      Returns: Builder instance for fluent chaining
  */
  T quotingStyle(gid_apache.arrow26.types.CSVQuotingStyle propval) nothrow
  {
    return setProperty("quoting-style", propval);
  }
}

/// Fluent builder for [gid_apache.arrow26.csvwrite_options.CSVWriteOptions]
final class CSVWriteOptionsGidBuilder : CSVWriteOptionsGidBuilderImpl!CSVWriteOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  CSVWriteOptions build() nothrow
  {
    return new CSVWriteOptions(cast(void*)createGObject(CSVWriteOptions._getGType), Yes.Take);
  }
}
