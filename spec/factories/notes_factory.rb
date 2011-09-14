Factory.define :note do |n|
  n.sequence(:title) {|s| "random title #{s} #{rand 1000}"}
  n.body { |note| note.title * (rand(10) + 1)}
end
