const ll N=200000+6;
bool isPrime[N];
void sieve(){
    fill(isPrime,isPrime+N,1);
    isPrime[0]=isPrime[1]=0;
    for (ll i=2; i*i<N;++i) {
        if (isPrime[i]) {
            for (ll j=i*i;j<N;j+=i) isPrime[j]=0;
        }
    }
}

vl divi(ll n) {
    vl divisors;
    for (ll i = 1; i <= sqrt(n); i++) {
        if (n % i == 0) {
            divisors.pb(i); 
            if (i != n / i) divisors.pb(n / i);
        }
    }
    sort(all(divisors));
    return divisors;
}
