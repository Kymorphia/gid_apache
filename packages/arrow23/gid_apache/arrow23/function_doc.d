/// Module for [FunctionDoc] class
module gid_apache.arrow23.function_doc;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid.gobject2.object;
import gid_apache.arrow23.c.functions;
import gid_apache.arrow23.c.types;
import gid_apache.arrow23.types;

/** */
class FunctionDoc : gid.gobject2.object.ObjectWrap
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
    return cast(void function())garrow_function_doc_get_type != &gidSymbolNotFound ? garrow_function_doc_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GArrowFunctionDoc";
  }

  /** Returns `this`, for use in `with` statements. */
  override FunctionDoc self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrow23.function_doc.FunctionDoc]
      Returns: New builder object
  */
  static FunctionDocGidBuilder builder() nothrow
  {
    return new FunctionDocGidBuilder;
  }

  /** */
  string[] getArgNames() nothrow
  {
    char** _cretval;
    _cretval = garrow_function_doc_get_arg_names(cast(GArrowFunctionDoc*)this._cPtr);
    string[] _retval;

    if (_cretval)
    {
      uint _cretlength;
      while (_cretval[_cretlength] !is null)
        _cretlength++;
      _retval = new string[_cretlength];
      foreach (i; 0 .. _cretlength)
        _retval[i] = _cretval[i].fromCString!(Yes.Free);
      gFree(cast(void*)_cretval);
    }
    return _retval;
  }

  /** */
  string getDescription() nothrow
  {
    char* _cretval;
    _cretval = garrow_function_doc_get_description(cast(GArrowFunctionDoc*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  /** */
  string getOptionsClassName() nothrow
  {
    char* _cretval;
    _cretval = garrow_function_doc_get_options_class_name(cast(GArrowFunctionDoc*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }

  /** */
  string getSummary() nothrow
  {
    char* _cretval;
    _cretval = garrow_function_doc_get_summary(cast(GArrowFunctionDoc*)this._cPtr);
    string _retval = (cast(const(char)*)_cretval).fromCString!(Yes.Free);
    return _retval;
  }
}

/// Fluent builder implementation template for [gid_apache.arrow23.function_doc.FunctionDoc]
class FunctionDocGidBuilderImpl(T) : gid.gobject2.object.ObjectWrapGidBuilderImpl!T
{

  /** */
  T doc(void* propval) nothrow
  {
    return setProperty("doc", propval);
  }
}

/// Fluent builder for [gid_apache.arrow23.function_doc.FunctionDoc]
final class FunctionDocGidBuilder : FunctionDocGidBuilderImpl!FunctionDocGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  FunctionDoc build() nothrow
  {
    return new FunctionDoc(cast(void*)createGObject(FunctionDoc._getGType), Yes.Take);
  }
}
