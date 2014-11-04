$TTL 900
$ORIGIN dundermifflin.com.
@	1D IN SOA dundermifflin.com hostmaster.dundermifflin.com (
		2014102801 ;
		3H ;
		15 ;
		1w ;
		3h ;
)
dundermifflin.com.		IN	NS	ns1.dundermifflin.com.
ns1.dundermifflin.com.		IN	A	192.168.1.1
router.dundermifflin.com.	IN	A 	100.64.0.18
carriage.dundermifflin.com.	IN	A	100.64.18.2
platen.dundermifflin.com.	IN 	A	100.64.18.3
chase.dundermifflin.com.	IN	A	100.64.18.4
roller.dundermifflin.com.	IN	A	10.21.32.2
saddle.dundermifflin.com.	IN	A	100.64.18.5
