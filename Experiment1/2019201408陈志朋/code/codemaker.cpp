#include <bits/stdc++.h>
using namespace std;

void get_g(int i) {
	cout <<"(a[" <<i <<"]" <<" & " <<"b[" <<i <<"])";
}

void get_p(int i) {
	cout <<"(a[" <<i <<"]" <<" ^ " <<"b[" <<i <<"])";
}

string t[32];

string its(int i) {
    if (i == 0) return "0";
    string s = "";
    while (i) {
        s = char(i % 10 + '0') + s;
        i /= 10;
    }
    return s;
}

int main () {
	freopen ("code.txt", "w", stdout);
	
	cout <<"assign c0 = 0;" <<endl;
	
	for (int i = 0; i <= 31; ++i) {
		t[i] = "";
		cout <<"assign sum[" <<i <<"]" <<" = ";
		get_p(i);
		cout <<" ^ ";
		if (i == 0) cout <<"c0;" <<endl;
		else cout <<"(" <<t[i - 1] <<")" <<";" <<endl;
		
		for (int j = i; j >= 0; --j) {
			t[i] = t[i] + "(";
			
			for (int k = i; k >= j + 1; --k) {
				t[i] = t[i] + "(a[" + its(k) + "]" + " ^ " + "b[" + its(k) + "])";
				
				t[i] = t[i] + " & ";
			}
			
			t[i] = t[i] + "(a[" + its(j) + "]" + " & " + "b[" + its(j) + "])";
			
			t[i] = t[i] + ")" + " | ";
		}
		t[i] = t[i] + "(";
		
		for (int j = i; j >= 0; --j) {
			t[i] = t[i] + "(a[" + its(j) + "]" + " ^ " + "b[" + its(j) + "])";
			
			t[i] = t[i] + " & ";
		}
		t[i] = t[i] + "c0" + ")"; 
	}
	
	return 0;
}
