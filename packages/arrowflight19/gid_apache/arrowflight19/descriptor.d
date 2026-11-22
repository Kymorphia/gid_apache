/// Module for [Descriptor] class
module gid_apache.arrowflight19.descriptor;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrowflight19.c.functions;
import gid_apache.arrowflight19.c.types;
import gid_apache.arrowflight19.types;

/** */
class Descriptor : gid.gobject2.object.ObjectWrap
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
    return cast(void function())gaflight_descriptor_get_type != &gidSymbolNotFound ? gaflight_descriptor_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GAFlightDescriptor";
  }

  /** Returns `this`, for use in `with` statements. */
  override Descriptor self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowflight19.descriptor.Descriptor]
      Returns: New builder object
  */
  static DescriptorGidBuilder builder() nothrow
  {
    return new DescriptorGidBuilder;
  }

  /** */
  bool equal(gid_apache.arrowflight19.descriptor.Descriptor otherDescriptor) nothrow
  {
    bool _retval;
    _retval = cast(bool)gaflight_descriptor_equal(cast(GAFlightDescriptor*)this._cPtr, otherDescriptor ? cast(GAFlightDescriptor*)otherDescriptor._cPtr(No.Dup) : null);
    return _retval;
  }

  /** */
  string toString_() nothrow
  {
    char* _cretval;
    _cretval = gaflight_descriptor_to_string(cast(GAFlightDescriptor*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight19.descriptor.Descriptor]
class DescriptorGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T descriptor(void* propval) nothrow
  {
    return setProperty("descriptor", propval);
  }
}

/// Fluent builder for [gid_apache.arrowflight19.descriptor.Descriptor]
final class DescriptorGidBuilder : DescriptorGidBuilderImpl!DescriptorGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  Descriptor build() nothrow
  {
    return new Descriptor(cast(void*)createGObject(Descriptor._getGType), Yes.Take);
  }
}
