# Assign Ruby block to Obj-C native property

Here's a simple example of what appears to be a bug assigning Ruby blocks to Obj-C native properties.

When you click `Set block` a simple Ruby lambda is assigned to a native obj-c property (see `vendor/NativeObject`).

But when you click `Leak block`, the native setter still receives a Proc object instead of nil.

You can see this on the output after clicking `Set Block`

    2013-05-13 00:00:41.622 procmemleak[82240:c07] Setting block to <__NSGlobalBlock__: 0x9631cc0>
    2013-05-13 00:00:41.622 procmemleak[82240:c07] NATIVE OBJECT WITH BLOCK <__NSGlobalBlock__: 0x9631cc0>

And when you click `Leak Block` you see this:

    2013-05-13 00:00:42.251 procmemleak[82240:c07] Setting block to <__NSGlobalBlock__: 0x9632090>
    2013-05-13 00:00:42.252 procmemleak[82240:c07] NATIVE OBJECT WITH BLOCK <__NSGlobalBlock__: 0x9632090>
