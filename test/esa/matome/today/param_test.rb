require 'test_helper'

class Esa::Matome::Today::ParamTest < Minitest::Test
  def test_to_hash
    params = Esa::Matome::Today::Param.new(params: {}).to_hash
    today = Date.today

    assert_equal 100, params[:per_page]
    assert_equal "updated:>=#{today} kind:stock", params[:q]
  end

  def test_to_hash_with_query
    params = Esa::Matome::Today::Param.new(params: { q: 'keyword' }).to_hash
    today = Date.today

    assert_equal 100, params[:per_page]
    assert_equal "keyword updated:>=#{today} kind:stock", params[:q]
  end
end
