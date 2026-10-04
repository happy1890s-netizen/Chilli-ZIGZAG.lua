--========================================================
-- CHILLI HUB THAI - ZIGZAG
-- DIRECT SOURCE / ONE BLOCK / ANTI-FLICKER / LOW-LAG
--
-- ✅ Loader + Translator ก้อนเดียว
-- ✅ โหลด Chilli ต้นฉบับโดยตรง
-- ✅ ไม่โหลด Kheroro Translator ซ้อน
-- ✅ คำแปลล่าสุดคงไว้
-- ✅ Butterfly Bloom / Wisp / Essence
-- ✅ Scrambled / Lab
-- ✅ Placement / Priority
-- ✅ Dropdown / Popup / Dynamic Text
-- ✅ Anti Guard Floating
-- ✅ ไม่มี RenderStepped Translator
-- ✅ ไม่มี Full Scan Loop ถาวร
--========================================================


--========================================================
-- 0. SESSION STATE
-- ถ้ารัน ZIGZAG ซ้ำ จะตัด watcher เก่าของ ZIGZAG ก่อน
-- แต่ไม่สร้าง Chilli ซ้ำถ้ามีอยู่แล้ว
--========================================================

local ENV =
    (type(getgenv) == "function" and getgenv())
    or _G

local OLD =
    ENV.__ZIGZAG_CHILLI_STATE

if OLD
    and type(OLD.Disconnect) == "function"
then
    pcall(OLD.Disconnect)
end

local STATE = {
    Connections = {}
}

local function Bind(connection)

    if connection then
        table.insert(
            STATE.Connections,
            connection
        )
    end

    return connection
end

function STATE.Disconnect()

    for _,connection
        in ipairs(STATE.Connections)
    do
        pcall(function()
            connection:Disconnect()
        end)
    end

    table.clear(
        STATE.Connections
    )
end

ENV.__ZIGZAG_CHILLI_STATE =
    STATE


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
-- 2. DIRECT CHILLI SOURCE
--
-- สำคัญ:
-- ไม่ใช้ kheroro.vercel.app ตรงนี้อีก
--========================================================

local SOURCE_URL =
    "https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"


--========================================================
-- 3. TRANSLATIONS
--========================================================

