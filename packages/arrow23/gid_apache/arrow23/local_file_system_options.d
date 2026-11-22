/// Module for [LocalFileSystemOptions] class
module gid_apache.arrow23.local_file_system_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.types;

/** */
class LocalFileSystemOptions : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_local_file_system_options_get_type != &gidSymbolNotFound ? garrow_local_file_system_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowLocalFileSystemOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override LocalFileSystemOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.local_file_system_options.LocalFileSystemOptions]
      Returns: New builder object
  */
  static LocalFileSystemOptionsGidBuilder builder() nothrow
  {
    return new LocalFileSystemOptionsGidBuilder;
  }

  /**
      Get `useMmap` property.
      Returns: Whether open_input_stream and open_input_file return a mmap'ed file,
        or a regular one.
  */
  @property bool useMmap() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("use-mmap");
  }

  /**
      Set `useMmap` property.
      Params:
        propval = Whether open_input_stream and open_input_file return a mmap'ed file,
          or a regular one.
  */
  @property void useMmap(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("use-mmap", propval);
  }

  /** */
  this() nothrow
  {
    GArrowLocalFileSystemOptions* _cretval;
    _cretval = garrow_local_file_system_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.local_file_system_options.LocalFileSystemOptions]
class LocalFileSystemOptionsGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /**
      Set `useMmap` property.
      Params:
        propval = Whether open_input_stream and open_input_file return a mmap'ed file,
          or a regular one.
      Returns: Builder instance for fluent chaining
  */
  T useMmap(bool propval) nothrow
  {
    return setProperty("use-mmap", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.local_file_system_options.LocalFileSystemOptions]
final class LocalFileSystemOptionsGidBuilder : LocalFileSystemOptionsGidBuilderImpl!LocalFileSystemOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  LocalFileSystemOptions build() nothrow
  {
    return new LocalFileSystemOptions(cast(void*)createGObject(LocalFileSystemOptions._getGType), Yes.Take);
  }
}
