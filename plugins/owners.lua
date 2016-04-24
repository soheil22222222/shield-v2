local function lock_group_namemod(msg, data, target)
  local group_name_set = data[tostring(target)]['settings']['set_name']
  local group_name_lock = data[tostring(target)]['settings']['lock_name']
  if group_name_lock == 'yes' then
    return 'Group name is already locked'
  else
    data[tostring(target)]['settings']['lock_name'] = 'yes'
    save_data(_config.moderation.data, data)
    rename_chat('chat#id'..target, group_name_set, ok_cb, false)
  return 'Group name has been locked'
  end
end

local function unlock_group_namemod(msg, data, target)
  local group_name_set = data[tostring(target)]['settings']['set_name']
  local group_name_lock = data[tostring(target)]['settings']['lock_name']
  if group_name_lock == 'no' then
    return 'Group name is already unlocked'
  else
    data[tostring(target)]['settings']['lock_name'] = 'no'
    save_data(_config.moderation.data, data)
  return 'Group name has been unlocked'
  end
end

local function lock_group_floodmod(msg, data, target)
  local group_flood_lock = data[tostring(target)]['settings']['flood']
  if group_flood_lock == 'yes' then
    return 'Group flood is locked'
  else
    data[tostring(target)]['settings']['flood'] = 'yes'
    save_data(_config.moderation.data, data)
  return 'Group flood has been locked'
  end
end

local function unlock_group_floodmod(msg, data, target)
  local group_flood_lock = data[tostring(target)]['settings']['flood']
  if group_flood_lock == 'no' then
    return 'Group flood is not locked'
  else
    data[tostring(target)]['settings']['flood'] = 'no'
    save_data(_config.moderation.data, data)
  return 'Group flood has been unlocked'
  end
end

local function lock_group_membermod(msg, data, target)
  local group_member_lock = data[tostring(target)]['settings']['lock_member']
  if group_member_lock == 'yes' then
    return 'Group members are already locked'
  else
    data[tostring(target)]['settings']['lock_member'] = 'yes'
    save_data(_config.moderation.data, data)
  end
  return 'Group members has been locked'
end

local function unlock_group_membermod(msg, data, target)
  local group_member_lock = data[tostring(target)]['settings']['lock_member']
  if group_member_lock == 'no' then
    return 'Group members are not locked'
  else
    data[tostring(target)]['settings']['lock_member'] = 'no'
    save_data(_config.moderation.data, data)
  return 'Group members has been unlocked'
  end
end

local function unlock_group_photomod(msg, data, target)
  local group_photo_lock = data[tostring(target)]['settings']['lock_photo']
  if group_photo_lock == 'no' then
      return 'Group photo is not locked'
  else
      data[tostring(target)]['settings']['lock_photo'] = 'no'
      save_data(_config.moderation.data, data)
  return 'Group photo has been unlocked'
  end
end

local function lock_group_arabic(msg, data, target)
  local group_arabic_lock = data[tostring(target)]['settings']['lock_arabic']
  if group_arabic_lock == 'yes' then
    return 'Arabic is already locked'
  else
    data[tostring(target)]['settings']['lock_arabic'] = 'yes'
    save_data(_config.moderation.data, data)
    return 'Arabic has been locked'
  end
end

local function unlock_group_arabic(msg, data, target)
  local group_arabic_lock = data[tostring(target)]['settings']['lock_arabic']
  if group_arabic_lock == 'no' then
    return 'Arabic/Persian is already unlocked'
  else
    data[tostring(target)]['settings']['lock_arabic'] = 'no'
    save_data(_config.moderation.data, data)
    return 'Arabic/Persian has been unlocked'
  end
end

local function lock_group_links(msg, data, target)
  local group_link_lock = data[tostring(target)]['settings']['lock_link']
  if group_link_lock == 'yes' then
    return 'Link posting is already locked'
  else
    data[tostring(target)]['settings']['lock_link'] = 'yes'
    save_data(_config.moderation.data, data)
    return 'Link posting has been locked'
  end
