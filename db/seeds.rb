titles = ['Faire les courses', 'Aller nager', 'Réserver billets d\'avion', 'Cadeau noel']
details = ['Lundi', 'Mardi', 'Mercredi', 'Samedi']

puts 'Creating 10 fake tasks'
4.times do
  task = Task.new(
    title: titles.sample,
    details: details.sample
  )
  task.save!
end
puts 'Finished!'
