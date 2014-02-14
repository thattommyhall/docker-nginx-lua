local char = {"a","b","c","d","e","f","g","h","i",
              "j","k","l","m","n","o","p","q","r",
              "s","t","u","v","w","x","y","z",
              "A","B","C","D","E","F","G","H","I",
              "J","K","L","M","N","O","P","Q","R",
              "S","T","U","V","W","X","Y","Z",
              "0","1","2","3","4","5","6","7","8","9"}

function random_string()
   local s = ""
   for i = 1, 10 do
      s = s .. char[math.random(#char)]
   end
   return s
end

local time = os.date("%Y%m%d%H%M%S")
local usray = time .. "_" .. random_string()

ngx.req.set_header("x_usray", usray) -- Note this is a side-effect

return usray
