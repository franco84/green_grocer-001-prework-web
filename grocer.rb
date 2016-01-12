def consolidate_cart(cart:[])
  # code here
  items = []
  newcart = {}

  cart.each do |x|
    x.each do |item, data|
      items << x.keys
      if !newcart.has_key?(item)
        newcart[item] = data
      end
    end
  end
  items.flatten!
  counted = []
  items.each do |x|
    if !counted.include?(x)
      count = items.count(x)
      counted << x
        newcart.each do |item, data|
          if item == x
            newcart[item][:count] = count
          end
        end
    end
  end
  newcart
end

def apply_coupons(cart:[], coupons:[])
  # code here
end

def apply_clearance(cart:[])
  # code here
end

def checkout(cart: [], coupons: [])
  # code here
end