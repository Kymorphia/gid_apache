/// Module for [JSONReadOptions] class
module gid_apache.arrow24.jsonread_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.schema;
import gid_apache.arrow24.types;

/** */
class JSONReadOptions : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_json_read_options_get_type != &gidSymbolNotFound ? garrow_json_read_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowJSONReadOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override JSONReadOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.jsonread_options.JSONReadOptions]
      Returns: New builder object
  */
  static JSONReadOptionsGidBuilder builder() nothrow
  {
    return new JSONReadOptionsGidBuilder;
  }

  /**
      Get `allowNewlinesInValues` property.
      Returns: Whether objects may be printed across multiple lines (for example pretty printed).
        if false, input must end with an empty line.
  */
  @property bool allowNewlinesInValues() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("allow-newlines-in-values");
  }

  /**
      Set `allowNewlinesInValues` property.
      Params:
        propval = Whether objects may be printed across multiple lines (for example pretty printed).
          if false, input must end with an empty line.
  */
  @property void allowNewlinesInValues(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("allow-newlines-in-values", propval);
  }

  /**
      Get `blockSize` property.
      Returns: Block size we request from the IO layer; also determines the size
        of chunks when #GArrowJSONReadOptions:use-threads is true.
  */
  @property int blockSize() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(int)("block-size");
  }

  /**
      Set `blockSize` property.
      Params:
        propval = Block size we request from the IO layer; also determines the size
          of chunks when #GArrowJSONReadOptions:use-threads is true.
  */
  @property void blockSize(int propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(int)("block-size", propval);
  }

  /**
      Get `schema` property.
      Returns: Schema for passing custom conversion rules.
  */
  @property gid_apache.arrow24.schema.Schema schema() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow24.schema.Schema)("schema");
  }

  /**
      Set `schema` property.
      Params:
        propval = Schema for passing custom conversion rules.
  */
  @property void schema(gid_apache.arrow24.schema.Schema propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow24.schema.Schema)("schema", propval);
  }

  /**
      Get `unexpectedFieldBehavior` property.
      Returns: How to parse handle fields outside the explicit schema.
  */
  @property gid_apache.arrow24.types.JSONReadUnexpectedFieldBehavior unexpectedFieldBehavior() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow24.types.JSONReadUnexpectedFieldBehavior)("unexpected-field-behavior");
  }

  /**
      Set `unexpectedFieldBehavior` property.
      Params:
        propval = How to parse handle fields outside the explicit schema.
  */
  @property void unexpectedFieldBehavior(gid_apache.arrow24.types.JSONReadUnexpectedFieldBehavior propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow24.types.JSONReadUnexpectedFieldBehavior)("unexpected-field-behavior", propval);
  }

  /**
      Get `useThreads` property.
      Returns: Whether to use the global CPU thread pool.
  */
  @property bool useThreads() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("use-threads");
  }

  /**
      Set `useThreads` property.
      Params:
        propval = Whether to use the global CPU thread pool.
  */
  @property void useThreads(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("use-threads", propval);
  }

  /** */
  this() nothrow
  {
    GArrowJSONReadOptions* _cretval;
    _cretval = garrow_json_read_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.jsonread_options.JSONReadOptions]
class JSONReadOptionsGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /**
      Set `allowNewlinesInValues` property.
      Params:
        propval = Whether objects may be printed across multiple lines (for example pretty printed).
          if false, input must end with an empty line.
      Returns: Builder instance for fluent chaining
  */
  T allowNewlinesInValues(bool propval) nothrow
  {
    return setProperty("allow-newlines-in-values", propval);
  }

  /**
      Set `blockSize` property.
      Params:
        propval = Block size we request from the IO layer; also determines the size
          of chunks when #GArrowJSONReadOptions:use-threads is true.
      Returns: Builder instance for fluent chaining
  */
  T blockSize(int propval) nothrow
  {
    return setProperty("block-size", propval);
  }

  /**
      Set `schema` property.
      Params:
        propval = Schema for passing custom conversion rules.
      Returns: Builder instance for fluent chaining
  */
  T schema(gid_apache.arrow24.schema.Schema propval) nothrow
  {
    return setProperty("schema", propval);
  }

  /**
      Set `unexpectedFieldBehavior` property.
      Params:
        propval = How to parse handle fields outside the explicit schema.
      Returns: Builder instance for fluent chaining
  */
  T unexpectedFieldBehavior(gid_apache.arrow24.types.JSONReadUnexpectedFieldBehavior propval) nothrow
  {
    return setProperty("unexpected-field-behavior", propval);
  }

  /**
      Set `useThreads` property.
      Params:
        propval = Whether to use the global CPU thread pool.
      Returns: Builder instance for fluent chaining
  */
  T useThreads(bool propval) nothrow
  {
    return setProperty("use-threads", propval);
  }
}

/// Fluent builder for [gid_apache.arrow24.jsonread_options.JSONReadOptions]
final class JSONReadOptionsGidBuilder : JSONReadOptionsGidBuilderImpl!JSONReadOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  JSONReadOptions build() nothrow
  {
    return new JSONReadOptions(cast(void*)createGObject(JSONReadOptions._getGType), Yes.Take);
  }
}
