/// Module for [Expression] class
module gid_apache.arrow20.expression;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow20.c.functions;
import gid_apache.arrow20.c.types;
import gid_apache.arrow20.types;

/** */
class Expression : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_expression_get_type != &gidSymbolNotFound ? garrow_expression_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowExpression";
  }

  /** Returns `this`, for use in `with` statements. */
  override Expression self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow20.expression.Expression]
      Returns: New builder object
  */
  static ExpressionGidBuilder builder() nothrow
  {
    return new ExpressionGidBuilder;
  }

  /** */
  bool equal(gid_apache.arrow20.expression.Expression otherExpression) nothrow
  {
    bool _retval;
    _retval = cast(bool)garrow_expression_equal(cast(GArrowExpression*)this._cPtr, otherExpression ? cast(GArrowExpression*)otherExpression._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  string toString_() nothrow
  {
    char* _cretval;
    _cretval = garrow_expression_to_string(cast(GArrowExpression*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow20.expression.Expression]
class ExpressionGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow20.expression.Expression]
final class ExpressionGidBuilder : ExpressionGidBuilderImpl!ExpressionGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Expression build() nothrow
  {
    return new Expression(cast(void*)createGObject(Expression._getGType), Yes.Take);
  }
}
