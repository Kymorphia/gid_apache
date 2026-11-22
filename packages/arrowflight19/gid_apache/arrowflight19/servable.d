/// Module for [Servable] interface
module gid_apache.arrowflight19.servable;

public import gid.core.basictypes;
public import gid_apache.arrowflight19.servable_iface_proxy;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrowflight19.c.functions;
import gid_apache.arrowflight19.c.types;
import gid_apache.arrowflight19.types;

/** */
interface Servable : GidWrap
{

  /** */
  static GType _getGType() nothrow
  {
    import gid.core.loader : gidSymbolNotFound;
    return cast(void function())gaflight_servable_get_type != &gidSymbolNotFound ? gaflight_servable_get_type() : cast(GType)0;
  }
}

/// Fluent builder implementation template for [gid_apache.arrowflight19.servable.Servable]
interface ServableGidBuilderImpl(T)
{
}
