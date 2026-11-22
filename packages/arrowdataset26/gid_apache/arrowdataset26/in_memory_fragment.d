/// Module for [InMemoryFragment] class
module gid_apache.arrowdataset26.in_memory_fragment;

public import gid.core.basictypes;
import gid.core.utils;
import gid.gobject2.gid_builder;
import gid_apache.arrow26.record_batch;
import gid_apache.arrow26.schema;
import gid_apache.arrowdataset26.c.functions;
import gid_apache.arrowdataset26.c.types;
import gid_apache.arrowdataset26.fragment;
import gid_apache.arrowdataset26.types;

/** */
class InMemoryFragment : gid_apache.arrowdataset26.fragment.Fragment
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
    return cast(void function())gadataset_in_memory_fragment_get_type != &gidSymbolNotFound ? gadataset_in_memory_fragment_get_type() : cast(GType)0;
  }

  /** */
  override @property GType _gType() nothrow
  {
    return _getGType();
  }

  /** */
  override @property string _gTypeName() nothrow
  {
    return "GADatasetInMemoryFragment";
  }

  /** Returns `this`, for use in `with` statements. */
  override InMemoryFragment self() nothrow
  {
    return this;
  }

  /**
      Get builder for [gid_apache.arrowdataset26.in_memory_fragment.InMemoryFragment]
      Returns: New builder object
  */
  static InMemoryFragmentGidBuilder builder() nothrow
  {
    return new InMemoryFragmentGidBuilder;
  }

  /** */
  this(gid_apache.arrow26.schema.Schema schema, gid_apache.arrow26.record_batch.RecordBatch[] recordBatches) nothrow
  {
    GADatasetInMemoryFragment* _cretval;
    size_t _nRecordBatches;
    if (recordBatches)
      _nRecordBatches = cast(size_t)recordBatches.length;

    auto _recordBatches_arr = new GArrowRecordBatch*[](recordBatches.length);
    auto _recordBatches = cast(GArrowRecordBatch**)_recordBatches_arr.ptr;
    foreach (i, obj; recordBatches) _recordBatches[i] = obj ? cast(GArrowRecordBatch*)obj._cPtr(No.Dup) : null;
    _cretval = gadataset_in_memory_fragment_new(schema ? cast(GArrowSchema*)schema._cPtr(No.Dup) : null, _recordBatches, _nRecordBatches);
    this(_cretval, Yes.Take);
  }
}

/// Fluent builder implementation template for [gid_apache.arrowdataset26.in_memory_fragment.InMemoryFragment]
class InMemoryFragmentGidBuilderImpl(T) : gid_apache.arrowdataset26.fragment.FragmentGidBuilderImpl!T
{
}

/// Fluent builder for [gid_apache.arrowdataset26.in_memory_fragment.InMemoryFragment]
final class InMemoryFragmentGidBuilder : InMemoryFragmentGidBuilderImpl!InMemoryFragmentGidBuilder
{
  /**
      Create object from builder.
      Returns: New object
  */
  InMemoryFragment build() nothrow
  {
    return new InMemoryFragment(cast(void*)createGObject(InMemoryFragment._getGType), Yes.Take);
  }
}
