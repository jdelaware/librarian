FactoryBot.define do
  factory :book do
    isbn { '978-1-13-8954' }
    title { 'Das Kapital' }
    author { 'Karl Marx' }
    description { 'Sounds clever, is stupid actually...' }
    topic { 'Communism' }
    status { 'lend' }
  end
end
