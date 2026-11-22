/// Module for [FileIfaceProxy] interface proxy object
module gid_apache.arrow23.file_iface_proxy;

import gid.gobject2.object;
import gid_apache.arrow23.file;
import gid_apache.arrow23.file_mixin;

/// Proxy object for [gid_apache.arrow23.file.File] interface when a GObject has no applicable D binding
class FileIfaceProxy : IfaceProxy, gid_apache.arrow23.file.File
{
  this(void* ptr, Flag!"Take" take) nothrow
  {
    super(cast(void*)ptr, take);
  }

  override TypeInfo_Interface getIface() nothrow
  {
    return typeid(gid_apache.arrow23.file.File);
  }

  mixin FileT!();
}