end

local function unlock_group_links(msg, data, target)
  local group_link_lock = data[tostring(target)]['settings']['lock_link']
  if group_link_lock == 'no' then
    return 'Link posting is not locked'
  else
    data[tostring(target)]['settings']['lock_link'] = 'no'
    save_data(_config.moderation.data, data)
    return 'Link posting has been unlocked'
  end
end

local function lock_group_spam(msg, data, target)

  local group_spam_lock = data[tostring(target)]['settings']['lock_spam']
  if group_spam_lock == 'yes' then
    return 'SuperGroup spam is already locked'
  else
    data[tostring(target)]['settings']['lock_spam'] = 'yes'
    save_data(_config.moderation.data, data)
    return 'SuperGroup spam has been locked'
  end
end

local function unlock_group_spam(msg, data, target)

  local group_spam_lock = data[tostring(target)]['settings']['lock_spam']
  if group_spam_lock == 'no' then
    return 'SuperGroup spam is not locked'
  else
    data[tostring(target)]['settings']['lock_spam'] = 'no'
    save_data(_config.moderation.data, data)
    return 'SuperGroup spam has been unlocked'
  end
end

local function lock_group_sticker(msg, data, target)

  local group_sticker_lock = data[tostring(target)]['settings']['lock_sticker']
  if group_sticker_lock == 'yes' then
    return 'Sticker posting is already locked'
  else
    data[tostring(target)]['settings']['lock_sticker'] = 'yes'
    save_data(_config.moderation.data, data)
    return 'Sticker posting has been locked'
  end
end

local function unlock_group_sticker(msg, data, target)

  local group_sticker_lock = data[tostring(target)]['settings']['lock_sticker']
  if group_sticker_lock == 'no' then
    return 'Sticker posting is already unlocked'
  else
    data[tostring(target)]['settings']['lock_sticker'] = 'no'
    save_data(_config.moderation.data, data)
    return 'Sticker posting has been unlocked'
  end
end

local function lock_group_contacts(msg, data, target)
  if not is_momod(msg) then
    return
  end
  local group_rtl_lock = data[tostring(target)]['settings']['lock_contacts']
  if group_contacts_lock == 'yes' then
    return 'Contact posting is already locked'
  else
    data[tostring(target)]['settings']['lock_contacts'] = 'yes'
    save_data(_config.moderation.data, data)
    return 'Contact posting has been locked'
  end
end

local function unlock_group_contacts(msg, data, target)
  if not is_momod(msg) then
    return
  end
  local group_contacts_lock = data[tostring(target)]['settings']['lock_contacts']
  if group_contacts_lock == 'no' then
    return 'Contact posting is already unlocked'
  else
    data[tostring(target)]['settings']['lock_contacts'] = 'no'
    save_data(_config.moderation.data, data)
    return 'Contact posting has been unlocked'
  end
end

local function enable_strict_rules(msg, data, target)
  if not is_momod(msg) then
    return
  end
  local group_rtl_lock = data[tostring(target)]['settings']['strict']
  if strict == 'yes' then
    return 'Settings are already strictly enforced'
  else
    data[tostring(target)]['settings']['strict'] = 'yes'
    save_data(_config.moderation.data, data)
    return 'Settings will be strictly enforced'
  end
end

local function disable_strict_rules(msg, data, target)
  if not is_momod(msg) then
    return
  end
  local group_contacts_lock = data[tostring(target)]['settings']['strict']
  if strict == 'no' then
    return 'Settings will not be strictly enforced'
  else
    data[tostring(target)]['settings']['strict'] = 'no'
    save_data(_config.moderation.data, data)
    return 'Settings are not strictly enforced'
  end
end

