
# Lab L1 - About me
Student ID: 67115618
Name: Wasutorn Aungsupanich

## Q1: เจอปัญหาอะไรใน flutter doctor และแก้ไขอย่างไร?

จากการตรวจสอบด้วย flutter doctor พบว่า Flutter และ
Android toolchain ผ่านทั้งหมด โดยแสดง No issues found!

แต่ขณะรันแอปบน Android Emulator พบปัญหาติดตั้ง
Android NDK และ Gradle Build ไม่สำเร็จ

ได้ตรวจสอบ Error ด้วย Gradle Stacktrace และแก้ปัญหา
โดยกำหนด Java Locale เป็นภาษาอังกฤษ (en-US)
ผ่าน JAVA_TOOL_OPTIONS จากนั้นจึงสามารถ Build
และรันแอปบน Emulator ได้สำเร็จ

## Q2: Hot Reload (r) และ Hot Restart (R) ต่างกันอย่างไร?

เมื่อ Likes เป็น 3 แล้วกด r (Hot Reload) ค่า Likes
ยังคงเป็น 3 เพราะ Flutter รักษา State เดิมไว้

แต่เมื่อกด R (Hot Restart) ค่า Likes กลับเป็น 0
เพราะแอปเริ่มใหม่ ทำให้ตัวแปร _likes ถูกกำหนด
ค่าเริ่มต้นเป็น 0 อีกครั้ง

## Q3: ทำไม _likes++ ต้องอยู่ใน setState() และ Commit เปลี่ยนอะไร?

การใช้ setState() ช่วยแจ้ง Flutter ว่าข้อมูลมีการ
เปลี่ยนแปลงและต้องอัปเดตหน้าจอ เมื่อกด Like
คำสั่ง _likes++ จะเพิ่มค่าทีละ 1 แล้ว Flutter
จะแสดงจำนวน Likes ล่าสุด

Commit e8d686b (Add Like counter using setState)
เป็นการเปลี่ยน HomePage เป็น StatefulWidget
เพิ่มตัวแปร _likes และเพิ่มปุ่ม Like ที่เรียก
ฟังก์ชัน _like() เพื่อเปลี่ยนจำนวน Likes




## ตารางทดสอบ 6 กรณี

| กรณี | วิธีทดสอบ | ผลที่ได้จริง |
|---|---|---|
| Normal 1 | เปิดแอปใหม่ | แอปแสดงชื่อ รหัสนักศึกษา ไอคอน และ Likes: 0 ได้ถูกต้อง |
| Normal 2 | กด Like 1 ครั้ง | กดปุ่ม Like จาก 0 แล้วตัวเลขเพิ่มเป็น Likes: 1 ถูกต้อง |
| Boundary 1 | กด Like 20 ครั้งจาก 0 | กด Like ครบ 20 ครั้งแล้วแสดง Likes: 20 ถูกต้อง ไม่พบ Error บนหน้าจอ |
| Boundary 2 | หมุนหน้าจอแนวนอน | หน้าจอแนวนอนแสดง AppBar ไอคอน ชื่อจริง Likes: 20 และปุ่ม Like ครบถ้วน ไม่พบ Overflow |
| Reload | กด Like 3 ครั้ง แล้วกด r และ R | Hot Reload ทำงานสำเร็จ ส่วน Hot Restart ทำให้ Likes กลับเป็น 0 (ยังต้องยืนยันค่า Likes หลัง r) |
| Failure | ปิด Emulator แล้วลอง flutter run | Flutter ไม่พบ Android Emulator แต่ยังแสดง Windows, Chrome และ Edge ให้เลือก จึงพิมพ์ q เพื่อยกเลิกการรัน |

## การใช้ AI

ใช้ ChatGPT ช่วยอธิบายขั้นตอนการสร้างแอป Flutter การทำงานของ StatefulWidget และ setState() การใช้ Git และ GitHub รวมถึงช่วยวิเคราะห์และแก้ปัญหา Gradle Build และการตั้งค่า Java Locale นอกจากนี้ยังใช้ช่วยร่างโค้ดและคำตอบในรายงาน โดยนำโค้ดไปรันและทดสอบบน Android Emulator ด้วยตนเอง รวมถึงตรวจสอบผลการทำงานของปุ่ม Like การหมุนหน้าจอ และการใช้งาน Hot Reload กับ Hot Restart