/// Module for [WeekOptions] class
module gid_apache.arrow25.week_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.function_options;
import gid_apache.arrow25.types;

/** */
class WeekOptions : gid_apache.arrow25.function_options.FunctionOptions
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
    return cast(void function())garrow_week_options_get_type != &gidSymbolNotFound ? garrow_week_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowWeekOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override WeekOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.week_options.WeekOptions]
      Returns: New builder object
  */
  static WeekOptionsGidBuilder builder() nothrow
  {
    return new WeekOptionsGidBuilder;
  }

  /**
      Get `countFromZero` property.
      Returns: Dates from current year that fall into last ISO week of the previous year
        return 0 if true and 52 or 53 if false.
  */
  @property bool countFromZero() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("count-from-zero");
  }

  /**
      Set `countFromZero` property.
      Params:
        propval = Dates from current year that fall into last ISO week of the previous year
          return 0 if true and 52 or 53 if false.
  */
  @property void countFromZero(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("count-from-zero", propval);
  }

  /**
      Get `firstWeekIsFullyInYear` property.
      Returns: Must the first week be fully in January (true), or is a week that begins
        on December 29, 30, or 31 considered to be the first week of the new
        year (false)?
  */
  @property bool firstWeekIsFullyInYear() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("first-week-is-fully-in-year");
  }

  /**
      Set `firstWeekIsFullyInYear` property.
      Params:
        propval = Must the first week be fully in January (true), or is a week that begins
          on December 29, 30, or 31 considered to be the first week of the new
          year (false)?
  */
  @property void firstWeekIsFullyInYear(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("first-week-is-fully-in-year", propval);
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
    GArrowWeekOptions* _cretval;
    _cretval = garrow_week_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.week_options.WeekOptions]
class WeekOptionsGidBuilderImpl(T) : gid_apache.arrow25.function_options.FunctionOptionsGidBuilderImpl!T
{

  /**
      Set `countFromZero` property.
      Params:
        propval = Dates from current year that fall into last ISO week of the previous year
          return 0 if true and 52 or 53 if false.
      Returns: Builder instance for fluent chaining
  */
  T countFromZero(bool propval) nothrow
  {
    return setProperty("count-from-zero", propval);
  }

  /**
      Set `firstWeekIsFullyInYear` property.
      Params:
        propval = Must the first week be fully in January (true), or is a week that begins
          on December 29, 30, or 31 considered to be the first week of the new
          year (false)?
      Returns: Builder instance for fluent chaining
  */
  T firstWeekIsFullyInYear(bool propval) nothrow
  {
    return setProperty("first-week-is-fully-in-year", propval);
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

/// Fluent builder for [gid_apache.arrow25.week_options.WeekOptions]
final class WeekOptionsGidBuilder : WeekOptionsGidBuilderImpl!WeekOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  WeekOptions build() nothrow
  {
    return new WeekOptions(cast(void*)createGObject(WeekOptions._getGType), Yes.Take);
  }
}
