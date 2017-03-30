select Name, Count(*)
From Department
Group By Name
Having Count(*) > 1
Order By 1