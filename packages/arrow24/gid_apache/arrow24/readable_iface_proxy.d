/// Module for [ReadableIfaceProxy] interface proxy object
module gid_apache.arrow24.readable_iface_proxy;

import gid.gobject2.object;
import gid_apache.arrow24.readable;
import gid_apache.arrow24.readable_mixin;

/// Proxy object for [gid_apache.arrow24.readable.Readable] interface when a GObject has no applicable D binding
class ReadableIfaceProxy : IfaceProxy, gid_apache.arrow24.readable.Readable
{
  this(void* ptr, Flag!"Take" take) nothrow
  {
    super(cast(void*)ptr, take);
  }

  override TypeInfo_Interface getIface() nothrow
  {
    return typeid(gid_apache.arrow24.readable.Readable);
  }

  mixin ReadableT!();
}
