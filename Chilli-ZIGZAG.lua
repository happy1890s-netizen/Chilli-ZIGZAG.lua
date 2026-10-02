--========================================================
-- CHILLI HUB THAI - ZIGZAG
-- COMPLETE OPTIMIZED VERSION
-- แปลภาษาไทยโดย ZIGZAG
--
-- ✅ คำแปลเดิมครบ
-- ✅ Anti Guard แถบลอย
-- ✅ Dropdown / Popup
-- ✅ Dynamic Text
-- ✅ ไม่มี Full Scan Loop ทุก 0.75 วิ
-- ✅ ไม่มี Credit Scan Loop ทุก 1 วิ
-- ✅ ลดแลคสำหรับ iPad / iPhone
--========================================================


--========================================================
-- 1. SERVICES
--========================================================

local Players =
    game:GetService("Players")

local CoreGui =
    game:GetService("CoreGui")

local StarterGui =
    game:GetService("StarterGui")


local LocalPlayer =
    Players.LocalPlayer


local PlayerGui =
    LocalPlayer:WaitForChild(
        "PlayerGui"
    )


--========================================================
-- 2. SOURCE
--========================================================

local SOURCE_URL =
    "https://kheroro.vercel.app/api/raw?note=note_1790057321337"


--========================================================
-- 3. LOAD CHILLI HUB
-- เปลี่ยน KHERORO -> ZIGZAG ก่อนรัน
--========================================================

task.spawn(function()

    local ok,source =
        pcall(function()

            return game:HttpGet(
                SOURCE_URL
            )

        end)


    if not ok then

        warn(
            "[ZIGZAG] โหลด Chilli Hub ไม่สำเร็จ:",
            source
        )

        return

    end


    --====================================================
    -- CREDIT
    --====================================================

    source =
        source:gsub(
            "KHERORO",
            "ZIGZAG"
        )


    source =
        source:gsub(
            "Kheroro",
            "ZIGZAG"
        )


    local runScript,loadError =
        loadstring(source)


    if not runScript then

        warn(
            "[ZIGZAG] Load Error:",
            loadError
        )

        return

    end


    local success,runError =
        pcall(runScript)


    if not success then

        warn(
            "[ZIGZAG] Chilli Hub Error:",
            runError
        )

    end

end)


--========================================================
-- 4. TRANSLATIONS
--========================================================

