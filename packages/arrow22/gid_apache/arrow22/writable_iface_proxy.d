/// Module for [WritableIfaceProxy] interface proxy object
module gid_apache.arrow22.writable_iface_proxy;

import gid.gobject2.object;
import gid_apache.arrow22.writable;
import gid_apache.arrow22.writable_mixin;

/// Proxy object for [gid_apache.arrow22.writable.Writable] interface when a GObject has no applicable D binding
class WritableIfaceProxy : IfaceProxy, gid_apache.arrow22.writable.Writable
{
  this(void* ptr, Flag!"Take" take) nothrow
  {
    super(cast(void*)ptr, take);
  }

  override TypeInfo_Interface getIface() nothrow
  {
    return typeid(gid_apache.arrow22.writable.Writable);
  }

  mixin WritableT!();
}
