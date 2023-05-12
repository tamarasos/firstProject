
List<Account> allAccount allAccounts = [SELECT Name, Phone, AnnualRevenue FROM Account];
for(Integer each : allAccounts) {
    System.debug('Current value : ' + each);
}
    