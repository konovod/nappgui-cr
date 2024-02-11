require "./libGUI"

@[Link("#{__DIR__}/../../osapp")]
lib LibGUI
  fun osapp_finish
  fun osapp_task_imp(data : Void*, updtime : Float32, func_task_main : FPtrTaskMain, func_task_update : FPtrTaskUpdate, func_task_end : FPtrTaskEnd)
  alias FPtrTaskMain = (Void* -> UInt32)
  alias FPtrTaskUpdate = (Void** -> Void)
  alias FPtrTaskEnd = (Void*, UInt32 -> Void)
  fun osapp_menubar(menu : Menu, window : Window)
  fun osapp_open_url(url : CharT*)
  fun osmain_imp(argc : UInt32, argv : CharT**, instance : Void*, lframe : Float64, func_create : FPtrAppCreate, func_update : FPtrAppUpdate, func_destroy : FPtrDestroy, options : CharT*)
  alias FPtrAppCreate = ( -> Void)
  alias FPtrAppUpdate = (Void*, Float64, Float64 -> Void)
end
