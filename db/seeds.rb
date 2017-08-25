# rubocop:disable Metrics/LineLength

Users::Create.new.call(name: 'Shane Davies', email: 'sdavies@loft47.com', password: 'password')

[
  [:business_value, 'Customer Benefit', 'What is the need and urgency of this feature? How often does a customer encounter this issue?', 'Minor annoyance or small benefit; happens rarely; not urgent.'],
  [:business_value, 'Solves a major customer pain or provides a significant benefit; Occurs often; needs a solution as soon as possible.'],
  [:business_value, 'Customer Impact', 'What percent of existing customer will use this? (0% -50% or more)', 'No significant impact', 'Over 50%'],
  [:business_value, 'Sales Impact', 'How many sales would be affected by having this feature?', 'No sales are impacted by this', '5 or more sales are impacted by this'],
  [:business_value, 'Competitive Positioning. Will this feature make us more competitive? 0=Modest 3=parity 5=sets us apart', 'Provides no differentiation', 'Major feature sets us apart. Losing business without this feature.'],
  [:business_value, 'Strategic Alignment', 'How does this align with our overall vision of what Loft47 should be?', 'Does Not align with the overall vision of Loft47', 'Strong alignment with vision. High impact.'],
  [:business_value, 'Customer satisfaction', 'Does this feature improve retention of customers, and avoids support costs', 'No impact to customer happiness. No impact on support', 'Positively affects all or major customers often or in major ways; Reduces known churn; Reduces known support costs.'],
  [:effort, 'Work Weeks', 'How many weeks to implement this feature?', 'Less than a day', 'More than 5 weeks'],
  [:effort, 'How many resources does this require', 'Can this be done in house? Does this require singular effort?', 'None. This feature can be outsourced or purchased as an app.', 'Requires the Entire Team Focus.'],
  [:effort, 'What is the risk', 'Will this feature destabilize the system? Is this feature highly integrated or can it stand alone? Can it be disabled if necessary?', 'No risk.', 'High Risk.'],
  [:effort, 'Operational Cost', 'Will we incur additional operational costs to implement this feature?', 'No cost', 'Expensive'],
  [:effort, 'Dependencies', 'Does this feature depend on external resources (API)? Does this feature depend on other feature completion?', 'No dependencies', 'Heavily dependent']
].each_with_index do |measure, index|
  section, name, hint, start_hint, end_hint = measure
  Measure.create(section: section, name: name, hint: hint, start_hint: start_hint, end_hint: end_hint, position: index)
end

Feature.create(user: User.first, name: 'SMS Notification', description: 'Allow users to opt into SMS notifcation', stakeholder: 'users', documentation: 'see twillio api for details', required_at: '2017-12-15')
