/// Module for [PathDescriptor] class
module gid_apache.arrowflight20.path_descriptor;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrowflight20.c.functions;
import gid_apache.arrowflight20.c.types;
import gid_apache.arrowflight20.descriptor;
import gid_apache.arrowflight20.types;

/** */
class PathDescriptor : gid_apache.arrowflight20.descriptor.Descriptor
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
    return cast(void function())gaflight_path_descriptor_get_type != &gidSymbolNotFound ? gaflight_path_descriptor_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightPathDescriptor";
  }

  /** Returns `this`, for use in `with` statements. */
  override PathDescriptor self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight20.path_descriptor.PathDescriptor]
      Returns: New builder object
  */
  static PathDescriptorGidBuilder builder() nothrow
  {
    return new PathDescriptorGidBuilder;
  }

  /** */
  this(string[] paths) nothrow
  {
    GAFlightPathDescriptor* _cretval;
    size_t _nPaths;
    if (paths)
      _nPaths = cast(size_t)paths.length;

    auto _paths_arr = new char*[](paths.length);
    auto _paths = cast(char**)_paths_arr.ptr;
    foreach (i, s; paths) _paths[i] = s.toCString!(No.Malloc);
    _cretval = gaflight_path_descriptor_new(_paths, _nPaths);
    this(_cretval, Yes.Take);
  }

  /** */
  string[] getPaths() nothrow
  {
    char** _cretval;
    _cretval = gaflight_path_descriptor_get_paths(cast(GAFlightPathDescriptor*)this._cPtr);
    string[] _retval;

    if (_cretval)
    {
      uint _cretlength;
      while (_cretval[_cretlength] !is null)
        _cretlength++;
      _retval = new string[_cretlength];
      foreach (i; 0 .. _cretlength)
        _retval[i] = _cretval[i].fromCString!(Yes.Free);
      gFree(cast(void*)_cretval);
    }
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight20.path_descriptor.PathDescriptor]
class PathDescriptorGidBuilderImpl(T) : gid_apache.arrowflight20.descriptor.DescriptorGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrowflight20.path_descriptor.PathDescriptor]
final class PathDescriptorGidBuilder : PathDescriptorGidBuilderImpl!PathDescriptorGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  PathDescriptor build() nothrow
  {
    return new PathDescriptor(cast(void*)createGObject(PathDescriptor._getGType), Yes.Take);
  }
}
