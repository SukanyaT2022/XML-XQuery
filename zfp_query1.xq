

(: 
   New Perspectives on XML, 3rd Edition
   Tutorial 9
   Additional Case Problem

   Query to display summary information about orders from
   The Zocalo Fire Pit.

   Author:     TS
   Date:       April 7 2022

   Filename:   zfp_query1.xq

 :)

xquery version "1.0";

<results>{
for $c in doc('zfpcustomers.xml')//customer
for $o in doc('zfporders.xml')//order
let $total : = sum($o/product/(@qty*@price))
where $total >= 200


and $o/custID=$c/customer/@custID
order by $total descending
 return
 <members>
 <orderTotal> 
 {
concat("$", round-half-to-even(total,2))

 }
 </orderTatal>
 <member>
 {
     $c/customer
 }
 </member></members>






}</results>