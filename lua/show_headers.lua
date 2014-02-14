local title = '<h1><b>Server 2</b></h1>'
s = ''

local headers = ngx.req.get_headers()

for k,v in pairs(headers) do
   s = s .. k .. ":" .. v .. "<BR>"
end

ngx.say(title .. '<h1>' .. s .. '</h1>')