-- Show group settings
local function show_group_settingsmod(msg, data, target)
    if data[tostring(target)] then
      if data[tostring(target)]['settings']['flood_msg_max'] then
        NUM_MSG_MAX = tonumber(data[tostring(target)]['settings']['flood_msg_max'])
        print('custom'..NUM_MSG_MAX)
      else 
        NUM_MSG_MAX = 5
      end
    end
	local bots_protection = "Yes"
    if data[tostring(target)]['settings']['lock_bots'] then
    	bots_protection = data[tostring(target)]['settings']['lock_bots']
   	end
    local leave_ban = "no"
    if data[tostring(target)]['settings']['leave_ban'] then
    	leave_ban = data[tostring(target)]['settings']['leave_ban']
   	end
	local public = "no"
	if data[tostring(target)]['settings'] then
		if data[tostring(target)]['settings']['public'] then
			public = data[tostring(target)]['settings']['public']
		end
	end
    local settings = data[tostring(target)]['settings']
    local text = "Group settings:\nLock group name : "..settings.lock_name.."\nLock group photo : "..settings.lock_photo.."\nLock group member : "..settings.lock_member.."\nLock group leave : "..leave_ban.."\nflood sensitivity : "..NUM_MSG_MAX.."\nBot protection : "..bots_protection.."\nPublic: "..public
    return text
end

-- Show SuperGroup settings
local function show_super_group_settings(msg, data, target)
    if data[tostring(target)] then
      if data[tostring(target)]['settings']['flood_msg_max'] then
        NUM_MSG_MAX = tonumber(data[tostring(target)]['settings']['flood_msg_max'])
        print('custom'..NUM_MSG_MAX)
      else 
        NUM_MSG_MAX = 5
      end
    end
	if data[tostring(target)]['settings'] then
		if not data[tostring(target)]['settings']['public'] then
			data[tostring(target)]['settings']['public'] = 'no'
		end
	end
	if data[tostring(target)]['settings'] then
		if not data[tostring(target)]['settings']['lock_rtl'] then
			data[tostring(target)]['settings']['lock_rtl'] = 'no'
		end
	end
	if data[tostring(target)]['settings'] then
		if not data[tostring(target)]['settings']['lock_member'] then
			data[tostring(target)]['settings']['lock_member'] = 'no'
		end
	end
    local settings = data[tostring(target)]['settings']
    local text = "SuperGroup settings for "..target..":\nLock links : "..settings.lock_link.."\nLock flood: "..settings.flood.."\nLock spam: "..settings.lock_spam.."\nLock Arabic: "..settings.lock_arabic.."\nLock Member: "..settings.lock_member.."\nLock RTL: "..settings.lock_rtl.."\nLock sticker: "..settings.lock_sticker.."\nPublic: "..settings.public.."\nStrict settings: "..settings.strict
    return text
end

local function set_rules(target, rules)
  local data = load_data(_config.moderation.data)
  local data_cat = 'rules'
  data[tostring(target)][data_cat] = rules
  save_data(_config.moderation.data, data)
  return 'Set group rules to:\n'..rules
end

local function set_description(target, about)
  local data = load_data(_config.moderation.data)
  local data_cat = 'description'
  data[tostring(target)][data_cat] = about
  save_data(_config.moderation.data, data)
  return 'Set group description to:\n'..about
end

local function run(msg, matches)
  if msg.to.type == 'user' then
    local print_name = user_print_name(msg.from):gsub("‮", "")
	local name = print_name:gsub("_", " ")
    local chat_id = matches[1]
    local receiver = get_receiver(msg)
    local data = load_data(_config.moderation.data)
    if matches[2] == 'ban' then
      local chat_id = matches[1]
      if not is_owner2(msg.from.id, chat_id) then
        return "You are not the owner of this group"
      end
      if tonumber(matches[3]) == tonumber(our_id) then return false end
      local user_id = matches[3]
      if tonumber(matches[3]) == tonumber(msg.from.id) then 
        return "You can't ban yourself"
      end
      ban_user(matches[3], matches[1])
      local name = user_print_name(msg.from)
      savelog(matches[1], name.." ["..msg.from.id.."] banned user ".. matches[3])
      return 'User '..user_id..' banned'
    end
	
