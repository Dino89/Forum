FactoryGirl.define do
  factory :comment do
    id "100"
    title "Apple ist Apple"
    text "Eine etablierte Marke, die ihre Existenzberechtigung hat! Egal, was andere sagen."
    procontra "pro"
    user_id "1"
    theme_id "2"
  end
end