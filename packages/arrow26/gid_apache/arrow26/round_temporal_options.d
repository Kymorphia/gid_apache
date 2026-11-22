/// Module for [RoundTemporalOptions] class
module gid_apache.arrow26.round_temporal_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow26.c.functions;
import gid_apache.arrow26.c.types;
import gid_apache.arrow26.function_options;
import gid_apache.arrow26.types;

/** */
class RoundTemporalOptions : gid_apache.arrow26.function_options.FunctionOptions
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
    return cast(void function())garrow_round_temporal_options_get_type != &gidSymbolNotFound ? garrow_round_temporal_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowRoundTemporalOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override RoundTemporalOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow26.round_temporal_options.RoundTemporalOptions]
      Returns: New builder object
  */
  static RoundTemporalOptionsGidBuilder builder() nothrow
  {
    return new RoundTemporalOptionsGidBuilder;
  }

  /**
      Get `calendarBasedOrigin` property.
      Returns: By default time is rounded to a multiple of units since 1970-01-01T00:00:00.
        By setting calendar_based_origin to true, time will be rounded to a number
        of units since the last greater calendar unit.
  */
  @property bool calendarBasedOrigin() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("calendar-based-origin");
  }

  /**
      Set `calendarBasedOrigin` property.
      Params:
        propval = By default time is rounded to a multiple of units since 1970-01-01T00:00:00.
          By setting calendar_based_origin to true, time will be rounded to a number
          of units since the last greater calendar unit.
  */
  @property void calendarBasedOrigin(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("calendar-based-origin", propval);
  }

  /**
      Get `ceilIsStrictlyGreater` property.
      Returns: Enable this flag to return a rounded value that is strictly greater than the input.
        This applies for ceiling only.
  */
  @property bool ceilIsStrictlyGreater() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("ceil-is-strictly-greater");
  }

  /**
      Set `ceilIsStrictlyGreater` property.
      Params:
        propval = Enable this flag to return a rounded value that is strictly greater than the input.
          This applies for ceiling only.
  */
  @property void ceilIsStrictlyGreater(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("ceil-is-strictly-greater", propval);
  }

  /**
      Get `multiple` property.
      Returns: Number of units to round to.
  */
  @property int multiple() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(int)("multiple");
  }

  /**
      Set `multiple` property.
      Params:
        propval = Number of units to round to.
  */
  @property void multiple(int propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(int)("multiple", propval);
  }

  /**
      Get `unit` property.
      Returns: The unit used for rounding of time.
  */
  @property gid_apache.arrow26.types.CalendarUnit unit() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow26.types.CalendarUnit)("unit");
  }

  /**
      Set `unit` property.
      Params:
        propval = The unit used for rounding of time.
  */
  @property void unit(gid_apache.arrow26.types.CalendarUnit propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow26.types.CalendarUnit)("unit", propval);
  }

  /**
      Get `weekStartsMonday` property.
      Returns: What day does the week start with (Monday=true, Sunday=false).
  */
  @property bool weekStartsMonday() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("week-starts-monday");
  }

  /**
      Set `weekStartsMonday` property.
      Params:
        propval = What day does the week start with (Monday=true, Sunday=false).
  */
  @property void weekStartsMonday(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("week-starts-monday", propval);
  }

  /** */
  this() nothrow
  {
    GArrowRoundTemporalOptions* _cretval;
    _cretval = garrow_round_temporal_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow26.round_temporal_options.RoundTemporalOptions]
class RoundTemporalOptionsGidBuilderImpl(T) : gid_apache.arrow26.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `calendarBasedOrigin` property.
      Params:
        propval = By default time is rounded to a multiple of units since 1970-01-01T00:00:00.
          By setting calendar_based_origin to true, time will be rounded to a number
          of units since the last greater calendar unit.
      Returns: Builder instance for fluent chaining
  */
  T calendarBasedOrigin(bool propval) nothrow
  {
    return setProperty("calendar-based-origin", propval);
  }

  /**
      Set `ceilIsStrictlyGreater` property.
      Params:
        propval = Enable this flag to return a rounded value that is strictly greater than the input.
          This applies for ceiling only.
      Returns: Builder instance for fluent chaining
  */
  T ceilIsStrictlyGreater(bool propval) nothrow
  {
    return setProperty("ceil-is-strictly-greater", propval);
  }

  /**
      Set `multiple` property.
      Params:
        propval = Number of units to round to.
      Returns: Builder instance for fluent chaining
  */
  T multiple(int propval) nothrow
  {
    return setProperty("multiple", propval);
  }

  /**
      Set `unit` property.
      Params:
        propval = The unit used for rounding of time.
      Returns: Builder instance for fluent chaining
  */
  T unit(gid_apache.arrow26.types.CalendarUnit propval) nothrow
  {
    return setProperty("unit", propval);
  }

  /**
      Set `weekStartsMonday` property.
      Params:
        propval = What day does the week start with (Monday=true, Sunday=false).
      Returns: Builder instance for fluent chaining
  */
  T weekStartsMonday(bool propval) nothrow
  {
    return setProperty("week-starts-monday", propval);
  }
}

/// Fluent builder for [gid_apache.arrow26.round_temporal_options.RoundTemporalOptions]
final class RoundTemporalOptionsGidBuilder : RoundTemporalOptionsGidBuilderImpl!RoundTemporalOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  RoundTemporalOptions build() nothrow
  {
    return new RoundTemporalOptions(cast(void*)createGObject(RoundTemporalOptions._getGType), Yes.Take);
  }
}
