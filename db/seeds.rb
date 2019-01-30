# frozen_string_literal: true

titles = %w[Faire\ les\ courses Aller\ nager Réserver\ billets\ d'avion Cadeau\ noel]
details = %w[Lundi Mardi Mercredi Samedi]

Task.destroy.all

puts 'Creating 10 fake tasks'
4.times do
  task = Task.new(
    title: titles.sample,
    details: details.sample
  )
  task.save!
end
puts 'Finished!'
