--------------------------------------------------
--      ____  ____ _____                        --
--     |    \|  _ )_   _|___ ____   __  __      --
--     | |_  )  _ \ | |/ ·__|  _ \_|  \/  |     --
--     |____/|____/ |_|\____/\_____|_/\/\_|     --
--                                              --
--------------------------------------------------
--                                              --
--       Developers: @azh_band & @alfroshotak     --
--     Support: @iamrapfarsi,  @iicc1 & @serx666     --
--                                              --
--------------------------------------------------

do

function run(msg, matches)
  return 'DBTeam Bot V1 Supergroups\nAn advanced Administration bot based on yagop/telegram-bot\n\nDevelopers: @alfroshotak @max_car\nSupport: @ub_redteam @cewer @Serx666\nChannels: @DBTeamEN @DBTeamfa\n\nCheckout: https://github.com/amirf2020/db GPL v2 license.'
end

return {
  patterns = {
    "^#version$"
  }, 
  run = run 
}

end
