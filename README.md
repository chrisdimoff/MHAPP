# Covalent

* Heroku link: http://covalent-beta1.herokuapp.com


I created Covalent for a group of psychology researchers at Portland State University. The entire functionality of the project was built to client specifications, and the UI was entirely my own interpretation of the best way to interact with their desired functionality.

The project was built with Ruby on Rails, PostgreSQL, javascript, and jQuery.

Covalent allows for researchers to create a study and then invite both managers and employees through generated URLs. These URLs contain parameters to auto-associate the manager/employee with that particular study. When employees sign up, they have the additional option of selecting their manager from a dropdown list. This enables the employees to be associated with their managers. Single Table Inheritance (STI) was used to allow for the three different user types (Researcher, Manager, Employee) to have the same basic user functionality while being related to each other in different ways.

Researchers can dynamically create two sets of forms via a sleek jQuery/Ajax interface: Manager Forms and Employee Forms. These forms can have any combination of question types and response options. When the form is created, each question is saved as a record in the Question table with a column indicating the type of question. Each response option is saved (and related to its question) in the Option table. When the form is generated for the participant to fill out, erb/HTML views render the question (with its associated options) in the proper format with the correct form attributes. The researcher then has the ability to create multiple forms and set which form is active for both managers and employees.

When the manager signs in he is presented with his employee's names in a tab list and the active manager form. He fills out the form for each employee via an easy-to-use jQuery/ajax interface by clicking each employee's name. The employee fills out only one copy of the form for their manager. Once the data comes in, the researcher has a few options to analyze it: they can download the data or view it via Covalent's analytics platform.

Covalent provides the ability to download different sets of data to an Excel spreadsheet. Alternatively, they can view every manager entry, for every question on every form, for every employee through a series of easy-to-interpret javascript/ruby graphs. All data viewing is done with jQuery/Ajax.

A major challenge for this project was creating a backend flexible enough to allow for data to be created, stored, and displayed without knowing what the form the data belonged to would look like (due to the forms being created by the researcher). To solve this problem I utilized PostgreSQL's 'JSON' column for entry data records. This gave me the flexibly of JSON objects/noSQL databases like MongoDB, with the associative/relational power of an SQL database. Future plans for this project include building a Rails API with a front-end in React Native to allow for managers and employees to interact with the platform via mobile app.
