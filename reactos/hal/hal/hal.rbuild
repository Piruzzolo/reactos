<?xml version="1.0"?>
<!DOCTYPE group SYSTEM "../../tools/rbuild/project.dtd">
<group>
	<module name="hal" type="kernelmodedll">
		<importlibrary definition="hal_$(ARCH).def" />
		<include base="ntoskrnl">include</include>
		<library>ntoskrnl</library>
		<define name="_NTHAL_" />
		<linkerflag>-enable-stdcall-fixup</linkerflag>
		<file>hal.c</file>
		<file>hal.rc</file>
	</module>
	<if property="ARCH" value="i386">
		<module ifnot="false" name="halupalias" type="alias" installbase="system32" installname="hal.dll" aliasof="halup">
		</module>
		<module if="false" name="halmpalias" type="alias" installbase="system32" installname="hal.dll" aliasof="halmp">
		</module>
	</if>
	<if property="ARCH" value="powerpc">
		<module name="halupalias" type="alias" installbase="system32" installname="hal.dll" aliasof="halppc_up"/>
	</if>
</group>
