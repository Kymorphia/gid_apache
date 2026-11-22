/// Module for [ServableIfaceProxy] interface proxy object
module gid_apache.arrowflight21.servable_iface_proxy;

import gid.gobject2.object;
import gid_apache.arrowflight21.servable;
import gid_apache.arrowflight21.servable_mixin;

/// Proxy object for [gid_apache.arrowflight21.servable.Servable] interface when a GObject has no applicable D binding
class ServableIfaceProxy : IfaceProxy, gid_apache.arrowflight21.servable.Servable
{
  this(void* ptr, Flag!"Take" take) nothrow
  {
    super(cast(void*)ptr, take);
  }

  override TypeInfo_Interface getIface() nothrow
  {
    return typeid(gid_apache.arrowflight21.servable.Servable);
  }

  mixin ServableT!();
}
