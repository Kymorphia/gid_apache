/// Module for [CallExpression] class
module gid_apache.arrow25.call_expression;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.expression;
import gid_apache.arrow25.function_options;
import gid_apache.arrow25.types;

/** */
class CallExpression : gid_apache.arrow25.expression.Expression
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
    return cast(void function())garrow_call_expression_get_type != &gidSymbolNotFound ? garrow_call_expression_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowCallExpression";
  }

  /** Returns `this`, for use in `with` statements. */
  override CallExpression self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.call_expression.CallExpression]
      Returns: New builder object
  */
  static CallExpressionGidBuilder builder() nothrow
  {
    return new CallExpressionGidBuilder;
  }

  /** */
  this(string function_, gid_apache.arrow25.expression.Expression[] arguments, gid_apache.arrow25.function_options.FunctionOptions options = null) nothrow
  {
    GArrowCallExpression* _cretval;
    const(char)* _function_ = function_.toCString!(No.Malloc, No.Nullable);
    auto _arguments = gListFromD!(gid_apache.arrow25.expression.Expression)(arguments);
    scope(exit) containerFree!(GList*, gid_apache.arrow25.expression.Expression, GidOwnership.None)(_arguments);
    _cretval = garrow_call_expression_new(_function_, _arguments, options ? cast(GArrowFunctionOptions*)options._cPtr(No.Dup) : null);
    this(_cretval, Yes.Take);
  }

  /** */
  gid_apache.arrow25.expression.Expression[] getArguments() nothrow
  {
    GList* _cretval;
    _cretval = garrow_call_expression_get_arguments(cast(GArrowCallExpression*)this._cPtr);
    auto _retval = gListToD!(gid_apache.arrow25.expression.Expression, GidOwnership.None)(cast(GList*)_cretval);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.call_expression.CallExpression]
class CallExpressionGidBuilderImpl(T) : gid_apache.arrow25.expression.ExpressionGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow25.call_expression.CallExpression]
final class CallExpressionGidBuilder : CallExpressionGidBuilderImpl!CallExpressionGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  CallExpression build() nothrow
  {
    return new CallExpression(cast(void*)createGObject(CallExpression._getGType), Yes.Take);
  }
}
