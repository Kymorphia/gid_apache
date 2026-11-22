/// Module for [TableConcatenateOptions] class
module gid_apache.arrow24.table_concatenate_options;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.types;

/** */
class TableConcatenateOptions : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_table_concatenate_options_get_type != &gidSymbolNotFound ? garrow_table_concatenate_options_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowTableConcatenateOptions";
  }

  /** Returns `this`, for use in `with` statements. */
  override TableConcatenateOptions self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.table_concatenate_options.TableConcatenateOptions]
      Returns: New builder object
  */
  static TableConcatenateOptionsGidBuilder builder() nothrow
  {
    return new TableConcatenateOptionsGidBuilder;
  }

  /**
      Get `promoteNullability` property.
      Returns: If true, a #GArrowField of #GArrowNullDataType can be unified
        with a #GArrowField of another type. The unified field will be of
        the other type and become nullable. Nullability will be promoted
        to the looser option (nullable if one is not nullable).
  */
  @property bool promoteNullability() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("promote-nullability");
  }

  /**
      Set `promoteNullability` property.
      Params:
        propval = If true, a #GArrowField of #GArrowNullDataType can be unified
          with a #GArrowField of another type. The unified field will be of
          the other type and become nullable. Nullability will be promoted
          to the looser option (nullable if one is not nullable).
  */
  @property void promoteNullability(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("promote-nullability", propval);
  }

  /**
      Get `unifySchemas` property.
      Returns: If true, the schemas of the tables will be first unified with
        fields of the same name being merged, according to
        #GArrowTableConcatenateOptions:promote-nullability, then each
        table will be promoted to the unified schema before being
        concatenated.
        
        Otherwise, all tables should have the same schema. Each column in
        the output table is the result of concatenating the corresponding
        columns in all input tables.
  */
  @property bool unifySchemas() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(bool)("unify-schemas");
  }

  /**
      Set `unifySchemas` property.
      Params:
        propval = If true, the schemas of the tables will be first unified with
          fields of the same name being merged, according to
          #GArrowTableConcatenateOptions:promote-nullability, then each
          table will be promoted to the unified schema before being
          concatenated.
          
          Otherwise, all tables should have the same schema. Each column in
          the output table is the result of concatenating the corresponding
          columns in all input tables.
  */
  @property void unifySchemas(bool propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(bool)("unify-schemas", propval);
  }

  /** */
  this() nothrow
  {
    GArrowTableConcatenateOptions* _cretval;
    _cretval = garrow_table_concatenate_options_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.table_concatenate_options.TableConcatenateOptions]
class TableConcatenateOptionsGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /**
      Set `promoteNullability` property.
      Params:
        propval = If true, a #GArrowField of #GArrowNullDataType can be unified
          with a #GArrowField of another type. The unified field will be of
          the other type and become nullable. Nullability will be promoted
          to the looser option (nullable if one is not nullable).
      Returns: Builder instance for fluent chaining
  */
  T promoteNullability(bool propval) nothrow
  {
    return setProperty("promote-nullability", propval);
  }

  /**
      Set `unifySchemas` property.
      Params:
        propval = If true, the schemas of the tables will be first unified with
          fields of the same name being merged, according to
          #GArrowTableConcatenateOptions:promote-nullability, then each
          table will be promoted to the unified schema before being
          concatenated.
          
          Otherwise, all tables should have the same schema. Each column in
          the output table is the result of concatenating the corresponding
          columns in all input tables.
      Returns: Builder instance for fluent chaining
  */
  T unifySchemas(bool propval) nothrow
  {
    return setProperty("unify-schemas", propval);
  }
}

/// Fluent builder for [gid_apache.arrow24.table_concatenate_options.TableConcatenateOptions]
final class TableConcatenateOptionsGidBuilder : TableConcatenateOptionsGidBuilderImpl!TableConcatenateOptionsGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  TableConcatenateOptions build() nothrow
  {
    return new TableConcatenateOptions(cast(void*)createGObject(TableConcatenateOptions._getGType), Yes.Take);
  }
}
