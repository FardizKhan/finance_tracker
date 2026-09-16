import 'package:flutter/material.dart';



class AddExpense extends StatefulWidget {
  const AddExpense({super.key});

  @override
  State<AddExpense> createState() => _AddExpenseState();
}

class _AddExpenseState extends State<AddExpense> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Add Expense"),),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Expense',
                  border: OutlineInputBorder(),
                  
                ),
                validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter what the expense was.';
                }
                return null; // Null means there is no error
              },
              ),
              Padding(padding: const EdgeInsets.all(5)),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'Category',
                  border: OutlineInputBorder(),
                  
                ),
                validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter the category.';
                }
                return null; // Null means there is no error
              },
              )
            ],
          )
        ), 
      ),
    );
  }
}