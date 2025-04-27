local ip_info_div = get("ip-info")

local function fetchIPInfo()
  local response = fetch({
    url = "https://ip.douxx.tech",
    method = "GET",
    headers = { ["Content-Type"] = "application/json" }
  })
  
  ip_info_div.set_contents("")
  
  local paragraphs = {
    "IP Information:"
  }

  for _, text in ipairs(paragraphs) do
    local p = get("p")
    p.set_contents(text)
  end
  
  ip_info_div.set_contents(table.concat(paragraphs, "\n\n"))
end

fetchIPInfo()