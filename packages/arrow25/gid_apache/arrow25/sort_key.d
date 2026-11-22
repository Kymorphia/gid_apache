/// Module for [SortKey] class
module gid_apache.arrow25.sort_key;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.types;

/** */
class SortKey : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_sort_key_get_type != &gidSymbolNotFound ? garrow_sort_key_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowSortKey";
  }

  /** Returns `this`, for use in `with` statements. */
  override SortKey self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.sort_key.SortKey]
      Returns: New builder object
  */
  static SortKeyGidBuilder builder() nothrow
  {
    return new SortKeyGidBuilder;
  }

  /** */
  @property gid_apache.arrow25.types.NullPlacement nullPlacement() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow25.types.NullPlacement)("null-placement");
  }

  /**
      Get `order` property.
      Returns: How to order values.
  */
  @property gid_apache.arrow25.types.SortOrder order() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow25.types.SortOrder)("order");
  }

  /**
      Get `target` property.
      Returns: A name or dot path for the sort target.
        
            dot_path = '.' name
                     | '[' digit+ ']'
                     | dot_path+
  */
  @property string target() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(string)("target");
  }

  /** */
  this(string target, gid_apache.arrow25.types.SortOrder order, gid_apache.arrow25.types.NullPlacement nullPlacement)
  {
    GArrowSortKey* _cretval;
    const(char)* _target = target.toCString!(No.Malloc, No.Nullable);
    GError *_err;
    _cretval = garrow_sort_key_new(_target, order, nullPlacement, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }

  /** */
  bool equal(gid_apache.arrow25.sort_key.SortKey otherSortKey) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_sort_key_equal(cast(GArrowSortKey*)this._cPtr, otherSortKey ? cast(GArrowSortKey*)otherSortKey._cPtr(No.Dup) : null);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.sort_key.SortKey]
class SortKeyGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T nullPlacement(gid_apache.arrow25.types.NullPlacement propval) nothrow
  {
    return setProperty("null-placement", propval);
  }

  /**
      Set `order` property.
      Params:
        propval = How to order values.
      Returns: Builder instance for fluent chaining
  */
  T order(gid_apache.arrow25.types.SortOrder propval) nothrow
  {
    return setProperty("order", propval);
  }
}

/// Fluent builder for [gid_apache.arrow25.sort_key.SortKey]
final class SortKeyGidBuilder : SortKeyGidBuilderImpl!SortKeyGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  SortKey build() nothrow
  {
    return new SortKey(cast(void*)createGObject(SortKey._getGType), Yes.Take);
  }
}
