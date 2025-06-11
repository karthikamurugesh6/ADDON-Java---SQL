package program;

class SbiAcc {
	private String Accholder;
	private int Balance;
	SbiAcc(String Accholder , int Balance){
		this.Accholder=Accholder;
		this.Balance=Balance;
	}
	public String getAccholder() {
		return Accholder;
	}
	public int getBalance() {
		return Balance;
	}
	public void Deposit(int dep) {
		if(Balance > 0) {
			Balance +=dep;
			System.out.println("Deposited Amount:"+dep);
			System.out.println("Available Balance:"+Balance);
		}
	}
	public void setAccholder(String Accholder) {
		this.Accholder=Accholder;
	}
	public void setWithdraw(int withdraw) {
		Balance -= withdraw;
		System.out.println("withdraw Amount:"+withdraw);
	}

}
public class BankDetails {
	
	public static void main(String[] args) {
		SbiAcc ref=new SbiAcc("luffy",2000);
		System.out.println("Account holder Name:"+ref.getAccholder());
		ref.setAccholder("Karthika");
		System.out.println("update account holder:"+ref.getAccholder());
		System.out.println("Balance:"+ref.getBalance());
		ref.Deposit(5000);
		ref.setWithdraw(200);
		//System.out.println(ref.setWithdraw());
        System.out.println("Available Balance:"+ref.getBalance());		
	  }
	}
