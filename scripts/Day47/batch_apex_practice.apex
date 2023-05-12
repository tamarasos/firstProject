//List<Opportunity> myOpps= Utils.getManyOpps('Batch Opp', 500, true);
//System.debug('myOpps value is : ' + myOpps.size());
//Utils.getOneOpportunity('bla', true);

//delete [Select Id From Lead WHERE CreatedDate = TODAY] ;

OverdueOppProcessor ovp = new OverdueOppProcessor(); 
//Database.executeBatch(ovp, 150);  // 500/150  150-150-150-50

Database.executeBatch(ovp, 100);