local TRANSLATIONS = {

    --================ MAIN / GENERAL =================

    ["Chilli Hub"] =
        "Chilli Hub 🇹🇭 • ZIGZAG",

    ["Farm"] =
        "ฟาร์ม",

    ["Player"] =
        "ตัวละคร",

    ["Character"] =
        "ตัวละคร",

    ["Predictor"] =
        "คาดการณ์",

    ["Progress"] =
        "ความคืบหน้า",

    ["Egg Finder"] =
        "ค้นหาไข่",

    ["Server"] =
        "เซิร์ฟเวอร์",

    ["Misc"] =
        "อื่นๆ",

    ["Webhook"] =
        "เว็บฮุก",

    ["Discord"] =
        "ดิสคอร์ด",

    ["Quick & Keys"] =
        "คีย์ลัด",

    ["Settings"] =
        "การตั้งค่า",

    ["Config"] =
        "คอนฟิก",

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

    ["Theme"] =
        "ธีม",

    ["Filters"] =
        "ตัวกรอง",

    ["Filter"] =
        "ตัวกรอง",

    ["Actions"] =
        "คำสั่ง",

    ["Visuals"] =
        "การแสดงผล",

    ["Visual"] =
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

    ["All"] =
        "ทั้งหมด",

    ["Any"] =
        "ทุกระดับ",

    ["Any Size"] =
        "ทุกขนาด",

    ["Select..."] =
        "เลือก...",

    ["Search"] =
        "ค้นหา",

    ["Search..."] =
        "ค้นหา...",

    ["Filter features..."] =
        "ค้นหาฟีเจอร์...",

    ["Idle"] =
        "ว่าง",

    ["Default"] =
        "ค่าเริ่มต้น",

    ["Status"] =
        "สถานะ",

    ["Priority"] =
        "ลำดับความสำคัญ",

    ["Value"] =
        "มูลค่า",

    ["Size"] =
        "ขนาด",

    ["Rarity"] =
        "ความหายาก",

    ["Mutation"] =
        "การกลายพันธุ์",

    ["Area"] =
        "พื้นที่",

    ["Areas"] =
        "พื้นที่",


    --================ RARITY =================

    ["Basic"] =
        "พื้นฐาน",

    ["Common"] =
        "ธรรมดา",

    ["Uncommon"] =
        "ไม่ธรรมดา",

    ["Rare"] =
        "แรร์",

    ["SuperRare"] =
        "ซูเปอร์แรร์",

    ["Epic"] =
        "อีพิก",

    ["Legendary"] =
        "เลเจนดารี",

    ["Mythic"] =
        "มิธิค",

    ["Mythical"] =
        "มิธิค",

    ["Cosmic"] =
        "คอสมิก",

    ["Celestial"] =
        "เซเลสเชียล",

    ["Divine"] =
        "ดีไวน์",

    ["Superior"] =
        "ซูพีเรียร์",

    ["Eternal"] =
        "อีเทอร์นัล",

    ["Secret"] =
        "ซีเคร็ต",

    ["Limited"] =
        "ลิมิเต็ด",

    ["Exclusive"] =
        "เอ็กซ์คลูซีฟ",

    ["Exotic"] =
        "เอ็กโซติก",

    ["Titan"] =
        "ไททัน",

    ["Rainbow"] =
        "เรนโบว์",


    --================ SYSTEM / PLAYER =================

    ["Movement"] =
        "การเคลื่อนที่",

    ["Speed Boost"] =
        "เพิ่มความเร็ว",

    ["Boost Speed"] =
        "ระดับความเร็ว",

    ["Anti AFK"] =
        "กันหลุด (Anti AFK)",

    ["Anti-AFK"] =
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

    ["Anti Knockback"] =
        "กันกระเด็น",

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


    --================ PERFORMANCE =================

    ["Performance"] =
        "ประสิทธิภาพ",

    ["FPS Boost"] =
        "เพิ่ม FPS",

    ["Ultra FPS Boost"] =
        "เพิ่ม FPS สูงสุด",

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

    ["FPS Cap"] =
        "จำกัด FPS",

    ["Show FPS and Ping"] =
        "แสดง FPS และ Ping",

    ["FPS and Ping"] =
        "แสดง FPS และ Ping",

    ["FPS and Ping Size"] =
        "ขนาด FPS และ Ping",

    ["Optimizer"] =
        "ตัวปรับประสิทธิภาพ",


    --================ SERVER =================

    ["Server Hop"] =
        "ย้ายเซิร์ฟเวอร์",

    ["Auto Server Hop"] =
        "ย้ายเซิร์ฟเวอร์อัตโนมัติ",

    ["Auto Hop"] =
        "ออโต้ย้ายเซิร์ฟเวอร์",

    ["Hop Mode"] =
        "โหมดย้ายเซิร์ฟเวอร์",

    ["Most Players"] =
        "คนเยอะสุด",

    ["Least Players"] =
        "คนน้อยสุด",

    ["Random"] =
        "สุ่ม",

    ["Rejoin Server"] =
        "เข้าเซิร์ฟเวอร์เดิมอีกครั้ง",

    ["Boss Server Hop"] =
        "ย้ายเซิร์ฟเวอร์หาบอส",

    ["Keep Hopping For"] =
        "ย้ายเซิร์ฟต่อเพื่อค้นหา",

    ["Joins new servers to find eggs that match the filters below"] =
        "เข้าเซิร์ฟเวอร์ใหม่เพื่อหาไข่ที่ตรงกับตัวกรองด้านล่าง",

    ["Turn on Auto Hop to start hunting"] =
        "เปิดออโต้ย้ายเซิร์ฟเวอร์เพื่อเริ่มค้นหาไข่",

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
        "ใช้ตัวกรองเดียวกับออโต้ขโมย",

    ["Changing a filter here also changes it in Auto Steal, and back"] =
        "เปลี่ยนตัวกรองตรงนี้จะเปลี่ยนในออโต้ขโมยด้วย",

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


    --================ STEAL =================

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

    ["Target Areas"] =
        "พื้นที่เป้าหมาย",

    ["Min Rarity"] =
        "ความหายากขั้นต่ำ",

    ["Min Steal Value"] =
        "มูลค่าขั้นต่ำที่จะขโมย",

    ["Min Value To Steal"] =
        "มูลค่าขั้นต่ำที่จะขโมย",

    ["Target Specific Eggs"] =
        "ขโมยเฉพาะไข่ที่เลือก",

    ["Steal Missing Lab Eggs"] =
        "ขโมยไข่แล็บที่ยังไม่มี",

    ["Steal Missing Index Eggs"] =
        "ขโมยไข่ในสมุดที่ยังไม่มี",

    ["Skip Owned Lab Eggs"] =
        "ข้ามไข่แล็บที่มีอยู่แล้ว",

    ["Steal Priority"] =
        "ลำดับความสำคัญขโมย",

    ["Stock Per Egg"] =
        "จำนวนสำรองต่อไข่",

    ["Carry Speed"] =
        "ความเร็วขณะถือไข่",

    ["Tween Speed"] =
        "ความเร็วการวาร์ป (Tween)",

    ["Steal Glide Speed"] =
        "ความเร็ว Glide ตอนขโมย",

    ["Auto Return to Base"] =
        "กลับฐานอัตโนมัติ",

    ["Avoid Rifts"] =
        "หลีกเลี่ยง Rift",


    --================ PLACE =================

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

    ["Place Egg Rule"] =
        "กฎการวางไข่",

    ["Place Rule"] =
        "กฎการวางไข่",

    ["Placement Rule"] =
        "กฎการวางไข่",

    ["Place Egg Order"] =
        "ลำดับการวางไข่",

    ["Place Egg Priority"] =
        "ลำดับความสำคัญการวางไข่",

    ["Place Rarities"] =
        "ระดับที่จะวางไข่",

    ["Place Specific Eggs"] =
        "วางเฉพาะไข่ที่กำหนด",

    ["Always"] =
        "ตลอดเวลา",

    ["Steal Idle"] =
        "ช่วงไม่ได้ขโมย",

    ["After Steal"] =
        "หลังขโมย",

    ["Night Only"] =
        "เฉพาะกลางคืน",


    --================ HATCH / EQUIP =================

    ["Auto Hatch"] =
        "ออโต้ฟักไข่",

    ["Auto Hatch Egg"] =
        "ออโต้ฟักไข่",

    ["Auto Hatch Eggs"] =
        "ออโต้ฟักไข่",

    ["Auto Hatch & Equip"] =
        "ออโต้ฟักไข่และสวมใส่",

    ["Hatch Min Rarity"] =
        "ความหายากขั้นต่ำที่จะฟัก",

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


    --================ TREADMILL =================

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

    ["Stay On Treadmill"] =
        "อยู่บนลู่วิ่งตลอดเวลา",


    --================ SELL =================

    ["Auto Sell"] =
        "ออโต้ขาย",

    ["Auto Sell Egg"] =
        "ออโต้ขายไข่",

    ["Auto Sell Eggs"] =
        "ขายไข่อัตโนมัติ",

    ["Auto Sell Pet"] =
        "ออโต้ขายสัตว์เลี้ยง",

    ["Auto Sell Pets"] =
        "ขายสัตว์เลี้ยงอัตโนมัติ",

    ["Sell Eggs Now"] =
        "ขายไข่ตอนนี้",

    ["Sell Pets Now"] =
        "ขายสัตว์เลี้ยงตอนนี้",

    ["Pet Sell Value"] =
        "มูลค่าสัตว์เลี้ยงที่จะขาย",

    ["Egg Sell Value"] =
        "มูลค่าไข่ที่จะขาย",

    ["Never Sell Mutated"] =
        "ห้ามขายตัวที่กลายพันธุ์",

    ["Never Sell Equipped"] =
        "ห้ามขายตัวที่กำลังใช้งาน",


    --================ LAB EGG =================

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


    --================ DR SCRAMBLE / LAB =================

    ["Dr. Scramble"] =
        "Dr. Scramble",

    ["Dr Scramble"] =
        "Dr. Scramble",

    ["Dr Scramble Event"] =
        "กิจกรรม Dr. Scramble",

    ["Dr Scramble Lab & Mech"] =
        "ห้องแล็บ Dr. Scramble & หุ่นรบ",

    ["Dr. Scramble Lab & Mech"] =
        "ห้องแล็บ Dr. Scramble & หุ่นรบ",

    ["Auto Mech Boss"] =
        "ออโต้ตีบอสหุ่นรบ",

    ["Mech Tween Speed"] =
        "ความเร็วบินไปตีหุ่นรบ",

    ["Auto Claim Mastery"] =
        "ออโต้รับรางวัล Mastery",

    ["Auto Use Scrambled"] =
        "ออโต้ใช้ Scrambled",

    ["Auto Use Scrambled Mutation"] =
        "ออโต้ใช้ Scrambled",

    ["Auto Buy Scrambled"] =
        "ออโต้ซื้อ Scrambled",

    ["Auto Buy Scramble Shop"] =
        "ออโต้ซื้อของร้าน Scramble",

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

    ["Auto Lab Trade-In"] =
        "ออโต้แลกของในแล็บ",

    ["Collect Laboratory Rewards"] =
        "รับรางวัลห้องทดลอง",

    ["Auto Claim Lab Rewards"] =
        "ออโต้รับรางวัลจากแล็บ",

    ["Auto Reroll Lab Recipe"] =
        "ออโต้สุ่มสูตรแล็บใหม่",

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

    ["Biohazard Pets"] =
        "สัตว์ Biohazard",

    ["Experimental Pets"] =
        "สัตว์ทดลอง",

    ["Unstable DNA"] =
        "DNA ไม่เสถียร",

    ["Lab Banner"] =
        "ป้ายแบนเนอร์แล็บ",

    ["Lab Banners"] =
        "ป้ายแบนเนอร์แล็บ",

    ["Scramble Shop"] =
        "ร้าน Scramble",

    ["Scramble Shop Items"] =
        "ไอเทมในร้าน Scramble",

    ["Items to Buy"] =
        "ไอเทมที่จะซื้อในร้าน",

    ["Items To Buy"] =
        "ไอเทมที่จะซื้อในร้าน",

    ["Keep Samples"] =
        "สำรอง Samples ไว้",

    ["Reserve Samples"] =
        "สำรอง Samples ไว้",

    ["Samples Reserve"] =
        "จำนวน Samples สำรอง",

    ["Minimum Mutation Rarity"] =
        "ระดับไข่กลายพันธุ์ขั้นต่ำ",

    ["Mutation Egg Min Rarity"] =
        "ระดับไข่กลายพันธุ์ขั้นต่ำ",

    ["Mutation Min Rarity"] =
        "ระดับไข่กลายพันธุ์ขั้นต่ำ",

    ["Min Mutation Value"] =
        "มูลค่าขั้นต่ำการกลายพันธุ์",

    ["Mutation Min Value"] =
        "มูลค่าขั้นต่ำการกลายพันธุ์",

    ["Mutation Priority"] =
        "ลำดับความสำคัญกลายพันธุ์",

    ["Mutation Target Eggs"] =
        "เป้าหมายไข่กลายพันธุ์",

    ["2x Cash Booster"] =
        "บูสต์เงิน x2",

    ["1.25x Speed"] =
        "ความเร็ว x1.25",

    ["2x Treadmill Booster"] =
        "บูสต์ลู่วิ่ง x2",


    --================ BUTTERFLY BLOOM =================

    ["Butterfly Bloom"] =
        "Butterfly Bloom",

    ["Auto Butterfly Bloom"] =
        "ออโต้ Butterfly Bloom",

    ["Catch Mode"] =
        "โหมดจับผีเสื้อ",

    ["Stand"] =
        "ยืนรอ",

    ["Chase"] =
        "ไล่จับ",

    ["Circle"] =
        "วนเป็นวง",

    ["Patrol"] =
        "ลาดตระเวน",

    ["Catch Priority"] =
        "ลำดับการจับ",

    ["Only for Chase mode"] =
        "ใช้เฉพาะโหมดไล่จับ",

    ["Rarest"] =
        "หายากสุดก่อน",

    ["Closest"] =
        "ใกล้สุดก่อน",

    ["Nearest"] =
        "ใกล้สุดก่อน",

    ["Catch Butterflies"] =
        "จับผีเสื้อ",

    ["Radiant Butterfly"] =
        "ผีเสื้อ Radiant",

    ["Amethyst Butterfly"] =
        "ผีเสื้อ Amethyst",

    ["Sapphire Butterfly"] =
        "ผีเสื้อ Sapphire",

    ["Emerald Butterfly"] =
        "ผีเสื้อ Emerald",

    ["Wisp Companion"] =
        "คู่หู Wisp",

    ["Auto Wisp"] =
        "ออโต้ Wisp",

    ["Auto Wisp Quests"] =
        "ออโต้ภารกิจ Wisp",

    ["Steal Wisp Quest Eggs"] =
        "ขโมยไข่ภารกิจ Wisp",

    ["Butterflies"] =
        "ผีเสื้อ",

    ["Auto Claim Net"] =
        "ออโต้รับตาข่าย",

    ["Auto Catch Butterflies"] =
        "ออโต้จับผีเสื้อ",

    ["Auto Banjo Cricket"] =
        "ออโต้ Banjo Cricket",

    ["Banjo Cricket"] =
        "Banjo Cricket",


    --================ ESSENCE / TRADE UP =================

    ["Auto Trade Up"] =
        "ออโต้เลื่อนระดับ",

    ["Trade Up"] =
        "เลื่อนระดับ",

    ["Trade Up Tiers"] =
        "ระดับการเลื่อนขั้น",

    ["Trades"] =
        "การแลก",

    ["Emerald To Sapphire"] =
        "Emerald → Sapphire",

    ["Sapphire To Amethyst"] =
        "Sapphire → Amethyst",

    ["Amethyst To Radiant"] =
        "Amethyst → Radiant",

    ["Emerald -> Sapphire"] =
        "Emerald → Sapphire",

    ["Sapphire -> Amethyst"] =
        "Sapphire → Amethyst",

    ["Amethyst -> Radiant"] =
        "Amethyst → Radiant",

    ["Smart Trade For Essence"] =
        "แลกอัจฉริยะเพื่อ Essence",

    ["Auto Craft Essence"] =
        "ออโต้สร้าง Essence",

    ["Auto Essence"] =
        "ออโต้ Essence",

    ["Essence"] =
        "Essence",

    ["Auto Use Enchanted Essence"] =
        "ออโต้ใช้ Enchanted Essence",

    ["Essence Min Rarity"] =
        "ความหายากขั้นต่ำสำหรับ Essence",

    ["Only eggs of this rarity and above get the essence"] =
        "ใช้ Essence เฉพาะไข่ระดับนี้ขึ้นไป",

    ["Essence Min Value"] =
        "มูลค่าขั้นต่ำสำหรับ Essence",

    ["Essence Target Eggs"] =
        "ไข่เป้าหมายสำหรับ Essence",

    ["Only use the essence on these eggs (empty = all)"] =
        "ใช้ Essence กับไข่เหล่านี้เท่านั้น (เว้นว่าง = ทั้งหมด)",

    ["Essence Priority"] =
        "ลำดับความสำคัญของ Essence",

    ["Which egg gets the essence first"] =
        "กำหนดว่าไข่ใบไหนจะได้รับ Essence ก่อน",

    ["Essence Skip Enchanted Eggs"] =
        "ข้ามไข่ Enchanted สำหรับ Essence",

    ["Skip eggs that already got Enchanted, other mutations still get the essence"] =
        "ข้ามไข่ที่มี Enchanted แล้ว การกลายพันธุ์อื่นยังได้รับ Essence",


    --================ PRIORITY / SORTING =================

    ["Highest Value"] =
        "มูลค่าสูงสุด",

    ["Lowest Value"] =
        "มูลค่าต่ำสุด",

    ["Best Rarity"] =
        "ความหายากสูงสุด",

    ["Biggest Size"] =
        "ขนาดใหญ่สุด",

    ["Smallest Size"] =
        "ขนาดเล็กสุด",

    ["Biggest Weight"] =
        "น้ำหนักมากสุด",

    ["Best Mutation"] =
        "การกลายพันธุ์ดีที่สุด",

    ["Backpack Order"] =
        "ลำดับในกระเป๋า",


    --================ FAVORITE =================

    ["Auto Favorite"] =
        "ออโต้กดถูกใจ",

    ["Auto Favorite Pet"] =
        "ออโต้กดถูกใจสัตว์เลี้ยง",

    ["Auto Favorite Pets"] =
        "ออโต้กดถูกใจสัตว์เลี้ยง",

    ["Favorite Pets Now"] =
        "กดถูกใจสัตว์เลี้ยงตอนนี้",

    ["Favorite Rule"] =
        "กฎการกดถูกใจ",

    ["Favorite Min Rarity"] =
        "ความหายากขั้นต่ำที่จะกดถูกใจ",

    ["Min Favorite Value"] =
        "มูลค่าขั้นต่ำที่จะกดถูกใจ",

    ["Auto Favorite Equipped"] =
        "ออโต้กดถูกใจตัวที่สวมใส่",

    ["Auto Unfavorite Equipped"] =
        "ออโต้ปลดถูกใจตัวที่สวมใส่",

    ["Unfavorite Equipped Now"] =
        "ยกเลิกถูกใจตัวที่สวมใส่อยู่ตอนนี้",


    --================ ESP =================

    ["ESP"] =
        "ESP",

    ["ESP Eggs"] =
        "ESP ไข่",

    ["ESP Own Base"] =
        "ESP ไข่ในฐานตัวเอง",

    ["ESP Own Base Eggs"] =
        "ESP ไข่ในฐานตัวเอง",

    ["ESP Egg Size"] =
        "ขนาด ESP ไข่",

    ["ESP Guards"] =
        "ESP ยาม",

    ["ESP Guard Size"] =
        "ขนาด ESP ยาม",

    ["ESP Lost Parts"] =
        "ESP ชิ้นส่วนที่หาย",

    ["ESP Missing Parts"] =
        "ESP ชิ้นส่วนที่หาย",

    ["ESP Players"] =
        "ESP ผู้เล่น",

    ["ESP Player Info"] =
        "ข้อมูล ESP ผู้เล่น",

    ["ESP Player Size"] =
        "ขนาด ESP ผู้เล่น",

    ["Guards"] =
        "ยาม",


    --================ WEBHOOK / PREDICTOR =================

    ["Discord Webhook"] =
        "Discord Webhook",

    ["Discord Webhook URL"] =
        "URL Webhook ของ Discord",

    ["Webhook URL"] =
        "URL ของ Webhook",

    ["Ping @everyone"] =
        "แท็ก @everyone",

    ["Notify Stolen Eggs"] =
        "แจ้งเตือนไข่ที่ขโมยได้",

    ["Egg Predictor"] =
        "คาดการณ์ไข่",

    ["Fuse Predictor"] =
        "คาดการณ์ผลการผสม",

    ["Lab Predictor"] =
        "คาดการณ์ห้องแล็บ",

    ["Machine is empty"] =
        "เครื่องยังว่าง",

    ["Predictor Tab > Discord Webhook"] =
        "แท็บคาดการณ์ > Discord Webhook",

    ["Predictor Tab > Egg Predictor"] =
        "แท็บคาดการณ์ > คาดการณ์ไข่",

    ["Progress Tab > Auto Progression"] =
        "แท็บความคืบหน้า > พัฒนาอัตโนมัติ",


    --================ QUICK ACCESS =================

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


    --================ CONFIG =================

    ["Profiles"] =
        "โปรไฟล์",

    ["Delete Config"] =
        "ลบคอนฟิก",

    ["Set Startup Config"] =
        "ตั้งคอนฟิกเริ่มต้น",

    ["Load Config"] =
        "โหลดคอนฟิก",

    ["Save Config"] =
        "บันทึกคอนฟิก",

    ["Import / Export"] =
        "นำเข้า / ส่งออก",

    ["Import / export"] =
        "นำเข้า / ส่งออก",

    ["Export Config"] =
        "ส่งออกคอนฟิก",

    ["Import Config"] =
        "นำเข้าคอนฟิก",

    ["Config name"] =
        "ชื่อคอนฟิก",

    ["New Config Name"] =
        "ชื่อคอนฟิกใหม่",

    ["Create config"] =
        "สร้างคอนฟิก",

    ["Create New Config"] =
        "สร้างคอนฟิกใหม่",

    ["Delete config"] =
        "ลบคอนฟิก",

    ["Load config"] =
        "โหลดคอนฟิก",

    ["Refresh list"] =
        "รีเฟรชรายการ",

    ["Set autoload"] =
        "ตั้งโหลดอัตโนมัติ",

    ["Reset autoload"] =
        "ยกเลิกโหลดอัตโนมัติ",


    --================ TAB HEADERS =================

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
        "แท็บฟาร์ม > ห้องแล็บ Dr. Scramble & หุ่นรบ",

    ["Misc Tab > Utility"] =
        "แท็บอื่นๆ > เครื่องมือ",

    ["Auto Hop Tab > Egg Finder"] =
        "แท็บย้ายเซิร์ฟอัตโนมัติ > ค้นหาไข่",

    ["Discord Tab > Community"] =
        "แท็บดิสคอร์ด > ชุมชน",

    ["Copy Discord Link"] =
        "คัดลอกลิงก์ดิสคอร์ด",

    ["Settings Tab > Defaults"] =
        "แท็บตั้งค่า > ค่าเริ่มต้น",
}


