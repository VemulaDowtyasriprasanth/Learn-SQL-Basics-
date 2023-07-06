-- How may invoices are billed on May 22,2010?



SELECT InvoiceDate


FROM Invoice

WHERE
  Date(InvoiceDate) = '2010-05-22'
