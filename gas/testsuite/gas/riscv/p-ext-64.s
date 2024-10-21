target:
	cls	a0, a1
	clsw	a0, a1
	clz	a0, a1
	clzw	a0, a1
	sext.b	a0, a1
	sext.h	a0, a1
	abs	a0, a1
	absw 	a0, a1
	rev8 	a0, a1
	rev16	a0, a1
	rev	a0, a1
	sh1add	a0, a1, a2
	pack	a0, a1, a2
	min	a0, a1, a2
	max	a0, a1, a2
	minu	a0, a1, a2
	maxu	a0, a1, a2
	pli.b	a0, 3
	pli.h	a0, 10
	pli.w	a0, 31
	pslli.b	a0, a1, 1
	pslli.h	a0, a1, 5
	pslli.w	a0, a1, 31
	psslai.h	a0, a1, 5
	psslai.w	a0, a1, 31
	psext.h.b	a0, a1
	psext.w.b	a0, a1
	psext.w.h	a0, a1
	psabs.b	a0, a1
	psabs.h	a0, a1
	plui.h	a0,0x1f
	plui.w	a0,0x1f
	psll.bs	a0, a1, a2
	psll.hs	a0, a1, a2
	psll.ws	a0, a1, a2
	padd.bs	a0, a1, a2
	padd.hs	a0, a1, a2
	padd.ws	a0, a1, a2
	pssha.hs	a0, a1, a2
	pssha.ws	a0, a1, a2
	sha	a0, a1, a2
	psshar.hs	a0, a1, a2
	psshar.ws	a0, a1, a2
	shar	a0, a1, a2
	psrli.b	a0, a1,1
	psrli.h	a0, a1,15
	psrli.w	a0, a1,31
	pusati.h	a0, a1,15
	pusati.w	a0, a1,31
	usati	a0, a1,31
	psrai.b	a0, a1,7
	psrai.h	a0, a1,15
	psrai.w	a0, a1,31
	psrari.h	a0, a1,15
	psrari.w	a0, a1,31
	srari	a0, a1,63
	psati.h	a0, a1,15
	psati.w	a0, a1,31
	sati	a0, a1,63
	psrl.bs	a0, a1, a2
	psrl.hs	a0, a1, a2
	psrl.ws	a0, a1, a2
	predsum.bs	a0, a1, a2
	predsum.hs	a0, a1, a2
	predsum.ws	a0, a1, a2
	predsumu.bs	a0, a1, a2
	predsumu.hs	a0, a1, a2
	predsumu.ws	a0, a1, a2
	psra.bs	a0, a1, a2
	psra.hs	a0, a1, a2
	psra.ws	a0, a1, a2
	padd.b	a0, a1, a2
	padd.h	a0, a1, a2
	padd.w	a0, a1, a2
	psadd.b	a0, a1, a2
	psadd.h	a0, a1, a2
	psadd.w	a0, a1, a2
	paadd.b	a0, a1, a2
	paadd.h	a0, a1, a2
	paadd.w	a0, a1, a2
	psaddu.b	a0, a1, a2
	psaddu.h	a0, a1, a2
	psaddu.w	a0, a1, a2
	paaddu.b	a0, a1, a2
	paaddu.h	a0, a1, a2
	paaddu.w	a0, a1, a2
	psub.b	a0, a1, a2
	psub.h	a0, a1, a2
	psub.w	a0, a1, a2
	pdif.b	a0, a1, a2
	pdif.h	a0, a1, a2
	pssub.b	a0, a1, a2
	pssub.h	a0, a1, a2
	pssub.w	a0, a1, a2
	pasub.b	a0, a1, a2
	pasub.h	a0, a1, a2
	pasub.w	a0, a1, a2
	pdifu.b	a0, a1, a2
	pdifu.h	a0, a1, a2
	pssubu.b	a0, a1, a2
	pssubu.h	a0, a1, a2
	pssubu.w	a0, a1, a2
	pasubu.b	a0, a1, a2
	pasubu.h	a0, a1, a2
	pasubu.w	a0, a1, a2
	slx	a0, a1, a2
	pmul.h.b01	a0, a1, a2
	pmul.w.h01	a0, a1, a2
	mul.w01	a0, a1, a2
	pmacc.w.h01	a0, a1, a2
	macc.w01	a0, a1, a2
	mvm	a0, a1, a2
	mvmn	a0, a1, a2
	merge	a0, a1, a2
	srx	a0, a1, a2
	pmulu.h.b01	a0, a1, a2
	pmulu.w.h01	a0, a1, a2
	pdifsumu.b	a0, a1, a2
	mulu.w01	a0, a1, a2
	pmaccu.w.h01	a0, a1, a2
	pdifsumau.b	a0, a1, a2
	maccu.w01	a0, a1, a2
	psh1add.h	a0, a1, a2
	psh1add.w	a0, a1, a2
	pssh1sadd.h	a0, a1, a2
	pssh1sadd.w	a0, a1, a2
	zip8p	a0, a1, a2
	zip16p	a0, a1, a2
	zip8hp	a0, a1, a2
	zip16hp	a0, a1, a2
	unzip8p	a0, a1, a2
	unzip16p	a0, a1, a2
	unzip8hp	a0, a1, a2
	unzip16hp	a0, a1, a2
	pmul.h.b00	a0, a1, a2
	pmul.w.h00	a0, a1, a2
	mul.w00	a0, a1, a2
	pmacc.w.h00	a0, a1, a2
	macc.w00	a0, a1, a2
	pmul.h.b11	a0, a1, a2
	pmul.w.h11	a0, a1, a2
	mul.w11	a0, a1, a2
	pmacc.w.h11	a0, a1, a2
	macc.w11	a0, a1, a2
	pmulu.h.b00	a0, a1, a2
	pmulu.w.h00	a0, a1, a2
	mulu.w00	a0, a1, a2
	pmaccu.w.h00	a0, a1, a2
	maccu.w00	a0, a1, a2
	pmulu.h.b11	a0, a1, a2
	pmulu.w.h11	a0, a1, a2
	mulu.w11	a0, a1, a2
	pmaccu.w.h11	a0, a1, a2
	maccu.w11	a0, a1, a2
	pmulsu.h.b00	a0, a1, a2
	pmulsu.w.h00	a0, a1, a2
	mulsu.w00	a0, a1, a2
	pmaccsu.w.h00	a0, a1, a2
	maccsu.w00	a0, a1, a2
	pmulsu.h.b11	a0, a1, a2
	pmulsu.w.h11	a0, a1, a2
	mulsu.w11	a0, a1, a2
	pmaccsu.w.h11	a0, a1, a2
	maccsu.w11	a0, a1, a2
	ppack.h	a0, a1, a2
	ppack.w	a0, a1, a2
	ppackbt.h	a0, a1, a2
	ppackbt.w	a0, a1, a2
	packbt	a0, a1, a2
	ppacktb.h	a0, a1, a2
	ppacktb.w	a0, a1, a2
	packtb	a0, a1, a2
	ppackt.h	a0, a1, a2
	ppackt.w	a0, a1, a2
	packt	a0, a1, a2
	pm2add.h	a0, a1, a2
	pm2add.w	a0, a1, a2
	pm4add.b	a0, a1, a2
	pm4add.h	a0, a1, a2
	pm2adda.h	a0, a1, a2
	pm2adda.w	a0, a1, a2
	pm4adda.b	a0, a1, a2
	pm4adda.h	a0, a1, a2
	pm2add.hx	a0, a1, a2
	pm2add.wx	a0, a1, a2
	pm2adda.hx	a0, a1, a2
	pm2adda.wx	a0, a1, a2
	pm2addu.h	a0, a1, a2
	pm2addu.w	a0, a1, a2
	pm4addu.b	a0, a1, a2
	pm4addu.h	a0, a1, a2
	pm2addau.h	a0, a1, a2
	pm2addau.w	a0, a1, a2
	pm4addau.b	a0, a1, a2
	pm4addau.h	a0, a1, a2
	pmq2add.h	a0, a1, a2
	pmq2add.w	a0, a1, a2
	pmqr2add.h	a0, a1, a2
	pmqr2add.w	a0, a1, a2
	pmq2adda.h	a0, a1, a2
	pmq2adda.w	a0, a1, a2
	pmqr2adda.h	a0, a1, a2
	pmqr2adda.w	a0, a1, a2
	pm2sub.h	a0, a1, a2
	pm2sub.w	a0, a1, a2
	pm2sadd.h	a0, a1, a2
	pm2suba.h	a0, a1, a2
	pm2suba.w	a0, a1, a2
	pm2sub.hx	a0, a1, a2
	pm2sub.wx	a0, a1, a2
	pm2sadd.hx	a0, a1, a2
	pm2suba.hx	a0, a1, a2
	pm2suba.wx	a0, a1, a2
	pm2addsu.h	a0, a1, a2
	pm2addsu.w	a0, a1, a2
	pm4addsu.b	a0, a1, a2
	pm4addsu.h	a0, a1, a2
	pm2addasu.h	a0, a1, a2
	pm2addasu.w	a0, a1, a2
	pm4addasu.b	a0, a1, a2
	pm4addasu.h	a0, a1, a2
	pmqacc.w.h01	a0, a1, a2
	pmqracc.w.h01	a0, a1, a2
	mqacc.w01	a0, a1, a2
	mqracc.w01	a0, a1, a2
	pas.hx	a0, a1, a2
	pas.wx	a0, a1, a2
	psa.hx	a0, a1, a2
	psa.wx	a0, a1, a2
	psas.hx	a0, a1, a2
	psas.wx	a0, a1, a2
	pssa.hx	a0, a1, a2
	pssa.wx	a0, a1, a2
	paas.hx	a0, a1, a2
	paas.wx	a0, a1, a2
	pasa.hx	a0, a1, a2
	pasa.wx	a0, a1, a2
	pmseq.b	a0, a1, a2
	pmseq.h	a0, a1, a2
	pmseq.w	a0, a1, a2
	pmslt.b	a0, a1, a2
	pmslt.h	a0, a1, a2
	pmslt.w	a0, a1, a2
	pmsltu.b	a0, a1, a2
	pmsltu.h	a0, a1, a2
	pmsltu.w	a0, a1, a2
	pmin.b	a0, a1, a2
	pmin.h	a0, a1, a2
	pmin.w	a0, a1, a2
	pminu.b	a0, a1, a2
	pminu.h	a0, a1, a2
	pminu.w	a0, a1, a2
	pmax.b	a0, a1, a2
	pmax.h	a0, a1, a2
	pmax.w	a0, a1, a2
	pmaxu.b	a0, a1, a2
	pmaxu.h	a0, a1, a2
	pmaxu.w	a0, a1, a2
	pmulh.h	a0, a1, a2
	pmulh.w	a0, a1, a2
	pmulhr.h	a0, a1, a2
	pmulhr.w	a0, a1, a2
	pmhacc.h	a0, a1, a2
	pmhacc.w	a0, a1, a2
	pmhracc.h	a0, a1, a2
	pmhracc.w	a0, a1, a2
	pmulhu.h	a0, a1, a2
	pmulhu.w	a0, a1, a2
	pmulhru.h	a0, a1, a2
	pmulhru.w	a0, a1, a2
	pmhaccu.h	a0, a1, a2
	pmhaccu.w	a0, a1, a2
	pmhraccu.h	a0, a1, a2
	pmhraccu.w	a0, a1, a2
	pmulh.h.b0	a0, a1, a2
	pmulh.w.h0	a0, a1, a2
	pmulhsu.h.b0	a0, a1, a2
	pmulhsu.w.h0	a0, a1, a2
	pmhacc.h.b0	a0, a1, a2
	pmhacc.w.h0	a0, a1, a2
	pmhaccsu.h.b0	a0, a1, a2
	pmhaccsu.w.h0	a0, a1, a2
	pmulh.h.b1	a0, a1, a2
	pmulh.w.h1	a0, a1, a2
	pmulhsu.h.b1	a0, a1, a2
	pmulhsu.w.h1	a0, a1, a2
	pmhacc.h.b1	a0, a1, a2
	pmhacc.w.h1	a0, a1, a2
	pmhaccsu.h.b1	a0, a1, a2
	pmhaccsu.w.h1	a0, a1, a2
	pmulhsu.h	a0, a1, a2
	pmulhsu.w	a0, a1, a2
	pmulhrsu.h	a0, a1, a2
	pmulhrsu.w	a0, a1, a2
	pmhaccsu.h	a0, a1, a2
	pmhaccsu.w	a0, a1, a2
	pmhraccsu.h	a0, a1, a2
	pmhraccsu.w	a0, a1, a2
	pmulq.h	a0, a1, a2
	pmulq.w	a0, a1, a2
	pmulqr.h	a0, a1, a2
	pmulqr.w	a0, a1, a2
	pmqacc.w.h00	a0, a1, a2
	pmqacc.w.h11	a0, a1, a2
	pmqracc.w.h00	a0, a1, a2
	pmqracc.w.h11	a0, a1, a2
	mqacc.w00	a0, a1, a2
	mqacc.w11	a0, a1, a2
	mqracc.w00	a0, a1, a2
	mqracc.w11	a0, a1, a2
