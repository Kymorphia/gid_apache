/// Module for [FeatherWriteProperties] class
module gid_apache.arrow24.feather_write_properties;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow24.c.functions;
import gid_apache.arrow24.c.types;
import gid_apache.arrow24.types;

/** */
class FeatherWriteProperties : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_feather_write_properties_get_type != &gidSymbolNotFound ? garrow_feather_write_properties_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowFeatherWriteProperties";
  }

  /** Returns `this`, for use in `with` statements. */
  override FeatherWriteProperties self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow24.feather_write_properties.FeatherWriteProperties]
      Returns: New builder object
  */
  static FeatherWritePropertiesGidBuilder builder() nothrow
  {
    return new FeatherWritePropertiesGidBuilder;
  }

  /**
      Get `compression` property.
      Returns: Compression type to use. Only
        [gid_apache.arrow26.types.CompressionType.Uncompressed],
        [gid_apache.arrow26.types.CompressionType.Lz4] and [gid_apache.arrow26.types.CompressionType.Zstd]
        are supported. The default compression is
        [gid_apache.arrow26.types.CompressionType.Lz4] if Apache Arrow C++ is built with
        support for it, otherwise [gid_apache.arrow26.types.CompressionType.Uncompressed].
        [gid_apache.arrow26.types.CompressionType.Uncompressed] is set as the object
        default here.
  */
  @property gid_apache.arrow24.types.CompressionType compression() nothrow
  {
    return gid.gobject2.object.ObjectWrap.getProperty!(gid_apache.arrow24.types.CompressionType)("compression");
  }

  /**
      Set `compression` property.
      Params:
        propval = Compression type to use. Only
          [gid_apache.arrow26.types.CompressionType.Uncompressed],
          [gid_apache.arrow26.types.CompressionType.Lz4] and [gid_apache.arrow26.types.CompressionType.Zstd]
          are supported. The default compression is
          [gid_apache.arrow26.types.CompressionType.Lz4] if Apache Arrow C++ is built with
          support for it, otherwise [gid_apache.arrow26.types.CompressionType.Uncompressed].
          [gid_apache.arrow26.types.CompressionType.Uncompressed] is set as the object
          default here.
  */
  @property void compression(gid_apache.arrow24.types.CompressionType propval) nothrow
  {
    gid.gobject2.object.ObjectWrap.setProperty!(gid_apache.arrow24.types.CompressionType)("compression", propval);
  }

  /** */
  this() nothrow
  {
    GArrowFeatherWriteProperties* _cretval;
    _cretval = garrow_feather_write_properties_new();
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrow24.feather_write_properties.FeatherWriteProperties]
class FeatherWritePropertiesGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /**
      Set `compression` property.
      Params:
        propval = Compression type to use. Only
          [gid_apache.arrow26.types.CompressionType.Uncompressed],
          [gid_apache.arrow26.types.CompressionType.Lz4] and [gid_apache.arrow26.types.CompressionType.Zstd]
          are supported. The default compression is
          [gid_apache.arrow26.types.CompressionType.Lz4] if Apache Arrow C++ is built with
          support for it, otherwise [gid_apache.arrow26.types.CompressionType.Uncompressed].
          [gid_apache.arrow26.types.CompressionType.Uncompressed] is set as the object
          default here.
      Returns: Builder instance for fluent chaining
  */
  T compression(gid_apache.arrow24.types.CompressionType propval) nothrow
  {
    return setProperty("compression", propval);
  }
}

/// Fluent builder for [gid_apache.arrow24.feather_write_properties.FeatherWriteProperties]
final class FeatherWritePropertiesGidBuilder : FeatherWritePropertiesGidBuilderImpl!FeatherWritePropertiesGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FeatherWriteProperties build() nothrow
  {
    return new FeatherWriteProperties(cast(void*)createGObject(FeatherWriteProperties._getGType), Yes.Take);
  }
}
