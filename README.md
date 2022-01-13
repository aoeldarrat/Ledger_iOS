# Ledger iOS

Terms
- Project: Main object, can contain many Items, which in turn contain entries
- Items: Belongs to a project, and contains Entries
- Entry: Belongs to an Item

Description: The ledger app is a simple leder program which allows users to do the following things
- Add multiple Projects (ledgers) to keep track of different Items. i.e 

User 1 Ledger
```
val userLedger = Ledger(
  projects = ListOf(
    Project(
      title: Business, 
      items: ListOf(
        Item(
          title: Account 104
          entries: ListOf(
            Entry(title: payment for work, amount: $1000),
            Entry(title: payment for work2, amount: $100)
          )
      )
    ))

)
```


- Export ledger(s) to pdf & svg

## Priorities
1. Add project
2. Remove project
3. Add Item to project
4. Remove Item
5. Add/edit Entries to Item
6. Remove Entries from Item
7. Export book to pdf

## [Figma](https://www.figma.com/files/recent?fuid=1034173980907354083)



Design tools
- [Dribble](https://dribbble.com/shots/popular/mobile)
- [Mobbin](https://mobbin.design/browse/ios/apps)

## Ledgers
A ledger is a book, a self contained item which serves as a record for book keeping, invoicing, financial balancing, Reciept collection, etc. Inside of each ledger can be one or multiple items or records. 

Example
- User collects all expenses and incomes for a given year. They create a ledger named 2021. Each expense and income is then added the ledger. The user then generates a pdf and exports it to his phone's files to later print.

Pdf brainstorming doc - [Ledger brainstorm - Oct 24, 2021.pdf](https://github.com/aoeldarrat/Ledger_iOS/files/7461890/Ledger.brainstorm.-.Oct.24.2021.pdf)

Basic structure
<img width="1488" alt="Screen Shot 2021-10-24 at 6 55 54 PM" src="https://user-images.githubusercontent.com/39914021/139713075-1560f25f-c7ff-4734-b16c-2395cb979c50.png">


Page structures
<img width="1472" alt="Screen Shot 2021-10-24 at 6 56 13 PM" src="https://user-images.githubusercontent.com/39914021/139713110-b2904a48-0003-4706-ac12-4452c0b6df93.png">

Data structures
<img width="1468" alt="Screen Shot 2021-10-24 at 6 56 23 PM" src="https://user-images.githubusercontent.com/39914021/139713117-192595b1-6eb2-4451-8a77-d9d3c576148c.png">
