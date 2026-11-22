/// Module for [DayMillisecond] class
module gid_apache.arrow19.day_millisecond;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow19.c.functions;
import gid_apache.arrow19.c.types;
import gid_apache.arrow19.types;

/** */
class DayMillisecond : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_day_millisecond_get_type != &gidSymbolNotFound ? garrow_day_millisecond_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDayMillisecond";
  }

  /** Returns `this`, for use in `with` statements. */
  override DayMillisecond self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow19.day_millisecond.DayMillisecond]
      Returns: New builder object
  */
  static DayMillisecondGidBuilder builder() nothrow
  {
    return new DayMillisecondGidBuilder;
  }

  /**
      Get `day` property.
      Returns: The day part value.
  */
  @property int day() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(int)("day");
  }

  /**
      Set `day` property.
      Params:
        propval = The day part value.
  */
  @property void day(int propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(int)("day", propval);
  }

  /**
      Get `millisecond` property.
      Returns: The millisecond part value.
  */
  @property int millisecond() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(int)("millisecond");
  }

  /**
      Set `millisecond` property.
      Params:
        propval = The millisecond part value.
  */
  @property void millisecond(int propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(int)("millisecond", propval);
  }

  /** */
  this(int day, int millisecond) nothrow
  {
    GArrowDayMillisecond* _cretval;
    _cretval = garrow_day_millisecond_new(day, millisecond);
    this(_cretval, Yes.Take);
  }

  /** */
  bool equal(gid_apache.arrow19.day_millisecond.DayMillisecond otherDayMillisecond) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_day_millisecond_equal(cast(GArrowDayMillisecond*)this._cPtr, otherDayMillisecond ? cast(GArrowDayMillisecond*)otherDayMillisecond._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  bool lessThan(gid_apache.arrow19.day_millisecond.DayMillisecond otherDayMillisecond) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_day_millisecond_less_than(cast(GArrowDayMillisecond*)this._cPtr, otherDayMillisecond ? cast(GArrowDayMillisecond*)otherDayMillisecond._cPtr(No.Dup) : null);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow19.day_millisecond.DayMillisecond]
class DayMillisecondGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /**
      Set `day` property.
      Params:
        propval = The day part value.
      Returns: Builder instance for fluent chaining
  */
  T day(int propval) nothrow
  {
    return setProperty("day", propval);
  }

  /**
      Set `millisecond` property.
      Params:
        propval = The millisecond part value.
      Returns: Builder instance for fluent chaining
  */
  T millisecond(int propval) nothrow
  {
    return setProperty("millisecond", propval);
  }
}

/// Fluent builder for [gid_apache.arrow19.day_millisecond.DayMillisecond]
final class DayMillisecondGidBuilder : DayMillisecondGidBuilderImpl!DayMillisecondGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DayMillisecond build() nothrow
  {
    return new DayMillisecond(cast(void*)createGObject(DayMillisecond._getGType), Yes.Take);
  }
}
