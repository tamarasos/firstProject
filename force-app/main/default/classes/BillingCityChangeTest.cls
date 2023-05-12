@isTest
public class BillingCityChangeTest {
  // Test setup method to create 200 accounts and contacts
  @testSetup
  static void setup() {
    List<Account> accList = new List<Account>();
    List<Contact> conList = new List<Contact>();

    for (Integer i = 0; i < 200; i++) {
      Account acc = new Account(Name = 'acc' + i);
      acc.BillingCountry = 'USA';
      acc.BillingState = 'Indiana';
      accList.add(acc);
    }
    insert accList;

    for (Account acc : accList) {
      Contact con = new Contact(
        LastName = acc.Name + 'Contact',
        AccountId = acc.Id
      );
      conList.add(con);
    }
    insert conList;

    for (Account acc : accList) {
      acc.BillingState = 'NY';
    }
    update accList;
  }

  // Test method
  @isTest
  public static void test() {
    Test.startTest();
    BillingCityChange obj = new BillingCityChange();
    Database.executeBatch(obj);
    Test.stopTest();

    // Assert that 200 records have the mailing state set to 'Indiana'
    Integer UpdatedContactCount = [
      SELECT COUNT()
      FROM Contact
      WHERE MailingState = 'NY'
    ];
    System.assertEquals(200, UpdatedContactCount);
  }
}

 