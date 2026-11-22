/// Module for [DayOfWeekOptions] class
module gid_apache.arrow24.day_of_week_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.function_options;
import gid_apache.arrow24.types;

/** */
class DayOfWeekOptions : gid_apache.arrow24.function_options.FunctionOptions
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
    return cast(void function())garrow_day_of_week_options_get_type != &gidSymbolNotFound ? garrow_day_of_week_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowDayOfWeekOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override DayOfWeekOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.day_of_week_options.DayOfWeekOptions]
      Returns: New builder object
  */
  static DayOfWeekOptionsGidBuilder builder() nothrow
  {
    return new DayOfWeekOptionsGidBuilder;
  }

  /**
      Get `countFromZero` property.
      Returns: Number days from 0 if true and from 1 if false.
  */
  @property bool countFromZero() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("count-from-zero");
  }

  /**
      Set `countFromZero` property.
      Params:
        propval = Number days from 0 if true and from 1 if false.
  */
  @property void countFromZero(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("count-from-zero", propval);
  }

  /**
      Get `weekStart` property.
      Returns: What day does the week start with (Monday=1, Sunday=7).
        The numbering is unaffected by the count_from_zero parameter.
  */
  @property uint weekStart() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(uint)("week-start");
  }

  /**
      Set `weekStart` property.
      Params:
        propval = What day does the week start with (Monday=1, Sunday=7).
          The numbering is unaffected by the count_from_zero parameter.
  */
  @property void weekStart(uint propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(uint)("week-start", propval);
  }

  /** */
  this() nothrow
  {
    GArrowDayOfWeekOptions* _cretval;
    _cretval = garrow_day_of_week_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.day_of_week_options.DayOfWeekOptions]
class DayOfWeekOptionsGidBuilderImpl(T) : gid_apache.arrow24.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `countFromZero` property.
      Params:
        propval = Number days from 0 if true and from 1 if false.
      Returns: Builder instance for fluent chaining
  */
  T countFromZero(bool propval) nothrow
  {
    return setProperty("count-from-zero", propval);
  }

  /**
      Set `weekStart` property.
      Params:
        propval = What day does the week start with (Monday=1, Sunday=7).
          The numbering is unaffected by the count_from_zero parameter.
      Returns: Builder instance for fluent chaining
  */
  T weekStart(uint propval) nothrow
  {
    return setProperty("week-start", propval);
  }
}

/// Fluent builder for [gid_apache.arrow24.day_of_week_options.DayOfWeekOptions]
final class DayOfWeekOptionsGidBuilder : DayOfWeekOptionsGidBuilderImpl!DayOfWeekOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  DayOfWeekOptions build() nothrow
  {
    return new DayOfWeekOptions(cast(void*)createGObject(DayOfWeekOptions._getGType), Yes.Take);
  }
}