local TRANSLATIONS = {


    --====================================================
    -- GENERAL
    --====================================================

    ["WARNING"] =
        "คำเตือน",

    ["Credits"] =
        "เครดิต",

    ["Version"] =
        "เวอร์ชัน",

    ["Games Supported"] =
        "เกมที่รองรับ",

    ["Game"] =
        "ข้อมูลเกม",

    ["System"] =
        "ระบบ",

    ["Automation"] =
        "ระบบอัตโนมัติ",

    ["Inventory"] =
        "คลังของ",

    ["Settings"] =
        "การตั้งค่า",

    ["Theme"] =
        "ธีม",

    ["Filters"] =
        "ตัวกรอง",

    ["Actions"] =
        "คำสั่ง",

    ["Visuals"] =
        "การแสดงผล",

    ["Intel"] =
        "ข้อมูลเซิร์ฟเวอร์",

    ["Toggle"] =
        "เปิด/ปิด",

    ["Lock"] =
        "ล็อก",

    ["Off"] =
        "ปิด",

    ["On"] =
        "เปิด",

    ["None"] =
        "ไม่มี",

    ["Any"] =
        "ทุกระดับ",

    ["Any Size"] =
        "ทุกขนาด",

    ["Select..."] =
        "เลือก...",

    ["Search"] =
        "ค้นหา",

    ["Idle"] =
        "ว่าง",

    ["Default"] =
        "ค่าเริ่มต้น",


    --====================================================
    -- RARITY
    --====================================================

    ["Common"] =
        "ธรรมดา",

    ["Uncommon"] =
        "ไม่ธรรมดา",

    ["Rare"] =
        "แรร์",

    ["Epic"] =
        "อีพิก",

    ["Legendary"] =
        "เลเจนดารี",

    ["Mythic"] =
        "มิธิค",

    ["Cosmic"] =
        "คอสมิก",

    ["Divine"] =
        "ดีไวน์",

    ["Secret"] =
        "ซีเคร็ต",

    ["Eternal"] =
        "อีเทอร์นัล",


    --====================================================
    -- BASIC SYSTEM
    --====================================================

    ["Anti AFK"] =
        "กันหลุด (Anti AFK)",

    ["Anti Guard"] =
        "ป้องกันยาม",

    ["Anti Guard Panel"] =
        "แผงป้องกันยาม",

    ["Anti Die"] =
        "ป้องกันตาย",

    ["Anti Ragdoll"] =
        "กันล้ม / กันกระเด็น",

    ["Anti Trap"] =
        "หลบกับดัก",

    ["Anti Hit"] =
        "ป้องกันการโจมตี",

    ["God Mode"] =
        "โหมดป้องกัน",

    ["GodMode"] =
        "โหมดป้องกัน",

    ["Invisibility"] =
        "ล่องหน",

    ["No Animations"] =
        "ปิดแอนิเมชัน",

    ["NoClip"] =
        "เดินทะลุสิ่งกีดขวาง",

    ["Infinite Jump"] =
        "กระโดดไม่จำกัด",

    ["Fly"] =
        "บิน",

    ["Fly Up"] =
        "บินขึ้น",

    ["Fly Down"] =
        "บินลง",

    ["Fly Up (hold)"] =
        "บินขึ้น (กดค้าง)",

    ["Fly Down (hold)"] =
        "บินลง (กดค้าง)",

    ["Fly Speed"] =
        "ความเร็วบิน",

    ["Walk Speed"] =
        "ความเร็วเดิน",

    ["Jump Power"] =
        "พลังการกระโดด",


    --====================================================
    -- PERFORMANCE / HUD
    --====================================================

    ["Performance"] =
        "ประสิทธิภาพ",

    ["FPS Boost"] =
        "เพิ่ม FPS",

    ["Disable 3D Render"] =
        "ปิดการเรนเดอร์ 3D",

    ["Disable 3D Rendering"] =
        "ปิดการเรนเดอร์ 3D",

    ["Farm HUD"] =
        "แผง HUD ฟาร์ม",

    ["Drag any panel to place it where you like"] =
        "ลากแผงไปวางตรงตำแหน่งที่ต้องการได้",

    ["Hide Game UI"] =
        "ซ่อน UI ของเกม",

    ["Showcase Cards"] =
        "แสดงการ์ดข้อมูล",

    ["HUD Size"] =
        "ขนาด HUD",

    ["Black Screen"] =
        "จอดำ",

    ["Low Graphics"] =
        "กราฟิกต่ำ",

    ["Limit FPS"] =
        "จำกัด FPS",

    ["Show FPS and Ping"] =
        "แสดง FPS และ Ping",

    ["FPS and Ping Size"] =
        "ขนาด FPS และ Ping",

    ["Optimizer"] =
        "ตัวปรับประสิทธิภาพ",


    --====================================================
    -- SERVER / AUTO HOP
    --====================================================

    ["Server Hop"] =
        "ย้ายเซิร์ฟเวอร์",

    ["Auto Server Hop"] =
        "ย้ายเซิร์ฟเวอร์อัตโนมัติ",

    ["Auto Hop"] =
        "ออโต้ย้ายเซิร์ฟเวอร์",

    ["Joins new servers to find eggs that match the filters below"] =
        "เข้าเซิร์ฟเวอร์ใหม่เพื่อหาไข่ที่ตรงกับตัวกรองด้านล่าง",

    ["Turn on Auto Hop to start hunting"] =
        "เปิดออโต้ย้ายเซิร์ฟเวอร์เพื่อเริ่มค้นหาไข่",

    ["Hop Mode"] =
        "โหมดย้ายเซิร์ฟเวอร์",

    ["When to move on to the next server"] =
        "กำหนดว่าจะย้ายไปเซิร์ฟเวอร์ถัดไปเมื่อใด",

    ["Until An Egg Matches"] =
        "จนกว่าจะเจอไข่ตรงเงื่อนไข",

    ["Steal Then Hop"] =
        "ขโมยแล้วค่อยย้ายเซิร์ฟ",

    ["After A Rare Spawns"] =
        "เมื่อไข่แรร์เกิดแล้ว",

    ["Rarity To Wait For"] =
        "ระดับความหายากที่ต้องรอ",

    ["For After A Rare Spawns: this rarity or higher"] =
        "สำหรับโหมดรอไข่แรร์: รอระดับนี้หรือสูงกว่า",

    ["Sync With Auto Steal Filters"] =
        "ใช้ตัวกรองเดียวกับ Auto Steal",

    ["Changing a filter here also changes it in Auto Steal, and back"] =
        "เปลี่ยนตัวกรองตรงนี้จะเปลี่ยนใน Auto Steal ด้วย และกลับกัน",

    ["Find eggs of the chosen rarity and every rarity above it"] =
        "ค้นหาไข่ระดับที่เลือกและทุกระดับที่สูงกว่า",

    ["Only look for these eggs (empty = all)"] =
        "ค้นหาเฉพาะไข่เหล่านี้ (เว้นว่าง = ทั้งหมด)",

    ["Min Value To Find"] =
        "มูลค่าขั้นต่ำที่จะค้นหา",

    ["Skip eggs worth less than this. Drag or type 250k, 50m, 1.5b"] =
        "ข้ามไข่ที่มูลค่าต่ำกว่านี้ เช่น 250k, 50m, 1.5b",

    ["First Hop Delay"] =
        "หน่วงเวลาก่อนย้ายเซิร์ฟครั้งแรก",

    ["Wait after the script loads before the first hop"] =
        "รอหลังสคริปต์โหลดก่อนย้ายเซิร์ฟครั้งแรก",

    ["Boss Server Hop"] =
        "ย้ายเซิร์ฟเวอร์หาบอส",

    ["Keep Hopping For"] =
        "ย้ายเซิร์ฟต่อเพื่อค้นหา",


    --====================================================
    -- FARM / STEAL
    --====================================================

    ["Auto Steal"] =
        "ออโต้ขโมย",

    ["Auto Steal Egg"] =
        "ขโมยไข่อัตโนมัติ",

    ["Auto Steal Eggs"] =
        "ขโมยไข่อัตโนมัติ",

    ["Instant Steal"] =
        "ขโมยทันที",

    ["Instant Steal Steps"] =
        "จำนวนขั้นตอนขโมยทันที",

    ["Min Steal Value"] =
        "มูลค่าขั้นต่ำที่จะขโมย",

    ["Steal Missing Lab Eggs"] =
        "ขโมยไข่แล็บที่ยังไม่มีในสมุด",

    ["Skip Owned Lab Eggs"] =
        "ข้ามไข่แล็บที่มีอยู่แล้ว",

    ["Stock Per Egg"] =
        "จำนวนสำรองต่อไข่",

    ["Carry Speed"] =
        "ความเร็วขณะถือไข่",

    ["Steal Glide Speed"] =
        "ความเร็ว Glide ตอนขโมย",

    ["Auto Return to Base"] =
        "กลับฐานอัตโนมัติ",

    ["Avoid Rifts"] =
        "หลีกเลี่ยง Rift",


    --====================================================
    -- PLACE
    --====================================================

    ["Auto Place Egg"] =
        "ออโต้วางไข่",

    ["Auto Place Eggs"] =
        "ออโต้วางไข่",

    ["Auto Place Selected"] =
        "ออโต้วางไข่ที่เลือก",

    ["Auto Place Carried Egg"] =
        "ออโต้วางไข่ที่ถืออยู่",

    ["Min Place Value"] =
        "มูลค่าขั้นต่ำที่จะวาง",


    --====================================================
    -- HATCH & EQUIP
    --====================================================

    ["Auto Hatch"] =
        "ออโต้ฟักไข่",

    ["Auto Hatch Egg"] =
        "ออโต้ฟักไข่",

    ["Auto Hatch Eggs"] =
        "ออโต้ฟักไข่",

    ["Hatch Min Rarity"] =
        "ความแรร์ขั้นต่ำที่จะฟัก",

    ["Hatch eggs of the chosen rarity and every rarity above it"] =
        "ฟักไข่ระดับที่เลือก และทุกระดับที่สูงกว่า",

    ["Hatch Min Value"] =
        "มูลค่าขั้นต่ำที่จะฟัก",

    ["Minimum Hatch Value"] =
        "มูลค่าขั้นต่ำที่จะฟัก",

    ["Hatch Specific Egg"] =
        "ฟักเฉพาะไข่ที่เลือก",

    ["Hatch Specific Eggs"] =
        "ฟักเฉพาะไข่ที่เลือก",

    ["Only hatch these eggs (empty = all)"] =
        "ฟักเฉพาะไข่เหล่านี้ (เว้นว่าง = ทั้งหมด)",

    ["Auto Equip Best"] =
        "ออโต้ใส่ตัวที่ดีที่สุด",

    ["Auto Equip Best Pets"] =
        "ออโต้ใส่สัตว์เลี้ยงที่ดีที่สุด",

    ["Auto Equip Best Gear"] =
        "ออโต้ใส่อุปกรณ์ดีที่สุด",

    ["Auto Equip Best Trail"] =
        "ออโต้ใส่ Trail ที่ดีที่สุด",

    ["Equip Best"] =
        "ใส่ตัวที่ดีที่สุด",

    ["Switch to a better pet immediately when available"] =
        "เปลี่ยนไปใช้สัตว์เลี้ยงที่ดีกว่าทันทีเมื่อมี",


    --====================================================
    -- TREADMILL
    --====================================================

    ["Auto Treadmill"] =
        "ออโต้ลู่วิ่ง",

    ["Auto Treadmill Upgrade"] =
        "อัปเกรดลู่วิ่งอัตโนมัติ",

    ["Auto Upgrade Treadmill"] =
        "อัปเกรดลู่วิ่งอัตโนมัติ",

    ["AFK Treadmill"] =
        "ใช้ลู่วิ่งขณะ AFK",

    ["Treadmill Between Steals"] =
        "ใช้ลู่วิ่งระหว่างรอขโมย",


    --====================================================
    -- SELL
    --====================================================

    ["Auto Sell"] =
        "ออโต้ขาย",

    ["Auto Sell Eggs"] =
        "ขายไข่อัตโนมัติ",

    ["Auto Sell Pets"] =
        "ขายสัตว์เลี้ยงอัตโนมัติ",

    ["Pet Sell Value"] =
        "มูลค่าสัตว์เลี้ยงที่จะขาย",

    ["Egg Sell Value"] =
        "มูลค่าไข่ที่จะขาย",

    ["Sell Now"] =
        "ขายตอนนี้",

    ["Never Sell Mutated"] =
        "ห้ามขายตัวที่กลายพันธุ์",

    ["Never Sell Equipped"] =
        "ห้ามขายตัวที่กำลังใช้งาน",


    --====================================================
    -- LAB EGG
    --====================================================

    ["Auto Sell Lab Egg"] =
        "ออโต้ขายไข่แล็บ",

    ["Sell eggs traded from Dr Scramble that match the filters below"] =
        "ขายไข่ที่ได้จาก Dr. Scramble ตามเงื่อนไขด้านล่าง",

    ["Sell Lab Eggs Now"] =
        "ขายไข่แล็บตอนนี้",

    ["Sell matching Lab eggs once"] =
        "ขายไข่แล็บที่ตรงเงื่อนไข 1 ครั้ง",

    ["Lab Egg Rule"] =
        "กฎการขายไข่แล็บ",

    ["Rarity And Value"] =
        "ความแรร์และมูลค่า",

    ["Lab Egg Max Rarity"] =
        "ความแรร์สูงสุดของไข่แล็บที่จะขาย",

    ["Sell Lab eggs at or below this rarity (Off = none by rarity)"] =
        "ขายไข่แล็บระดับนี้หรือต่ำกว่า (ปิด = ไม่กรองความแรร์)",

    ["Lab Egg Sell Value"] =
        "มูลค่าไข่แล็บที่จะขาย",

    ["Sell Lab eggs worth less than this (0 = off)"] =
        "ขายไข่แล็บที่มูลค่าต่ำกว่านี้ (0 = ปิด)",

    ["Keep Mutated Lab Eggs"] =
        "เก็บไข่แล็บที่กลายพันธุ์ไว้",

    ["Never sell mutated Lab eggs"] =
        "ห้ามขายไข่แล็บที่กลายพันธุ์",

    ["Keep Lab Pets"] =
        "เก็บสัตว์เลี้ยงแล็บเหล่านี้ไว้",

    ["Lab eggs of these pets are never sold"] =
        "ไข่แล็บของสัตว์เหล่านี้จะไม่ถูกขาย",

    ["Auto Place Lab Reward Eggs"] =
        "ออโต้วางไข่รางวัลจากแล็บ",


    --====================================================
    -- SCRAMBLE / LAB
    --====================================================

    ["Auto Claim Mastery"] =
        "ออโต้รับรางวัล Mastery",

    ["Auto Use Scrambled"] =
        "ออโต้ใช้ Scrambled",

    ["Auto Buy Offers"] =
        "ซื้อของร้าน Scramble อัตโนมัติ",

    ["Auto Collect Drops"] =
        "เก็บของดรอปอัตโนมัติ",

    ["Teleport To Drops"] =
        "วาร์ปไปหาของดรอป",

    ["Auto Farm Drones"] =
        "ฟาร์มโดรนอัตโนมัติ",

    ["Drone Priority"] =
        "ลำดับเป้าหมายโดรน",

    ["Movement Speed"] =
        "ความเร็วการเคลื่อนที่",

    ["Auto Laboratory Trade-In"] =
        "แลกของในห้องทดลองอัตโนมัติ",

    ["Collect Laboratory Rewards"] =
        "รับรางวัลห้องทดลอง",

    ["Maximum Trade Rarity"] =
        "ความแรร์สูงสุดที่ยอมแลก",

    ["Wanted Offers"] =
        "ของที่ต้องการซื้อ",

    ["Attack Boss"] =
        "โจมตีบอส",

    ["Dodge Attacks"] =
        "หลบการโจมตี",

    ["Enter Arena When Live"] =
        "เข้าสนามเมื่อบอสเริ่ม",


    --====================================================
    -- FAVORITE
    --====================================================

    ["Auto Favorite Pets"] =
        "ออโต้กดถูกใจสัตว์เลี้ยง",

    ["Favorite Pets Now"] =
        "กดถูกใจสัตว์เลี้ยงตอนนี้",

    ["Min Favorite Value"] =
        "มูลค่าขั้นต่ำที่จะกดถูกใจ",

    ["Auto Favorite Equipped"] =
        "ออโต้กดถูกใจตัวที่สวมใส่",

    ["Auto Unfavorite Equipped"] =
        "ออโต้ปลดถูกใจตัวที่สวมใส่",

    ["Unfavorite Equipped Now"] =
        "ยกเลิกถูกใจตัวที่สวมใส่อยู่ตอนนี้",


    --====================================================
    -- ESP
    --====================================================

    ["Player Tab > ESP"] =
        "แท็บผู้เล่น > ESP",

    ["Min ESP Value"] =
        "มูลค่าขั้นต่ำสำหรับ ESP",

    ["ESP Own Base"] =
        "ESP ไข่ในฐานตัวเอง",

    ["ESP Egg Size"] =
        "ขนาด ESP ไข่",

    ["ESP Guards"] =
        "ESP ยาม",

    ["ESP Guard Size"] =
        "ขนาด ESP ยาม",

    ["ESP Missing Parts"] =
        "ESP ชิ้นส่วนที่หาย",

    ["Guards"] =
        "ยาม",


    --====================================================
    -- WEBHOOK / PREDICTOR
    --====================================================

    ["Predictor Tab > Discord Webhook"] =
        "แท็บคาดการณ์ > Discord Webhook",

    ["Discord Webhook URL"] =
        "URL Webhook ของ Discord",

    ["Webhook URL"] =
        "URL ของ Webhook",

    ["Ping @everyone"] =
        "แท็ก @everyone",

    ["Notify Stolen Eggs"] =
        "แจ้งเตือนไข่ที่ขโมยได้",

    ["Predictor Tab > Egg Predictor"] =
        "แท็บคาดการณ์ > คาดการณ์ไข่",

    ["Progress Tab > Auto Progression"] =
        "แท็บความคืบหน้า > พัฒนาอัตโนมัติ",


    --====================================================
    -- QUICK ACCESS
    --====================================================

    ["Quick Access"] =
        "เมนูลัด",

    ["Show Quick Bars"] =
        "แสดงแถบลัด",

    ["Floating quick bars; drag a header to move one"] =
        "แสดงแถบลัดแบบลอย ลากหัวแถบเพื่อย้ายตำแหน่ง",

    ["Visible Quick Bars"] =
        "แถบลัดที่แสดง",

    ["Quick Bar Size"] =
        "ขนาดแถบลัด",

    ["Quick Bar & Keybinds"] =
        "แถบลัดและปุ่มคีย์ลัด",

    ["Reset Quick Access"] =
        "รีเซ็ตเมนูลัด",

    ["Restore default items, bars and positions"] =
        "คืนค่าไอเท็ม แถบ และตำแหน่งเริ่มต้น",

    ["Reset Keybinds"] =
        "รีเซ็ตปุ่มคีย์ลัด",

    ["Restore the defaults set in code"] =
        "คืนค่าปุ่มตามค่าเริ่มต้นของสคริปต์",

    ["Quick Bar 1"] =
        "แถบลัด 1",


    --====================================================
    -- DISCORD / COMMUNITY
    --====================================================

    ["Discord Tab > Community"] =
        "แท็บดิสคอร์ด > ชุมชน",

    ["Copy Discord Link"] =
        "คัดลอกลิงก์ดิสคอร์ด",

    ["Settings Tab > Defaults"] =
        "แท็บตั้งค่า > ค่าเริ่มต้น",


    --====================================================
    -- CONFIG / PROFILE
    --====================================================

    ["Profiles"] =
        "โปรไฟล์",

    ["Config"] =
        "คอนฟิก",

    ["Config Tab > Config"] =
        "แท็บคอนฟิก > คอนฟิก",

    ["Config Tab > Profiles"] =
        "แท็บคอนฟิก > โปรไฟล์",

    ["Delete"] =
        "ลบ",

    ["Startup"] =
        "เริ่มต้น",

    ["Tick the configs to remove, then press Delete"] =
        "ติ๊กคอนฟิกที่ต้องการลบ แล้วกดลบ",


    --====================================================
    -- FARM TAB HEADERS
    --====================================================

    ["Farm Tab > Auto Sell Lab Egg"] =
        "แท็บฟาร์ม > ออโต้ขายไข่แล็บ",

    ["Farm Tab > Auto Place Egg"] =
        "แท็บฟาร์ม > ออโต้วางไข่",

    ["Farm Tab > Auto Treadmill"] =
        "แท็บฟาร์ม > ออโต้ลู่วิ่ง",

    ["Farm Tab > Auto Hatch & Equip"] =
        "แท็บฟาร์ม > ออโต้ฟักไข่และสวมใส่",

    ["Farm Tab > Auto Sell"] =
        "แท็บฟาร์ม > ออโต้ขาย",

    ["Farm Tab > Auto Steal"] =
        "แท็บฟาร์ม > ออโต้ขโมย",

    ["Farm Tab > Dr Scramble Lab & Mech"] =
        "แท็บฟาร์ม > แล็บ Dr. Scramble และ Mech",

    ["Misc Tab > Utility"] =
        "แท็บอื่นๆ > เครื่องมือ",

    ["Auto Hop Tab > Egg Finder"] =
        "แท็บย้ายเซิร์ฟอัตโนมัติ > ค้นหาไข่",


    --====================================================
    -- IMPORT / CONFIG
    --====================================================

    ["Import / export"] =
        "นำเข้า / ส่งออก",

    ["Import Config"] =
        "นำเข้าคอนฟิก",

    ["Export Config"] =
        "ส่งออกคอนฟิก",

    ["Config name"] =
        "ชื่อคอนฟิก",

    ["Create config"] =
        "สร้างคอนฟิก",

    ["Load config"] =
        "โหลดคอนฟิก",

    ["Delete config"] =
        "ลบคอนฟิก",

    ["Refresh list"] =
        "รีเฟรชรายการ",

    ["Set autoload"] =
        "ตั้งโหลดอัตโนมัติ",

    ["Reset autoload"] =
        "ยกเลิกโหลดอัตโนมัติ",
}