--========================================================
-- 4. LOOKUP / CACHE
--========================================================

local LOWER_TRANSLATIONS = {}
local TRANSLATED_OUTPUTS = {}

for english,thai
    in pairs(TRANSLATIONS)
do

    LOWER_TRANSLATIONS[
        string.lower(english)
    ] = thai

    TRANSLATED_OUTPUTS[thai] =
        true
end

local STRING_CACHE = {}


--========================================================
-- 5. HELPERS
--========================================================

local function CleanText(text)

    if type(text) ~= "string" then
        return ""
    end

    local clean =
        text:gsub(
            "<[^>]+>",
            ""
        )

    return
        clean:match("^%s*(.-)%s*$")
        or clean
end


local function TranslateState(value)

    local lower =
        string.lower(value or "")

    if lower == "off" then
        return "ปิด"

    elseif lower == "on" then
        return "เปิด"

    elseif lower == "idle" then
        return "ว่าง"

    elseif lower == "none" then
        return "ไม่มี"
    end

    return value
end


--========================================================
-- 6. TRANSLATE
--========================================================

local function TranslateText(text)

    if
        type(text) ~= "string"
        or text == ""
    then
        return text
    end


    local cached =
        STRING_CACHE[text]

    if cached ~= nil then
        return cached
    end


    local clean =
        CleanText(text)

    if clean == "" then

        STRING_CACHE[text] =
            text

        return text
    end


    --====================================================
    -- ALREADY TRANSLATED
    --====================================================

    if TRANSLATED_OUTPUTS[clean] then

        STRING_CACHE[text] =
            clean

        return clean
    end


    --====================================================
    -- EXACT
    --====================================================

    local exact =
        LOWER_TRANSLATIONS[
            string.lower(clean)
        ]

    if exact then

        STRING_CACHE[text] =
            exact

        return exact
    end


    --====================================================
    -- PLAYERS
    --====================================================

    local a,b =
        clean:match(
            "^Players%s+(%d+)%/(%d+)$"
        )

    if a then

        local result =
            "ผู้เล่น "
            .. a
            .. "/"
            .. b

        STRING_CACHE[text] =
            result

        return result
    end


    --====================================================
    -- SELECTED
    --====================================================

    local selected =
        clean:match(
            "^(%d+)%s+selected$"
        )

    if selected then

        local result =
            "เลือกแล้ว "
            .. selected
            .. " รายการ"

        STRING_CACHE[text] =
            result

        return result
    end


    --====================================================
    -- QUICK BAR
    --====================================================

    local quick =
        clean:match(
            "^Quick Bar%s*(%d+)$"
        )

    if quick then

        local result =
            "แถบลัด "
            .. quick

        STRING_CACHE[text] =
            result

        return result
    end


    --====================================================
    -- BUTTERFLY BLOOM DYNAMIC
    --====================================================

    local bloomState,bloomLeft =
        clean:match(
            "^(%a+)%s*|%s*Butterfly Bloom live,%s*(.-)%s+left$"
        )

    if bloomState
        and (
            string.lower(bloomState) == "on"
            or
            string.lower(bloomState) == "off"
        )
    then

        local result =
            TranslateState(bloomState)
            .. " | Butterfly Bloom กำลังทำงาน เหลือ "
            .. bloomLeft

        STRING_CACHE[text] =
            result

        return result
    end


    local bloomOnly =
        clean:match(
            "^Butterfly Bloom live,%s*(.-)%s+left$"
        )

    if bloomOnly then

        local result =
            "Butterfly Bloom กำลังทำงาน เหลือ "
            .. bloomOnly

        STRING_CACHE[text] =
            result

        return result
    end


    --====================================================
    -- SCRAMBLED STATUS
    --====================================================

    local charges,
          eggsNow,
          eggsMax,
          tries,
          applied =

        clean:match(
            "^Charges%s+(%d+)%s+Eggs%s+(%d+)%/(%d+)%s+Tries%s+(%d+)%s+Applied%s+(%d+)$"
        )

    if charges then

        local result =
            "ชาร์จ "
            .. charges
            .. " | ไข่ "
            .. eggsNow
            .. "/"
            .. eggsMax
            .. " | ลอง "
            .. tries
            .. " | ใช้แล้ว "
            .. applied

        STRING_CACHE[text] =
            result

        return result
    end


    --====================================================
    -- LAB ROTATION
    --====================================================

    local banner,
          needed,
          pity,
          rerolls,
          rotateTime =

        clean:match(
            "^(.-)%s*%-%s*needs%s*(.-)%s*%-%s*pity%s*(.-)%s*%-%s*free rerolls%s*(.-)%s*%-%s*rotates in%s*(.-)$"
        )

    if banner then

        local bannerClean =
            banner:match(
                "^%s*(.-)%s*$"
            )

        local bannerThai =
            LOWER_TRANSLATIONS[
                string.lower(
                    bannerClean
                )
            ]
            or bannerClean

        local result =
            bannerThai
            .. " - ต้องการ "
            .. needed
            .. " - การันตี "
            .. pity
            .. " - สุ่มฟรี "
            .. rerolls
            .. " - เปลี่ยนใน "
            .. rotateTime

        STRING_CACHE[text] =
            result

        return result
    end


    --====================================================
    -- LAB EGG
    --====================================================

    local eggCount,value =
        clean:match(
            "^Lab egg matches%s*%-%s*(%d+)%s*eggs%s*for%s*%$(.*)$"
        )

    if eggCount then

        local result =
            "เจอไข่แล็บเข้าเงื่อนไข "
            .. eggCount
            .. " ฟอง มูลค่า $"
            .. value

        STRING_CACHE[text] =
            result

        return result
    end


    --====================================================
    -- LAST STATUS
    --====================================================

    local lastSteal =
        clean:match(
            "^Last Steal:%s*(.+)$"
        )

    if lastSteal then

        local result =
            "การขโมยล่าสุด: "
            .. TranslateState(lastSteal)

        STRING_CACHE[text] =
            result

        return result
    end


    local lastIssue =
        clean:match(
            "^Last issue:%s*(.+)$"
        )

    if lastIssue then

        local result =
            "ปัญหาล่าสุด: "
            .. TranslateState(lastIssue)

        STRING_CACHE[text] =
            result

        return result
    end


    local lastSell =
        clean:match(
            "^Last Sell:%s*(.+)$"
        )

    if lastSell then

        local result =
            "การขายล่าสุด: "
            .. TranslateState(lastSell)

        STRING_CACHE[text] =
            result

        return result
    end


    local lastFuse =
        clean:match(
            "^Last Fuse:%s*(.+)$"
        )

    if lastFuse then

        local result =
            "การผสมล่าสุด: "
            .. TranslateState(lastFuse)

        STRING_CACHE[text] =
            result

        return result
    end


    --====================================================
    -- SAFE PARTIALS ONLY
    --
    -- ไม่มีการ gsub Butterfly Bloom แบบกว้าง
    -- ป้องกันคำซ้ำและ Flicker
    --====================================================

    local result =
        clean


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


    result =
        result:gsub(
            "Only for Chase mode",
            "ใช้เฉพาะโหมดไล่จับ"
        )


    if result ~= clean then

        STRING_CACHE[text] =
            result

        return result
    end


    STRING_CACHE[text] =
        text

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
-- 8. TRANSLATOR STATE
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
-- 9. APPLY
--========================================================

