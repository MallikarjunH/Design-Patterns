//Project Reference - https://www.youtube.com/watch?v=IIFWcBEWYK4&list=PLb5R4QC2DtFs8CsVZztGSJ0TM8J2URfg7&index=2

MVVM - Model View ViewModel

Model - This layer contains request and response object in the API calls
View - UI Portion - It deals with UI layer in the application. (UIView or UIViewControllers)
ViewModel - It deals with Business Logic, Validations, API calls, database operations, data binding


MVVM using Delegate Protocol Patterns - Using this approach we can transfer the data from ViewModel to the View

// Requirements for this sample MVVM application

1. User will login into the app by entering user email and password
2. On successful login, user will see the employee list

//Rules of MVVM

1. ViewModel should not have an reference to UIKit framework. (UITableViewController, UIlabel anything which starts or enherits from UIView)

2. View and Model should not have any business or validation logic