--========================================================
-- 5. LOWERCASE LOOKUP
--========================================================

local LOWER_TRANSLATIONS = {}


for english,thai
    in pairs(TRANSLATIONS)
do

    LOWER_TRANSLATIONS[
        string.lower(english)
    ] = thai

end


--========================================================
-- 6. TRANSLATE FUNCTION
--========================================================

local function TranslateText(text)

    if
        type(text) ~= "string"
        or text == ""
    then

        return text

    end


    local cleanText =
        text
        :gsub(
            "<[^>]+>",
            ""
        )
        :match(
            "^%s*(.-)%s*$"
        )


    if not cleanText then
        return text
    end


    --====================================================
    -- CREDIT
    --====================================================

    cleanText =
        cleanText:gsub(
            "KHERORO",
            "ZIGZAG"
        )


    cleanText =
        cleanText:gsub(
            "Kheroro",
            "ZIGZAG"
        )


    --====================================================
    -- EXACT TRANSLATION
    --====================================================

    local translated =
        LOWER_TRANSLATIONS[
            string.lower(cleanText)
        ]


    if translated then

        return translated

    end


    --====================================================
    -- LAB EGG MATCH
    --====================================================

    local eggCount,value =
        cleanText:match(
            "^Lab egg matches%s*%-%s*(%d+)%s*eggs%s*for%s*%$(.*)$"
        )


    if eggCount then

        return
            "เจอไข่แล็บเข้าเงื่อนไข "
            .. eggCount
            .. " ฟอง มูลค่า $"
            .. value

    end


    --====================================================
    -- PLAYERS 5/7
    --====================================================

    local currentPlayers,maxPlayers =
        cleanText:match(
            "^Players%s+(%d+)%/(%d+)$"
        )


    if currentPlayers then

        return
            "ผู้เล่น "
            .. currentPlayers
            .. "/"
            .. maxPlayers

    end


    --====================================================
    -- 8 selected
    --====================================================

    local selected =
        cleanText:match(
            "^(%d+)%s+selected$"
        )


    if selected then

        return
            "เลือกแล้ว "
            .. selected
            .. " รายการ"

    end


    --====================================================
    -- QUICK BAR N
    --====================================================

    local quickBar =
        cleanText:match(
            "^Quick Bar%s+(%d+)$"
        )


    if quickBar then

        return
            "แถบลัด "
            .. quickBar

    end


    --====================================================
    -- LAST STEAL
    --====================================================

    local lastSteal =
        cleanText:match(
            "^Last Steal:%s*(.+)$"
        )


    if lastSteal then

        if
            string.lower(lastSteal)
            == "idle"
        then

            lastSteal =
                "ว่าง"

        end


        return
            "การขโมยล่าสุด: "
            .. lastSteal

    end


    --====================================================
    -- LAST ISSUE
    --====================================================

    local lastIssue =
        cleanText:match(
            "^Last issue:%s*(.+)$"
        )


    if lastIssue then

        if
            string.lower(lastIssue)
            == "none"
        then

            lastIssue =
                "ไม่มี"

        end


        return
            "ปัญหาล่าสุด: "
            .. lastIssue

    end


    --====================================================
    -- LAST SELL
    --====================================================

    local lastSell =
        cleanText:match(
            "^Last Sell:%s*(.+)$"
        )


    if lastSell then

        if
            string.lower(lastSell)
            == "idle"
        then

            lastSell =
                "ว่าง"

        end


        return
            "การขายล่าสุด: "
            .. lastSell

    end


    --====================================================
    -- LAST FUSE
    --====================================================

    local lastFuse =
        cleanText:match(
            "^Last Fuse:%s*(.+)$"
        )


    if lastFuse then

        if
            string.lower(lastFuse)
            == "idle"
        then

            lastFuse =
                "ว่าง"

        end


        return
            "การผสมล่าสุด: "
            .. lastFuse

    end


    --====================================================
    -- PARTIAL REPLACEMENTS
    --====================================================

    local result =
        cleanText


    result =
        result:gsub(
            "Auto Hop",
            "ออโต้ย้ายเซิร์ฟเวอร์"
        )


    result =
        result:gsub(
            "Anti Guard",
            "ป้องกันยาม"
        )


    result =
        result:gsub(
            "UPDATED%s*&%s*WORKING",
            "อัปเดตแล้วและใช้งานได้"
        )


    result =
        result:gsub(
            "EXPERIMENTAL%s*/%s*NO UPDATES",
            "ทดลอง / ไม่มีอัปเดต"
        )


    if result ~= text then

        return result

    end


    return text

