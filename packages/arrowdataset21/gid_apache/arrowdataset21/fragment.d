/// Module for [Fragment] class
module gid_apache.arrowdataset21.fragment;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrowdataset21.c.functions;
import gid_apache.arrowdataset21.c.types;
import gid_apache.arrowdataset21.types;

/** */
class Fragment : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gadataset_fragment_get_type != &gidSymbolNotFound ? gadataset_fragment_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GADatasetFragment";
  }

  /** Returns `this`, for use in `with` statements. */
  override Fragment self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowdataset21.fragment.Fragment]
      Returns: New builder object
  */
  static FragmentGidBuilder builder() nothrow
  {
    return new FragmentGidBuilder;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowdataset21.fragment.Fragment]
class FragmentGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T fragment(void* propval) nothrow
  {
    return setProperty("fragment", propval);
  }
}

/// Fluent builder for [gid_apache.arrowdataset21.fragment.Fragment]
final class FragmentGidBuilder : FragmentGidBuilderImpl!FragmentGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Fragment build() nothrow
  {
    return new Fragment(cast(void*)createGObject(Fragment._getGType), Yes.Take);
  }
}
