target:
	cls	a0, a1
	clz	a0, a1
	sext.b	a0, a1
	sext.h	a0, a1
	abs	a0, a1
	rev8 	a0, a1
	rev	a0, a1
	sh1add	a0, a1, a2
	pack	a0, a1, a2
	min	a0, a1, a2
	max	a0, a1, a2
	minu	a0, a1, a2
	maxu	a0, a1, a2
	pli.b	a0, 3
	pli.h	a0, 10
	pslli.b	a0, a1, 1
	pslli.h	a0, a1, 5
	sslai	a0, a1, 5
	psslai.h	a0, a1, 5
	psext.h.b	a0, a1
	psabs.b	a0, a1
	psabs.h	a0, a1
	plui.h	a0,0x1f
	psll.bs	a0, a1, a2
	psll.hs	a0, a1, a2
	padd.bs	a0, a1, a2
	padd.hs	a0, a1, a2
	ssha	a0, a1, a2
	pssha.hs	a0, a1, a2
	psshar.hs	a0, a1, a2
	sshar	a0, a1, a2
	psrli.b	a0, a1,1
	psrli.h	a0, a1,15
	pusati.h	a0, a1,15
	usati	a0, a1,31
	psrai.b	a0, a1,7
	psrai.h	a0, a1,15
	psrari.h	a0, a1,15
	srari	a0, a1,31
	psati.h	a0, a1,15
	sati	a0, a1,31
	psrl.bs	a0, a1, a2
	psrl.hs	a0, a1, a2
	predsum.bs	a0, a1, a2
	predsum.hs	a0, a1, a2
	predsumu.bs	a0, a1, a2
	predsumu.hs	a0, a1, a2
	psra.bs	a0, a1, a2
	psra.hs	a0, a1, a2
	padd.b	a0, a1, a2
	padd.h	a0, a1, a2
	sadd	a0, a1, a2
	psadd.b	a0, a1, a2
	psadd.h	a0, a1, a2
	aadd	a0, a1, a2
	paadd.b	a0, a1, a2
	paadd.h	a0, a1, a2
	saddu	a0, a1, a2
	psaddu.b	a0, a1, a2
	psaddu.h	a0, a1, a2
	aaddu	a0, a1, a2
	paaddu.b	a0, a1, a2
	paaddu.h	a0, a1, a2
	psub.b	a0, a1, a2
	psub.h	a0, a1, a2
	pdif.b	a0, a1, a2
	pdif.h	a0, a1, a2
	ssub	a0, a1, a2
	pssub.b	a0, a1, a2
	pssub.h	a0, a1, a2
	asub	a0, a1, a2
	pasub.b	a0, a1, a2
	pasub.h	a0, a1, a2
	pdifu.b	a0, a1, a2
	pdifu.h	a0, a1, a2
	ssubu	a0, a1, a2
	pssubu.b	a0, a1, a2
	pssubu.h	a0, a1, a2
	asubu	a0, a1, a2
	pasubu.b	a0, a1, a2
	pasubu.h	a0, a1, a2
	slx	a0, a1, a2
	pmul.h.b01	a0, a1, a2
	mul.h01	a0, a1, a2
	macc.h01	a0, a1, a2
	mvm	a0, a1, a2
	mvmn	a0, a1, a2
	merge	a0, a1, a2
	srx	a0, a1, a2
	pmulu.h.b01	a0, a1, a2
	pdifsumu.b	a0, a1, a2
	mulu.h01	a0, a1, a2
	pdifsumau.b	a0, a1, a2
	maccu.h01	a0, a1, a2
	psh1add.h	a0, a1, a2
	pssh1sadd.h	a0, a1, a2
	ssh1sadd	a0, a1, a2
	pmul.h.b00	a0, a1, a2
	mul.h00	a0, a1, a2
	macc.h00	a0, a1, a2
	pmul.h.b11	a0, a1, a2
	mul.h11	a0, a1, a2
	macc.h11	a0, a1, a2
	pmulu.h.b00	a0, a1, a2
	mulu.h00	a0, a1, a2
	maccu.h00	a0, a1, a2
	pmulu.h.b11	a0, a1, a2
	mulu.h11	a0, a1, a2
	maccu.h11	a0, a1, a2
	pmulsu.h.b00	a0, a1, a2
	mulsu.h00	a0, a1, a2
	maccsu.h00	a0, a1, a2
	pmulsu.h.b11	a0, a1, a2
	mulsu.h11	a0, a1, a2
	maccsu.h11	a0, a1, a2
	ppack.h	a0, a1, a2
	ppackbt.h	a0, a1, a2
	packbt	a0, a1, a2
	ppacktb.h	a0, a1, a2
	packtb	a0, a1, a2
	ppackt.h	a0, a1, a2
	packt	a0, a1, a2
	pm2add.h	a0, a1, a2
	pm4add.b	a0, a1, a2
	pm2adda.h	a0, a1, a2
	pm4adda.b	a0, a1, a2
	pm2add.hx	a0, a1, a2
	pm2adda.hx	a0, a1, a2
	pm2addu.h	a0, a1, a2
	pm4addu.b	a0, a1, a2
	pm2addau.h	a0, a1, a2
	pm4addau.b	a0, a1, a2
	pmq2add.h	a0, a1, a2
	pmqr2add.h	a0, a1, a2
	pmq2adda.h	a0, a1, a2
	pmqr2adda.h	a0, a1, a2
	pm2sub.h	a0, a1, a2
	pm2sadd.h	a0, a1, a2
	pm2suba.h	a0, a1, a2
	pm2sub.hx	a0, a1, a2
	pm2sadd.hx	a0, a1, a2
	pm2suba.hx	a0, a1, a2
	pm2addsu.h	a0, a1, a2
	pm4addsu.b	a0, a1, a2
	pm2addasu.h	a0, a1, a2
	pm4addasu.b	a0, a1, a2
	mqacc.h01	a0, a1, a2
	mqracc.h01	a0, a1, a2
	pas.hx	a0, a1, a2
	psa.hx	a0, a1, a2
	psas.hx	a0, a1, a2
	pssa.hx	a0, a1, a2
	paas.hx	a0, a1, a2
	pasa.hx	a0, a1, a2
	pmseq.b	a0, a1, a2
	pmseq.h	a0, a1, a2
	mseq	a0, a1, a2
	pmslt.b	a0, a1, a2
	pmslt.h	a0, a1, a2
	mslt	a0, a1, a2
	pmsltu.b	a0, a1, a2
	pmsltu.h	a0, a1, a2
	msltu	a0, a1, a2
	pmin.b	a0, a1, a2
	pmin.h	a0, a1, a2
	pminu.b	a0, a1, a2
	pminu.h	a0, a1, a2
	pmax.b	a0, a1, a2
	pmax.h	a0, a1, a2
	pmaxu.b	a0, a1, a2
	pmaxu.h	a0, a1, a2
	pmulh.h	a0, a1, a2
	pmulhr.h	a0, a1, a2
	mulhr	a0, a1, a2
	pmhacc.h	a0, a1, a2
	mhacc	a0, a1, a2
	pmhracc.h	a0, a1, a2
	mhracc	a0, a1, a2
	pmulhu.h	a0, a1, a2
	pmulhru.h	a0, a1, a2
	mulhru	a0, a1, a2
	pmhaccu.h	a0, a1, a2
	mhaccu	a0, a1, a2
	pmhraccu.h	a0, a1, a2
	mhraccu	a0, a1, a2
	pmulh.h.b0	a0, a1, a2
	mulh.h0	a0, a1, a2
	pmulhsu.h.b0	a0, a1, a2
	mulhsu.h0	a0, a1, a2
	pmhacc.h.b0	a0, a1, a2
	mhacc.h0	a0, a1, a2
	pmhaccsu.h.b0	a0, a1, a2
	mhaccsu.h0	a0, a1, a2
	pmulh.h.b1	a0, a1, a2
	mulh.h1	a0, a1, a2
	pmulhsu.h.b1	a0, a1, a2
	mulhsu.h1	a0, a1, a2
	pmhacc.h.b1	a0, a1, a2
	mhacc.h1	a0, a1, a2
	pmhaccsu.h.b1	a0, a1, a2
	mhaccsu.h1	a0, a1, a2
	pmulhsu.h	a0, a1, a2
	pmulhrsu.h	a0, a1, a2
	mulhrsu	a0, a1, a2
	pmhaccsu.h	a0, a1, a2
	mhaccsu	a0, a1, a2
	pmhraccsu.h	a0, a1, a2
	mhraccsu	a0, a1, a2
	pmulq.h	a0, a1, a2
	mulq	a0, a1, a2
	pmulqr.h	a0, a1, a2
	mulqr	a0, a1, a2
	mqacc.h00	a0, a1, a2
	mqacc.h11	a0, a1, a2
	mqracc.h00	a0, a1, a2
	mqracc.h11	a0, a1, a2