end


--========================================================
-- 7. TEXT OBJECT
--========================================================

local function IsTextObject(object)

    return
        object:IsA("TextLabel")
        or object:IsA("TextButton")
        or object:IsA("TextBox")

end


--========================================================
-- 8. STATE
--========================================================

local Busy =
    setmetatable(
        {},
        {
            __mode = "k"
        }
    )


local Watched =
    setmetatable(
        {},
        {
            __mode = "k"
        }
    )


--========================================================
-- 9. APPLY TRANSLATION
--
-- watchChanges = true
-- เฝ้าดู Text เปลี่ยนเฉพาะ Chilli
--========================================================

local function ApplyTranslation(
    object,
    watchChanges
)

    if not IsTextObject(object) then

        return false

    end


    if Busy[object] then

        return false

    end


    Busy[object] =
        true


    local changed =
        false


    --====================================================
    -- TEXT
    --====================================================

    pcall(function()

        local oldText =
            object.Text


        local newText =
            TranslateText(
                oldText
            )


        if newText ~= oldText then

            object.Text =
                newText


            changed =
                true

        end

    end)


    --====================================================
    -- PLACEHOLDER
    --====================================================

    if object:IsA("TextBox") then

        pcall(function()

            local oldText =
                object.PlaceholderText


            local newText =
                TranslateText(
                    oldText
                )


            if newText ~= oldText then

                object.PlaceholderText =
                    newText


                changed =
                    true

            end

        end)

    end


    Busy[object] =
        nil


    --====================================================
    -- WATCH CHANGES
    --====================================================

    if
        watchChanges
        and not Watched[object]
    then

        Watched[object] =
            true


        object
            :GetPropertyChangedSignal(
                "Text"
            )
            :Connect(function()

                if Busy[object] then
                    return
                end


                task.defer(function()

                    if
                        object
                        and object.Parent
                    then

                        ApplyTranslation(
                            object,
                            true
                        )

                    end

                end)

            end)


        if object:IsA("TextBox") then

            object
                :GetPropertyChangedSignal(
                    "PlaceholderText"
                )
                :Connect(function()

                    if Busy[object] then
                        return
                    end


                    task.defer(function()

                        if
                            object
                            and object.Parent
                        then

                            ApplyTranslation(
                                object,
                                true
                            )

                        end

                    end)

                end)

        end

    end


    return changed

