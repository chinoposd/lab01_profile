
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
| Normal 1 | เปิดแอปใหม่ | |
| Normal 2 | กด Like 1 ครั้ง | |
| Boundary 1 | กด Like 20 ครั้งจาก 0 | |
| Boundary 2 | หมุนหน้าจอแนวนอน | |
| Reload | กด Like 3 ครั้ง แล้วกด r และ R | |
| Failure | ปิด Emulator แล้วลอง flutter run | |

## การใช้ AI

ใช้ ChatGPT ช่วยอธิบายการสร้าง Flutter App,
การทำงานของ StatefulWidget และ setState(),
การใช้ Git และการแก้ปัญหา Gradle Build

จากนั้นนำโค้ดไปรันและทดสอบบน Android Emulator
ด้วยตนเอง