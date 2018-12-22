#!/usr/bin/lua
--[[!
 @package   SoundCUT
 @filename  init.lua
 @version   1.0
 @autor     Diaz Urbaneja Victor Eduardo Diex <diaz.victor@openmailbox.org>
 @date      19.06.2018 16:50:56 -04
]]--

-- declaro mis variables globales

require('lib.middleclass') -- la libreria middleclass me da soporte a OOP

lgi = require('lgi') -- requiero esta libreria para que me permitira usar GTK

GObject = lgi.GObject -- parte de lgi

GLib = lgi.GLib -- para el treeview

Gtk = lgi.require('Gtk', '3.0') -- el objeto GTK

assert = lgi.assert
builder = Gtk.Builder()

assert(builder:add_from_file('main.ui'),"error al cargar el archivo") -- hago un debugger, si este archivo existe (true) enlaso el archivo ejemplo.ui, si no existe (false) imprimo un error
ui = builder.objects