end


--========================================================
-- 10. ROOTS
--========================================================

local UI_ROOTS = {}


local function AddRoot(root)

    if not root then
        return false
    end


    for _,existing
        in ipairs(UI_ROOTS)
    do

        if existing == root then

            return false

        end

    end


    table.insert(
        UI_ROOTS,
        root
    )


    return true

end


AddRoot(
    PlayerGui
)


AddRoot(
    CoreGui
)


if type(gethui) == "function" then

    local ok,hui =
        pcall(gethui)


    if ok and hui then

        AddRoot(
            hui
        )

    end

end


--========================================================
-- 11. KNOWN ROOT CHECK
--========================================================

local function IsKnownRoot(object)

    for _,root
        in ipairs(UI_ROOTS)
    do

        if object == root then

            return true

        end

    end


    return false

end


--========================================================
-- 12. CHILLI TITLE
--========================================================

local function IsChilliTitle(object)

    if not IsTextObject(object) then

        return false

    end


    local ok,text =
        pcall(function()

            return object.Text

        end)


    if
        not ok
        or type(text) ~= "string"
    then

        return false

    end


    return
        text:lower():find(
            "chilli hub",
            1,
            true
        ) ~= nil

end


--========================================================
-- 13. FIND CHILLI CONTAINER
--========================================================

