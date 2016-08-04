;
; BIND data file for local loopback interface
;
$TTL	604800
@	IN	SOA	ns1.nyc3.example.com. admin.nyc3.example.com. (
			      3		; Serial
			 604800		; Refresh
			  86400		; Retry
			2419200		; Expire
			 604800 )	; Negative Cache TTL
;
@	IN	NS ns1.nyc3.exmaple.com.	
@	IN	A	127.0.0.1
@	IN	AAAA	::1


ns1.nyc3.example.com.          IN      A       192.168.56.10
ns2.nyc3.example.com.          IN      A       192.168.56.20

; 10.128.0.0/16 - A records
host1.nyc3.example.com.        IN      A      192.168.56.10
host2.nyc3.example.com.        IN      A      192.168.56.20


$ORIGIN test.nyc3.example.com.
*	IN	A	192.168.56.29
$ORIGIN test1.nyc3.example.com.
*	IN	A	192.168.56.19
