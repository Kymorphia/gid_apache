/// Module for [Criteria] class
module gid_apache.arrowflight25.criteria;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.bytes;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrowflight25.c.functions;
import gid_apache.arrowflight25.c.types;
import gid_apache.arrowflight25.types;

/** */
class Criteria : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gaflight_criteria_get_type != &gidSymbolNotFound ? gaflight_criteria_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightCriteria";
  }

  /** Returns `this`, for use in `with` statements. */
  override Criteria self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight25.criteria.Criteria]
      Returns: New builder object
  */
  static CriteriaGidBuilder builder() nothrow
  {
    return new CriteriaGidBuilder;
  }

  /**
      Get `expression` property.
      Returns: Opaque criteria expression, dependent on server implementation.
  */
  @property gid.glib2.bytes.Bytes expression() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid.glib2.bytes.Bytes)("expression");
  }

  /**
      Set `expression` property.
      Params:
        propval = Opaque criteria expression, dependent on server implementation.
  */
  @property void expression(gid.glib2.bytes.Bytes propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid.glib2.bytes.Bytes)("expression", propval);
  }

  /** */
  this(gid.glib2.bytes.Bytes expression) nothrow
  {
    GAFlightCriteria* _cretval;
    _cretval = gaflight_criteria_new(expression ? cast(GBytes*)expression._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight25.criteria.Criteria]
class CriteriaGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /**
      Set `expression` property.
      Params:
        propval = Opaque criteria expression, dependent on server implementation.
      Returns: Builder instance for fluent chaining
  */
  T expression(gid.glib2.bytes.Bytes propval) nothrow
  {
    return setProperty("expression", propval);
  }
}

/// Fluent builder for [gid_apache.arrowflight25.criteria.Criteria]
final class CriteriaGidBuilder : CriteriaGidBuilderImpl!CriteriaGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Criteria build() nothrow
  {
    return new Criteria(cast(void*)createGObject(Criteria._getGType), Yes.Take);
  }
}