local function FindChilliContainer(object)

    if not object then

        return nil

    end


    local current =
        object


    local fallback =
        nil


    while current do


        if current:IsA("ScreenGui") then

            return current

        end


        if
            current:IsA("Frame")
            or current:IsA("CanvasGroup")
        then

            fallback =
                current

        end


        local parent =
            current.Parent


        if
            parent
            and IsKnownRoot(parent)
        then

            return current

        end


        current =
            parent

    end


    return fallback

end


--========================================================
-- 14. CURRENT CHILLI
--========================================================

local MainChilliGui =
    nil


local ChilliConnections =
    {}


local function DisconnectChilli()

    for _,connection
        in ipairs(
            ChilliConnections
        )
    do

        pcall(function()

            connection:Disconnect()

        end)

    end


    table.clear(
        ChilliConnections
    )


    MainChilliGui =
        nil

end


--========================================================
-- 15. TRACK CHILLI
--========================================================

local function TrackChilli(gui)

    if
        not gui
        or not gui.Parent
    then

        return

    end


    if
        MainChilliGui == gui
        and gui.Parent
    then

        return

    end


    DisconnectChilli()


    MainChilliGui =
        gui


    --====================================================
    -- SCAN CHILLI ครั้งเดียว
    --====================================================

    for _,object
        in ipairs(
            gui:GetDescendants()
        )
    do

        ApplyTranslation(
            object,
            true
        )

    end


    --====================================================
    -- NEW OBJECTS
    --====================================================

    local descendantConnection =
        gui.DescendantAdded
        :Connect(function(object)

            task.defer(function()

                if
                    object
                    and object.Parent
                then

                    ApplyTranslation(
                        object,
                        true
                    )

                end

            end)

        end)


    table.insert(
        ChilliConnections,
        descendantConnection
    )


    --====================================================
    -- GUI REMOVED
    --====================================================

    local ancestryConnection =
        gui.AncestryChanged
        :Connect(function()

            if not gui.Parent then

                DisconnectChilli()

            end

        end)


    table.insert(
        ChilliConnections,
        ancestryConnection
    )


    print(
        "✅ ZIGZAG Translator attached"
    )

