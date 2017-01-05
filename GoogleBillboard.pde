public final static String e = "2.718281828459045235360287471352662497757247093699959574966967627724076630353547594571382178525166427427466391932003059";  
private String digits;
private double dNum;
private double pNum;
public void setup()  
{
    noLoop();  
}  
public void draw()  
{   
	for(int i = 2; i < e.length() - 10; i = i + 1){
		digits = e.substring(i, i + 10);
		dNum = Double.parseDouble(digits);
		if(isPrime(dNum) == true){
			pNum = dNum;
		}
	}
	System.out.println(pNum);
}  
public boolean isPrime(double dNum)  
{   
    if(dNum < 2){
    	return false;
    }
    for(int i = 2; i <= Math.sqrt(dNum); i = i + 1){
    	if(dNum % i == 0){
    		return false;
    	}
    }
    return true;  
} 