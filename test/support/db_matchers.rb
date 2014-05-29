module DBMatchers

  def must_have_column(table, column, type)
    table.columns_hash[column.to_s].type.must_equal type
  end

  def wont_have_column(table, column, type)
    table.columns_hash[column.to_s].type.wont_equal type
  end

  def must_have_index(table, index)
    connection = ActiveRecord::Base.connection
    connection.indexes(table).collect(&:columns).must_include([index])
  end

  def wont_have_index(table, index)
    connection = ActiveRecord::Base.connection
    connection.indexes(table).collect(&:columns).wont_include([index])
  end

  def must_belong_to(child_model, parent_model)
     child_model.reflections[parent_model.to_sym].macro.must_equal :belongs_to
  end

  def wont_belong_to(model)
  end

  def must_have_many(parent_model, child_model)
    parent_model.reflections[child_model].macro.must_equal :has_many
  end

  def must_have_many_through(model, join_model)

    # User.reflections[:orgs].options[:through].must_equal :orgs_users
  end

  def wont_have_many_through(model, join_model)
  end

  def wont_have_many(model)

  end
end