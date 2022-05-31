familia_madrigal = {
        abuelos: [{nombre: "Alma", gift: nil}],
        padres: [
                  {nombre: "Bruno", gift: "See the future"},
                  {nombre: "Julieta", gift: "Heal with a meal"},
                  {nombre: "Pepa", gift: "Mood affects the weather"}
                ],
        nietos: [
                  {nombre: "Isabella", gift: "Flower child"},
                  {nombre: "Luisa", gift: "Super strength"},
                  {nombre: "Mirabel", gift: nil},
                  {nombre: "Dolores", gift: "Can hear a pin drop"},
                  {nombre: "Camilo", gift: "Shapeshifter"},
                  {nombre: "Antonio", gift: "Talk to animals"}
                ]
                    }

def names(family)
  # Insert code here
  family.map do |key, value|
    value.map do |member|
      member[:nombre]
    end
  end
end

def madrigal_count(family)
  # Insert code here
  count = 0
  family.each do |key, value|
    value.each do |member|
      count += 1
    end
  end
  count
end

def giftless(family)
  # Insert code here
  giftless = []
  family.each do |key, value|
    value.each do |member|
      giftless << member[:nombre] if member[:gift].nil?
    end
  end
  giftless
end

# Create a method that lists the names (nombres) of all family members
puts names(familia_madrigal)
puts ""

# Return count of all Madrigals
puts madrigal_count(familia_madrigal)
puts ""

# Return names of all family members without a gift
puts giftless(familia_madrigal)