end


--========================================================
-- 16. LOOSE TARGET
--
-- UI แยกออกจากหน้าต่างหลัก
-- เช่น Anti Guard / Popup
--========================================================

local function IsLooseTarget(object)

    if not IsTextObject(object) then

        return false

    end


    local ok,text =
        pcall(function()

            return object.Text

        end)


    if
        not ok
        or type(text) ~= "string"
    then

        return false

    end


    local clean =
        text
        :gsub(
            "<[^>]+>",
            ""
        )
        :match(
            "^%s*(.-)%s*$"
        )


    if not clean then

        return false

    end


    local lower =
        clean:lower()


    return
        lower == "anti guard"
        or
        lower == "anti guard panel"

end


--========================================================
-- 17. ROOT EVENT WATCHER
--
-- ไม่มี Loop Scan
-- ตรวจเฉพาะ UI ที่เกิดใหม่
--========================================================

local RootConnections =
    {}


local WatchedRoots =
    setmetatable(
        {},
        {
            __mode = "k"
        }
    )


local function WatchRoot(root)

    if not root then

        return

    end


    if WatchedRoots[root] then

        return

    end


    WatchedRoots[root] =
        true


    local connection =
        root.DescendantAdded
        :Connect(function(object)

            if not IsTextObject(object) then

                return

            end


            task.defer(function()

                if
                    not object
                    or not object.Parent
                then

                    return

                end


                --========================================
                -- CHILLI HUB TITLE
                --========================================

                if IsChilliTitle(object) then

                    local gui =
                        FindChilliContainer(
                            object
                        )


                    if gui then

                        TrackChilli(
                            gui
                        )

                    end


                    return

                end


                --========================================
                -- OBJECT ใหม่
                --
                -- ลองแปลครั้งเดียว
                -- ไม่มี Loop
                --========================================

                local changed =
                    ApplyTranslation(
                        object,
                        false
                    )


                --========================================
                -- ถ้าแปลสำเร็จ
                -- ค่อย Watch Text ต่อ
                --========================================

                if changed then

                    ApplyTranslation(
                        object,
                        true
                    )


                    return

                end


                --========================================
                -- ANTI GUARD FLOATING
                --========================================

                if IsLooseTarget(object) then

                    ApplyTranslation(
                        object,
                        true
                    )

                end

            end)

        end)


    table.insert(
        RootConnections,
        connection
    )

