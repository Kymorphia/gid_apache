/// Module for [LiteralExpression] class
module gid_apache.arrow24.literal_expression;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.datum;
import gid_apache.arrow24.expression;
import gid_apache.arrow24.types;

/** */
class LiteralExpression : gid_apache.arrow24.expression.Expression
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
    return cast(void function())garrow_literal_expression_get_type != &gidSymbolNotFound ? garrow_literal_expression_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowLiteralExpression";
  }

  /** Returns `this`, for use in `with` statements. */
  override LiteralExpression self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.literal_expression.LiteralExpression]
      Returns: New builder object
  */
  static LiteralExpressionGidBuilder builder() nothrow
  {
    return new LiteralExpressionGidBuilder;
  }

  /**
      Get `datum` property.
      Returns: The datum of this literal.
  */
  @property gid_apache.arrow24.datum.Datum datum() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow24.datum.Datum)("datum");
  }

  /** */
  this(gid_apache.arrow24.datum.Datum datum) nothrow
  {
    GArrowLiteralExpression* _cretval;
    _cretval = garrow_literal_expression_new(datum ? cast(GArrowDatum*)datum._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.literal_expression.LiteralExpression]
class LiteralExpressionGidBuilderImpl(T) : gid_apache.arrow24.expression.ExpressionGidBuilderImpl!T
{

  /**
      Set `datum` property.
      Params:
        propval = The datum of this literal.
      Returns: Builder instance for fluent chaining
  */
  T datum(gid_apache.arrow24.datum.Datum propval) nothrow
  {
    return setProperty("datum", propval);
  }
}

/// Fluent builder for [gid_apache.arrow24.literal_expression.LiteralExpression]
final class LiteralExpressionGidBuilder : LiteralExpressionGidBuilderImpl!LiteralExpressionGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  LiteralExpression build() nothrow
  {
    return new LiteralExpression(cast(void*)createGObject(LiteralExpression._getGType), Yes.Take);
  }
}
