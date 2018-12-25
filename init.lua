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

-- declaro los objetos

local main_window = ui.main_window -- invoco la ventana con el id main_window
local about_window = ui.about_window -- invoco la ventana con el id about_window

local button_about = builder:get_object('btn_about') -- invoco al boton con el id btn_about
local button_save = builder:get_object('btn_save') -- invoco al boton con el id btn_save
local button_cancel = builder:get_object('btn_cancel') -- invoco al boton con el id btn_cancel

local file_load = builder:get_object('file_load') -- invoco al boton con el id file_load
local file_save = builder:get_object('file_save') -- invoco al boton con el id file_save

local input_desde = builder:get_object('input_desde') -- invoco al boton con el id input_desde
local input_hasta = builder:get_object('input_hasta') -- invoco al boton con el id input_hasta
