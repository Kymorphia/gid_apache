/// Module for [FieldExpression] class
module gid_apache.arrow23.field_expression;

public import gid.core.basictypes;
import gid.core.utils;
import gid.glib2.error;
import gid.gobject2.gid_builder;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.expression;
import gid_apache.arrow23.types;

/** */
class FieldExpression : gid_apache.arrow23.expression.Expression
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
    return cast(void function())garrow_field_expression_get_type != &gidSymbolNotFound ? garrow_field_expression_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowFieldExpression";
  }

  /** Returns `this`, for use in `with` statements. */
  override FieldExpression self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.field_expression.FieldExpression]
      Returns: New builder object
  */
  static FieldExpressionGidBuilder builder() nothrow
  {
    return new FieldExpressionGidBuilder;
  }

  /** */
  this(string reference)
  {
    GArrowFieldExpression* _cretval;
    const(char)* _reference = reference.toCString!(No.Malloc, No.Nullable);
    GError *_err;
    _cretval = garrow_field_expression_new(_reference, &_err);
    if (_err)
      throw new ErrorWrap(_err, Yes.Take);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.field_expression.FieldExpression]
class FieldExpressionGidBuilderImpl(T) : gid_apache.arrow23.expression.ExpressionGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow23.field_expression.FieldExpression]
final class FieldExpressionGidBuilder : FieldExpressionGidBuilderImpl!FieldExpressionGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FieldExpression build() nothrow
  {
    return new FieldExpression(cast(void*)createGObject(FieldExpression._getGType), Yes.Take);
  }
}
