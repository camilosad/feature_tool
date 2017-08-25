FactoryGirl.define do
  factory :measure do
    section { :effort }
    name { 'Cost' }
    hint { 'Will we incure addtional operation cost?' }
    start_hint { 'No Cost' }
    end_hint { 'Expensive' }
    required { false }
    allocation_percent { 70 }
  end
end