end


for _,root
    in ipairs(UI_ROOTS)
do

    WatchRoot(
        root
    )

end


--========================================================
-- 18. EXISTING LOOSE TARGETS
-- เช่น Anti Guard ที่สร้างก่อน Translator
--========================================================

local function TranslateExistingLooseTargets()

    for _,root
        in ipairs(UI_ROOTS)
    do

        local ok =
            pcall(function()

                for _,object
                    in ipairs(
                        root:GetDescendants()
                    )
                do

                    if IsLooseTarget(object) then

                        ApplyTranslation(
                            object,
                            true
                        )

                    end

                end

            end)

    end

end


--========================================================
-- 19. FIND EXISTING CHILLI
--========================================================

local function FindExistingChilli()

    if
        MainChilliGui
        and MainChilliGui.Parent
    then

        return true

    end


    for _,root
        in ipairs(UI_ROOTS)
    do

        local found =
            false


        pcall(function()

            for _,object
                in ipairs(
                    root:GetDescendants()
                )
            do

                if IsChilliTitle(object) then

                    local gui =
                        FindChilliContainer(
                            object
                        )


                    if gui then

                        TrackChilli(
                            gui
                        )


                        found =
                            true


                        break

                    end

                end

            end

        end)


        if found then

            return true

        end

    end


    return false

end


--========================================================
-- 20. INITIAL DISCOVERY
--
-- ทำไม่กี่ครั้งตอนเปิดเท่านั้น
-- ไม่ทำต่อเนื่องตลอดเกม
--========================================================

task.spawn(function()

    -- ครั้งที่ 1
    task.wait(0.5)

    FindExistingChilli()

    TranslateExistingLooseTargets()


    if
        MainChilliGui
        and MainChilliGui.Parent
    then

        return

    end


    -- ครั้งที่ 2
    task.wait(1)

    FindExistingChilli()

    TranslateExistingLooseTargets()


    if
        MainChilliGui
        and MainChilliGui.Parent
    then

        return

    end


    -- ครั้งที่ 3
    task.wait(2)

    FindExistingChilli()

    TranslateExistingLooseTargets()

end)


--========================================================
-- 21. REFRESH GETHUI ONCE
--
-- บาง Executor สร้าง gethui ช้ากว่า
--========================================================

task.delay(
    3,
    function()

        if type(gethui) == "function" then

            local ok,hui =
                pcall(gethui)


            if
                ok
                and hui
            then

                if AddRoot(hui) then

                    WatchRoot(
                        hui
                    )

                end

            end

        end


        if
            not MainChilliGui
            or not MainChilliGui.Parent
        then

            FindExistingChilli()

        end


        TranslateExistingLooseTargets()

    end
)


--========================================================
-- 22. NOTIFICATION
--========================================================

task.delay(
    2,
    function()

        pcall(function()

            StarterGui:SetCore(
                "SendNotification",
                {
                    Title =
                        "🌶️ ZIGZAG ภาษาไทย",

                    Text =
                        "ระบบแปลพร้อมใช้งาน",

                    Duration =
                        4
                }
            )

        end)

    end
)


--========================================================
-- 23. CONSOLE
--========================================================

print(
    "========================================"
)

print(
    "✅ CHILLI HUB THAI - ZIGZAG"
)

print(
    "🇹🇭 COMPLETE OPTIMIZED VERSION"
)

print(
    "✅ คำแปลเดิมครบ"
)

print(
    "✅ Anti Guard Floating รองรับ"
)

print(
    "✅ Popup / Dropdown รองรับ"
)

print(
    "✅ Dynamic Text รองรับ"
)

print(
    "✅ Continuous Scan ถูกลบแล้ว"
)

print(
    "✅ ลดการใช้ CPU สำหรับ iPad/iPhone"
)

print(
    "========================================"
)
