class BoardCase

  attr_accessor :case_value, :case_id

  def initialize(case_value, case_id)
    @case_value = case_value
    @case_id = case_id
  end

  def to_s
    @case_value.to_s
  end
end