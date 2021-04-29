///////////////////////////////////////////////////////////////////
//
// Name: Namespace and Classes Examples
// Author: Harvey Hill
// Created: 04/28/21
// Updated: 
// Description: Overview of different common namespaces and classes
//              in salesforce.
//
////////////////////////////////////////////////////////////////////

/* Namespaces
// - System
//   - Assert(assert, assertEqual, assertNotEqual), used in test classes.
//   - Debug, used to print to the debug log.
//   - runAs, used as a part of testing restricted user.
// - Schema
//   - SObjectType, used as a part of Apex Security.
//   - DescribeSObjectResult, used as a part of dynamic apex.
*/

/* Classes
// - Database
//   - DML (insert, upsert, update, delete, undelete), used to interact with the database with optional allOrNone.
//   - TCL (rollback, setSavepoint), used to create and roll back to save points.
//   - Query, used in dynamic soql.
// - Limits
//   - getDMLStatements, get number of DML statements in current transaction.
//   - getLimitDMLStatements, get the limit.
//   - getQueries, get number of SOQL queries in current transaction.
//   - getLimitQueries, get the limit.
//   - getSOSLQueries, get number of SOSL queries in current transaction.
//   - getLimitSOSLQueries, get the limit.
// - Search
//   - Query, used for dynamic sosl.
// - Test
//   - StartTest, used for testing ansynchronus code and governor limits 
//   - StopTest, used for testing ansynchronus code and governor limits 
// - UserInfo
//   - getUserId, returns current context user's id.
//   - getProfileId, returns current context user's profile id.
*/


public with sharing class NamespacesAndClassesExample {
    public NamespacesAndClassesExample() {

    }
}
