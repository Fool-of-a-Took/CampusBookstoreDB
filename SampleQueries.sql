-- Find the total number of feedbacks per book. Show book id, book title, and total number of feedbacks per book.
select b.BookID, b.Title, count(f.FeedbackID) as NumberOfFeedbacks
from Feedback f
join Book b on f.BookID=b.BookID
group by b.BookID, b.Title;

-- Find the total number of feedback per member. Show member id, member name, and total number of feedbacks per member.
select m.MemberID, m.FirstName, m.LastName, count(f.FeedbackID) as NumberOfFeedbacks
from Feedback f
join Member m on f.MemberID=m.MemberID
group by m.MemberID, m.FirstName, m.LastName;

-- Find the total number of book published by each publisher. Show publisher id, publisher name, and number of book published.
select p.PublisherID, p.Name, count(b.BookID) as NumberOfBooks
from Publisher p, Book b
where p.PublisherID=b.PublisherID
group by p.PublisherID, p.Name;

-- Find the total number of book for each category. Show category id, category name, and number of book for each category.
select c.CategoryID, c.Name, count(b.BookID) as NumberOfBooks
from Category c, Book b
where c.CategoryID=b.CategoryID
group by c.CategoryID, c.Name

-- From the book table, list the books where quantity is more than the average quantity of all books. 
select * from Book
where InStock>(select AVG(InStock) from Book)

-- Find the total number of books ordered by store manager from various publishers.
select p.Name, sum(bpo.OrderQuantity) as TotalBooksOrdered, m.Name as OrderedBy
from Book_PurchaseOrder bpo, Purchase_Order po, Publisher p, Bookstore_Manager m
where bpo.PurchaseOrderID=po.PurchaseOrderID and po.PublisherID=p.PublisherID
Group by p.Name, m.Name

-- Produce a record of invoices for various publishers. The invoice consists of invoice number, invoice date, publisher’s names & addresses, total quantity of ordered books and total amount to be paid.
select i.InvoiceID, i.Date, p.Name as Publisher, p.PrintedIn as Address, sum(bpo.OrderQuantity) as OrderQuantity, i.TotalAmount
from Invoice i, Publisher p, Book_PurchaseOrder bpo, Purchase_Order po
where i.PublisherID=p.PublisherID and i.PurchaseOrderID=po.PurchaseOrderID and po.PurchaseOrderID=bpo.PurchaseOrderID
Group by i.InvoiceID, i.Date, p.Name, p.PrintedIn, i.TotalAmount

-- Show the total customers based on gender who are registered as members in CampusBookstore. 
select * from Member
order by gender ASC

-- A list of purchased books that have not been delivered to members. 
select m.MemberID, m.Address, m.Number, b.BookID, b.Title, bso.Quantity, so.OrderDate, so.DeliveryStatus
from Member m, Book b, Sales_Order so, Book_SalesOrder bso
where so.MemberID=m.MemberID and so.SalesOrderID=bso.SalesOrderID and bso.BookID=b.BookID
and so.DeliveryStatus='In-transit'

-- Show the members who made more than 2 orders.
select m.MemberID, m.FirstName, m.LastName, m.Number, b.BookID, b.Title, bso.Quantity, so.OrderDate, so.DeliveryStatus
from Member m, Book b, Sales_Order so, Book_SalesOrder bso
where so.MemberID=m.MemberID and so.SalesOrderID=bso.SalesOrderID and bso.BookID=b.BookID and bso.Quantity>2