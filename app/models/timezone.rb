class Timezone < ActiveRecord::Base
  MAPPING = {
    "Berlin" => "Europe/Berlin",
    "Moscow" => "Europe/Moscow",
    "Tokyo" => "Asia/Tokyo",
    "New York" => "America/New_York",
  }
  # Keys are Rails TimeZone names, values are TZInfo identifiers.
end
