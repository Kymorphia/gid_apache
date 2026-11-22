/// Module for [EqualOptions] class
module gid_apache.arrow23.equal_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.types;

/** */
class EqualOptions : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_equal_options_get_type != &gidSymbolNotFound ? garrow_equal_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowEqualOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override EqualOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.equal_options.EqualOptions]
      Returns: New builder object
  */
  static EqualOptionsGidBuilder builder() nothrow
  {
    return new EqualOptionsGidBuilder;
  }

  /**
      Get `absoluteTolerance` property.
      Returns: The absolute tolerance for approximate comparison of
        floating-point values.
  */
  @property double absoluteTolerance() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(double)("absolute-tolerance");
  }

  /**
      Set `absoluteTolerance` property.
      Params:
        propval = The absolute tolerance for approximate comparison of
          floating-point values.
  */
  @property void absoluteTolerance(double propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(double)("absolute-tolerance", propval);
  }

  /**
      Get `approx` property.
      Returns: Whether or not approximate comparison is used.
  */
  @property bool approx() nothrow
  {
    return isApprox();
  }

  /**
      Set `approx` property.
      Params:
        propval = Whether or not approximate comparison is used.
  */
  @property void approx(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("approx", propval);
  }

  /**
      Get `nansEqual` property.
      Returns: Whether or not NaNs are considered equal.
  */
  @property bool nansEqual() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("nans-equal");
  }

  /**
      Set `nansEqual` property.
      Params:
        propval = Whether or not NaNs are considered equal.
  */
  @property void nansEqual(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("nans-equal", propval);
  }

  /** */
  this() nothrow
  {
    GArrowEqualOptions* _cretval;
    _cretval = garrow_equal_options_new();
    this(_cretval, Yes.Take);
  }

  /** */
  bool isApprox() nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_equal_options_is_approx(cast(GArrowEqualOptions*)this._cPtr);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.equal_options.EqualOptions]
class EqualOptionsGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /**
      Set `absoluteTolerance` property.
      Params:
        propval = The absolute tolerance for approximate comparison of
          floating-point values.
      Returns: Builder instance for fluent chaining
  */
  T absoluteTolerance(double propval) nothrow
  {
    return setProperty("absolute-tolerance", propval);
  }

  /**
      Set `approx` property.
      Params:
        propval = Whether or not approximate comparison is used.
      Returns: Builder instance for fluent chaining
  */
  T approx(bool propval) nothrow
  {
    return setProperty("approx", propval);
  }

  /**
      Set `nansEqual` property.
      Params:
        propval = Whether or not NaNs are considered equal.
      Returns: Builder instance for fluent chaining
  */
  T nansEqual(bool propval) nothrow
  {
    return setProperty("nans-equal", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.equal_options.EqualOptions]
final class EqualOptionsGidBuilder : EqualOptionsGidBuilderImpl!EqualOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  EqualOptions build() nothrow
  {
    return new EqualOptions(cast(void*)createGObject(EqualOptions._getGType), Yes.Take);
  }
}
