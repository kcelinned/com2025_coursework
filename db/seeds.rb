# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

firstEvent = Event.where(title:"First Event").first
firstEvent.delete if firstEvent

events = Event.create([title:"First Event", date:"2020-05-27"])

firstTask = Task.where(title:"First Task").first
firstTask.delete if firstTask

tasks = Task.create([title:"First Task", date:"2020-05-27"])
