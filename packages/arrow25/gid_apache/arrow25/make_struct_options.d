/// Module for [MakeStructOptions] class
module gid_apache.arrow25.make_struct_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow25.c.functions;
import gid_apache.arrow25.c.types;
import gid_apache.arrow25.function_options;
import gid_apache.arrow25.types;

/** */
class MakeStructOptions : gid_apache.arrow25.function_options.FunctionOptions
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
    return cast(void function())garrow_make_struct_options_get_type != &gidSymbolNotFound ? garrow_make_struct_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowMakeStructOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override MakeStructOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow25.make_struct_options.MakeStructOptions]
      Returns: New builder object
  */
  static MakeStructOptionsGidBuilder builder() nothrow
  {
    return new MakeStructOptionsGidBuilder;
  }

  /** */
  this() nothrow
  {
    GArrowMakeStructOptions* _cretval;
    _cretval = garrow_make_struct_options_new();
    this(_cretval, Yes.Take);
  }

  /**
      Adds a field to the struct options with the specified name, nullability,
      and optional metadata.
  
      Params:
        name = The name of the field to add.
        nullability = Whether the field is nullable.
        metadata = A #GHashTable for the field's
            metadata, or null.
  */
  void addField(string name, bool nullability, string[string] metadata = null) nothrow
  {
    const(char)* _name = name.toCString!(No.Malloc, No.Nullable);
    auto _metadata = gHashTableFromD!(string, string)(metadata);
    scope(exit) containerFree!(GHashTable*, string, GidOwnership.None)(_metadata);
    garrow_make_struct_options_add_field(cast(GArrowMakeStructOptions*)this._cPtr, _name, nullability, _metadata);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow25.make_struct_options.MakeStructOptions]
class MakeStructOptionsGidBuilderImpl(T) : gid_apache.arrow25.function_options.FunctionOptionsGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrow25.make_struct_options.MakeStructOptions]
final class MakeStructOptionsGidBuilder : MakeStructOptionsGidBuilderImpl!MakeStructOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  MakeStructOptions build() nothrow
  {
    return new MakeStructOptions(cast(void*)createGObject(MakeStructOptions._getGType), Yes.Take);
  }
}
