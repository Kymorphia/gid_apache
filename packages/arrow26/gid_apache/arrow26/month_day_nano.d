/// Module for [MonthDayNano] class
module gid_apache.arrow26.month_day_nano;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.types;

/** */
class MonthDayNano : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_month_day_nano_get_type != &gidSymbolNotFound ? garrow_month_day_nano_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowMonthDayNano";
  }

  /** Returns `this`, for use in `with` statements. */
  override MonthDayNano self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.month_day_nano.MonthDayNano]
      Returns: New builder object
  */
  static MonthDayNanoGidBuilder builder() nothrow
  {
    return new MonthDayNanoGidBuilder;
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
      Get `month` property.
      Returns: The month part value.
  */
  @property int month() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(int)("month");
  }

  /**
      Set `month` property.
      Params:
        propval = The month part value.
  */
  @property void month(int propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(int)("month", propval);
  }

  /**
      Get `nanosecond` property.
      Returns: The nanosecond part value.
  */
  @property long nanosecond() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(long)("nanosecond");
  }

  /**
      Set `nanosecond` property.
      Params:
        propval = The nanosecond part value.
  */
  @property void nanosecond(long propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(long)("nanosecond", propval);
  }

  /** */
  this(int month, int day, long nanosecond) nothrow
  {
    GArrowMonthDayNano* _cretval;
    _cretval = garrow_month_day_nano_new(month, day, nanosecond);
    this(_cretval, Yes.Take);
  }

  /** */
  bool equal(gid_apache.arrow26.month_day_nano.MonthDayNano otherMonthNanoDay) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_month_day_nano_equal(cast(GArrowMonthDayNano*)this._cPtr, otherMonthNanoDay ? cast(GArrowMonthDayNano*)otherMonthNanoDay._cPtr(No.Dup) : null);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.month_day_nano.MonthDayNano]
class MonthDayNanoGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
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
      Set `month` property.
      Params:
        propval = The month part value.
      Returns: Builder instance for fluent chaining
  */
  T month(int propval) nothrow
  {
    return setProperty("month", propval);
  }

  /**
      Set `nanosecond` property.
      Params:
        propval = The nanosecond part value.
      Returns: Builder instance for fluent chaining
  */
  T nanosecond(long propval) nothrow
  {
    return setProperty("nanosecond", propval);
  }
}

/// Fluent builder for [gid_apache.arrow26.month_day_nano.MonthDayNano]
final class MonthDayNanoGidBuilder : MonthDayNanoGidBuilderImpl!MonthDayNanoGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  MonthDayNano build() nothrow
  {
    return new MonthDayNano(cast(void*)createGObject(MonthDayNano._getGType), Yes.Take);
  }
}
