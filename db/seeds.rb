puts "Creating... Admin"

puts "Enter email:"
email = STDIN.gets.chomp

puts "Enter password:"
password = STDIN.gets.chomp

User.attr_accessible :tier_id

admin = User.create!({
              name: "Admin",
              email: email,
              password: password,
              password_confirmation: password,
              tier_id: 1
            })

admin.add_role :admin
admin.save

puts "Successfully created Admin account."

puts "Generating Tiers..."
puts "Tier 1: Unlimited"

Tier.attr_accessible :name, :limit

Tier.create!({
              name: "Unlimited",
              limit: 1000000
            })

puts "Tier 2: No Access"

Tier.create!({
              name: "No Access",
              limit: 0
            })