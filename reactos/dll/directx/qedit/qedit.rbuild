<?xml version="1.0"?>
<!DOCTYPE module SYSTEM "../../../tools/rbuild/project.dtd">
<group>
<module name="qedit" type="win32dll" baseaddress="${BASEADDRESS_QEDIT}" installbase="system32" installname="qedit.dll" allowwarnings="true">
	<importlibrary definition="qedit.spec.def" />
	<include base="qedit">.</include>
	<define name="WINVER">0x600</define>
	<define name="_WIN32_WINNT">0x600</define>
	<library>advapi32</library>
	<library>kernel32</library>
	<library>ntdll</library>
	<file>qedit.c</file>
	<file>qedit.rc</file>
	<file>qedit.spec</file>
</module>
</group>