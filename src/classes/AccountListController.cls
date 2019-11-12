public class AccountListController
{
	public List<Account> getAccounts()
    {
        ApexPages.StandardSetController controller = new ApexPages.StandardSetController(Database.getQueryLocator([SELECT Id FROM Account]));
        return controller.getRecords();
    }
}