local function ApplyTranslation(
    object,
    shouldWatch
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
    -- DYNAMIC TEXT
    --
    -- ไม่ใช้ RenderStepped
    -- ไม่ใช้ permanent scan
    -- แปลเมื่อ Text เปลี่ยนจริงเท่านั้น
    --====================================================

    if
        shouldWatch
        and not Watched[object]
    then

        Watched[object] =
            true


        Bind(
            object
            :GetPropertyChangedSignal(
                "Text"
            )
            :Connect(function()

                if Busy[object] then
                    return
                end

                if not object.Parent then
                    return
                end

                ApplyTranslation(
                    object,
                    false
                )

            end)
        )


        if object:IsA("TextBox") then

            Bind(
                object
                :GetPropertyChangedSignal(
                    "PlaceholderText"
                )
                :Connect(function()

                    if Busy[object] then
                        return
                    end

                    if not object.Parent then
                        return
                    end

                    ApplyTranslation(
                        object,
                        false
                    )

                end)
            )

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
        AddRoot(hui)
    end
end


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
-- 11. CHILLI TITLE
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
        string.lower(text):find(
            "chilli hub",
            1,
            true
        ) ~= nil
end


--========================================================
-- 12. FIND CHILLI CONTAINER
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
            or current:IsA("ScrollingFrame")
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
-- 13. CURRENT CHILLI
--========================================================

local MainChilliGui =
    nil

local ChilliConnections =
    {}


local function DisconnectChilli()

    for _,connection
        in ipairs(ChilliConnections)
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


local function BindChilli(connection)

    if connection then

        table.insert(
            ChilliConnections,
            connection
        )

        Bind(
            connection
        )
    end

    return connection
end


--========================================================
-- 14. TRACK CHILLI
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
    -- สแกนครั้งเดียวตอนจับ Chilli ได้
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
    -- UI ใหม่ภายใน Chilli
    --====================================================

    BindChilli(
        gui.DescendantAdded
        :Connect(function(object)

            if IsTextObject(object) then

                ApplyTranslation(
                    object,
                    true
                )
            end

        end)
    )


    BindChilli(
        gui.AncestryChanged
        :Connect(function()

            if not gui.Parent then

                DisconnectChilli()
            end

        end)
    )


    print(
        "✅ ZIGZAG attached to Chilli"
    )
end


--========================================================
-- 15. LOOSE TARGET
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

    local lower =
        string.lower(
            CleanText(text)
        )

    return
        lower == "anti guard"
        or
        lower == "anti guard panel"
end


--========================================================
-- 16. FIND EXISTING CHILLI
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
-- 17. ROOT WATCHER
--
-- ไม่แปล UI ทั้งเกม
-- จับเฉพาะ Chilli / Popup ที่เรารู้จัก
--========================================================

local WatchedRoots =
    setmetatable(
        {},
        {
            __mode = "k"
        }
    )


local function WatchRoot(root)

    if
        not root
        or WatchedRoots[root]
    then
        return
    end


    WatchedRoots[root] =
        true


    Bind(
        root.DescendantAdded
        :Connect(function(object)

            if not IsTextObject(object) then
                return
            end


            --============================================
            -- CHILLI WINDOW
            --============================================

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


            --============================================
            -- ANTI GUARD FLOATING
            --============================================

            if IsLooseTarget(object) then

                ApplyTranslation(
                    object,
                    true
                )

                return
            end


            --============================================
            -- POPUP / DROPDOWN
            -- แปลเฉพาะคำที่รู้จัก
            -- ไม่เปิด watcher มั่วทั้งเกม
            --============================================

            if
                MainChilliGui
                and MainChilliGui.Parent
            then

                local ok,text =
                    pcall(function()

                        return object.Text
                    end)

                if
                    ok
                    and type(text) == "string"
                then

                    local clean =
                        CleanText(text)

                    if
                        LOWER_TRANSLATIONS[
                            string.lower(clean)
                        ]
                    then

                        ApplyTranslation(
                            object,
                            false
                        )
                    end
                end
            end

        end)
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
-- 18. TRANSLATOR READY
--========================================================

local CHILLI_ALREADY_OPEN =
    FindExistingChilli()


--========================================================
-- 19. LOAD DIRECT CHILLI
--
-- อยู่ในก้อนเดียว
-- ไม่ใช้ Kheroro wrapper
-- ถ้ามี Chilli อยู่แล้วจะไม่โหลดซ้ำ
--========================================================

if not CHILLI_ALREADY_OPEN then

    local ok,source =
        pcall(function()

            return game:HttpGet(
                SOURCE_URL
            )
        end)


    if not ok then

        warn(
            "[ZIGZAG] โหลด Chilli ไม่สำเร็จ:",
            source
        )

    else

        local runScript,loadError =
            loadstring(
                source
            )


        if not runScript then

            warn(
                "[ZIGZAG] Chilli Load Error:",
                loadError
            )

        else

            local success,runError =
                pcall(
                    runScript
                )


            if not success then

                warn(
                    "[ZIGZAG] Chilli Runtime Error:",
                    runError
                )
            end
        end
    end
end


--========================================================
-- 20. INITIAL DISCOVERY
--
-- ตรวจแค่ช่วงเริ่มต้น ไม่วนตลอดเกม
--========================================================

task.spawn(function()

    task.wait(0.3)

    if FindExistingChilli() then
        return
    end


    task.wait(0.6)

    if FindExistingChilli() then
        return
    end


    task.wait(1)

    if FindExistingChilli() then
        return
    end


    task.wait(2)

    FindExistingChilli()

end)


--========================================================
-- 21. REFRESH GETHUI ONCE
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


        FindExistingChilli()
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
                        "🌶️ Chilli ZIGZAG",

                    Text =
                        "แปลไทยพร้อมใช้งาน • Direct / Low-Lag",

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
    "=============================================="
)

print(
    "✅ CHILLI HUB THAI - ZIGZAG"
)

print(
    "✅ DIRECT ORIGINAL CHILLI SOURCE"
)

print(
    "✅ LOADER + TRANSLATOR ONE BLOCK"
)

print(
    "✅ NO KHERORO TRANSLATOR"
)

print(
    "✅ SINGLE ZIGZAG TRANSLATOR"
)

print(
    "✅ ANTI-FLICKER"
)

print(
    "✅ NO RENDERSTEPPED TRANSLATION"
)

print(
    "✅ NO PERMANENT FULL SCAN"
)

print(
    "=============================================="
)
