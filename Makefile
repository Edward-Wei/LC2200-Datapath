dp-design: logisim-generic-2.7.1.jar datapath.circ
	java -jar logisim-generic-2.7.1.jar datapath.circ

translate: MICOCompiler.jar microcode.xml
	java -jar MICOCompiler.jar -in microcode.xml
