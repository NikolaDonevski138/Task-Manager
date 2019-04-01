import React from 'react';
import ExpenseList from './ExpenseList';
import ExpenseListFilters from './ExpenseListFilters';

const ExpenseDashboardPage = () => (
  <div>
       <div>
     <div className="page-header">
     <div className="content-container">
     <h1 className="page-header__title">Users</h1>
     </div>
     </div>
     
     
      </div>
    <ExpenseListFilters />
    <ExpenseList />
  </div>
);

export default ExpenseDashboardPage;
