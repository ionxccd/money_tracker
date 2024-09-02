^087ffe2 (xccd              2024-08-30 11:07:40 -0400   1) <!DOCTYPE html>
^087ffe2 (xccd              2024-08-30 11:07:40 -0400   2) <html lang="en" dir="ltr">
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400   3) <head>
^087ffe2 (xccd              2024-08-30 11:07:40 -0400   4)     <meta charset="utf-8">
^087ffe2 (xccd              2024-08-30 11:07:40 -0400   5)     <title>Money Tree</title>
^087ffe2 (xccd              2024-08-30 11:07:40 -0400   6)     <meta name="viewport" content="width=device-width, initial-scale=1.0">
^087ffe2 (xccd              2024-08-30 11:07:40 -0400   7)     <link rel="stylesheet" href="./style.css"/>
^087ffe2 (xccd              2024-08-30 11:07:40 -0400   8)     <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400   9)     <link
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  10)     href="https://fonts.googleapis.com/css2?family=Ubuntu:ital,wght@0,300;0,400;0,500;0,700;1,300;1,400;1,500;1,700&display=swap"
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  11)     rel="stylesheet">
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  12)     <link rel="stylesheet" href="https://unpkg.com/@icon/themify-icons/themify-icons.css">
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  13) 
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  14)     <script lang="js">
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  15) 
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  16)     function getCurrentDate() {
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  17)         const now = new Date();
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  18)         return `${now.getMonth() + 1}/${now.getDate()}/${now.getFullYear()}`;
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  19)     }
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  20) 
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  21)     // Parse date string in MM/DD/YYYY format
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  22)     function parseDate(str) {
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  23)         const [month, day, year] = str.split('/').map(Number);
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  24)         return new Date(year, month - 1, day);
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  25)     }
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  26) 
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  27)     // Calculate difference in days between two dates
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  28)     function dateDiff(first, second) {
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  29)         const timeDiff = second.getTime() - first.getTime();
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  30)         return Math.round(timeDiff / (1000 * 60 * 60 * 24));
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  31)     }
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  32) 
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  33) 
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  34)     let transaction_list = [
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  35)         { "date": "4/1", "amount": "-15", "type": "neg" },
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  36)         { "date": "4/2", "amount": "+200", "type": "pos" },
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  37)         { "date": "4/3", "amount": "-30", "type": "neg" },
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  38)         { "date": "4/4", "amount": "-8", "type": "neg" },
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  39)         { "date": "4/5", "amount": "+75", "type": "pos" },
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  40)         { "date": "4/6", "amount": "-22", "type": "neg" },
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  41)         { "date": "4/7", "amount": "+150", "type": "pos" },
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  42)         { "date": "4/8", "amount": "-45", "type": "neg" },
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  43)         { "date": "4/9", "amount": "-12", "type": "neg" },
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  44)         { "date": "4/10", "amount": "-10", "type": "neg" },
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  45)         { "date": "4/11", "amount": "+50", "type": "pos" },
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  46)         { "date": "4/12", "amount": "-25", "type": "neg" },
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  47)         { "date": "4/13", "amount": "-5", "type": "neg" },
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  48)         { "date": "4/14", "amount": "+100", "type": "pos" },
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  49)         { "date": "4/15", "amount": "-18", "type": "neg" },
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  50)         { "date": "4/16", "amount": "+80", "type": "pos" },
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  51)         { "date": "4/17", "amount": "-33", "type": "neg" },
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  52)         { "date": "4/18", "amount": "-7", "type": "neg" }
7291b8ea (xccd              2024-08-31 13:35:51 -0400  53)     ]
7291b8ea (xccd              2024-08-31 13:35:51 -0400  54) 
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  55)     let days_remaining = dateDiff(parseDate(getCurrentDate()), parseDate("12/20/2024"));
7291b8ea (xccd              2024-08-31 13:35:51 -0400  56) 
^087ffe2 (xccd              2024-08-30 11:07:40 -0400  57)     function getLocal() {
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  58)         // document.getElementById('inTotal').focus();
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  59)         document.getElementById('cA').innerHTML = amount;
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  60)         document.getElementById('date').innerHTML = getCurrentDate();
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  61)         document.getElementById('dayRemaing').innerHTML = "\n" + days_remaining
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  62) 
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  63)         let new_item = "";
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  64)         for (let i = 0; i < transaction_list.length; i++){
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  65)             new_item += `
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  66)             <div class="trans_list_item">
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  67)             <p>${transaction_list[i].date}</p>
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  68)             <p style="color:${transaction_list[i].type == "pos" ? "green" : "red"}">${transaction_list[i].amount}</p>
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  69)             <i class="ti ti-trash" style="font-size:1em;color:red"></i>
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  70)             </div>
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  71)             `
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  72)         }
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  73)         document.getElementById('trans_list').innerHTML = new_item
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  74) 
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  75)         //Unused rn (localStorage)
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  76)         if (typeof(Storage) !== "undefined") {
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  77)             for (var i = 0; i < localStorage.length; i++){
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  78)                 console.log("STORAGE:\n")
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  79)                 console.log(localStorage.key(i))
00000000 (Not Committed Yet 2024-08-31 19:06:13 -0400  80)                 // do something with localStorage.getItem(localStorage.key(i));
00000000 (Not Committed Ye