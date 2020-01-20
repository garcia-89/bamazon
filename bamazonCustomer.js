var mysql = require('mysql');
var Table = require('cli-table2');
var inquirer = require('inquirer');


var connection = mysql.createConnection({
    host: 'localhost',
    port: 8889,
    user: 'root',
    password: '',
    database: 'bamazon'
});

connection.connect(function(err){
	if(err)throw err;
	console.log("connected as id" + connection.threadId);
});

var displayProducts = function(){
	var query = "Select * FROM products";
	connection.query(query, function(err, res){
		if(err) throw err;
		var displayTable = new Table ({
			head: ["Item ID", "Product Name", "Catergory", "Price", "Quantity"],
			colWidths: [10,25,25,10,14]
		});
		for(var i = 0; i < res.length; i++){
			displayTable.push(
				[res[i].ItemID,res[i].ProductName, res[i].DepartmentName, res[i].Price, res[i].StockQuantity]
				);
		}
		console.log(displayTable.toString());
		purchasePrompt();
	});
}

function purchasePrompt(){
	inquirer.prompt([
	{
		name: "ItemID",
		type: "input",
		message:"Please enter Item ID you would like to purhcase.",
		filter:Number
	},
	{
		name:"Quantity",
		type:"input",
		message:"How many items would you like to purchase?",
		filter:Number
	},

 ]).then(function(answers){
 	var quantityNeeded = answers.Quantity;
 	var IDrequested = answers.ItemID;
 	purchaseOrder(IDrequested, quantityNeeded);
 });
};

function purchaseOrder(ID, amtNeeded){
	connection.query('Select * FROM products WHERE ItemID = ' + ID, function(err,res){
		if(err){console.log(err)};
		if(amtNeeded <= res[0].StockQuantity){
			var totalCost = res[0].Price * amtNeeded;
			var quantityLeft = res[0].StockQuantity - amtNeeded;
			console.log("Your total cost for " + amtNeeded + " " +res[0].ProductName + " is " + totalCost + " Thank you!");
			console.log("Inventory updated. There are  " + quantityLeft + " left")

			connection.query("UPDATE products SET StockQuantity = StockQuantity - " + amtNeeded + "WHERE ItemID = " + ID);
		} else{
			console.log("Insufficient quantity, sorry we do not have enough " + res[0].product_name + "to complete your order.");
		};
		displayProducts();
	});
};

displayProducts(); 
