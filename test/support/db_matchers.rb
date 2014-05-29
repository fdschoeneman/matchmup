module DBMatchers

  def must_have_column(table, column, type)
    table.columns_hash[column.to_s].type.must_equal type
  end

  def wont_have_column(table, column, type)
    table.columns_hash[column.to_s].type.wont_equal type
  end

  def must_have_index(table, index)
    connection = ActiveRecord::Base.connection
    connection.indexes(table).collect(&:columns).must_include(index)
  end

  def wont_have_index(table, index)
    connection = ActiveRecord::Base.connection
    connection.indexes(table).collect(&:columns).wont_include(index)
  end
end