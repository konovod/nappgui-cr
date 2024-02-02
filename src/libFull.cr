@[Link("#{__DIR__}/../gui")]
@[Link("#{__DIR__}/../osapp")]
@[Link("#{__DIR__}/../core")]
lib LibGUI
  UNIX             =    1
  LINUX            =    1
  KKEY_MAX         =  112
  KTEXTFILTER_SIZE = 1024
  fun sewer_start
  fun sewer_finish
  fun blib_strlen(str : CharT*) : Uint32T
  alias CharT = LibC::Char
  alias X__Uint32T = LibC::UInt
  alias Uint32T = X__Uint32T
  fun blib_strstr(str : CharT*, substr : CharT*) : CharT*
  fun blib_strcpy(dest : CharT*, size : Uint32T, src : CharT*)
  fun blib_strncpy(dest : CharT*, size : Uint32T, src : CharT*, n : Uint32T)
  fun blib_strcat(dest : CharT*, size : Uint32T, src : CharT*)
  fun blib_strcmp(str1 : CharT*, str2 : CharT*) : LibC::Int
  fun blib_strncmp(str1 : CharT*, str2 : CharT*, n : Uint32T) : LibC::Int
  fun blib_strtol(str : CharT*, endptr : CharT**, base : Uint32T, err : BoolT*) : Int64T
  alias BoolT = LibC::Char
  alias X__Int64T = LibC::Long
  alias Int64T = X__Int64T
  fun blib_strtoul(str : CharT*, endptr : CharT**, base : Uint32T, err : BoolT*) : Uint64T
  alias X__Uint64T = LibC::ULong
  alias Uint64T = X__Uint64T
  fun blib_strtof(str : CharT*, endptr : CharT**, err : BoolT*) : Real32T
  alias Real32T = LibC::Float
  fun blib_strtod(str : CharT*, endptr : CharT**, err : BoolT*) : Real64T
  alias Real64T = LibC::Double
  fun blib_qsort(array : ByteT*, nelems : Uint32T, size : Uint32T, func_compare : FPtrCompare)
  alias ByteT = UInt8
  alias FPtrCompare = (Void*, Void* -> LibC::Int)
  fun blib_qsort_ex(array : ByteT*, nelems : Uint32T, size : Uint32T, func_compare : FPtrCompareEx, data : ByteT*)
  alias FPtrCompareEx = (Void*, Void*, Void* -> LibC::Int)
  fun blib_bsearch(array : ByteT*, key : ByteT*, nelems : Uint32T, size : Uint32T, func_compare : FPtrCompare, pos : Uint32T*) : BoolT
  fun blib_bsearch_ex(array : ByteT*, key : ByteT*, nelems : Uint32T, size : Uint32T, func_compare : FPtrCompareEx, data : ByteT*, pos : Uint32T*) : BoolT
  fun blib_atexit(func : (-> Void))
  fun blib_abort
  fun blib_debug_break
  fun bmath_cosf(angle : Real32T) : Real32T
  fun bmath_cosd(angle : Real64T) : Real64T
  fun bmath_sinf(angle : Real32T) : Real32T
  fun bmath_sind(angle : Real64T) : Real64T
  fun bmath_tanf(angle : Real32T) : Real32T
  fun bmath_tand(angle : Real64T) : Real64T
  fun bmath_acosf(cos : Real32T) : Real32T
  fun bmath_acosd(cos : Real64T) : Real64T
  fun bmath_asinf(sin : Real32T) : Real32T
  fun bmath_asind(sin : Real64T) : Real64T
  fun bmath_atan2f(y : Real32T, x : Real32T) : Real32T
  fun bmath_atan2d(y : Real64T, x : Real64T) : Real64T
  fun bmath_norm_anglef(a : Real32T) : Real32T
  fun bmath_norm_angled(a : Real64T) : Real64T
  fun bmath_sqrtf(value : Real32T) : Real32T
  fun bmath_sqrtd(value : Real64T) : Real64T
  fun bmath_isqrtf(value : Real32T) : Real32T
  fun bmath_isqrtd(value : Real64T) : Real64T
  fun bmath_logf(value : Real32T) : Real32T
  fun bmath_logd(value : Real64T) : Real64T
  fun bmath_log10f(value : Real32T) : Real32T
  fun bmath_log10d(value : Real64T) : Real64T
  fun bmath_expf(value : Real32T) : Real32T
  fun bmath_expd(value : Real64T) : Real64T
  fun bmath_powf(base : Real32T, exponent : Real32T) : Real32T
  fun bmath_powd(base : Real64T, exponent : Real64T) : Real64T
  fun bmath_absf(value : Real32T) : Real32T
  fun bmath_absd(value : Real64T) : Real64T
  fun bmath_maxf(value1 : Real32T, value2 : Real32T) : Real32T
  fun bmath_maxd(value1 : Real64T, value2 : Real64T) : Real64T
  fun bmath_minf(value1 : Real32T, value2 : Real32T) : Real32T
  fun bmath_mind(value1 : Real64T, value2 : Real64T) : Real64T
  fun bmath_clampf(value : Real32T, min : Real32T, max : Real32T) : Real32T
  fun bmath_clampd(value : Real64T, min : Real64T, max : Real64T) : Real64T
  fun bmath_modf(num : Real32T, den : Real32T) : Real32T
  fun bmath_modd(num : Real64T, den : Real64T) : Real64T
  fun bmath_modff(value : Real32T, intpart : Real32T*) : Real32T
  fun bmath_modfd(value : Real64T, intpart : Real64T*) : Real64T
  fun bmath_precf(value : Real32T) : Uint32T
  fun bmath_precd(value : Real64T) : Uint32T
  fun bmath_roundf(value : Real32T) : Real32T
  fun bmath_roundd(value : Real64T) : Real64T
  fun bmath_round_stepf(value : Real32T, step : Real32T) : Real32T
  fun bmath_round_stepd(value : Real64T, step : Real64T) : Real64T
  fun bmath_floorf(value : Real32T) : Real32T
  fun bmath_floord(value : Real64T) : Real64T
  fun bmath_ceilf(value : Real32T) : Real32T
  fun bmath_ceild(value : Real64T) : Real64T
  fun bmath_rand_seed(seed : Uint32T)
  fun bmath_randf(from : Real32T, to : Real32T) : Real32T
  fun bmath_randd(from : Real64T, to : Real64T) : Real64T
  fun bmath_randi(from : Uint32T, to : Uint32T) : Uint32T
  fun bmath_rand_env(seed : Uint32T) : REnv
  type REnv = Void*
  fun bmath_rand_destroy(env : REnv*)
  fun bmath_rand_mtf(env : REnv, from : Real32T, to : Real32T) : Real32T
  fun bmath_rand_mtd(env : REnv, from : Real64T, to : Real64T) : Real64T
  fun bmath_rand_mti(env : REnv, from : Uint32T, to : Uint32T) : Uint32T
  fun bmem_aligned_malloc(size : Uint32T, align : Uint32T) : ByteT*
  fun bmem_aligned_realloc(mem : ByteT*, size : Uint32T, new_size : Uint32T, align : Uint32T) : ByteT*
  fun bmem_free(mem : ByteT*)
  fun bmem_set1(dest : ByteT*, size : Uint32T, mask : ByteT)
  fun bmem_set4(dest : ByteT*, size : Uint32T, mask : ByteT*)
  fun bmem_set8(dest : ByteT*, size : Uint32T, mask : ByteT*)
  fun bmem_set16(dest : ByteT*, size : Uint32T, mask : ByteT*)
  fun bmem_cmp(mem1 : ByteT*, mem2 : ByteT*, size : Uint32T) : LibC::Int
  fun bmem_is_zero(mem : ByteT*, size : Uint32T) : BoolT
  fun bmem_set_zero(dest : ByteT*, size : Uint32T)
  fun bmem_copy(dest : ByteT*, src : ByteT*, size : Uint32T)
  fun bmem_move(dest : ByteT*, src : ByteT*, size : Uint32T)
  fun bmem_overlaps(mem1 : ByteT*, mem2 : ByteT*, size1 : Uint32T, size2 : Uint32T) : BoolT
  fun bmem_rev(mem : ByteT*, size : Uint32T)
  fun bmem_rev2(mem : ByteT*)
  fun bmem_rev4(mem : ByteT*)
  fun bmem_rev8(mem : ByteT*)
  fun bmem_revcopy(dest : ByteT*, src : ByteT*, size : Uint32T)
  fun bmem_rev_elems_imp(data : ByteT*, num_elems : Uint32T, elem_size : Uint32T)
  fun bmem_swap(mem1 : ByteT*, mem2 : ByteT*, size : Uint32T)
  fun bmem_shuffle(mem : ByteT*, size : Uint32T, esize : Uint32T)
  fun bstd_sprintf(str : CharT*, size : Uint32T, format : CharT*, ...) : Uint32T
  fun bstd_vsprintf(str : CharT*, size : Uint32T, format : CharT*, args : VaList) : Uint32T
  alias X__GnucVaList = LibC::VaList
  alias VaList = X__GnucVaList
  fun bstd_printf(format : CharT*, ...) : Uint32T
  fun bstd_eprintf(format : CharT*, ...) : Uint32T
  fun bstd_writef(str : CharT*) : Uint32T
  fun bstd_ewritef(str : CharT*) : Uint32T
  fun bstd_read(data : ByteT*, size : Uint32T, rsize : Uint32T*) : BoolT
  fun bstd_write(data : ByteT*, size : Uint32T, wsize : Uint32T*) : BoolT
  fun bstd_ewrite(data : ByteT*, size : Uint32T, wsize : Uint32T*) : BoolT
  fun cassert_set_func(data : Void*, func_assert : FPtrAssert)
  alias FPtrAssert = (Void*, Uint32T, CharT*, CharT*, CharT*, Uint32T -> Void)
  fun cassert_imp(cond : BoolT, detail : CharT*, file : CharT*, line : Uint32T)
  fun cassert_fatal_imp(cond : BoolT, detail : CharT*, file : CharT*, line : Uint32T)
  fun cassert_no_null_imp(ptr : Void*, detail : CharT*, file : CharT*, line : Uint32T)
  fun cassert_no_nullf_imp(ptr : (-> Void), detail : CharT*, file : CharT*, line : Uint32T)
  fun cassert_default_imp(file : CharT*, line : Uint32T)
  fun ptr_dget_imp(dptr : Void**) : Void*
  fun ptr_dget_no_null_imp(dptr : Void**) : Void*
  fun ptr_destopt_imp(dptr : Void**, func_destroy : FPtrDestroy)
  alias FPtrDestroy = (Void** -> Void)
  fun ptr_copyopt_imp(ptr : Void*, func_copy : FPtrCopy) : Void*
  alias FPtrCopy = (Void** -> Void)
  fun min_u32(v1 : Uint32T, v2 : Uint32T) : Uint32T
  fun min_r32(v1 : Real32T, v2 : Real32T) : Real32T
  fun min_r64(v1 : Real64T, v2 : Real64T) : Real64T
  fun max_u32(v1 : Uint32T, v2 : Uint32T) : Uint32T
  fun max_r32(v1 : Real32T, v2 : Real32T) : Real32T
  fun max_r64(v1 : Real64T, v2 : Real64T) : Real64T
  fun abs_r32(v : Real32T) : Real32T
  fun to_u8(v : Uint32T) : Uint8T
  alias X__Uint8T = UInt8
  alias Uint8T = X__Uint8T
  fun unicode_convers(from_str : CharT*, to_str : CharT*, from : UnicodeT, to : UnicodeT, osize : Uint32T) : Uint32T
  enum X_UnicodeT
    EkUtf8  = 0
    EkUtf16 = 1
    EkUtf32 = 2
  end
  type UnicodeT = X_UnicodeT
  fun unicode_convers_n(from_str : CharT*, to_str : CharT*, from : UnicodeT, to : UnicodeT, isize : Uint32T, osize : Uint32T) : Uint32T
  fun unicode_convers_nbytes(str : CharT*, from : UnicodeT, to : UnicodeT) : Uint32T
  fun unicode_nbytes(str : CharT*, format : UnicodeT) : Uint32T
  fun unicode_nchars(str : CharT*, format : UnicodeT) : Uint32T
  fun unicode_to_u32(str : CharT*, format : UnicodeT) : Uint32T
  fun unicode_to_u32b(str : CharT*, format : UnicodeT, bytes : Uint32T*) : Uint32T
  fun unicode_to_char(codepoint : Uint32T, str : CharT*, format : UnicodeT) : Uint32T
  fun unicode_valid_str(str : CharT*, format : UnicodeT) : BoolT
  fun unicode_valid_str_n(str : CharT*, size : Uint32T, format : UnicodeT) : BoolT
  fun unicode_valid(codepoint : Uint32T) : BoolT
  fun unicode_next(str : CharT*, format : UnicodeT) : CharT*
  fun unicode_back(str : CharT*, format : UnicodeT) : CharT*
  fun unicode_isascii(codepoint : Uint32T) : BoolT
  fun unicode_isalnum(codepoint : Uint32T) : BoolT
  fun unicode_isalpha(codepoint : Uint32T) : BoolT
  fun unicode_iscntrl(codepoint : Uint32T) : BoolT
  fun unicode_isdigit(codepoint : Uint32T) : BoolT
  fun unicode_isgraph(codepoint : Uint32T) : BoolT
  fun unicode_isprint(codepoint : Uint32T) : BoolT
  fun unicode_ispunct(codepoint : Uint32T) : BoolT
  fun unicode_isspace(codepoint : Uint32T) : BoolT
  fun unicode_isxdigit(codepoint : Uint32T) : BoolT
  fun unicode_islower(codepoint : Uint32T) : BoolT
  fun unicode_isupper(codepoint : Uint32T) : BoolT
  fun unicode_tolower(codepoint : Uint32T) : Uint32T
  fun unicode_toupper(codepoint : Uint32T) : Uint32T
  fun osbs_start
  fun osbs_finish
  fun osbs_platform : PlatformT
  enum X_PlatformT
    EkWindows = 1
    EkMacos   = 2
    EkLinux   = 3
    EkIos     = 4
  end
  type PlatformT = X_PlatformT
  fun osbs_windows : WinT
  enum X_WinT
    EkWin9x  =  1
    EkWinNt4 =  2
    EkWin2K  =  3
    EkWinXp  =  4
    EkWinXp1 =  5
    EkWinXp2 =  6
    EkWinXp3 =  7
    EkWinVi  =  8
    EkWinVi1 =  9
    EkWinVi2 = 10
    EkWin7   = 11
    EkWin71  = 12
    EkWin8   = 13
    EkWin81  = 14
    EkWin10  = 15
    EkWinNo  = 16
  end
  type WinT = X_WinT
  fun osbs_endian : EndianT
  enum X_EndianT
    EkLitend = 1
    EkBigend = 2
  end
  type EndianT = X_EndianT
  fun osbs_memory_mt(mutex : Mutex)
  type Mutex = Void*
  fun bfile_dir_work(pathname : CharT*, size : Uint32T) : Uint32T
  fun bfile_dir_set_work(pathname : CharT*, error : FerrorT*) : BoolT
  enum X_FerrorT
    EkFexists   =  1
    EkFnopath   =  2
    EkFnofile   =  3
    EkFbigname  =  4
    EkFnofiles  =  5
    EkFnoempty  =  6
    EkFnoaccess =  7
    EkFlock     =  8
    EkFbig      =  9
    EkFseekneg  = 10
    EkFundef    = 11
    EkFok       = 12
  end
  type FerrorT = X_FerrorT
  fun bfile_dir_home(pathname : CharT*, size : Uint32T) : Uint32T
  fun bfile_dir_data(pathname : CharT*, size : Uint32T) : Uint32T
  fun bfile_dir_exec(pathname : CharT*, size : Uint32T) : Uint32T
  fun bfile_dir_create(pathname : CharT*, error : FerrorT*) : BoolT
  fun bfile_dir_open(pathname : CharT*, error : FerrorT*) : Dir
  type Dir = Void*
  fun bfile_dir_close(dir : Dir*)
  fun bfile_dir_get(dir : Dir, name : CharT*, size : Uint32T, type : FileTypeT*, fsize : Uint64T*, updated : Date*, error : FerrorT*) : BoolT
  enum X_FileTypeT
    EkArchive   = 1
    EkDirectory = 2
    EkOtherfile = 3
  end
  type FileTypeT = X_FileTypeT

  struct X_DateT
    year : Int16T
    month : Uint8T
    wday : Uint8T
    mday : Uint8T
    hour : Uint8T
    minute : Uint8T
    second : Uint8T
  end

  type Date = X_DateT
  alias X__Int16T = LibC::Short
  alias Int16T = X__Int16T
  fun bfile_dir_delete(pathname : CharT*, error : FerrorT*) : BoolT
  fun bfile_create(pathname : CharT*, error : FerrorT*) : File
  type File = Void*
  fun bfile_open(pathname : CharT*, mode : FileModeT, error : FerrorT*) : File
  enum X_FileModeT
    EkRead   = 1
    EkWrite  = 2
    EkAppend = 3
  end
  type FileModeT = X_FileModeT
  fun bfile_close(file : File*)
  fun bfile_lstat(pathname : CharT*, type : FileTypeT*, size : Uint64T*, updated : Date*, error : FerrorT*) : BoolT
  fun bfile_fstat(file : File, type : FileTypeT*, size : Uint64T*, updated : Date*, error : FerrorT*) : BoolT
  fun bfile_read(file : File, data : ByteT*, size : Uint32T, rsize : Uint32T*, error : FerrorT*) : BoolT
  fun bfile_write(file : File, data : ByteT*, size : Uint32T, wsize : Uint32T*, error : FerrorT*) : BoolT
  fun bfile_seek(file : File, offset : Int64T, whence : FileSeekT, error : FerrorT*) : BoolT
  enum X_FileSeekT
    EkSeekset = 1
    EkSeekcur = 2
    EkSeekend = 3
  end
  type FileSeekT = X_FileSeekT
  fun bfile_pos(file : File) : Uint64T
  fun bfile_delete(pathname : CharT*, error : FerrorT*) : BoolT
  fun bmutex_create : Mutex
  fun bmutex_close(mutex : Mutex*)
  fun bmutex_lock(mutex : Mutex)
  fun bmutex_unlock(mutex : Mutex)
  fun bproc_exec(command : CharT*, error : PerrorT*) : Proc
  enum X_PerrorT
    EkPpipe = 1
    EkPexec = 2
    EkPok   = 3
  end
  type PerrorT = X_PerrorT
  type Proc = Void*
  fun bproc_close(proc : Proc*)
  fun bproc_cancel(proc : Proc) : BoolT
  fun bproc_wait(proc : Proc) : Uint32T
  fun bproc_finish(proc : Proc, code : Uint32T*) : BoolT
  fun bproc_read(proc : Proc, data : ByteT*, size : Uint32T, rsize : Uint32T*, error : PerrorT*) : BoolT
  fun bproc_eread(proc : Proc, data : ByteT*, size : Uint32T, rsize : Uint32T*, error : PerrorT*) : BoolT
  fun bproc_write(proc : Proc, data : ByteT*, size : Uint32T, wsize : Uint32T*, error : PerrorT*) : BoolT
  fun bproc_read_close(proc : Proc) : BoolT
  fun bproc_eread_close(proc : Proc) : BoolT
  fun bproc_write_close(proc : Proc) : BoolT
  fun bproc_exit(code : Uint32T)
  fun bsocket_connect(ip : Uint32T, port : Uint16T, timeout_ms : Uint32T, error : SerrorT*) : Socket
  alias X__Uint16T = LibC::UShort
  alias Uint16T = X__Uint16T
  enum X_SerrorT
    EkSnonet   = 1
    EkSnohost  = 2
    EkStimeout = 3
    EkSstream  = 4
    EkSundef   = 5
    EkSok      = 6
  end
  type SerrorT = X_SerrorT
  type Socket = Void*
  fun bsocket_server(port : Uint16T, max_connect : Uint32T, error : SerrorT*) : Socket
  fun bsocket_accept(socket : Socket, timeout_ms : Uint32T, error : SerrorT*) : Socket
  fun bsocket_close(socket : Socket*)
  fun bsocket_local_ip(socket : Socket, ip : Uint32T*, port : Uint16T*)
  fun bsocket_remote_ip(socket : Socket, ip : Uint32T*, port : Uint16T*)
  fun bsocket_read_timeout(socket : Socket, timeout_ms : Uint32T)
  fun bsocket_write_timeout(socket : Socket, timeout_ms : Uint32T)
  fun bsocket_read(socket : Socket, data : ByteT*, size : Uint32T, rsize : Uint32T*, error : SerrorT*) : BoolT
  fun bsocket_write(socket : Socket, data : ByteT*, size : Uint32T, wsize : Uint32T*, error : SerrorT*) : BoolT
  fun bsocket_url_ip(url : CharT*, error : SerrorT*) : Uint32T
  fun bsocket_str_ip(ip : CharT*) : Uint32T
  fun bsocket_host_name(buffer : CharT*, size : Uint32T) : CharT*
  fun bsocket_host_name_ip(ip : Uint32T, buffer : CharT*, size : Uint32T) : CharT*
  fun bsocket_ip_str(ip : Uint32T) : CharT*
  fun bsocket_hton2(dest : ByteT*, src : ByteT*)
  fun bsocket_hton4(dest : ByteT*, src : ByteT*)
  fun bsocket_hton8(dest : ByteT*, src : ByteT*)
  fun bsocket_ntoh2(dest : ByteT*, src : ByteT*)
  fun bsocket_ntoh4(dest : ByteT*, src : ByteT*)
  fun bsocket_ntoh8(dest : ByteT*, src : ByteT*)
  fun bthread_create_imp(thmain : FPtrThreadMain, data : Void*) : Thread
  alias FPtrThreadMain = (Void* -> Uint32T)
  type Thread = Void*
  fun bthread_current_id : LibC::Int
  fun bthread_close(thread : Thread*)
  fun bthread_cancel(thread : Thread) : BoolT
  fun bthread_wait(thread : Thread) : Uint32T
  fun bthread_finish(thread : Thread, code : Uint32T*) : BoolT
  fun bthread_sleep(milliseconds : Uint32T)
  fun btime_now : Uint64T
  fun btime_date(date : Date*)
  fun btime_to_micro(date : Date*) : Uint64T
  fun btime_to_date(micro : Uint64T, date : Date*)
  fun dlib_open(path : CharT*, libname : CharT*) : DLib
  type DLib = Void*
  fun dlib_close(dlib : DLib*)
  fun dlib_proc_imp(dlib : DLib, procname : CharT*) : FPtrLibproc
  alias FPtrLibproc = (-> Void)
  fun dlib_var_imp(dlib : DLib, varname : CharT*) : Void*
  fun log_printf(format : CharT*, ...) : Uint32T
  fun log_output(std : BoolT, err : BoolT)
  fun log_file(pathname : CharT*)
  fun log_get_file : CharT*
  fun array_create(esize : Uint16T, type : CharT*) : Array
  type Array = Void*
  fun array_copy(array : Array, func_copy : FPtrScopy, type : CharT*) : Array
  alias FPtrScopy = (Void*, Void* -> Void)
  fun array_copy_ptr(array : Array, func_copy : FPtrCopy, type : CharT*) : Array
  fun array_read(stream : Stream, esize : Uint16T, func_read_init : FPtrReadInit, type : CharT*) : Array
  type Stream = Void*
  alias FPtrReadInit = (Stream, Void* -> Void)
  fun array_read_ptr(stream : Stream, func_read : FPtrRead, type : CharT*) : Array
  alias FPtrRead = (Stream -> Void*)
  fun array_destroy(array : Array*, func_remove : FPtrRemove, type : CharT*)
  alias FPtrRemove = (Void** -> Void)
  fun array_destopt(array : Array*, func_remove : FPtrRemove, type : CharT*)
  fun array_destroy_ptr(array : Array*, func_destroy : FPtrDestroy, type : CharT*)
  fun array_destopt_ptr(array : Array*, func_destroy : FPtrDestroy, type : CharT*)
  fun array_clear(array : Array, func_remove : FPtrRemove)
  fun array_clear_ptr(array : Array, func_destroy : FPtrDestroy)
  fun array_write(stream : Stream, array : Array, func_write : FPtrWrite)
  alias FPtrWrite = (Stream, Void* -> Void)
  fun array_write_ptr(stream : Stream, array : Array, func_write : FPtrWrite)
  fun array_size(array : Array) : Uint32T
  fun array_esize(array : Array) : Uint32T
  fun array_get(array : Array, pos : Uint32T) : ByteT*
  fun array_get_last(array : Array) : ByteT*
  fun array_all(array : Array) : ByteT*
  fun array_insert(array : Array, pos : Uint32T, n : Uint32T) : ByteT*
  fun array_insert0(array : Array, pos : Uint32T, n : Uint32T) : ByteT*
  fun array_join(dest : Array, src : Array, func_copy : FPtrScopy)
  fun array_join_ptr(dest : Array, src : Array, func_copy : FPtrCopy)
  fun array_delete(array : Array, pos : Uint32T, n : Uint32T, func_remove : FPtrRemove)
  fun array_delete_ptr(array : Array, pos : Uint32T, n : Uint32T, func_destroy : FPtrDestroy)
  fun array_pop(array : Array, func_remove : FPtrRemove)
  fun array_pop_ptr(array : Array, func_destroy : FPtrDestroy)
  fun array_sort(array : Array, func_compare : FPtrCompare)
  fun array_sort_ex(array : Array, func_compare : FPtrCompareEx, data : Void*)
  fun array_sort_ptr(array : Array, func_compare : FPtrCompare)
  fun array_sort_ptr_ex(array : Array, func_compare : FPtrCompareEx, data : Void*)
  fun array_find_ptr(array : Array, elem : Void*) : Uint32T
  fun array_search(array : Array, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : ByteT*
  fun array_search_ptr(array : Array, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : ByteT*
  fun array_bsearch(array : Array, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : ByteT*
  fun array_bsearch_ptr(array : Array, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : ByteT*
  fun rbtree_create(func_compare : FPtrCompare, esize : Uint16T, ksize : Uint16T, type : CharT*) : RbTree
  type RbTree = Void*
  fun rbtree_destroy(tree : RbTree*, func_remove : FPtrRemove, func_destroy_key : FPtrDestroy, type : CharT*)
  fun rbtree_destroy_ptr(tree : RbTree*, func_destroy : FPtrDestroy, func_destroy_key : FPtrDestroy, type : CharT*)
  fun rbtree_size(tree : RbTree) : Uint32T
  fun rbtree_get(tree : RbTree, key : Void*, isptr : BoolT) : ByteT*
  fun rbtree_insert(tree : RbTree, key : Void*, func_key_copy : FPtrCopy) : ByteT*
  fun rbtree_insert_ptr(tree : RbTree, ptr : Void*) : BoolT
  fun rbtree_delete(tree : RbTree, key : Void*, func_remove : FPtrRemove, func_destroy_key : FPtrDestroy) : BoolT
  fun rbtree_delete_ptr(tree : RbTree, key : Void*, func_destroy : FPtrDestroy, func_destroy_key : FPtrDestroy) : BoolT
  fun rbtree_first(tree : RbTree) : ByteT*
  fun rbtree_last(tree : RbTree) : ByteT*
  fun rbtree_next(tree : RbTree) : ByteT*
  fun rbtree_prev(tree : RbTree) : ByteT*
  fun rbtree_first_ptr(tree : RbTree) : ByteT*
  fun rbtree_last_ptr(tree : RbTree) : ByteT*
  fun rbtree_next_ptr(tree : RbTree) : ByteT*
  fun rbtree_prev_ptr(tree : RbTree) : ByteT*
  fun rbtree_get_key(tree : RbTree) : CharT*
  fun rbtree_check(tree : RbTree) : BoolT

  struct BoolTData
    elem : BoolT[1024]
  end

  fun arrst_bool_t_create(esize : Uint16T) : ArrStboolT*

  struct ArrStboolT
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : BoolTData*
  end

  fun arrst_bool_t_create(esize : Uint16T) : ArrStboolT*
  fun arrst_bool_t_copy(array : ArrStboolT*, func_copy : (BoolT*, BoolT* -> Void)) : ArrStboolT*
  fun arrst_bool_t_copy(array : ArrStboolT*, func_copy : (BoolT*, BoolT* -> Void)) : ArrStboolT*
  fun arrst_bool_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, BoolT* -> Void)) : ArrStboolT*
  fun arrst_bool_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, BoolT* -> Void)) : ArrStboolT*
  fun arrst_bool_t_destroy(array : ArrStboolT**, func_remove : (BoolT* -> Void))
  fun arrst_bool_t_destroy(array : ArrStboolT**, func_remove : (BoolT* -> Void))
  fun arrst_bool_t_destopt(array : ArrStboolT**, func_remove : (BoolT* -> Void))
  fun arrst_bool_t_destopt(array : ArrStboolT**, func_remove : (BoolT* -> Void))
  fun arrst_bool_t_clear(array : ArrStboolT*, func_remove : (BoolT* -> Void))
  fun arrst_bool_t_clear(array : ArrStboolT*, func_remove : (BoolT* -> Void))
  fun arrst_bool_t_write(stream : Stream, array : ArrStboolT*, func_write : (Stream, BoolT* -> Void))
  fun arrst_bool_t_write(stream : Stream, array : ArrStboolT*, func_write : (Stream, BoolT* -> Void))
  fun arrst_bool_t_size(array : ArrStboolT*) : Uint32T
  fun arrst_bool_t_size(array : ArrStboolT*) : Uint32T
  fun arrst_bool_t_get(array : ArrStboolT*, pos : Uint32T) : BoolT*
  fun arrst_bool_t_get(array : ArrStboolT*, pos : Uint32T) : BoolT*
  fun arrst_bool_t_get_const(array : ArrStboolT*, pos : Uint32T) : BoolT*
  fun arrst_bool_t_get_const(array : ArrStboolT*, pos : Uint32T) : BoolT*
  fun arrst_bool_t_last(array : ArrStboolT*) : BoolT*
  fun arrst_bool_t_last(array : ArrStboolT*) : BoolT*
  fun arrst_bool_t_last_const(array : ArrStboolT*) : BoolT*
  fun arrst_bool_t_last_const(array : ArrStboolT*) : BoolT*
  fun arrst_bool_t_all(array : ArrStboolT*) : BoolT*
  fun arrst_bool_t_all(array : ArrStboolT*) : BoolT*
  fun arrst_bool_t_all_const(array : ArrStboolT*) : BoolT*
  fun arrst_bool_t_all_const(array : ArrStboolT*) : BoolT*
  fun arrst_bool_t_insert(array : ArrStboolT*, pos : Uint32T, n : Uint32T) : BoolT*
  fun arrst_bool_t_insert(array : ArrStboolT*, pos : Uint32T, n : Uint32T) : BoolT*
  fun arrst_bool_t_insert0(array : ArrStboolT*, pos : Uint32T, n : Uint32T) : BoolT*
  fun arrst_bool_t_insert0(array : ArrStboolT*, pos : Uint32T, n : Uint32T) : BoolT*
  fun arrst_bool_t_join(dest : ArrStboolT*, src : ArrStboolT*, func_copy : (BoolT*, BoolT* -> Void))
  fun arrst_bool_t_join(dest : ArrStboolT*, src : ArrStboolT*, func_copy : (BoolT*, BoolT* -> Void))
  fun arrst_bool_t_delete(array : ArrStboolT*, pos : Uint32T, func_remove : (BoolT* -> Void))
  fun arrst_bool_t_delete(array : ArrStboolT*, pos : Uint32T, func_remove : (BoolT* -> Void))
  fun arrst_bool_t_pop(array : ArrStboolT*, func_remove : (BoolT* -> Void))
  fun arrst_bool_t_pop(array : ArrStboolT*, func_remove : (BoolT* -> Void))
  fun arrst_bool_t_sort(array : ArrStboolT*, func_compare : (BoolT*, BoolT* -> LibC::Int))
  fun arrst_bool_t_sort(array : ArrStboolT*, func_compare : (BoolT*, BoolT* -> LibC::Int))
  fun arrst_bool_t_sort_ex(array : ArrStboolT*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_bool_t_sort_ex(array : ArrStboolT*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_bool_t_search(array : ArrStboolT*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : BoolT*
  fun arrst_bool_t_search(array : ArrStboolT*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : BoolT*
  fun arrst_bool_t_search_const(array : ArrStboolT*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : BoolT*
  fun arrst_bool_t_search_const(array : ArrStboolT*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : BoolT*
  fun arrst_bool_t_bsearch(array : ArrStboolT*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : BoolT*
  fun arrst_bool_t_bsearch(array : ArrStboolT*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : BoolT*
  fun arrst_bool_t_bsearch_const(array : ArrStboolT*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : BoolT*
  fun arrst_bool_t_bsearch_const(array : ArrStboolT*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : BoolT*
  fun arrst_bool_t_end
  fun setst_bool_t_create(func_compare : (BoolT*, BoolT* -> LibC::Int), esize : Uint16T) : SetStboolT*

  struct SetStboolT
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStboolT*
    func_compare : FPtrCompare
  end

  struct NodeStboolT
    rb : Uint32T
    left : NodeStboolT*
    right : NodeStboolT*
    data : BoolT
  end

  fun setst_bool_t_create(func_compare : (BoolT*, BoolT* -> LibC::Int), esize : Uint16T) : SetStboolT*
  fun setst_bool_t_destroy(set : SetStboolT**, func_remove : (BoolT* -> Void))
  fun setst_bool_t_destroy(set : SetStboolT**, func_remove : (BoolT* -> Void))
  fun setst_bool_t_size(set : SetStboolT*) : Uint32T
  fun setst_bool_t_size(set : SetStboolT*) : Uint32T
  fun setst_bool_t_get(set : SetStboolT*, key : BoolT*) : BoolT*
  fun setst_bool_t_get(set : SetStboolT*, key : BoolT*) : BoolT*
  fun setst_bool_t_get_const(set : SetStboolT*, key : BoolT*) : BoolT*
  fun setst_bool_t_get_const(set : SetStboolT*, key : BoolT*) : BoolT*
  fun setst_bool_t_insert(set : SetStboolT*, key : BoolT*) : BoolT*
  fun setst_bool_t_insert(set : SetStboolT*, key : BoolT*) : BoolT*
  fun setst_bool_t_delete(set : SetStboolT*, key : BoolT*, func_remove : (BoolT* -> Void)) : BoolT
  fun setst_bool_t_delete(set : SetStboolT*, key : BoolT*, func_remove : (BoolT* -> Void)) : BoolT
  fun setst_bool_t_first(set : SetStboolT*) : BoolT*
  fun setst_bool_t_first(set : SetStboolT*) : BoolT*
  fun setst_bool_t_first_const(set : SetStboolT*) : BoolT*
  fun setst_bool_t_first_const(set : SetStboolT*) : BoolT*
  fun setst_bool_t_last(set : SetStboolT*) : BoolT*
  fun setst_bool_t_last(set : SetStboolT*) : BoolT*
  fun setst_bool_t_last_const(set : SetStboolT*) : BoolT*
  fun setst_bool_t_last_const(set : SetStboolT*) : BoolT*
  fun setst_bool_t_next(set : SetStboolT*) : BoolT*
  fun setst_bool_t_next(set : SetStboolT*) : BoolT*
  fun setst_bool_t_next_const(set : SetStboolT*) : BoolT*
  fun setst_bool_t_next_const(set : SetStboolT*) : BoolT*
  fun setst_bool_t_prev(set : SetStboolT*) : BoolT*
  fun setst_bool_t_prev(set : SetStboolT*) : BoolT*
  fun setst_bool_t_prev_const(set : SetStboolT*) : BoolT*
  fun setst_bool_t_prev_const(set : SetStboolT*) : BoolT*
  fun setst_bool_t_end

  struct Int8TData
    elem : Int8T[1024]
  end

  alias X__Int8T = LibC::Char
  alias Int8T = X__Int8T
  fun arrst_int8_t_create(esize : Uint16T) : ArrStint8T*

  struct ArrStint8T
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : Int8TData*
  end

  fun arrst_int8_t_create(esize : Uint16T) : ArrStint8T*
  fun arrst_int8_t_copy(array : ArrStint8T*, func_copy : (Int8T*, Int8T* -> Void)) : ArrStint8T*
  fun arrst_int8_t_copy(array : ArrStint8T*, func_copy : (Int8T*, Int8T* -> Void)) : ArrStint8T*
  fun arrst_int8_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, Int8T* -> Void)) : ArrStint8T*
  fun arrst_int8_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, Int8T* -> Void)) : ArrStint8T*
  fun arrst_int8_t_destroy(array : ArrStint8T**, func_remove : (Int8T* -> Void))
  fun arrst_int8_t_destroy(array : ArrStint8T**, func_remove : (Int8T* -> Void))
  fun arrst_int8_t_destopt(array : ArrStint8T**, func_remove : (Int8T* -> Void))
  fun arrst_int8_t_destopt(array : ArrStint8T**, func_remove : (Int8T* -> Void))
  fun arrst_int8_t_clear(array : ArrStint8T*, func_remove : (Int8T* -> Void))
  fun arrst_int8_t_clear(array : ArrStint8T*, func_remove : (Int8T* -> Void))
  fun arrst_int8_t_write(stream : Stream, array : ArrStint8T*, func_write : (Stream, Int8T* -> Void))
  fun arrst_int8_t_write(stream : Stream, array : ArrStint8T*, func_write : (Stream, Int8T* -> Void))
  fun arrst_int8_t_size(array : ArrStint8T*) : Uint32T
  fun arrst_int8_t_size(array : ArrStint8T*) : Uint32T
  fun arrst_int8_t_get(array : ArrStint8T*, pos : Uint32T) : Int8T*
  fun arrst_int8_t_get(array : ArrStint8T*, pos : Uint32T) : Int8T*
  fun arrst_int8_t_get_const(array : ArrStint8T*, pos : Uint32T) : Int8T*
  fun arrst_int8_t_get_const(array : ArrStint8T*, pos : Uint32T) : Int8T*
  fun arrst_int8_t_last(array : ArrStint8T*) : Int8T*
  fun arrst_int8_t_last(array : ArrStint8T*) : Int8T*
  fun arrst_int8_t_last_const(array : ArrStint8T*) : Int8T*
  fun arrst_int8_t_last_const(array : ArrStint8T*) : Int8T*
  fun arrst_int8_t_all(array : ArrStint8T*) : Int8T*
  fun arrst_int8_t_all(array : ArrStint8T*) : Int8T*
  fun arrst_int8_t_all_const(array : ArrStint8T*) : Int8T*
  fun arrst_int8_t_all_const(array : ArrStint8T*) : Int8T*
  fun arrst_int8_t_insert(array : ArrStint8T*, pos : Uint32T, n : Uint32T) : Int8T*
  fun arrst_int8_t_insert(array : ArrStint8T*, pos : Uint32T, n : Uint32T) : Int8T*
  fun arrst_int8_t_insert0(array : ArrStint8T*, pos : Uint32T, n : Uint32T) : Int8T*
  fun arrst_int8_t_insert0(array : ArrStint8T*, pos : Uint32T, n : Uint32T) : Int8T*
  fun arrst_int8_t_join(dest : ArrStint8T*, src : ArrStint8T*, func_copy : (Int8T*, Int8T* -> Void))
  fun arrst_int8_t_join(dest : ArrStint8T*, src : ArrStint8T*, func_copy : (Int8T*, Int8T* -> Void))
  fun arrst_int8_t_delete(array : ArrStint8T*, pos : Uint32T, func_remove : (Int8T* -> Void))
  fun arrst_int8_t_delete(array : ArrStint8T*, pos : Uint32T, func_remove : (Int8T* -> Void))
  fun arrst_int8_t_pop(array : ArrStint8T*, func_remove : (Int8T* -> Void))
  fun arrst_int8_t_pop(array : ArrStint8T*, func_remove : (Int8T* -> Void))
  fun arrst_int8_t_sort(array : ArrStint8T*, func_compare : (Int8T*, Int8T* -> LibC::Int))
  fun arrst_int8_t_sort(array : ArrStint8T*, func_compare : (Int8T*, Int8T* -> LibC::Int))
  fun arrst_int8_t_sort_ex(array : ArrStint8T*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_int8_t_sort_ex(array : ArrStint8T*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_int8_t_search(array : ArrStint8T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int8T*
  fun arrst_int8_t_search(array : ArrStint8T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int8T*
  fun arrst_int8_t_search_const(array : ArrStint8T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int8T*
  fun arrst_int8_t_search_const(array : ArrStint8T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int8T*
  fun arrst_int8_t_bsearch(array : ArrStint8T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int8T*
  fun arrst_int8_t_bsearch(array : ArrStint8T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int8T*
  fun arrst_int8_t_bsearch_const(array : ArrStint8T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int8T*
  fun arrst_int8_t_bsearch_const(array : ArrStint8T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int8T*
  fun arrst_int8_t_end
  fun setst_int8_t_create(func_compare : (Int8T*, Int8T* -> LibC::Int), esize : Uint16T) : SetStint8T*

  struct SetStint8T
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStint8T*
    func_compare : FPtrCompare
  end

  struct NodeStint8T
    rb : Uint32T
    left : NodeStint8T*
    right : NodeStint8T*
    data : Int8T
  end

  fun setst_int8_t_create(func_compare : (Int8T*, Int8T* -> LibC::Int), esize : Uint16T) : SetStint8T*
  fun setst_int8_t_destroy(set : SetStint8T**, func_remove : (Int8T* -> Void))
  fun setst_int8_t_destroy(set : SetStint8T**, func_remove : (Int8T* -> Void))
  fun setst_int8_t_size(set : SetStint8T*) : Uint32T
  fun setst_int8_t_size(set : SetStint8T*) : Uint32T
  fun setst_int8_t_get(set : SetStint8T*, key : Int8T*) : Int8T*
  fun setst_int8_t_get(set : SetStint8T*, key : Int8T*) : Int8T*
  fun setst_int8_t_get_const(set : SetStint8T*, key : Int8T*) : Int8T*
  fun setst_int8_t_get_const(set : SetStint8T*, key : Int8T*) : Int8T*
  fun setst_int8_t_insert(set : SetStint8T*, key : Int8T*) : Int8T*
  fun setst_int8_t_insert(set : SetStint8T*, key : Int8T*) : Int8T*
  fun setst_int8_t_delete(set : SetStint8T*, key : Int8T*, func_remove : (Int8T* -> Void)) : BoolT
  fun setst_int8_t_delete(set : SetStint8T*, key : Int8T*, func_remove : (Int8T* -> Void)) : BoolT
  fun setst_int8_t_first(set : SetStint8T*) : Int8T*
  fun setst_int8_t_first(set : SetStint8T*) : Int8T*
  fun setst_int8_t_first_const(set : SetStint8T*) : Int8T*
  fun setst_int8_t_first_const(set : SetStint8T*) : Int8T*
  fun setst_int8_t_last(set : SetStint8T*) : Int8T*
  fun setst_int8_t_last(set : SetStint8T*) : Int8T*
  fun setst_int8_t_last_const(set : SetStint8T*) : Int8T*
  fun setst_int8_t_last_const(set : SetStint8T*) : Int8T*
  fun setst_int8_t_next(set : SetStint8T*) : Int8T*
  fun setst_int8_t_next(set : SetStint8T*) : Int8T*
  fun setst_int8_t_next_const(set : SetStint8T*) : Int8T*
  fun setst_int8_t_next_const(set : SetStint8T*) : Int8T*
  fun setst_int8_t_prev(set : SetStint8T*) : Int8T*
  fun setst_int8_t_prev(set : SetStint8T*) : Int8T*
  fun setst_int8_t_prev_const(set : SetStint8T*) : Int8T*
  fun setst_int8_t_prev_const(set : SetStint8T*) : Int8T*
  fun setst_int8_t_end

  struct Int16TData
    elem : Int16T[1024]
  end

  fun arrst_int16_t_create(esize : Uint16T) : ArrStint16T*

  struct ArrStint16T
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : Int16TData*
  end

  fun arrst_int16_t_create(esize : Uint16T) : ArrStint16T*
  fun arrst_int16_t_copy(array : ArrStint16T*, func_copy : (Int16T*, Int16T* -> Void)) : ArrStint16T*
  fun arrst_int16_t_copy(array : ArrStint16T*, func_copy : (Int16T*, Int16T* -> Void)) : ArrStint16T*
  fun arrst_int16_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, Int16T* -> Void)) : ArrStint16T*
  fun arrst_int16_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, Int16T* -> Void)) : ArrStint16T*
  fun arrst_int16_t_destroy(array : ArrStint16T**, func_remove : (Int16T* -> Void))
  fun arrst_int16_t_destroy(array : ArrStint16T**, func_remove : (Int16T* -> Void))
  fun arrst_int16_t_destopt(array : ArrStint16T**, func_remove : (Int16T* -> Void))
  fun arrst_int16_t_destopt(array : ArrStint16T**, func_remove : (Int16T* -> Void))
  fun arrst_int16_t_clear(array : ArrStint16T*, func_remove : (Int16T* -> Void))
  fun arrst_int16_t_clear(array : ArrStint16T*, func_remove : (Int16T* -> Void))
  fun arrst_int16_t_write(stream : Stream, array : ArrStint16T*, func_write : (Stream, Int16T* -> Void))
  fun arrst_int16_t_write(stream : Stream, array : ArrStint16T*, func_write : (Stream, Int16T* -> Void))
  fun arrst_int16_t_size(array : ArrStint16T*) : Uint32T
  fun arrst_int16_t_size(array : ArrStint16T*) : Uint32T
  fun arrst_int16_t_get(array : ArrStint16T*, pos : Uint32T) : Int16T*
  fun arrst_int16_t_get(array : ArrStint16T*, pos : Uint32T) : Int16T*
  fun arrst_int16_t_get_const(array : ArrStint16T*, pos : Uint32T) : Int16T*
  fun arrst_int16_t_get_const(array : ArrStint16T*, pos : Uint32T) : Int16T*
  fun arrst_int16_t_last(array : ArrStint16T*) : Int16T*
  fun arrst_int16_t_last(array : ArrStint16T*) : Int16T*
  fun arrst_int16_t_last_const(array : ArrStint16T*) : Int16T*
  fun arrst_int16_t_last_const(array : ArrStint16T*) : Int16T*
  fun arrst_int16_t_all(array : ArrStint16T*) : Int16T*
  fun arrst_int16_t_all(array : ArrStint16T*) : Int16T*
  fun arrst_int16_t_all_const(array : ArrStint16T*) : Int16T*
  fun arrst_int16_t_all_const(array : ArrStint16T*) : Int16T*
  fun arrst_int16_t_insert(array : ArrStint16T*, pos : Uint32T, n : Uint32T) : Int16T*
  fun arrst_int16_t_insert(array : ArrStint16T*, pos : Uint32T, n : Uint32T) : Int16T*
  fun arrst_int16_t_insert0(array : ArrStint16T*, pos : Uint32T, n : Uint32T) : Int16T*
  fun arrst_int16_t_insert0(array : ArrStint16T*, pos : Uint32T, n : Uint32T) : Int16T*
  fun arrst_int16_t_join(dest : ArrStint16T*, src : ArrStint16T*, func_copy : (Int16T*, Int16T* -> Void))
  fun arrst_int16_t_join(dest : ArrStint16T*, src : ArrStint16T*, func_copy : (Int16T*, Int16T* -> Void))
  fun arrst_int16_t_delete(array : ArrStint16T*, pos : Uint32T, func_remove : (Int16T* -> Void))
  fun arrst_int16_t_delete(array : ArrStint16T*, pos : Uint32T, func_remove : (Int16T* -> Void))
  fun arrst_int16_t_pop(array : ArrStint16T*, func_remove : (Int16T* -> Void))
  fun arrst_int16_t_pop(array : ArrStint16T*, func_remove : (Int16T* -> Void))
  fun arrst_int16_t_sort(array : ArrStint16T*, func_compare : (Int16T*, Int16T* -> LibC::Int))
  fun arrst_int16_t_sort(array : ArrStint16T*, func_compare : (Int16T*, Int16T* -> LibC::Int))
  fun arrst_int16_t_sort_ex(array : ArrStint16T*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_int16_t_sort_ex(array : ArrStint16T*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_int16_t_search(array : ArrStint16T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int16T*
  fun arrst_int16_t_search(array : ArrStint16T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int16T*
  fun arrst_int16_t_search_const(array : ArrStint16T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int16T*
  fun arrst_int16_t_search_const(array : ArrStint16T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int16T*
  fun arrst_int16_t_bsearch(array : ArrStint16T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int16T*
  fun arrst_int16_t_bsearch(array : ArrStint16T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int16T*
  fun arrst_int16_t_bsearch_const(array : ArrStint16T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int16T*
  fun arrst_int16_t_bsearch_const(array : ArrStint16T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int16T*
  fun arrst_int16_t_end
  fun setst_int16_t_create(func_compare : (Int16T*, Int16T* -> LibC::Int), esize : Uint16T) : SetStint16T*

  struct SetStint16T
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStint16T*
    func_compare : FPtrCompare
  end

  struct NodeStint16T
    rb : Uint32T
    left : NodeStint16T*
    right : NodeStint16T*
    data : Int16T
  end

  fun setst_int16_t_create(func_compare : (Int16T*, Int16T* -> LibC::Int), esize : Uint16T) : SetStint16T*
  fun setst_int16_t_destroy(set : SetStint16T**, func_remove : (Int16T* -> Void))
  fun setst_int16_t_destroy(set : SetStint16T**, func_remove : (Int16T* -> Void))
  fun setst_int16_t_size(set : SetStint16T*) : Uint32T
  fun setst_int16_t_size(set : SetStint16T*) : Uint32T
  fun setst_int16_t_get(set : SetStint16T*, key : Int16T*) : Int16T*
  fun setst_int16_t_get(set : SetStint16T*, key : Int16T*) : Int16T*
  fun setst_int16_t_get_const(set : SetStint16T*, key : Int16T*) : Int16T*
  fun setst_int16_t_get_const(set : SetStint16T*, key : Int16T*) : Int16T*
  fun setst_int16_t_insert(set : SetStint16T*, key : Int16T*) : Int16T*
  fun setst_int16_t_insert(set : SetStint16T*, key : Int16T*) : Int16T*
  fun setst_int16_t_delete(set : SetStint16T*, key : Int16T*, func_remove : (Int16T* -> Void)) : BoolT
  fun setst_int16_t_delete(set : SetStint16T*, key : Int16T*, func_remove : (Int16T* -> Void)) : BoolT
  fun setst_int16_t_first(set : SetStint16T*) : Int16T*
  fun setst_int16_t_first(set : SetStint16T*) : Int16T*
  fun setst_int16_t_first_const(set : SetStint16T*) : Int16T*
  fun setst_int16_t_first_const(set : SetStint16T*) : Int16T*
  fun setst_int16_t_last(set : SetStint16T*) : Int16T*
  fun setst_int16_t_last(set : SetStint16T*) : Int16T*
  fun setst_int16_t_last_const(set : SetStint16T*) : Int16T*
  fun setst_int16_t_last_const(set : SetStint16T*) : Int16T*
  fun setst_int16_t_next(set : SetStint16T*) : Int16T*
  fun setst_int16_t_next(set : SetStint16T*) : Int16T*
  fun setst_int16_t_next_const(set : SetStint16T*) : Int16T*
  fun setst_int16_t_next_const(set : SetStint16T*) : Int16T*
  fun setst_int16_t_prev(set : SetStint16T*) : Int16T*
  fun setst_int16_t_prev(set : SetStint16T*) : Int16T*
  fun setst_int16_t_prev_const(set : SetStint16T*) : Int16T*
  fun setst_int16_t_prev_const(set : SetStint16T*) : Int16T*
  fun setst_int16_t_end

  struct Int32TData
    elem : Int32T[1024]
  end

  alias X__Int32T = LibC::Int
  alias Int32T = X__Int32T
  fun arrst_int32_t_create(esize : Uint16T) : ArrStint32T*

  struct ArrStint32T
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : Int32TData*
  end

  fun arrst_int32_t_create(esize : Uint16T) : ArrStint32T*
  fun arrst_int32_t_copy(array : ArrStint32T*, func_copy : (Int32T*, Int32T* -> Void)) : ArrStint32T*
  fun arrst_int32_t_copy(array : ArrStint32T*, func_copy : (Int32T*, Int32T* -> Void)) : ArrStint32T*
  fun arrst_int32_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, Int32T* -> Void)) : ArrStint32T*
  fun arrst_int32_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, Int32T* -> Void)) : ArrStint32T*
  fun arrst_int32_t_destroy(array : ArrStint32T**, func_remove : (Int32T* -> Void))
  fun arrst_int32_t_destroy(array : ArrStint32T**, func_remove : (Int32T* -> Void))
  fun arrst_int32_t_destopt(array : ArrStint32T**, func_remove : (Int32T* -> Void))
  fun arrst_int32_t_destopt(array : ArrStint32T**, func_remove : (Int32T* -> Void))
  fun arrst_int32_t_clear(array : ArrStint32T*, func_remove : (Int32T* -> Void))
  fun arrst_int32_t_clear(array : ArrStint32T*, func_remove : (Int32T* -> Void))
  fun arrst_int32_t_write(stream : Stream, array : ArrStint32T*, func_write : (Stream, Int32T* -> Void))
  fun arrst_int32_t_write(stream : Stream, array : ArrStint32T*, func_write : (Stream, Int32T* -> Void))
  fun arrst_int32_t_size(array : ArrStint32T*) : Uint32T
  fun arrst_int32_t_size(array : ArrStint32T*) : Uint32T
  fun arrst_int32_t_get(array : ArrStint32T*, pos : Uint32T) : Int32T*
  fun arrst_int32_t_get(array : ArrStint32T*, pos : Uint32T) : Int32T*
  fun arrst_int32_t_get_const(array : ArrStint32T*, pos : Uint32T) : Int32T*
  fun arrst_int32_t_get_const(array : ArrStint32T*, pos : Uint32T) : Int32T*
  fun arrst_int32_t_last(array : ArrStint32T*) : Int32T*
  fun arrst_int32_t_last(array : ArrStint32T*) : Int32T*
  fun arrst_int32_t_last_const(array : ArrStint32T*) : Int32T*
  fun arrst_int32_t_last_const(array : ArrStint32T*) : Int32T*
  fun arrst_int32_t_all(array : ArrStint32T*) : Int32T*
  fun arrst_int32_t_all(array : ArrStint32T*) : Int32T*
  fun arrst_int32_t_all_const(array : ArrStint32T*) : Int32T*
  fun arrst_int32_t_all_const(array : ArrStint32T*) : Int32T*
  fun arrst_int32_t_insert(array : ArrStint32T*, pos : Uint32T, n : Uint32T) : Int32T*
  fun arrst_int32_t_insert(array : ArrStint32T*, pos : Uint32T, n : Uint32T) : Int32T*
  fun arrst_int32_t_insert0(array : ArrStint32T*, pos : Uint32T, n : Uint32T) : Int32T*
  fun arrst_int32_t_insert0(array : ArrStint32T*, pos : Uint32T, n : Uint32T) : Int32T*
  fun arrst_int32_t_join(dest : ArrStint32T*, src : ArrStint32T*, func_copy : (Int32T*, Int32T* -> Void))
  fun arrst_int32_t_join(dest : ArrStint32T*, src : ArrStint32T*, func_copy : (Int32T*, Int32T* -> Void))
  fun arrst_int32_t_delete(array : ArrStint32T*, pos : Uint32T, func_remove : (Int32T* -> Void))
  fun arrst_int32_t_delete(array : ArrStint32T*, pos : Uint32T, func_remove : (Int32T* -> Void))
  fun arrst_int32_t_pop(array : ArrStint32T*, func_remove : (Int32T* -> Void))
  fun arrst_int32_t_pop(array : ArrStint32T*, func_remove : (Int32T* -> Void))
  fun arrst_int32_t_sort(array : ArrStint32T*, func_compare : (Int32T*, Int32T* -> LibC::Int))
  fun arrst_int32_t_sort(array : ArrStint32T*, func_compare : (Int32T*, Int32T* -> LibC::Int))
  fun arrst_int32_t_sort_ex(array : ArrStint32T*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_int32_t_sort_ex(array : ArrStint32T*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_int32_t_search(array : ArrStint32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int32T*
  fun arrst_int32_t_search(array : ArrStint32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int32T*
  fun arrst_int32_t_search_const(array : ArrStint32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int32T*
  fun arrst_int32_t_search_const(array : ArrStint32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int32T*
  fun arrst_int32_t_bsearch(array : ArrStint32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int32T*
  fun arrst_int32_t_bsearch(array : ArrStint32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int32T*
  fun arrst_int32_t_bsearch_const(array : ArrStint32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int32T*
  fun arrst_int32_t_bsearch_const(array : ArrStint32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int32T*
  fun arrst_int32_t_end
  fun setst_int32_t_create(func_compare : (Int32T*, Int32T* -> LibC::Int), esize : Uint16T) : SetStint32T*

  struct SetStint32T
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStint32T*
    func_compare : FPtrCompare
  end

  struct NodeStint32T
    rb : Uint32T
    left : NodeStint32T*
    right : NodeStint32T*
    data : Int32T
  end

  fun setst_int32_t_create(func_compare : (Int32T*, Int32T* -> LibC::Int), esize : Uint16T) : SetStint32T*
  fun setst_int32_t_destroy(set : SetStint32T**, func_remove : (Int32T* -> Void))
  fun setst_int32_t_destroy(set : SetStint32T**, func_remove : (Int32T* -> Void))
  fun setst_int32_t_size(set : SetStint32T*) : Uint32T
  fun setst_int32_t_size(set : SetStint32T*) : Uint32T
  fun setst_int32_t_get(set : SetStint32T*, key : Int32T*) : Int32T*
  fun setst_int32_t_get(set : SetStint32T*, key : Int32T*) : Int32T*
  fun setst_int32_t_get_const(set : SetStint32T*, key : Int32T*) : Int32T*
  fun setst_int32_t_get_const(set : SetStint32T*, key : Int32T*) : Int32T*
  fun setst_int32_t_insert(set : SetStint32T*, key : Int32T*) : Int32T*
  fun setst_int32_t_insert(set : SetStint32T*, key : Int32T*) : Int32T*
  fun setst_int32_t_delete(set : SetStint32T*, key : Int32T*, func_remove : (Int32T* -> Void)) : BoolT
  fun setst_int32_t_delete(set : SetStint32T*, key : Int32T*, func_remove : (Int32T* -> Void)) : BoolT
  fun setst_int32_t_first(set : SetStint32T*) : Int32T*
  fun setst_int32_t_first(set : SetStint32T*) : Int32T*
  fun setst_int32_t_first_const(set : SetStint32T*) : Int32T*
  fun setst_int32_t_first_const(set : SetStint32T*) : Int32T*
  fun setst_int32_t_last(set : SetStint32T*) : Int32T*
  fun setst_int32_t_last(set : SetStint32T*) : Int32T*
  fun setst_int32_t_last_const(set : SetStint32T*) : Int32T*
  fun setst_int32_t_last_const(set : SetStint32T*) : Int32T*
  fun setst_int32_t_next(set : SetStint32T*) : Int32T*
  fun setst_int32_t_next(set : SetStint32T*) : Int32T*
  fun setst_int32_t_next_const(set : SetStint32T*) : Int32T*
  fun setst_int32_t_next_const(set : SetStint32T*) : Int32T*
  fun setst_int32_t_prev(set : SetStint32T*) : Int32T*
  fun setst_int32_t_prev(set : SetStint32T*) : Int32T*
  fun setst_int32_t_prev_const(set : SetStint32T*) : Int32T*
  fun setst_int32_t_prev_const(set : SetStint32T*) : Int32T*
  fun setst_int32_t_end

  struct Int64TData
    elem : Int64T[1024]
  end

  fun arrst_int64_t_create(esize : Uint16T) : ArrStint64T*

  struct ArrStint64T
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : Int64TData*
  end

  fun arrst_int64_t_create(esize : Uint16T) : ArrStint64T*
  fun arrst_int64_t_copy(array : ArrStint64T*, func_copy : (Int64T*, Int64T* -> Void)) : ArrStint64T*
  fun arrst_int64_t_copy(array : ArrStint64T*, func_copy : (Int64T*, Int64T* -> Void)) : ArrStint64T*
  fun arrst_int64_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, Int64T* -> Void)) : ArrStint64T*
  fun arrst_int64_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, Int64T* -> Void)) : ArrStint64T*
  fun arrst_int64_t_destroy(array : ArrStint64T**, func_remove : (Int64T* -> Void))
  fun arrst_int64_t_destroy(array : ArrStint64T**, func_remove : (Int64T* -> Void))
  fun arrst_int64_t_destopt(array : ArrStint64T**, func_remove : (Int64T* -> Void))
  fun arrst_int64_t_destopt(array : ArrStint64T**, func_remove : (Int64T* -> Void))
  fun arrst_int64_t_clear(array : ArrStint64T*, func_remove : (Int64T* -> Void))
  fun arrst_int64_t_clear(array : ArrStint64T*, func_remove : (Int64T* -> Void))
  fun arrst_int64_t_write(stream : Stream, array : ArrStint64T*, func_write : (Stream, Int64T* -> Void))
  fun arrst_int64_t_write(stream : Stream, array : ArrStint64T*, func_write : (Stream, Int64T* -> Void))
  fun arrst_int64_t_size(array : ArrStint64T*) : Uint32T
  fun arrst_int64_t_size(array : ArrStint64T*) : Uint32T
  fun arrst_int64_t_get(array : ArrStint64T*, pos : Uint32T) : Int64T*
  fun arrst_int64_t_get(array : ArrStint64T*, pos : Uint32T) : Int64T*
  fun arrst_int64_t_get_const(array : ArrStint64T*, pos : Uint32T) : Int64T*
  fun arrst_int64_t_get_const(array : ArrStint64T*, pos : Uint32T) : Int64T*
  fun arrst_int64_t_last(array : ArrStint64T*) : Int64T*
  fun arrst_int64_t_last(array : ArrStint64T*) : Int64T*
  fun arrst_int64_t_last_const(array : ArrStint64T*) : Int64T*
  fun arrst_int64_t_last_const(array : ArrStint64T*) : Int64T*
  fun arrst_int64_t_all(array : ArrStint64T*) : Int64T*
  fun arrst_int64_t_all(array : ArrStint64T*) : Int64T*
  fun arrst_int64_t_all_const(array : ArrStint64T*) : Int64T*
  fun arrst_int64_t_all_const(array : ArrStint64T*) : Int64T*
  fun arrst_int64_t_insert(array : ArrStint64T*, pos : Uint32T, n : Uint32T) : Int64T*
  fun arrst_int64_t_insert(array : ArrStint64T*, pos : Uint32T, n : Uint32T) : Int64T*
  fun arrst_int64_t_insert0(array : ArrStint64T*, pos : Uint32T, n : Uint32T) : Int64T*
  fun arrst_int64_t_insert0(array : ArrStint64T*, pos : Uint32T, n : Uint32T) : Int64T*
  fun arrst_int64_t_join(dest : ArrStint64T*, src : ArrStint64T*, func_copy : (Int64T*, Int64T* -> Void))
  fun arrst_int64_t_join(dest : ArrStint64T*, src : ArrStint64T*, func_copy : (Int64T*, Int64T* -> Void))
  fun arrst_int64_t_delete(array : ArrStint64T*, pos : Uint32T, func_remove : (Int64T* -> Void))
  fun arrst_int64_t_delete(array : ArrStint64T*, pos : Uint32T, func_remove : (Int64T* -> Void))
  fun arrst_int64_t_pop(array : ArrStint64T*, func_remove : (Int64T* -> Void))
  fun arrst_int64_t_pop(array : ArrStint64T*, func_remove : (Int64T* -> Void))
  fun arrst_int64_t_sort(array : ArrStint64T*, func_compare : (Int64T*, Int64T* -> LibC::Int))
  fun arrst_int64_t_sort(array : ArrStint64T*, func_compare : (Int64T*, Int64T* -> LibC::Int))
  fun arrst_int64_t_sort_ex(array : ArrStint64T*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_int64_t_sort_ex(array : ArrStint64T*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_int64_t_search(array : ArrStint64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int64T*
  fun arrst_int64_t_search(array : ArrStint64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int64T*
  fun arrst_int64_t_search_const(array : ArrStint64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int64T*
  fun arrst_int64_t_search_const(array : ArrStint64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int64T*
  fun arrst_int64_t_bsearch(array : ArrStint64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int64T*
  fun arrst_int64_t_bsearch(array : ArrStint64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int64T*
  fun arrst_int64_t_bsearch_const(array : ArrStint64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int64T*
  fun arrst_int64_t_bsearch_const(array : ArrStint64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Int64T*
  fun arrst_int64_t_end
  fun setst_int64_t_create(func_compare : (Int64T*, Int64T* -> LibC::Int), esize : Uint16T) : SetStint64T*

  struct SetStint64T
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStint64T*
    func_compare : FPtrCompare
  end

  struct NodeStint64T
    rb : Uint32T
    left : NodeStint64T*
    right : NodeStint64T*
    data : Int64T
  end

  fun setst_int64_t_create(func_compare : (Int64T*, Int64T* -> LibC::Int), esize : Uint16T) : SetStint64T*
  fun setst_int64_t_destroy(set : SetStint64T**, func_remove : (Int64T* -> Void))
  fun setst_int64_t_destroy(set : SetStint64T**, func_remove : (Int64T* -> Void))
  fun setst_int64_t_size(set : SetStint64T*) : Uint32T
  fun setst_int64_t_size(set : SetStint64T*) : Uint32T
  fun setst_int64_t_get(set : SetStint64T*, key : Int64T*) : Int64T*
  fun setst_int64_t_get(set : SetStint64T*, key : Int64T*) : Int64T*
  fun setst_int64_t_get_const(set : SetStint64T*, key : Int64T*) : Int64T*
  fun setst_int64_t_get_const(set : SetStint64T*, key : Int64T*) : Int64T*
  fun setst_int64_t_insert(set : SetStint64T*, key : Int64T*) : Int64T*
  fun setst_int64_t_insert(set : SetStint64T*, key : Int64T*) : Int64T*
  fun setst_int64_t_delete(set : SetStint64T*, key : Int64T*, func_remove : (Int64T* -> Void)) : BoolT
  fun setst_int64_t_delete(set : SetStint64T*, key : Int64T*, func_remove : (Int64T* -> Void)) : BoolT
  fun setst_int64_t_first(set : SetStint64T*) : Int64T*
  fun setst_int64_t_first(set : SetStint64T*) : Int64T*
  fun setst_int64_t_first_const(set : SetStint64T*) : Int64T*
  fun setst_int64_t_first_const(set : SetStint64T*) : Int64T*
  fun setst_int64_t_last(set : SetStint64T*) : Int64T*
  fun setst_int64_t_last(set : SetStint64T*) : Int64T*
  fun setst_int64_t_last_const(set : SetStint64T*) : Int64T*
  fun setst_int64_t_last_const(set : SetStint64T*) : Int64T*
  fun setst_int64_t_next(set : SetStint64T*) : Int64T*
  fun setst_int64_t_next(set : SetStint64T*) : Int64T*
  fun setst_int64_t_next_const(set : SetStint64T*) : Int64T*
  fun setst_int64_t_next_const(set : SetStint64T*) : Int64T*
  fun setst_int64_t_prev(set : SetStint64T*) : Int64T*
  fun setst_int64_t_prev(set : SetStint64T*) : Int64T*
  fun setst_int64_t_prev_const(set : SetStint64T*) : Int64T*
  fun setst_int64_t_prev_const(set : SetStint64T*) : Int64T*
  fun setst_int64_t_end

  struct Uint8TData
    elem : Uint8T[1024]
  end

  fun arrst_uint8_t_create(esize : Uint16T) : ArrStuint8T*

  struct ArrStuint8T
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : Uint8TData*
  end

  fun arrst_uint8_t_create(esize : Uint16T) : ArrStuint8T*
  fun arrst_uint8_t_copy(array : ArrStuint8T*, func_copy : (Uint8T*, Uint8T* -> Void)) : ArrStuint8T*
  fun arrst_uint8_t_copy(array : ArrStuint8T*, func_copy : (Uint8T*, Uint8T* -> Void)) : ArrStuint8T*
  fun arrst_uint8_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, Uint8T* -> Void)) : ArrStuint8T*
  fun arrst_uint8_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, Uint8T* -> Void)) : ArrStuint8T*
  fun arrst_uint8_t_destroy(array : ArrStuint8T**, func_remove : (Uint8T* -> Void))
  fun arrst_uint8_t_destroy(array : ArrStuint8T**, func_remove : (Uint8T* -> Void))
  fun arrst_uint8_t_destopt(array : ArrStuint8T**, func_remove : (Uint8T* -> Void))
  fun arrst_uint8_t_destopt(array : ArrStuint8T**, func_remove : (Uint8T* -> Void))
  fun arrst_uint8_t_clear(array : ArrStuint8T*, func_remove : (Uint8T* -> Void))
  fun arrst_uint8_t_clear(array : ArrStuint8T*, func_remove : (Uint8T* -> Void))
  fun arrst_uint8_t_write(stream : Stream, array : ArrStuint8T*, func_write : (Stream, Uint8T* -> Void))
  fun arrst_uint8_t_write(stream : Stream, array : ArrStuint8T*, func_write : (Stream, Uint8T* -> Void))
  fun arrst_uint8_t_size(array : ArrStuint8T*) : Uint32T
  fun arrst_uint8_t_size(array : ArrStuint8T*) : Uint32T
  fun arrst_uint8_t_get(array : ArrStuint8T*, pos : Uint32T) : Uint8T*
  fun arrst_uint8_t_get(array : ArrStuint8T*, pos : Uint32T) : Uint8T*
  fun arrst_uint8_t_get_const(array : ArrStuint8T*, pos : Uint32T) : Uint8T*
  fun arrst_uint8_t_get_const(array : ArrStuint8T*, pos : Uint32T) : Uint8T*
  fun arrst_uint8_t_last(array : ArrStuint8T*) : Uint8T*
  fun arrst_uint8_t_last(array : ArrStuint8T*) : Uint8T*
  fun arrst_uint8_t_last_const(array : ArrStuint8T*) : Uint8T*
  fun arrst_uint8_t_last_const(array : ArrStuint8T*) : Uint8T*
  fun arrst_uint8_t_all(array : ArrStuint8T*) : Uint8T*
  fun arrst_uint8_t_all(array : ArrStuint8T*) : Uint8T*
  fun arrst_uint8_t_all_const(array : ArrStuint8T*) : Uint8T*
  fun arrst_uint8_t_all_const(array : ArrStuint8T*) : Uint8T*
  fun arrst_uint8_t_insert(array : ArrStuint8T*, pos : Uint32T, n : Uint32T) : Uint8T*
  fun arrst_uint8_t_insert(array : ArrStuint8T*, pos : Uint32T, n : Uint32T) : Uint8T*
  fun arrst_uint8_t_insert0(array : ArrStuint8T*, pos : Uint32T, n : Uint32T) : Uint8T*
  fun arrst_uint8_t_insert0(array : ArrStuint8T*, pos : Uint32T, n : Uint32T) : Uint8T*
  fun arrst_uint8_t_join(dest : ArrStuint8T*, src : ArrStuint8T*, func_copy : (Uint8T*, Uint8T* -> Void))
  fun arrst_uint8_t_join(dest : ArrStuint8T*, src : ArrStuint8T*, func_copy : (Uint8T*, Uint8T* -> Void))
  fun arrst_uint8_t_delete(array : ArrStuint8T*, pos : Uint32T, func_remove : (Uint8T* -> Void))
  fun arrst_uint8_t_delete(array : ArrStuint8T*, pos : Uint32T, func_remove : (Uint8T* -> Void))
  fun arrst_uint8_t_pop(array : ArrStuint8T*, func_remove : (Uint8T* -> Void))
  fun arrst_uint8_t_pop(array : ArrStuint8T*, func_remove : (Uint8T* -> Void))
  fun arrst_uint8_t_sort(array : ArrStuint8T*, func_compare : (Uint8T*, Uint8T* -> LibC::Int))
  fun arrst_uint8_t_sort(array : ArrStuint8T*, func_compare : (Uint8T*, Uint8T* -> LibC::Int))
  fun arrst_uint8_t_sort_ex(array : ArrStuint8T*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_uint8_t_sort_ex(array : ArrStuint8T*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_uint8_t_search(array : ArrStuint8T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint8T*
  fun arrst_uint8_t_search(array : ArrStuint8T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint8T*
  fun arrst_uint8_t_search_const(array : ArrStuint8T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint8T*
  fun arrst_uint8_t_search_const(array : ArrStuint8T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint8T*
  fun arrst_uint8_t_bsearch(array : ArrStuint8T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint8T*
  fun arrst_uint8_t_bsearch(array : ArrStuint8T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint8T*
  fun arrst_uint8_t_bsearch_const(array : ArrStuint8T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint8T*
  fun arrst_uint8_t_bsearch_const(array : ArrStuint8T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint8T*
  fun arrst_uint8_t_end
  fun setst_uint8_t_create(func_compare : (Uint8T*, Uint8T* -> LibC::Int), esize : Uint16T) : SetStuint8T*

  struct SetStuint8T
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStuint8T*
    func_compare : FPtrCompare
  end

  struct NodeStuint8T
    rb : Uint32T
    left : NodeStuint8T*
    right : NodeStuint8T*
    data : Uint8T
  end

  fun setst_uint8_t_create(func_compare : (Uint8T*, Uint8T* -> LibC::Int), esize : Uint16T) : SetStuint8T*
  fun setst_uint8_t_destroy(set : SetStuint8T**, func_remove : (Uint8T* -> Void))
  fun setst_uint8_t_destroy(set : SetStuint8T**, func_remove : (Uint8T* -> Void))
  fun setst_uint8_t_size(set : SetStuint8T*) : Uint32T
  fun setst_uint8_t_size(set : SetStuint8T*) : Uint32T
  fun setst_uint8_t_get(set : SetStuint8T*, key : Uint8T*) : Uint8T*
  fun setst_uint8_t_get(set : SetStuint8T*, key : Uint8T*) : Uint8T*
  fun setst_uint8_t_get_const(set : SetStuint8T*, key : Uint8T*) : Uint8T*
  fun setst_uint8_t_get_const(set : SetStuint8T*, key : Uint8T*) : Uint8T*
  fun setst_uint8_t_insert(set : SetStuint8T*, key : Uint8T*) : Uint8T*
  fun setst_uint8_t_insert(set : SetStuint8T*, key : Uint8T*) : Uint8T*
  fun setst_uint8_t_delete(set : SetStuint8T*, key : Uint8T*, func_remove : (Uint8T* -> Void)) : BoolT
  fun setst_uint8_t_delete(set : SetStuint8T*, key : Uint8T*, func_remove : (Uint8T* -> Void)) : BoolT
  fun setst_uint8_t_first(set : SetStuint8T*) : Uint8T*
  fun setst_uint8_t_first(set : SetStuint8T*) : Uint8T*
  fun setst_uint8_t_first_const(set : SetStuint8T*) : Uint8T*
  fun setst_uint8_t_first_const(set : SetStuint8T*) : Uint8T*
  fun setst_uint8_t_last(set : SetStuint8T*) : Uint8T*
  fun setst_uint8_t_last(set : SetStuint8T*) : Uint8T*
  fun setst_uint8_t_last_const(set : SetStuint8T*) : Uint8T*
  fun setst_uint8_t_last_const(set : SetStuint8T*) : Uint8T*
  fun setst_uint8_t_next(set : SetStuint8T*) : Uint8T*
  fun setst_uint8_t_next(set : SetStuint8T*) : Uint8T*
  fun setst_uint8_t_next_const(set : SetStuint8T*) : Uint8T*
  fun setst_uint8_t_next_const(set : SetStuint8T*) : Uint8T*
  fun setst_uint8_t_prev(set : SetStuint8T*) : Uint8T*
  fun setst_uint8_t_prev(set : SetStuint8T*) : Uint8T*
  fun setst_uint8_t_prev_const(set : SetStuint8T*) : Uint8T*
  fun setst_uint8_t_prev_const(set : SetStuint8T*) : Uint8T*
  fun setst_uint8_t_end

  struct Uint16TData
    elem : Uint16T[1024]
  end

  fun arrst_uint16_t_create(esize : Uint16T) : ArrStuint16T*

  struct ArrStuint16T
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : Uint16TData*
  end

  fun arrst_uint16_t_create(esize : Uint16T) : ArrStuint16T*
  fun arrst_uint16_t_copy(array : ArrStuint16T*, func_copy : (Uint16T*, Uint16T* -> Void)) : ArrStuint16T*
  fun arrst_uint16_t_copy(array : ArrStuint16T*, func_copy : (Uint16T*, Uint16T* -> Void)) : ArrStuint16T*
  fun arrst_uint16_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, Uint16T* -> Void)) : ArrStuint16T*
  fun arrst_uint16_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, Uint16T* -> Void)) : ArrStuint16T*
  fun arrst_uint16_t_destroy(array : ArrStuint16T**, func_remove : (Uint16T* -> Void))
  fun arrst_uint16_t_destroy(array : ArrStuint16T**, func_remove : (Uint16T* -> Void))
  fun arrst_uint16_t_destopt(array : ArrStuint16T**, func_remove : (Uint16T* -> Void))
  fun arrst_uint16_t_destopt(array : ArrStuint16T**, func_remove : (Uint16T* -> Void))
  fun arrst_uint16_t_clear(array : ArrStuint16T*, func_remove : (Uint16T* -> Void))
  fun arrst_uint16_t_clear(array : ArrStuint16T*, func_remove : (Uint16T* -> Void))
  fun arrst_uint16_t_write(stream : Stream, array : ArrStuint16T*, func_write : (Stream, Uint16T* -> Void))
  fun arrst_uint16_t_write(stream : Stream, array : ArrStuint16T*, func_write : (Stream, Uint16T* -> Void))
  fun arrst_uint16_t_size(array : ArrStuint16T*) : Uint32T
  fun arrst_uint16_t_size(array : ArrStuint16T*) : Uint32T
  fun arrst_uint16_t_get(array : ArrStuint16T*, pos : Uint32T) : Uint16T*
  fun arrst_uint16_t_get(array : ArrStuint16T*, pos : Uint32T) : Uint16T*
  fun arrst_uint16_t_get_const(array : ArrStuint16T*, pos : Uint32T) : Uint16T*
  fun arrst_uint16_t_get_const(array : ArrStuint16T*, pos : Uint32T) : Uint16T*
  fun arrst_uint16_t_last(array : ArrStuint16T*) : Uint16T*
  fun arrst_uint16_t_last(array : ArrStuint16T*) : Uint16T*
  fun arrst_uint16_t_last_const(array : ArrStuint16T*) : Uint16T*
  fun arrst_uint16_t_last_const(array : ArrStuint16T*) : Uint16T*
  fun arrst_uint16_t_all(array : ArrStuint16T*) : Uint16T*
  fun arrst_uint16_t_all(array : ArrStuint16T*) : Uint16T*
  fun arrst_uint16_t_all_const(array : ArrStuint16T*) : Uint16T*
  fun arrst_uint16_t_all_const(array : ArrStuint16T*) : Uint16T*
  fun arrst_uint16_t_insert(array : ArrStuint16T*, pos : Uint32T, n : Uint32T) : Uint16T*
  fun arrst_uint16_t_insert(array : ArrStuint16T*, pos : Uint32T, n : Uint32T) : Uint16T*
  fun arrst_uint16_t_insert0(array : ArrStuint16T*, pos : Uint32T, n : Uint32T) : Uint16T*
  fun arrst_uint16_t_insert0(array : ArrStuint16T*, pos : Uint32T, n : Uint32T) : Uint16T*
  fun arrst_uint16_t_join(dest : ArrStuint16T*, src : ArrStuint16T*, func_copy : (Uint16T*, Uint16T* -> Void))
  fun arrst_uint16_t_join(dest : ArrStuint16T*, src : ArrStuint16T*, func_copy : (Uint16T*, Uint16T* -> Void))
  fun arrst_uint16_t_delete(array : ArrStuint16T*, pos : Uint32T, func_remove : (Uint16T* -> Void))
  fun arrst_uint16_t_delete(array : ArrStuint16T*, pos : Uint32T, func_remove : (Uint16T* -> Void))
  fun arrst_uint16_t_pop(array : ArrStuint16T*, func_remove : (Uint16T* -> Void))
  fun arrst_uint16_t_pop(array : ArrStuint16T*, func_remove : (Uint16T* -> Void))
  fun arrst_uint16_t_sort(array : ArrStuint16T*, func_compare : (Uint16T*, Uint16T* -> LibC::Int))
  fun arrst_uint16_t_sort(array : ArrStuint16T*, func_compare : (Uint16T*, Uint16T* -> LibC::Int))
  fun arrst_uint16_t_sort_ex(array : ArrStuint16T*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_uint16_t_sort_ex(array : ArrStuint16T*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_uint16_t_search(array : ArrStuint16T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint16T*
  fun arrst_uint16_t_search(array : ArrStuint16T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint16T*
  fun arrst_uint16_t_search_const(array : ArrStuint16T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint16T*
  fun arrst_uint16_t_search_const(array : ArrStuint16T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint16T*
  fun arrst_uint16_t_bsearch(array : ArrStuint16T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint16T*
  fun arrst_uint16_t_bsearch(array : ArrStuint16T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint16T*
  fun arrst_uint16_t_bsearch_const(array : ArrStuint16T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint16T*
  fun arrst_uint16_t_bsearch_const(array : ArrStuint16T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint16T*
  fun arrst_uint16_t_end
  fun setst_uint16_t_create(func_compare : (Uint16T*, Uint16T* -> LibC::Int), esize : Uint16T) : SetStuint16T*

  struct SetStuint16T
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStuint16T*
    func_compare : FPtrCompare
  end

  struct NodeStuint16T
    rb : Uint32T
    left : NodeStuint16T*
    right : NodeStuint16T*
    data : Uint16T
  end

  fun setst_uint16_t_create(func_compare : (Uint16T*, Uint16T* -> LibC::Int), esize : Uint16T) : SetStuint16T*
  fun setst_uint16_t_destroy(set : SetStuint16T**, func_remove : (Uint16T* -> Void))
  fun setst_uint16_t_destroy(set : SetStuint16T**, func_remove : (Uint16T* -> Void))
  fun setst_uint16_t_size(set : SetStuint16T*) : Uint32T
  fun setst_uint16_t_size(set : SetStuint16T*) : Uint32T
  fun setst_uint16_t_get(set : SetStuint16T*, key : Uint16T*) : Uint16T*
  fun setst_uint16_t_get(set : SetStuint16T*, key : Uint16T*) : Uint16T*
  fun setst_uint16_t_get_const(set : SetStuint16T*, key : Uint16T*) : Uint16T*
  fun setst_uint16_t_get_const(set : SetStuint16T*, key : Uint16T*) : Uint16T*
  fun setst_uint16_t_insert(set : SetStuint16T*, key : Uint16T*) : Uint16T*
  fun setst_uint16_t_insert(set : SetStuint16T*, key : Uint16T*) : Uint16T*
  fun setst_uint16_t_delete(set : SetStuint16T*, key : Uint16T*, func_remove : (Uint16T* -> Void)) : BoolT
  fun setst_uint16_t_delete(set : SetStuint16T*, key : Uint16T*, func_remove : (Uint16T* -> Void)) : BoolT
  fun setst_uint16_t_first(set : SetStuint16T*) : Uint16T*
  fun setst_uint16_t_first(set : SetStuint16T*) : Uint16T*
  fun setst_uint16_t_first_const(set : SetStuint16T*) : Uint16T*
  fun setst_uint16_t_first_const(set : SetStuint16T*) : Uint16T*
  fun setst_uint16_t_last(set : SetStuint16T*) : Uint16T*
  fun setst_uint16_t_last(set : SetStuint16T*) : Uint16T*
  fun setst_uint16_t_last_const(set : SetStuint16T*) : Uint16T*
  fun setst_uint16_t_last_const(set : SetStuint16T*) : Uint16T*
  fun setst_uint16_t_next(set : SetStuint16T*) : Uint16T*
  fun setst_uint16_t_next(set : SetStuint16T*) : Uint16T*
  fun setst_uint16_t_next_const(set : SetStuint16T*) : Uint16T*
  fun setst_uint16_t_next_const(set : SetStuint16T*) : Uint16T*
  fun setst_uint16_t_prev(set : SetStuint16T*) : Uint16T*
  fun setst_uint16_t_prev(set : SetStuint16T*) : Uint16T*
  fun setst_uint16_t_prev_const(set : SetStuint16T*) : Uint16T*
  fun setst_uint16_t_prev_const(set : SetStuint16T*) : Uint16T*
  fun setst_uint16_t_end

  struct Uint32TData
    elem : Uint32T[1024]
  end

  fun arrst_uint32_t_create(esize : Uint16T) : ArrStuint32T*

  struct ArrStuint32T
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : Uint32TData*
  end

  fun arrst_uint32_t_create(esize : Uint16T) : ArrStuint32T*
  fun arrst_uint32_t_copy(array : ArrStuint32T*, func_copy : (Uint32T*, Uint32T* -> Void)) : ArrStuint32T*
  fun arrst_uint32_t_copy(array : ArrStuint32T*, func_copy : (Uint32T*, Uint32T* -> Void)) : ArrStuint32T*
  fun arrst_uint32_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, Uint32T* -> Void)) : ArrStuint32T*
  fun arrst_uint32_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, Uint32T* -> Void)) : ArrStuint32T*
  fun arrst_uint32_t_destroy(array : ArrStuint32T**, func_remove : (Uint32T* -> Void))
  fun arrst_uint32_t_destroy(array : ArrStuint32T**, func_remove : (Uint32T* -> Void))
  fun arrst_uint32_t_destopt(array : ArrStuint32T**, func_remove : (Uint32T* -> Void))
  fun arrst_uint32_t_destopt(array : ArrStuint32T**, func_remove : (Uint32T* -> Void))
  fun arrst_uint32_t_clear(array : ArrStuint32T*, func_remove : (Uint32T* -> Void))
  fun arrst_uint32_t_clear(array : ArrStuint32T*, func_remove : (Uint32T* -> Void))
  fun arrst_uint32_t_write(stream : Stream, array : ArrStuint32T*, func_write : (Stream, Uint32T* -> Void))
  fun arrst_uint32_t_write(stream : Stream, array : ArrStuint32T*, func_write : (Stream, Uint32T* -> Void))
  fun arrst_uint32_t_size(array : ArrStuint32T*) : Uint32T
  fun arrst_uint32_t_size(array : ArrStuint32T*) : Uint32T
  fun arrst_uint32_t_get(array : ArrStuint32T*, pos : Uint32T) : Uint32T*
  fun arrst_uint32_t_get(array : ArrStuint32T*, pos : Uint32T) : Uint32T*
  fun arrst_uint32_t_get_const(array : ArrStuint32T*, pos : Uint32T) : Uint32T*
  fun arrst_uint32_t_get_const(array : ArrStuint32T*, pos : Uint32T) : Uint32T*
  fun arrst_uint32_t_last(array : ArrStuint32T*) : Uint32T*
  fun arrst_uint32_t_last(array : ArrStuint32T*) : Uint32T*
  fun arrst_uint32_t_last_const(array : ArrStuint32T*) : Uint32T*
  fun arrst_uint32_t_last_const(array : ArrStuint32T*) : Uint32T*
  fun arrst_uint32_t_all(array : ArrStuint32T*) : Uint32T*
  fun arrst_uint32_t_all(array : ArrStuint32T*) : Uint32T*
  fun arrst_uint32_t_all_const(array : ArrStuint32T*) : Uint32T*
  fun arrst_uint32_t_all_const(array : ArrStuint32T*) : Uint32T*
  fun arrst_uint32_t_insert(array : ArrStuint32T*, pos : Uint32T, n : Uint32T) : Uint32T*
  fun arrst_uint32_t_insert(array : ArrStuint32T*, pos : Uint32T, n : Uint32T) : Uint32T*
  fun arrst_uint32_t_insert0(array : ArrStuint32T*, pos : Uint32T, n : Uint32T) : Uint32T*
  fun arrst_uint32_t_insert0(array : ArrStuint32T*, pos : Uint32T, n : Uint32T) : Uint32T*
  fun arrst_uint32_t_join(dest : ArrStuint32T*, src : ArrStuint32T*, func_copy : (Uint32T*, Uint32T* -> Void))
  fun arrst_uint32_t_join(dest : ArrStuint32T*, src : ArrStuint32T*, func_copy : (Uint32T*, Uint32T* -> Void))
  fun arrst_uint32_t_delete(array : ArrStuint32T*, pos : Uint32T, func_remove : (Uint32T* -> Void))
  fun arrst_uint32_t_delete(array : ArrStuint32T*, pos : Uint32T, func_remove : (Uint32T* -> Void))
  fun arrst_uint32_t_pop(array : ArrStuint32T*, func_remove : (Uint32T* -> Void))
  fun arrst_uint32_t_pop(array : ArrStuint32T*, func_remove : (Uint32T* -> Void))
  fun arrst_uint32_t_sort(array : ArrStuint32T*, func_compare : (Uint32T*, Uint32T* -> LibC::Int))
  fun arrst_uint32_t_sort(array : ArrStuint32T*, func_compare : (Uint32T*, Uint32T* -> LibC::Int))
  fun arrst_uint32_t_sort_ex(array : ArrStuint32T*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_uint32_t_sort_ex(array : ArrStuint32T*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_uint32_t_search(array : ArrStuint32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint32T*
  fun arrst_uint32_t_search(array : ArrStuint32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint32T*
  fun arrst_uint32_t_search_const(array : ArrStuint32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint32T*
  fun arrst_uint32_t_search_const(array : ArrStuint32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint32T*
  fun arrst_uint32_t_bsearch(array : ArrStuint32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint32T*
  fun arrst_uint32_t_bsearch(array : ArrStuint32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint32T*
  fun arrst_uint32_t_bsearch_const(array : ArrStuint32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint32T*
  fun arrst_uint32_t_bsearch_const(array : ArrStuint32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint32T*
  fun arrst_uint32_t_end
  fun setst_uint32_t_create(func_compare : (Uint32T*, Uint32T* -> LibC::Int), esize : Uint16T) : SetStuint32T*

  struct SetStuint32T
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStuint32T*
    func_compare : FPtrCompare
  end

  struct NodeStuint32T
    rb : Uint32T
    left : NodeStuint32T*
    right : NodeStuint32T*
    data : Uint32T
  end

  fun setst_uint32_t_create(func_compare : (Uint32T*, Uint32T* -> LibC::Int), esize : Uint16T) : SetStuint32T*
  fun setst_uint32_t_destroy(set : SetStuint32T**, func_remove : (Uint32T* -> Void))
  fun setst_uint32_t_destroy(set : SetStuint32T**, func_remove : (Uint32T* -> Void))
  fun setst_uint32_t_size(set : SetStuint32T*) : Uint32T
  fun setst_uint32_t_size(set : SetStuint32T*) : Uint32T
  fun setst_uint32_t_get(set : SetStuint32T*, key : Uint32T*) : Uint32T*
  fun setst_uint32_t_get(set : SetStuint32T*, key : Uint32T*) : Uint32T*
  fun setst_uint32_t_get_const(set : SetStuint32T*, key : Uint32T*) : Uint32T*
  fun setst_uint32_t_get_const(set : SetStuint32T*, key : Uint32T*) : Uint32T*
  fun setst_uint32_t_insert(set : SetStuint32T*, key : Uint32T*) : Uint32T*
  fun setst_uint32_t_insert(set : SetStuint32T*, key : Uint32T*) : Uint32T*
  fun setst_uint32_t_delete(set : SetStuint32T*, key : Uint32T*, func_remove : (Uint32T* -> Void)) : BoolT
  fun setst_uint32_t_delete(set : SetStuint32T*, key : Uint32T*, func_remove : (Uint32T* -> Void)) : BoolT
  fun setst_uint32_t_first(set : SetStuint32T*) : Uint32T*
  fun setst_uint32_t_first(set : SetStuint32T*) : Uint32T*
  fun setst_uint32_t_first_const(set : SetStuint32T*) : Uint32T*
  fun setst_uint32_t_first_const(set : SetStuint32T*) : Uint32T*
  fun setst_uint32_t_last(set : SetStuint32T*) : Uint32T*
  fun setst_uint32_t_last(set : SetStuint32T*) : Uint32T*
  fun setst_uint32_t_last_const(set : SetStuint32T*) : Uint32T*
  fun setst_uint32_t_last_const(set : SetStuint32T*) : Uint32T*
  fun setst_uint32_t_next(set : SetStuint32T*) : Uint32T*
  fun setst_uint32_t_next(set : SetStuint32T*) : Uint32T*
  fun setst_uint32_t_next_const(set : SetStuint32T*) : Uint32T*
  fun setst_uint32_t_next_const(set : SetStuint32T*) : Uint32T*
  fun setst_uint32_t_prev(set : SetStuint32T*) : Uint32T*
  fun setst_uint32_t_prev(set : SetStuint32T*) : Uint32T*
  fun setst_uint32_t_prev_const(set : SetStuint32T*) : Uint32T*
  fun setst_uint32_t_prev_const(set : SetStuint32T*) : Uint32T*
  fun setst_uint32_t_end

  struct Uint64TData
    elem : Uint64T[1024]
  end

  fun arrst_uint64_t_create(esize : Uint16T) : ArrStuint64T*

  struct ArrStuint64T
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : Uint64TData*
  end

  fun arrst_uint64_t_create(esize : Uint16T) : ArrStuint64T*
  fun arrst_uint64_t_copy(array : ArrStuint64T*, func_copy : (Uint64T*, Uint64T* -> Void)) : ArrStuint64T*
  fun arrst_uint64_t_copy(array : ArrStuint64T*, func_copy : (Uint64T*, Uint64T* -> Void)) : ArrStuint64T*
  fun arrst_uint64_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, Uint64T* -> Void)) : ArrStuint64T*
  fun arrst_uint64_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, Uint64T* -> Void)) : ArrStuint64T*
  fun arrst_uint64_t_destroy(array : ArrStuint64T**, func_remove : (Uint64T* -> Void))
  fun arrst_uint64_t_destroy(array : ArrStuint64T**, func_remove : (Uint64T* -> Void))
  fun arrst_uint64_t_destopt(array : ArrStuint64T**, func_remove : (Uint64T* -> Void))
  fun arrst_uint64_t_destopt(array : ArrStuint64T**, func_remove : (Uint64T* -> Void))
  fun arrst_uint64_t_clear(array : ArrStuint64T*, func_remove : (Uint64T* -> Void))
  fun arrst_uint64_t_clear(array : ArrStuint64T*, func_remove : (Uint64T* -> Void))
  fun arrst_uint64_t_write(stream : Stream, array : ArrStuint64T*, func_write : (Stream, Uint64T* -> Void))
  fun arrst_uint64_t_write(stream : Stream, array : ArrStuint64T*, func_write : (Stream, Uint64T* -> Void))
  fun arrst_uint64_t_size(array : ArrStuint64T*) : Uint32T
  fun arrst_uint64_t_size(array : ArrStuint64T*) : Uint32T
  fun arrst_uint64_t_get(array : ArrStuint64T*, pos : Uint32T) : Uint64T*
  fun arrst_uint64_t_get(array : ArrStuint64T*, pos : Uint32T) : Uint64T*
  fun arrst_uint64_t_get_const(array : ArrStuint64T*, pos : Uint32T) : Uint64T*
  fun arrst_uint64_t_get_const(array : ArrStuint64T*, pos : Uint32T) : Uint64T*
  fun arrst_uint64_t_last(array : ArrStuint64T*) : Uint64T*
  fun arrst_uint64_t_last(array : ArrStuint64T*) : Uint64T*
  fun arrst_uint64_t_last_const(array : ArrStuint64T*) : Uint64T*
  fun arrst_uint64_t_last_const(array : ArrStuint64T*) : Uint64T*
  fun arrst_uint64_t_all(array : ArrStuint64T*) : Uint64T*
  fun arrst_uint64_t_all(array : ArrStuint64T*) : Uint64T*
  fun arrst_uint64_t_all_const(array : ArrStuint64T*) : Uint64T*
  fun arrst_uint64_t_all_const(array : ArrStuint64T*) : Uint64T*
  fun arrst_uint64_t_insert(array : ArrStuint64T*, pos : Uint32T, n : Uint32T) : Uint64T*
  fun arrst_uint64_t_insert(array : ArrStuint64T*, pos : Uint32T, n : Uint32T) : Uint64T*
  fun arrst_uint64_t_insert0(array : ArrStuint64T*, pos : Uint32T, n : Uint32T) : Uint64T*
  fun arrst_uint64_t_insert0(array : ArrStuint64T*, pos : Uint32T, n : Uint32T) : Uint64T*
  fun arrst_uint64_t_join(dest : ArrStuint64T*, src : ArrStuint64T*, func_copy : (Uint64T*, Uint64T* -> Void))
  fun arrst_uint64_t_join(dest : ArrStuint64T*, src : ArrStuint64T*, func_copy : (Uint64T*, Uint64T* -> Void))
  fun arrst_uint64_t_delete(array : ArrStuint64T*, pos : Uint32T, func_remove : (Uint64T* -> Void))
  fun arrst_uint64_t_delete(array : ArrStuint64T*, pos : Uint32T, func_remove : (Uint64T* -> Void))
  fun arrst_uint64_t_pop(array : ArrStuint64T*, func_remove : (Uint64T* -> Void))
  fun arrst_uint64_t_pop(array : ArrStuint64T*, func_remove : (Uint64T* -> Void))
  fun arrst_uint64_t_sort(array : ArrStuint64T*, func_compare : (Uint64T*, Uint64T* -> LibC::Int))
  fun arrst_uint64_t_sort(array : ArrStuint64T*, func_compare : (Uint64T*, Uint64T* -> LibC::Int))
  fun arrst_uint64_t_sort_ex(array : ArrStuint64T*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_uint64_t_sort_ex(array : ArrStuint64T*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_uint64_t_search(array : ArrStuint64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint64T*
  fun arrst_uint64_t_search(array : ArrStuint64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint64T*
  fun arrst_uint64_t_search_const(array : ArrStuint64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint64T*
  fun arrst_uint64_t_search_const(array : ArrStuint64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint64T*
  fun arrst_uint64_t_bsearch(array : ArrStuint64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint64T*
  fun arrst_uint64_t_bsearch(array : ArrStuint64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint64T*
  fun arrst_uint64_t_bsearch_const(array : ArrStuint64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint64T*
  fun arrst_uint64_t_bsearch_const(array : ArrStuint64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Uint64T*
  fun arrst_uint64_t_end
  fun setst_uint64_t_create(func_compare : (Uint64T*, Uint64T* -> LibC::Int), esize : Uint16T) : SetStuint64T*

  struct SetStuint64T
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStuint64T*
    func_compare : FPtrCompare
  end

  struct NodeStuint64T
    rb : Uint32T
    left : NodeStuint64T*
    right : NodeStuint64T*
    data : Uint64T
  end

  fun setst_uint64_t_create(func_compare : (Uint64T*, Uint64T* -> LibC::Int), esize : Uint16T) : SetStuint64T*
  fun setst_uint64_t_destroy(set : SetStuint64T**, func_remove : (Uint64T* -> Void))
  fun setst_uint64_t_destroy(set : SetStuint64T**, func_remove : (Uint64T* -> Void))
  fun setst_uint64_t_size(set : SetStuint64T*) : Uint32T
  fun setst_uint64_t_size(set : SetStuint64T*) : Uint32T
  fun setst_uint64_t_get(set : SetStuint64T*, key : Uint64T*) : Uint64T*
  fun setst_uint64_t_get(set : SetStuint64T*, key : Uint64T*) : Uint64T*
  fun setst_uint64_t_get_const(set : SetStuint64T*, key : Uint64T*) : Uint64T*
  fun setst_uint64_t_get_const(set : SetStuint64T*, key : Uint64T*) : Uint64T*
  fun setst_uint64_t_insert(set : SetStuint64T*, key : Uint64T*) : Uint64T*
  fun setst_uint64_t_insert(set : SetStuint64T*, key : Uint64T*) : Uint64T*
  fun setst_uint64_t_delete(set : SetStuint64T*, key : Uint64T*, func_remove : (Uint64T* -> Void)) : BoolT
  fun setst_uint64_t_delete(set : SetStuint64T*, key : Uint64T*, func_remove : (Uint64T* -> Void)) : BoolT
  fun setst_uint64_t_first(set : SetStuint64T*) : Uint64T*
  fun setst_uint64_t_first(set : SetStuint64T*) : Uint64T*
  fun setst_uint64_t_first_const(set : SetStuint64T*) : Uint64T*
  fun setst_uint64_t_first_const(set : SetStuint64T*) : Uint64T*
  fun setst_uint64_t_last(set : SetStuint64T*) : Uint64T*
  fun setst_uint64_t_last(set : SetStuint64T*) : Uint64T*
  fun setst_uint64_t_last_const(set : SetStuint64T*) : Uint64T*
  fun setst_uint64_t_last_const(set : SetStuint64T*) : Uint64T*
  fun setst_uint64_t_next(set : SetStuint64T*) : Uint64T*
  fun setst_uint64_t_next(set : SetStuint64T*) : Uint64T*
  fun setst_uint64_t_next_const(set : SetStuint64T*) : Uint64T*
  fun setst_uint64_t_next_const(set : SetStuint64T*) : Uint64T*
  fun setst_uint64_t_prev(set : SetStuint64T*) : Uint64T*
  fun setst_uint64_t_prev(set : SetStuint64T*) : Uint64T*
  fun setst_uint64_t_prev_const(set : SetStuint64T*) : Uint64T*
  fun setst_uint64_t_prev_const(set : SetStuint64T*) : Uint64T*
  fun setst_uint64_t_end

  struct Real32TData
    elem : Real32T[1024]
  end

  fun arrst_real32_t_create(esize : Uint16T) : ArrStreal32T*

  struct ArrStreal32T
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : Real32TData*
  end

  fun arrst_real32_t_create(esize : Uint16T) : ArrStreal32T*
  fun arrst_real32_t_copy(array : ArrStreal32T*, func_copy : (Real32T*, Real32T* -> Void)) : ArrStreal32T*
  fun arrst_real32_t_copy(array : ArrStreal32T*, func_copy : (Real32T*, Real32T* -> Void)) : ArrStreal32T*
  fun arrst_real32_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, Real32T* -> Void)) : ArrStreal32T*
  fun arrst_real32_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, Real32T* -> Void)) : ArrStreal32T*
  fun arrst_real32_t_destroy(array : ArrStreal32T**, func_remove : (Real32T* -> Void))
  fun arrst_real32_t_destroy(array : ArrStreal32T**, func_remove : (Real32T* -> Void))
  fun arrst_real32_t_destopt(array : ArrStreal32T**, func_remove : (Real32T* -> Void))
  fun arrst_real32_t_destopt(array : ArrStreal32T**, func_remove : (Real32T* -> Void))
  fun arrst_real32_t_clear(array : ArrStreal32T*, func_remove : (Real32T* -> Void))
  fun arrst_real32_t_clear(array : ArrStreal32T*, func_remove : (Real32T* -> Void))
  fun arrst_real32_t_write(stream : Stream, array : ArrStreal32T*, func_write : (Stream, Real32T* -> Void))
  fun arrst_real32_t_write(stream : Stream, array : ArrStreal32T*, func_write : (Stream, Real32T* -> Void))
  fun arrst_real32_t_size(array : ArrStreal32T*) : Uint32T
  fun arrst_real32_t_size(array : ArrStreal32T*) : Uint32T
  fun arrst_real32_t_get(array : ArrStreal32T*, pos : Uint32T) : Real32T*
  fun arrst_real32_t_get(array : ArrStreal32T*, pos : Uint32T) : Real32T*
  fun arrst_real32_t_get_const(array : ArrStreal32T*, pos : Uint32T) : Real32T*
  fun arrst_real32_t_get_const(array : ArrStreal32T*, pos : Uint32T) : Real32T*
  fun arrst_real32_t_last(array : ArrStreal32T*) : Real32T*
  fun arrst_real32_t_last(array : ArrStreal32T*) : Real32T*
  fun arrst_real32_t_last_const(array : ArrStreal32T*) : Real32T*
  fun arrst_real32_t_last_const(array : ArrStreal32T*) : Real32T*
  fun arrst_real32_t_all(array : ArrStreal32T*) : Real32T*
  fun arrst_real32_t_all(array : ArrStreal32T*) : Real32T*
  fun arrst_real32_t_all_const(array : ArrStreal32T*) : Real32T*
  fun arrst_real32_t_all_const(array : ArrStreal32T*) : Real32T*
  fun arrst_real32_t_insert(array : ArrStreal32T*, pos : Uint32T, n : Uint32T) : Real32T*
  fun arrst_real32_t_insert(array : ArrStreal32T*, pos : Uint32T, n : Uint32T) : Real32T*
  fun arrst_real32_t_insert0(array : ArrStreal32T*, pos : Uint32T, n : Uint32T) : Real32T*
  fun arrst_real32_t_insert0(array : ArrStreal32T*, pos : Uint32T, n : Uint32T) : Real32T*
  fun arrst_real32_t_join(dest : ArrStreal32T*, src : ArrStreal32T*, func_copy : (Real32T*, Real32T* -> Void))
  fun arrst_real32_t_join(dest : ArrStreal32T*, src : ArrStreal32T*, func_copy : (Real32T*, Real32T* -> Void))
  fun arrst_real32_t_delete(array : ArrStreal32T*, pos : Uint32T, func_remove : (Real32T* -> Void))
  fun arrst_real32_t_delete(array : ArrStreal32T*, pos : Uint32T, func_remove : (Real32T* -> Void))
  fun arrst_real32_t_pop(array : ArrStreal32T*, func_remove : (Real32T* -> Void))
  fun arrst_real32_t_pop(array : ArrStreal32T*, func_remove : (Real32T* -> Void))
  fun arrst_real32_t_sort(array : ArrStreal32T*, func_compare : (Real32T*, Real32T* -> LibC::Int))
  fun arrst_real32_t_sort(array : ArrStreal32T*, func_compare : (Real32T*, Real32T* -> LibC::Int))
  fun arrst_real32_t_sort_ex(array : ArrStreal32T*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_real32_t_sort_ex(array : ArrStreal32T*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_real32_t_search(array : ArrStreal32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Real32T*
  fun arrst_real32_t_search(array : ArrStreal32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Real32T*
  fun arrst_real32_t_search_const(array : ArrStreal32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Real32T*
  fun arrst_real32_t_search_const(array : ArrStreal32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Real32T*
  fun arrst_real32_t_bsearch(array : ArrStreal32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Real32T*
  fun arrst_real32_t_bsearch(array : ArrStreal32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Real32T*
  fun arrst_real32_t_bsearch_const(array : ArrStreal32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Real32T*
  fun arrst_real32_t_bsearch_const(array : ArrStreal32T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Real32T*
  fun arrst_real32_t_end
  fun setst_real32_t_create(func_compare : (Real32T*, Real32T* -> LibC::Int), esize : Uint16T) : SetStreal32T*

  struct SetStreal32T
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStreal32T*
    func_compare : FPtrCompare
  end

  struct NodeStreal32T
    rb : Uint32T
    left : NodeStreal32T*
    right : NodeStreal32T*
    data : Real32T
  end

  fun setst_real32_t_create(func_compare : (Real32T*, Real32T* -> LibC::Int), esize : Uint16T) : SetStreal32T*
  fun setst_real32_t_destroy(set : SetStreal32T**, func_remove : (Real32T* -> Void))
  fun setst_real32_t_destroy(set : SetStreal32T**, func_remove : (Real32T* -> Void))
  fun setst_real32_t_size(set : SetStreal32T*) : Uint32T
  fun setst_real32_t_size(set : SetStreal32T*) : Uint32T
  fun setst_real32_t_get(set : SetStreal32T*, key : Real32T*) : Real32T*
  fun setst_real32_t_get(set : SetStreal32T*, key : Real32T*) : Real32T*
  fun setst_real32_t_get_const(set : SetStreal32T*, key : Real32T*) : Real32T*
  fun setst_real32_t_get_const(set : SetStreal32T*, key : Real32T*) : Real32T*
  fun setst_real32_t_insert(set : SetStreal32T*, key : Real32T*) : Real32T*
  fun setst_real32_t_insert(set : SetStreal32T*, key : Real32T*) : Real32T*
  fun setst_real32_t_delete(set : SetStreal32T*, key : Real32T*, func_remove : (Real32T* -> Void)) : BoolT
  fun setst_real32_t_delete(set : SetStreal32T*, key : Real32T*, func_remove : (Real32T* -> Void)) : BoolT
  fun setst_real32_t_first(set : SetStreal32T*) : Real32T*
  fun setst_real32_t_first(set : SetStreal32T*) : Real32T*
  fun setst_real32_t_first_const(set : SetStreal32T*) : Real32T*
  fun setst_real32_t_first_const(set : SetStreal32T*) : Real32T*
  fun setst_real32_t_last(set : SetStreal32T*) : Real32T*
  fun setst_real32_t_last(set : SetStreal32T*) : Real32T*
  fun setst_real32_t_last_const(set : SetStreal32T*) : Real32T*
  fun setst_real32_t_last_const(set : SetStreal32T*) : Real32T*
  fun setst_real32_t_next(set : SetStreal32T*) : Real32T*
  fun setst_real32_t_next(set : SetStreal32T*) : Real32T*
  fun setst_real32_t_next_const(set : SetStreal32T*) : Real32T*
  fun setst_real32_t_next_const(set : SetStreal32T*) : Real32T*
  fun setst_real32_t_prev(set : SetStreal32T*) : Real32T*
  fun setst_real32_t_prev(set : SetStreal32T*) : Real32T*
  fun setst_real32_t_prev_const(set : SetStreal32T*) : Real32T*
  fun setst_real32_t_prev_const(set : SetStreal32T*) : Real32T*
  fun setst_real32_t_end

  struct Real64TData
    elem : Real64T[1024]
  end

  fun arrst_real64_t_create(esize : Uint16T) : ArrStreal64T*

  struct ArrStreal64T
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : Real64TData*
  end

  fun arrst_real64_t_create(esize : Uint16T) : ArrStreal64T*
  fun arrst_real64_t_copy(array : ArrStreal64T*, func_copy : (Real64T*, Real64T* -> Void)) : ArrStreal64T*
  fun arrst_real64_t_copy(array : ArrStreal64T*, func_copy : (Real64T*, Real64T* -> Void)) : ArrStreal64T*
  fun arrst_real64_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, Real64T* -> Void)) : ArrStreal64T*
  fun arrst_real64_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, Real64T* -> Void)) : ArrStreal64T*
  fun arrst_real64_t_destroy(array : ArrStreal64T**, func_remove : (Real64T* -> Void))
  fun arrst_real64_t_destroy(array : ArrStreal64T**, func_remove : (Real64T* -> Void))
  fun arrst_real64_t_destopt(array : ArrStreal64T**, func_remove : (Real64T* -> Void))
  fun arrst_real64_t_destopt(array : ArrStreal64T**, func_remove : (Real64T* -> Void))
  fun arrst_real64_t_clear(array : ArrStreal64T*, func_remove : (Real64T* -> Void))
  fun arrst_real64_t_clear(array : ArrStreal64T*, func_remove : (Real64T* -> Void))
  fun arrst_real64_t_write(stream : Stream, array : ArrStreal64T*, func_write : (Stream, Real64T* -> Void))
  fun arrst_real64_t_write(stream : Stream, array : ArrStreal64T*, func_write : (Stream, Real64T* -> Void))
  fun arrst_real64_t_size(array : ArrStreal64T*) : Uint32T
  fun arrst_real64_t_size(array : ArrStreal64T*) : Uint32T
  fun arrst_real64_t_get(array : ArrStreal64T*, pos : Uint32T) : Real64T*
  fun arrst_real64_t_get(array : ArrStreal64T*, pos : Uint32T) : Real64T*
  fun arrst_real64_t_get_const(array : ArrStreal64T*, pos : Uint32T) : Real64T*
  fun arrst_real64_t_get_const(array : ArrStreal64T*, pos : Uint32T) : Real64T*
  fun arrst_real64_t_last(array : ArrStreal64T*) : Real64T*
  fun arrst_real64_t_last(array : ArrStreal64T*) : Real64T*
  fun arrst_real64_t_last_const(array : ArrStreal64T*) : Real64T*
  fun arrst_real64_t_last_const(array : ArrStreal64T*) : Real64T*
  fun arrst_real64_t_all(array : ArrStreal64T*) : Real64T*
  fun arrst_real64_t_all(array : ArrStreal64T*) : Real64T*
  fun arrst_real64_t_all_const(array : ArrStreal64T*) : Real64T*
  fun arrst_real64_t_all_const(array : ArrStreal64T*) : Real64T*
  fun arrst_real64_t_insert(array : ArrStreal64T*, pos : Uint32T, n : Uint32T) : Real64T*
  fun arrst_real64_t_insert(array : ArrStreal64T*, pos : Uint32T, n : Uint32T) : Real64T*
  fun arrst_real64_t_insert0(array : ArrStreal64T*, pos : Uint32T, n : Uint32T) : Real64T*
  fun arrst_real64_t_insert0(array : ArrStreal64T*, pos : Uint32T, n : Uint32T) : Real64T*
  fun arrst_real64_t_join(dest : ArrStreal64T*, src : ArrStreal64T*, func_copy : (Real64T*, Real64T* -> Void))
  fun arrst_real64_t_join(dest : ArrStreal64T*, src : ArrStreal64T*, func_copy : (Real64T*, Real64T* -> Void))
  fun arrst_real64_t_delete(array : ArrStreal64T*, pos : Uint32T, func_remove : (Real64T* -> Void))
  fun arrst_real64_t_delete(array : ArrStreal64T*, pos : Uint32T, func_remove : (Real64T* -> Void))
  fun arrst_real64_t_pop(array : ArrStreal64T*, func_remove : (Real64T* -> Void))
  fun arrst_real64_t_pop(array : ArrStreal64T*, func_remove : (Real64T* -> Void))
  fun arrst_real64_t_sort(array : ArrStreal64T*, func_compare : (Real64T*, Real64T* -> LibC::Int))
  fun arrst_real64_t_sort(array : ArrStreal64T*, func_compare : (Real64T*, Real64T* -> LibC::Int))
  fun arrst_real64_t_sort_ex(array : ArrStreal64T*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_real64_t_sort_ex(array : ArrStreal64T*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_real64_t_search(array : ArrStreal64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Real64T*
  fun arrst_real64_t_search(array : ArrStreal64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Real64T*
  fun arrst_real64_t_search_const(array : ArrStreal64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Real64T*
  fun arrst_real64_t_search_const(array : ArrStreal64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Real64T*
  fun arrst_real64_t_bsearch(array : ArrStreal64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Real64T*
  fun arrst_real64_t_bsearch(array : ArrStreal64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Real64T*
  fun arrst_real64_t_bsearch_const(array : ArrStreal64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Real64T*
  fun arrst_real64_t_bsearch_const(array : ArrStreal64T*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Real64T*
  fun arrst_real64_t_end
  fun setst_real64_t_create(func_compare : (Real64T*, Real64T* -> LibC::Int), esize : Uint16T) : SetStreal64T*

  struct SetStreal64T
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStreal64T*
    func_compare : FPtrCompare
  end

  struct NodeStreal64T
    rb : Uint32T
    left : NodeStreal64T*
    right : NodeStreal64T*
    data : Real64T
  end

  fun setst_real64_t_create(func_compare : (Real64T*, Real64T* -> LibC::Int), esize : Uint16T) : SetStreal64T*
  fun setst_real64_t_destroy(set : SetStreal64T**, func_remove : (Real64T* -> Void))
  fun setst_real64_t_destroy(set : SetStreal64T**, func_remove : (Real64T* -> Void))
  fun setst_real64_t_size(set : SetStreal64T*) : Uint32T
  fun setst_real64_t_size(set : SetStreal64T*) : Uint32T
  fun setst_real64_t_get(set : SetStreal64T*, key : Real64T*) : Real64T*
  fun setst_real64_t_get(set : SetStreal64T*, key : Real64T*) : Real64T*
  fun setst_real64_t_get_const(set : SetStreal64T*, key : Real64T*) : Real64T*
  fun setst_real64_t_get_const(set : SetStreal64T*, key : Real64T*) : Real64T*
  fun setst_real64_t_insert(set : SetStreal64T*, key : Real64T*) : Real64T*
  fun setst_real64_t_insert(set : SetStreal64T*, key : Real64T*) : Real64T*
  fun setst_real64_t_delete(set : SetStreal64T*, key : Real64T*, func_remove : (Real64T* -> Void)) : BoolT
  fun setst_real64_t_delete(set : SetStreal64T*, key : Real64T*, func_remove : (Real64T* -> Void)) : BoolT
  fun setst_real64_t_first(set : SetStreal64T*) : Real64T*
  fun setst_real64_t_first(set : SetStreal64T*) : Real64T*
  fun setst_real64_t_first_const(set : SetStreal64T*) : Real64T*
  fun setst_real64_t_first_const(set : SetStreal64T*) : Real64T*
  fun setst_real64_t_last(set : SetStreal64T*) : Real64T*
  fun setst_real64_t_last(set : SetStreal64T*) : Real64T*
  fun setst_real64_t_last_const(set : SetStreal64T*) : Real64T*
  fun setst_real64_t_last_const(set : SetStreal64T*) : Real64T*
  fun setst_real64_t_next(set : SetStreal64T*) : Real64T*
  fun setst_real64_t_next(set : SetStreal64T*) : Real64T*
  fun setst_real64_t_next_const(set : SetStreal64T*) : Real64T*
  fun setst_real64_t_next_const(set : SetStreal64T*) : Real64T*
  fun setst_real64_t_prev(set : SetStreal64T*) : Real64T*
  fun setst_real64_t_prev(set : SetStreal64T*) : Real64T*
  fun setst_real64_t_prev_const(set : SetStreal64T*) : Real64T*
  fun setst_real64_t_prev_const(set : SetStreal64T*) : Real64T*
  fun setst_real64_t_end
  fun arrpt_string_create = arrpt_String_create(esize : Uint16T) : ArrPtString*

  struct ArrPtString
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : StringPtData*
  end

  struct StringPtData
    elem : String*[1024]
  end

  struct X_StringT
    size : Uint32T
    data : LibC::Char[512]
  end

  type String = X_StringT
  fun arrpt_string_create = arrpt_String_create(esize : Uint16T) : ArrPtString*
  fun arrpt_string_copy = arrpt_String_copy(array : ArrPtString*, func_copy : (String* -> String*)) : ArrPtString*
  fun arrpt_string_copy = arrpt_String_copy(array : ArrPtString*, func_copy : (String* -> String*)) : ArrPtString*
  fun arrpt_string_read = arrpt_String_read(stream : Stream, func_read : (Stream -> String*)) : ArrPtString*
  fun arrpt_string_read = arrpt_String_read(stream : Stream, func_read : (Stream -> String*)) : ArrPtString*
  fun arrpt_string_destroy = arrpt_String_destroy(array : ArrPtString**, func_destroy : (String** -> Void))
  fun arrpt_string_destroy = arrpt_String_destroy(array : ArrPtString**, func_destroy : (String** -> Void))
  fun arrpt_string_destopt = arrpt_String_destopt(array : ArrPtString**, func_destroy : (String** -> Void))
  fun arrpt_string_destopt = arrpt_String_destopt(array : ArrPtString**, func_destroy : (String** -> Void))
  fun arrpt_string_clear = arrpt_String_clear(array : ArrPtString*, func_destroy : (String** -> Void))
  fun arrpt_string_clear = arrpt_String_clear(array : ArrPtString*, func_destroy : (String** -> Void))
  fun arrpt_string_write = arrpt_String_write(stream : Stream, array : ArrPtString*, func_write : (Stream, String* -> Void))
  fun arrpt_string_write = arrpt_String_write(stream : Stream, array : ArrPtString*, func_write : (Stream, String* -> Void))
  fun arrpt_string_size = arrpt_String_size(array : ArrPtString*) : Uint32T
  fun arrpt_string_size = arrpt_String_size(array : ArrPtString*) : Uint32T
  fun arrpt_string_get = arrpt_String_get(array : ArrPtString*, pos : Uint32T) : String*
  fun arrpt_string_get = arrpt_String_get(array : ArrPtString*, pos : Uint32T) : String*
  fun arrpt_string_get_const = arrpt_String_get_const(array : ArrPtString*, pos : Uint32T) : String*
  fun arrpt_string_get_const = arrpt_String_get_const(array : ArrPtString*, pos : Uint32T) : String*
  fun arrpt_string_first = arrpt_String_first(array : ArrPtString*) : String*
  fun arrpt_string_first = arrpt_String_first(array : ArrPtString*) : String*
  fun arrpt_string_first_const = arrpt_String_first_const(array : ArrPtString*) : String*
  fun arrpt_string_first_const = arrpt_String_first_const(array : ArrPtString*) : String*
  fun arrpt_string_last = arrpt_String_last(array : ArrPtString*) : String*
  fun arrpt_string_last = arrpt_String_last(array : ArrPtString*) : String*
  fun arrpt_string_last_const = arrpt_String_last_const(array : ArrPtString*) : String*
  fun arrpt_string_last_const = arrpt_String_last_const(array : ArrPtString*) : String*
  fun arrpt_string_all = arrpt_String_all(array : ArrPtString*) : String**
  fun arrpt_string_all = arrpt_String_all(array : ArrPtString*) : String**
  fun arrpt_string_all_const = arrpt_String_all_const(array : ArrPtString*) : String**
  fun arrpt_string_all_const = arrpt_String_all_const(array : ArrPtString*) : String**
  fun arrpt_string_insert = arrpt_String_insert(array : ArrPtString*, pos : Uint32T, n : Uint32T) : String**
  fun arrpt_string_insert = arrpt_String_insert(array : ArrPtString*, pos : Uint32T, n : Uint32T) : String**
  fun arrpt_string_join = arrpt_String_join(dest : ArrPtString*, src : ArrPtString*, func_copy : (String* -> String*))
  fun arrpt_string_join = arrpt_String_join(dest : ArrPtString*, src : ArrPtString*, func_copy : (String* -> String*))
  fun arrpt_string_delete = arrpt_String_delete(array : ArrPtString*, pos : Uint32T, func_destroy : (String** -> Void))
  fun arrpt_string_delete = arrpt_String_delete(array : ArrPtString*, pos : Uint32T, func_destroy : (String** -> Void))
  fun arrpt_string_pop = arrpt_String_pop(array : ArrPtString*, func_destroy : (String** -> Void))
  fun arrpt_string_pop = arrpt_String_pop(array : ArrPtString*, func_destroy : (String** -> Void))
  fun arrpt_string_sort = arrpt_String_sort(array : ArrPtString*, func_compare : (String*, String* -> LibC::Int))
  fun arrpt_string_sort = arrpt_String_sort(array : ArrPtString*, func_compare : (String*, String* -> LibC::Int))
  fun arrpt_string_sort_ex = arrpt_String_sort_ex(array : ArrPtString*, func_compare : FPtrCompareEx, data : Void*)
  fun arrpt_string_sort_ex = arrpt_String_sort_ex(array : ArrPtString*, func_compare : FPtrCompareEx, data : Void*)
  fun arrpt_string_find = arrpt_String_find(array : ArrPtString*, elem : String*) : Uint32T
  fun arrpt_string_find = arrpt_String_find(array : ArrPtString*, elem : String*) : Uint32T
  fun arrpt_string_search = arrpt_String_search(array : ArrPtString*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : String*
  fun arrpt_string_search = arrpt_String_search(array : ArrPtString*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : String*
  fun arrpt_string_search_const = arrpt_String_search_const(array : ArrPtString*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : String*
  fun arrpt_string_search_const = arrpt_String_search_const(array : ArrPtString*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : String*
  fun arrpt_string_bsearch = arrpt_String_bsearch(array : ArrPtString*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : String*
  fun arrpt_string_bsearch = arrpt_String_bsearch(array : ArrPtString*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : String*
  fun arrpt_string_bsearch_const = arrpt_String_bsearch_const(array : ArrPtString*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : String*
  fun arrpt_string_bsearch_const = arrpt_String_bsearch_const(array : ArrPtString*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : String*
  fun arrpt_string_end = arrpt_String_end
  fun setpt_string_create = setpt_String_create(func_compare : (String*, String* -> LibC::Int), esize : Uint16T) : SetPtString*

  struct SetPtString
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodePtString*
    func_compare : FPtrCompare
  end

  struct NodePtString
    rb : Uint32T
    left : NodePtString*
    right : NodePtString*
    data : String*
  end

  fun setpt_string_create = setpt_String_create(func_compare : (String*, String* -> LibC::Int), esize : Uint16T) : SetPtString*
  fun setpt_string_destroy = setpt_String_destroy(set : SetPtString**, func_destroy : (String** -> Void))
  fun setpt_string_destroy = setpt_String_destroy(set : SetPtString**, func_destroy : (String** -> Void))
  fun setpt_string_size = setpt_String_size(set : SetPtString*) : Uint32T
  fun setpt_string_size = setpt_String_size(set : SetPtString*) : Uint32T
  fun setpt_string_get = setpt_String_get(set : SetPtString*, key : String*) : String*
  fun setpt_string_get = setpt_String_get(set : SetPtString*, key : String*) : String*
  fun setpt_string_get_const = setpt_String_get_const(set : SetPtString*, key : String*) : String*
  fun setpt_string_get_const = setpt_String_get_const(set : SetPtString*, key : String*) : String*
  fun setpt_string_insert = setpt_String_insert(set : SetPtString*, value : String*) : BoolT
  fun setpt_string_insert = setpt_String_insert(set : SetPtString*, value : String*) : BoolT
  fun setpt_string_delete = setpt_String_delete(set : SetPtString*, key : String*, func_destroy : (String** -> Void)) : BoolT
  fun setpt_string_delete = setpt_String_delete(set : SetPtString*, key : String*, func_destroy : (String** -> Void)) : BoolT
  fun setpt_string_first = setpt_String_first(set : SetPtString*) : String*
  fun setpt_string_first = setpt_String_first(set : SetPtString*) : String*
  fun setpt_string_first_const = setpt_String_first_const(set : SetPtString*) : String*
  fun setpt_string_first_const = setpt_String_first_const(set : SetPtString*) : String*
  fun setpt_string_last = setpt_String_last(set : SetPtString*) : String*
  fun setpt_string_last = setpt_String_last(set : SetPtString*) : String*
  fun setpt_string_last_const = setpt_String_last_const(set : SetPtString*) : String*
  fun setpt_string_last_const = setpt_String_last_const(set : SetPtString*) : String*
  fun setpt_string_next = setpt_String_next(set : SetPtString*) : String*
  fun setpt_string_next = setpt_String_next(set : SetPtString*) : String*
  fun setpt_string_next_const = setpt_String_next_const(set : SetPtString*) : String*
  fun setpt_string_next_const = setpt_String_next_const(set : SetPtString*) : String*
  fun setpt_string_prev = setpt_String_prev(set : SetPtString*) : String*
  fun setpt_string_prev = setpt_String_prev(set : SetPtString*) : String*
  fun setpt_string_prev_const = setpt_String_prev_const(set : SetPtString*) : String*
  fun setpt_string_prev_const = setpt_String_prev_const(set : SetPtString*) : String*
  fun setpt_string_end = setpt_String_end
  fun arrst_dir_entry_create = arrst_DirEntry_create(esize : Uint16T) : ArrStDirEntry*

  struct ArrStDirEntry
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : DirEntryData*
  end

  struct DirEntryData
    elem : DirEntry[1024]
  end

  struct X_DirentryT
    name : String*
    type : FileTypeT
    size : Uint64T
    date : Date
  end

  type DirEntry = X_DirentryT
  fun arrst_dir_entry_create = arrst_DirEntry_create(esize : Uint16T) : ArrStDirEntry*
  fun arrst_dir_entry_copy = arrst_DirEntry_copy(array : ArrStDirEntry*, func_copy : (DirEntry*, DirEntry* -> Void)) : ArrStDirEntry*
  fun arrst_dir_entry_copy = arrst_DirEntry_copy(array : ArrStDirEntry*, func_copy : (DirEntry*, DirEntry* -> Void)) : ArrStDirEntry*
  fun arrst_dir_entry_read = arrst_DirEntry_read(stream : Stream, esize : Uint16T, func_read : (Stream, DirEntry* -> Void)) : ArrStDirEntry*
  fun arrst_dir_entry_read = arrst_DirEntry_read(stream : Stream, esize : Uint16T, func_read : (Stream, DirEntry* -> Void)) : ArrStDirEntry*
  fun arrst_dir_entry_destroy = arrst_DirEntry_destroy(array : ArrStDirEntry**, func_remove : (DirEntry* -> Void))
  fun arrst_dir_entry_destroy = arrst_DirEntry_destroy(array : ArrStDirEntry**, func_remove : (DirEntry* -> Void))
  fun arrst_dir_entry_destopt = arrst_DirEntry_destopt(array : ArrStDirEntry**, func_remove : (DirEntry* -> Void))
  fun arrst_dir_entry_destopt = arrst_DirEntry_destopt(array : ArrStDirEntry**, func_remove : (DirEntry* -> Void))
  fun arrst_dir_entry_clear = arrst_DirEntry_clear(array : ArrStDirEntry*, func_remove : (DirEntry* -> Void))
  fun arrst_dir_entry_clear = arrst_DirEntry_clear(array : ArrStDirEntry*, func_remove : (DirEntry* -> Void))
  fun arrst_dir_entry_write = arrst_DirEntry_write(stream : Stream, array : ArrStDirEntry*, func_write : (Stream, DirEntry* -> Void))
  fun arrst_dir_entry_write = arrst_DirEntry_write(stream : Stream, array : ArrStDirEntry*, func_write : (Stream, DirEntry* -> Void))
  fun arrst_dir_entry_size = arrst_DirEntry_size(array : ArrStDirEntry*) : Uint32T
  fun arrst_dir_entry_size = arrst_DirEntry_size(array : ArrStDirEntry*) : Uint32T
  fun arrst_dir_entry_get = arrst_DirEntry_get(array : ArrStDirEntry*, pos : Uint32T) : DirEntry*
  fun arrst_dir_entry_get = arrst_DirEntry_get(array : ArrStDirEntry*, pos : Uint32T) : DirEntry*
  fun arrst_dir_entry_get_const = arrst_DirEntry_get_const(array : ArrStDirEntry*, pos : Uint32T) : DirEntry*
  fun arrst_dir_entry_get_const = arrst_DirEntry_get_const(array : ArrStDirEntry*, pos : Uint32T) : DirEntry*
  fun arrst_dir_entry_last = arrst_DirEntry_last(array : ArrStDirEntry*) : DirEntry*
  fun arrst_dir_entry_last = arrst_DirEntry_last(array : ArrStDirEntry*) : DirEntry*
  fun arrst_dir_entry_last_const = arrst_DirEntry_last_const(array : ArrStDirEntry*) : DirEntry*
  fun arrst_dir_entry_last_const = arrst_DirEntry_last_const(array : ArrStDirEntry*) : DirEntry*
  fun arrst_dir_entry_all = arrst_DirEntry_all(array : ArrStDirEntry*) : DirEntry*
  fun arrst_dir_entry_all = arrst_DirEntry_all(array : ArrStDirEntry*) : DirEntry*
  fun arrst_dir_entry_all_const = arrst_DirEntry_all_const(array : ArrStDirEntry*) : DirEntry*
  fun arrst_dir_entry_all_const = arrst_DirEntry_all_const(array : ArrStDirEntry*) : DirEntry*
  fun arrst_dir_entry_insert = arrst_DirEntry_insert(array : ArrStDirEntry*, pos : Uint32T, n : Uint32T) : DirEntry*
  fun arrst_dir_entry_insert = arrst_DirEntry_insert(array : ArrStDirEntry*, pos : Uint32T, n : Uint32T) : DirEntry*
  fun arrst_dir_entry_insert0 = arrst_DirEntry_insert0(array : ArrStDirEntry*, pos : Uint32T, n : Uint32T) : DirEntry*
  fun arrst_dir_entry_insert0 = arrst_DirEntry_insert0(array : ArrStDirEntry*, pos : Uint32T, n : Uint32T) : DirEntry*
  fun arrst_dir_entry_join = arrst_DirEntry_join(dest : ArrStDirEntry*, src : ArrStDirEntry*, func_copy : (DirEntry*, DirEntry* -> Void))
  fun arrst_dir_entry_join = arrst_DirEntry_join(dest : ArrStDirEntry*, src : ArrStDirEntry*, func_copy : (DirEntry*, DirEntry* -> Void))
  fun arrst_dir_entry_delete = arrst_DirEntry_delete(array : ArrStDirEntry*, pos : Uint32T, func_remove : (DirEntry* -> Void))
  fun arrst_dir_entry_delete = arrst_DirEntry_delete(array : ArrStDirEntry*, pos : Uint32T, func_remove : (DirEntry* -> Void))
  fun arrst_dir_entry_pop = arrst_DirEntry_pop(array : ArrStDirEntry*, func_remove : (DirEntry* -> Void))
  fun arrst_dir_entry_pop = arrst_DirEntry_pop(array : ArrStDirEntry*, func_remove : (DirEntry* -> Void))
  fun arrst_dir_entry_sort = arrst_DirEntry_sort(array : ArrStDirEntry*, func_compare : (DirEntry*, DirEntry* -> LibC::Int))
  fun arrst_dir_entry_sort = arrst_DirEntry_sort(array : ArrStDirEntry*, func_compare : (DirEntry*, DirEntry* -> LibC::Int))
  fun arrst_dir_entry_sort_ex = arrst_DirEntry_sort_ex(array : ArrStDirEntry*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_dir_entry_sort_ex = arrst_DirEntry_sort_ex(array : ArrStDirEntry*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_dir_entry_search = arrst_DirEntry_search(array : ArrStDirEntry*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : DirEntry*
  fun arrst_dir_entry_search = arrst_DirEntry_search(array : ArrStDirEntry*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : DirEntry*
  fun arrst_dir_entry_search_const = arrst_DirEntry_search_const(array : ArrStDirEntry*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : DirEntry*
  fun arrst_dir_entry_search_const = arrst_DirEntry_search_const(array : ArrStDirEntry*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : DirEntry*
  fun arrst_dir_entry_bsearch = arrst_DirEntry_bsearch(array : ArrStDirEntry*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : DirEntry*
  fun arrst_dir_entry_bsearch = arrst_DirEntry_bsearch(array : ArrStDirEntry*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : DirEntry*
  fun arrst_dir_entry_bsearch_const = arrst_DirEntry_bsearch_const(array : ArrStDirEntry*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : DirEntry*
  fun arrst_dir_entry_bsearch_const = arrst_DirEntry_bsearch_const(array : ArrStDirEntry*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : DirEntry*
  fun arrst_dir_entry_end = arrst_DirEntry_end
  fun setst_dir_entry_create = setst_DirEntry_create(func_compare : (DirEntry*, DirEntry* -> LibC::Int), esize : Uint16T) : SetStDirEntry*

  struct SetStDirEntry
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStDirEntry*
    func_compare : FPtrCompare
  end

  struct NodeStDirEntry
    rb : Uint32T
    left : NodeStDirEntry*
    right : NodeStDirEntry*
    data : DirEntry
  end

  fun setst_dir_entry_create = setst_DirEntry_create(func_compare : (DirEntry*, DirEntry* -> LibC::Int), esize : Uint16T) : SetStDirEntry*
  fun setst_dir_entry_destroy = setst_DirEntry_destroy(set : SetStDirEntry**, func_remove : (DirEntry* -> Void))
  fun setst_dir_entry_destroy = setst_DirEntry_destroy(set : SetStDirEntry**, func_remove : (DirEntry* -> Void))
  fun setst_dir_entry_size = setst_DirEntry_size(set : SetStDirEntry*) : Uint32T
  fun setst_dir_entry_size = setst_DirEntry_size(set : SetStDirEntry*) : Uint32T
  fun setst_dir_entry_get = setst_DirEntry_get(set : SetStDirEntry*, key : DirEntry*) : DirEntry*
  fun setst_dir_entry_get = setst_DirEntry_get(set : SetStDirEntry*, key : DirEntry*) : DirEntry*
  fun setst_dir_entry_get_const = setst_DirEntry_get_const(set : SetStDirEntry*, key : DirEntry*) : DirEntry*
  fun setst_dir_entry_get_const = setst_DirEntry_get_const(set : SetStDirEntry*, key : DirEntry*) : DirEntry*
  fun setst_dir_entry_insert = setst_DirEntry_insert(set : SetStDirEntry*, key : DirEntry*) : DirEntry*
  fun setst_dir_entry_insert = setst_DirEntry_insert(set : SetStDirEntry*, key : DirEntry*) : DirEntry*
  fun setst_dir_entry_delete = setst_DirEntry_delete(set : SetStDirEntry*, key : DirEntry*, func_remove : (DirEntry* -> Void)) : BoolT
  fun setst_dir_entry_delete = setst_DirEntry_delete(set : SetStDirEntry*, key : DirEntry*, func_remove : (DirEntry* -> Void)) : BoolT
  fun setst_dir_entry_first = setst_DirEntry_first(set : SetStDirEntry*) : DirEntry*
  fun setst_dir_entry_first = setst_DirEntry_first(set : SetStDirEntry*) : DirEntry*
  fun setst_dir_entry_first_const = setst_DirEntry_first_const(set : SetStDirEntry*) : DirEntry*
  fun setst_dir_entry_first_const = setst_DirEntry_first_const(set : SetStDirEntry*) : DirEntry*
  fun setst_dir_entry_last = setst_DirEntry_last(set : SetStDirEntry*) : DirEntry*
  fun setst_dir_entry_last = setst_DirEntry_last(set : SetStDirEntry*) : DirEntry*
  fun setst_dir_entry_last_const = setst_DirEntry_last_const(set : SetStDirEntry*) : DirEntry*
  fun setst_dir_entry_last_const = setst_DirEntry_last_const(set : SetStDirEntry*) : DirEntry*
  fun setst_dir_entry_next = setst_DirEntry_next(set : SetStDirEntry*) : DirEntry*
  fun setst_dir_entry_next = setst_DirEntry_next(set : SetStDirEntry*) : DirEntry*
  fun setst_dir_entry_next_const = setst_DirEntry_next_const(set : SetStDirEntry*) : DirEntry*
  fun setst_dir_entry_next_const = setst_DirEntry_next_const(set : SetStDirEntry*) : DirEntry*
  fun setst_dir_entry_prev = setst_DirEntry_prev(set : SetStDirEntry*) : DirEntry*
  fun setst_dir_entry_prev = setst_DirEntry_prev(set : SetStDirEntry*) : DirEntry*
  fun setst_dir_entry_prev_const = setst_DirEntry_prev_const(set : SetStDirEntry*) : DirEntry*
  fun setst_dir_entry_prev_const = setst_DirEntry_prev_const(set : SetStDirEntry*) : DirEntry*
  fun setst_dir_entry_end = setst_DirEntry_end
  fun arrpt_res_pack_create = arrpt_ResPack_create(esize : Uint16T) : ArrPtResPack*

  struct ArrPtResPack
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : ResPackPtData*
  end

  struct ResPackPtData
    elem : ResPack[1024]
  end

  type ResPack = Void*
  fun arrpt_res_pack_create = arrpt_ResPack_create(esize : Uint16T) : ArrPtResPack*
  fun arrpt_res_pack_copy = arrpt_ResPack_copy(array : ArrPtResPack*, func_copy : (ResPack -> ResPack)) : ArrPtResPack*
  fun arrpt_res_pack_copy = arrpt_ResPack_copy(array : ArrPtResPack*, func_copy : (ResPack -> ResPack)) : ArrPtResPack*
  fun arrpt_res_pack_read = arrpt_ResPack_read(stream : Stream, func_read : (Stream -> ResPack)) : ArrPtResPack*
  fun arrpt_res_pack_read = arrpt_ResPack_read(stream : Stream, func_read : (Stream -> ResPack)) : ArrPtResPack*
  fun arrpt_res_pack_destroy = arrpt_ResPack_destroy(array : ArrPtResPack**, func_destroy : (ResPack* -> Void))
  fun arrpt_res_pack_destroy = arrpt_ResPack_destroy(array : ArrPtResPack**, func_destroy : (ResPack* -> Void))
  fun arrpt_res_pack_destopt = arrpt_ResPack_destopt(array : ArrPtResPack**, func_destroy : (ResPack* -> Void))
  fun arrpt_res_pack_destopt = arrpt_ResPack_destopt(array : ArrPtResPack**, func_destroy : (ResPack* -> Void))
  fun arrpt_res_pack_clear = arrpt_ResPack_clear(array : ArrPtResPack*, func_destroy : (ResPack* -> Void))
  fun arrpt_res_pack_clear = arrpt_ResPack_clear(array : ArrPtResPack*, func_destroy : (ResPack* -> Void))
  fun arrpt_res_pack_write = arrpt_ResPack_write(stream : Stream, array : ArrPtResPack*, func_write : (Stream, ResPack -> Void))
  fun arrpt_res_pack_write = arrpt_ResPack_write(stream : Stream, array : ArrPtResPack*, func_write : (Stream, ResPack -> Void))
  fun arrpt_res_pack_size = arrpt_ResPack_size(array : ArrPtResPack*) : Uint32T
  fun arrpt_res_pack_size = arrpt_ResPack_size(array : ArrPtResPack*) : Uint32T
  fun arrpt_res_pack_get = arrpt_ResPack_get(array : ArrPtResPack*, pos : Uint32T) : ResPack
  fun arrpt_res_pack_get = arrpt_ResPack_get(array : ArrPtResPack*, pos : Uint32T) : ResPack
  fun arrpt_res_pack_get_const = arrpt_ResPack_get_const(array : ArrPtResPack*, pos : Uint32T) : ResPack
  fun arrpt_res_pack_get_const = arrpt_ResPack_get_const(array : ArrPtResPack*, pos : Uint32T) : ResPack
  fun arrpt_res_pack_first = arrpt_ResPack_first(array : ArrPtResPack*) : ResPack
  fun arrpt_res_pack_first = arrpt_ResPack_first(array : ArrPtResPack*) : ResPack
  fun arrpt_res_pack_first_const = arrpt_ResPack_first_const(array : ArrPtResPack*) : ResPack
  fun arrpt_res_pack_first_const = arrpt_ResPack_first_const(array : ArrPtResPack*) : ResPack
  fun arrpt_res_pack_last = arrpt_ResPack_last(array : ArrPtResPack*) : ResPack
  fun arrpt_res_pack_last = arrpt_ResPack_last(array : ArrPtResPack*) : ResPack
  fun arrpt_res_pack_last_const = arrpt_ResPack_last_const(array : ArrPtResPack*) : ResPack
  fun arrpt_res_pack_last_const = arrpt_ResPack_last_const(array : ArrPtResPack*) : ResPack
  fun arrpt_res_pack_all = arrpt_ResPack_all(array : ArrPtResPack*) : ResPack*
  fun arrpt_res_pack_all = arrpt_ResPack_all(array : ArrPtResPack*) : ResPack*
  fun arrpt_res_pack_all_const = arrpt_ResPack_all_const(array : ArrPtResPack*) : ResPack*
  fun arrpt_res_pack_all_const = arrpt_ResPack_all_const(array : ArrPtResPack*) : ResPack*
  fun arrpt_res_pack_insert = arrpt_ResPack_insert(array : ArrPtResPack*, pos : Uint32T, n : Uint32T) : ResPack*
  fun arrpt_res_pack_insert = arrpt_ResPack_insert(array : ArrPtResPack*, pos : Uint32T, n : Uint32T) : ResPack*
  fun arrpt_res_pack_join = arrpt_ResPack_join(dest : ArrPtResPack*, src : ArrPtResPack*, func_copy : (ResPack -> ResPack))
  fun arrpt_res_pack_join = arrpt_ResPack_join(dest : ArrPtResPack*, src : ArrPtResPack*, func_copy : (ResPack -> ResPack))
  fun arrpt_res_pack_delete = arrpt_ResPack_delete(array : ArrPtResPack*, pos : Uint32T, func_destroy : (ResPack* -> Void))
  fun arrpt_res_pack_delete = arrpt_ResPack_delete(array : ArrPtResPack*, pos : Uint32T, func_destroy : (ResPack* -> Void))
  fun arrpt_res_pack_pop = arrpt_ResPack_pop(array : ArrPtResPack*, func_destroy : (ResPack* -> Void))
  fun arrpt_res_pack_pop = arrpt_ResPack_pop(array : ArrPtResPack*, func_destroy : (ResPack* -> Void))
  fun arrpt_res_pack_sort = arrpt_ResPack_sort(array : ArrPtResPack*, func_compare : (ResPack, ResPack -> LibC::Int))
  fun arrpt_res_pack_sort = arrpt_ResPack_sort(array : ArrPtResPack*, func_compare : (ResPack, ResPack -> LibC::Int))
  fun arrpt_res_pack_sort_ex = arrpt_ResPack_sort_ex(array : ArrPtResPack*, func_compare : FPtrCompareEx, data : Void*)
  fun arrpt_res_pack_sort_ex = arrpt_ResPack_sort_ex(array : ArrPtResPack*, func_compare : FPtrCompareEx, data : Void*)
  fun arrpt_res_pack_find = arrpt_ResPack_find(array : ArrPtResPack*, elem : ResPack) : Uint32T
  fun arrpt_res_pack_find = arrpt_ResPack_find(array : ArrPtResPack*, elem : ResPack) : Uint32T
  fun arrpt_res_pack_search = arrpt_ResPack_search(array : ArrPtResPack*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : ResPack
  fun arrpt_res_pack_search = arrpt_ResPack_search(array : ArrPtResPack*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : ResPack
  fun arrpt_res_pack_search_const = arrpt_ResPack_search_const(array : ArrPtResPack*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : ResPack
  fun arrpt_res_pack_search_const = arrpt_ResPack_search_const(array : ArrPtResPack*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : ResPack
  fun arrpt_res_pack_bsearch = arrpt_ResPack_bsearch(array : ArrPtResPack*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : ResPack
  fun arrpt_res_pack_bsearch = arrpt_ResPack_bsearch(array : ArrPtResPack*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : ResPack
  fun arrpt_res_pack_bsearch_const = arrpt_ResPack_bsearch_const(array : ArrPtResPack*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : ResPack
  fun arrpt_res_pack_bsearch_const = arrpt_ResPack_bsearch_const(array : ArrPtResPack*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : ResPack
  fun arrpt_res_pack_end = arrpt_ResPack_end
  fun setpt_res_pack_create = setpt_ResPack_create(func_compare : (ResPack, ResPack -> LibC::Int), esize : Uint16T) : SetPtResPack*

  struct SetPtResPack
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodePtResPack*
    func_compare : FPtrCompare
  end

  struct NodePtResPack
    rb : Uint32T
    left : NodePtResPack*
    right : NodePtResPack*
    data : ResPack
  end

  fun setpt_res_pack_create = setpt_ResPack_create(func_compare : (ResPack, ResPack -> LibC::Int), esize : Uint16T) : SetPtResPack*
  fun setpt_res_pack_destroy = setpt_ResPack_destroy(set : SetPtResPack**, func_destroy : (ResPack* -> Void))
  fun setpt_res_pack_destroy = setpt_ResPack_destroy(set : SetPtResPack**, func_destroy : (ResPack* -> Void))
  fun setpt_res_pack_size = setpt_ResPack_size(set : SetPtResPack*) : Uint32T
  fun setpt_res_pack_size = setpt_ResPack_size(set : SetPtResPack*) : Uint32T
  fun setpt_res_pack_get = setpt_ResPack_get(set : SetPtResPack*, key : ResPack) : ResPack
  fun setpt_res_pack_get = setpt_ResPack_get(set : SetPtResPack*, key : ResPack) : ResPack
  fun setpt_res_pack_get_const = setpt_ResPack_get_const(set : SetPtResPack*, key : ResPack) : ResPack
  fun setpt_res_pack_get_const = setpt_ResPack_get_const(set : SetPtResPack*, key : ResPack) : ResPack
  fun setpt_res_pack_insert = setpt_ResPack_insert(set : SetPtResPack*, value : ResPack) : BoolT
  fun setpt_res_pack_insert = setpt_ResPack_insert(set : SetPtResPack*, value : ResPack) : BoolT
  fun setpt_res_pack_delete = setpt_ResPack_delete(set : SetPtResPack*, key : ResPack, func_destroy : (ResPack* -> Void)) : BoolT
  fun setpt_res_pack_delete = setpt_ResPack_delete(set : SetPtResPack*, key : ResPack, func_destroy : (ResPack* -> Void)) : BoolT
  fun setpt_res_pack_first = setpt_ResPack_first(set : SetPtResPack*) : ResPack
  fun setpt_res_pack_first = setpt_ResPack_first(set : SetPtResPack*) : ResPack
  fun setpt_res_pack_first_const = setpt_ResPack_first_const(set : SetPtResPack*) : ResPack
  fun setpt_res_pack_first_const = setpt_ResPack_first_const(set : SetPtResPack*) : ResPack
  fun setpt_res_pack_last = setpt_ResPack_last(set : SetPtResPack*) : ResPack
  fun setpt_res_pack_last = setpt_ResPack_last(set : SetPtResPack*) : ResPack
  fun setpt_res_pack_last_const = setpt_ResPack_last_const(set : SetPtResPack*) : ResPack
  fun setpt_res_pack_last_const = setpt_ResPack_last_const(set : SetPtResPack*) : ResPack
  fun setpt_res_pack_next = setpt_ResPack_next(set : SetPtResPack*) : ResPack
  fun setpt_res_pack_next = setpt_ResPack_next(set : SetPtResPack*) : ResPack
  fun setpt_res_pack_next_const = setpt_ResPack_next_const(set : SetPtResPack*) : ResPack
  fun setpt_res_pack_next_const = setpt_ResPack_next_const(set : SetPtResPack*) : ResPack
  fun setpt_res_pack_prev = setpt_ResPack_prev(set : SetPtResPack*) : ResPack
  fun setpt_res_pack_prev = setpt_ResPack_prev(set : SetPtResPack*) : ResPack
  fun setpt_res_pack_prev_const = setpt_ResPack_prev_const(set : SetPtResPack*) : ResPack
  fun setpt_res_pack_prev_const = setpt_ResPack_prev_const(set : SetPtResPack*) : ResPack
  fun setpt_res_pack_end = setpt_ResPack_end
  fun core_start
  fun core_finish
  fun bhash_from_block(data : ByteT*, size : Uint32T) : Uint32T
  fun bhash_append_uint32(hash : Uint32T, value : Uint32T) : Uint32T
  fun bhash_append_real32(hash : Uint32T, value : Real32T) : Uint32T
  fun buffer_create(size : Uint32T) : Buffer*

  struct X_BufferT
    size : Uint32T
    data : LibC::Char[512]
  end

  type Buffer = X_BufferT
  fun buffer_with_data(data : ByteT*, size : Uint32T) : Buffer*
  fun buffer_destroy(buffer : Buffer**)
  fun buffer_size(buffer : Buffer*) : Uint32T
  fun buffer_data(buffer : Buffer*) : ByteT*
  fun buffer_const(buffer : Buffer*) : ByteT*
  fun clock_create(interval : Real64T) : Clock
  type Clock = Void*
  fun clock_destroy(clk : Clock*)
  fun clock_frame(clk : Clock, prev_frame : Real64T*, curr_frame : Real64T*) : BoolT
  fun clock_reset(clk : Clock)
  fun clock_elapsed(clk : Clock) : Real64T
  fun date_system : Date
  fun date_add_seconds(date : Date*, seconds : Int32T) : Date
  fun date_add_minutes(date : Date*, minutes : Int32T) : Date
  fun date_add_hours(date : Date*, hours : Int32T) : Date
  fun date_add_days(date : Date*, days : Int32T) : Date
  fun date_year : Int16T
  fun date_cmp(date1 : Date*, date2 : Date*) : LibC::Int
  fun date_between(date : Date*, from : Date*, to : Date*) : BoolT
  fun date_is_null(date : Date*) : BoolT
  fun date_dd_mm_yyyy_hh_mm_ss = date_DD_MM_YYYY_HH_MM_SS(date : Date*) : String*
  fun date_yyyy_mm_dd_hh_mm_ss = date_YYYY_MM_DD_HH_MM_SS(date : Date*) : String*
  fun date_month_en(month : MonthT) : CharT*
  enum X_MonthT
    EkJanuary   =  1
    EkFebruary  =  2
    EkMarch     =  3
    EkApril     =  4
    EkMay       =  5
    EkJune      =  6
    EkJuly      =  7
    EkAugust    =  8
    EkSeptember =  9
    EkOctober   = 10
    EkNovember  = 11
    EkDecember  = 12
  end
  type MonthT = X_MonthT
  fun date_month_es(month : MonthT) : CharT*
  fun dbind_imp(type : CharT*, size : Uint16T, mname : CharT*, mtype : CharT*, moffset : Uint16T, msize : Uint16T)
  fun dbind_enum_imp(type : CharT*, name : CharT*, value : EnumT, alias : CharT*)
  enum X_EnumT
    EkEnumGenericValue = 0
  end
  type EnumT = X_EnumT
  fun dbind_create_imp(type : CharT*) : ByteT*
  fun dbind_init_imp(data : ByteT*, type : CharT*)
  fun dbind_remove_imp(data : ByteT*, type : CharT*)
  fun dbind_destroy_imp(data : ByteT**, type : CharT*)
  fun dbind_destopt_imp(data : ByteT**, type : CharT*)
  fun dbind_read_imp(stm : Stream, type : CharT*) : Void*
  fun dbind_write_imp(stm : Stream, data : Void*, type : CharT*)
  fun dbind_default_imp(type : CharT*, mname : CharT*, value : Void*)
  fun dbind_range_imp(type : CharT*, mname : CharT*, min : Void*, max : Void*)
  fun dbind_precision_imp(type : CharT*, mname : CharT*, prec : Void*)
  fun dbind_increment_imp(type : CharT*, mname : CharT*, incr : Void*)
  fun dbind_suffix_imp(type : CharT*, mname : CharT*, suffix : CharT*)
  fun listener_imp(object : Void*, func_event_handler : FPtrEventHandler) : Listener
  type Event = Void*
  alias FPtrEventHandler = (Void*, Event -> Void)
  type Listener = Void*
  fun listener_destroy(listener : Listener*)
  fun listener_update(listener : Listener*, new_listener : Listener)
  fun listener_event_imp(listener : Listener, type : Uint32T, sender : Void*, params : Void*, result : Void*, sender_type : CharT*, params_type : CharT*, result_type : CharT*)
  fun listener_pass_event_imp(listener : Listener, event : Event, sender : Void*, sender_type : CharT*)
  fun event_type(event : Event) : Uint32T
  fun event_sender_imp(event : Event, type : CharT*) : Void*
  fun event_params_imp(event : Event, type : CharT*) : Void*
  fun event_result_imp(event : Event, type : CharT*) : Void*
  fun heap_start_mt
  fun heap_end_mt
  fun heap_verbose(verbose : BoolT)
  fun heap_stats(stats : BoolT)
  fun heap_leaks : BoolT
  fun heap_malloc_imp(size : Uint32T, name : CharT*, equal_sized : BoolT) : ByteT*
  fun heap_calloc_imp(size : Uint32T, name : CharT*, equal_sized : BoolT) : ByteT*
  fun heap_realloc(mem : ByteT*, size : Uint32T, new_size : Uint32T, name : CharT*) : ByteT*
  fun heap_aligned_malloc_imp(size : Uint32T, align : Uint32T, name : CharT*, equal_sized : BoolT) : ByteT*
  fun heap_aligned_calloc_imp(size : Uint32T, align : Uint32T, name : CharT*, equal_sized : BoolT) : ByteT*
  fun heap_aligned_realloc(mem : ByteT*, size : Uint32T, new_size : Uint32T, align : Uint32T, name : CharT*) : ByteT*
  fun heap_free(mem : ByteT**, size : Uint32T, name : CharT*)
  fun heap_auditor_add(name : CharT*)
  fun heap_auditor_delete(name : CharT*)
  fun hfile_dir(pathname : CharT*) : BoolT
  fun hfile_dir_create(pathname : CharT*, error : FerrorT*) : BoolT
  fun hfile_dir_destroy(pathname : CharT*, error : FerrorT*) : BoolT
  fun hfile_dir_list(pathname : CharT*, subdirs : BoolT, error : FerrorT*) : ArrStDirEntry*
  fun hfile_dir_entry_remove(entry : DirEntry*)
  fun hfile_date(pathname : CharT*, recursive : BoolT) : Date
  fun hfile_dir_sync(src : CharT*, dest : CharT*, recursive : BoolT, remove_in_dest : BoolT, except : CharT**, except_size : Uint32T, error : FerrorT*) : BoolT
  fun hfile_exists(pathname : CharT*, file_type : FileTypeT*) : BoolT
  fun hfile_is_uptodate(src : CharT*, dest : CharT*) : BoolT
  fun hfile_copy(from : CharT*, to : CharT*, error : FerrorT*) : BoolT
  fun hfile_buffer(pathname : CharT*, error : FerrorT*) : Buffer*
  fun hfile_string(pathname : CharT*, error : FerrorT*) : String*
  fun hfile_stream(pathname : CharT*, error : FerrorT*) : Stream
  fun hfile_from_string(pathname : CharT*, str : String*, error : FerrorT*) : BoolT
  fun hfile_from_data(pathname : CharT*, data : ByteT*, size : Uint32T, error : FerrorT*) : BoolT
  fun hfile_dir_loop(pathname : CharT*, listener : Listener, subdirs : BoolT, hiddens : BoolT, error : FerrorT*) : BoolT
  fun hfile_appdata(filename : CharT*) : String*
  fun hfile_home_dir(path : CharT*) : String*
  fun keybuf_create : KeyBuf
  type KeyBuf = Void*
  fun keybuf_destroy(buffer : KeyBuf*)
  fun keybuf_on_up = keybuf_OnUp(buffer : KeyBuf, key : VkeyT)
  enum X_KeyT
    EkKeyUndef      =   0
    EkKeyA          =   1
    EkKeyS          =   2
    EkKeyD          =   3
    EkKeyF          =   4
    EkKeyH          =   5
    EkKeyG          =   6
    EkKeyZ          =   7
    EkKeyX          =   8
    EkKeyC          =   9
    EkKeyV          =  10
    EkKeyBslash     =  11
    EkKeyB          =  12
    EkKeyQ          =  13
    EkKeyW          =  14
    EkKeyE          =  15
    EkKeyR          =  16
    EkKeyY          =  17
    EkKeyT          =  18
    EkKey1          =  19
    EkKey2          =  20
    EkKey3          =  21
    EkKey4          =  22
    EkKey6          =  23
    EkKey5          =  24
    EkKey9          =  25
    EkKey7          =  26
    EkKey8          =  27
    EkKey0          =  28
    EkKeyRcurly     =  29
    EkKeyO          =  30
    EkKeyU          =  31
    EkKeyLcurly     =  32
    EkKeyI          =  33
    EkKeyP          =  34
    EkKeyReturn     =  35
    EkKeyL          =  36
    EkKeyJ          =  37
    EkKeySemicolon  =  38
    EkKeyK          =  39
    EkKeyQuest      =  40
    EkKeyComma      =  41
    EkKeyMinus      =  42
    EkKeyN          =  43
    EkKeyM          =  44
    EkKeyPeriod     =  45
    EkKeyTab        =  46
    EkKeySpace      =  47
    EkKeyGtlt       =  48
    EkKeyBack       =  49
    EkKeyEscape     =  50
    EkKeyF17        =  51
    EkKeyNumdecimal =  52
    EkKeyNummult    =  53
    EkKeyNumadd     =  54
    EkKeyNumlock    =  55
    EkKeyNumdiv     =  56
    EkKeyNumret     =  57
    EkKeyNumminus   =  58
    EkKeyF18        =  59
    EkKeyF19        =  60
    EkKeyNumequal   =  61
    EkKeyNum0       =  62
    EkKeyNum1       =  63
    EkKeyNum2       =  64
    EkKeyNum3       =  65
    EkKeyNum4       =  66
    EkKeyNum5       =  67
    EkKeyNum6       =  68
    EkKeyNum7       =  69
    EkKeyNum8       =  70
    EkKeyNum9       =  71
    EkKeyF5         =  72
    EkKeyF6         =  73
    EkKeyF7         =  74
    EkKeyF3         =  75
    EkKeyF8         =  76
    EkKeyF9         =  77
    EkKeyF11        =  78
    EkKeyF13        =  79
    EkKeyF16        =  80
    EkKeyF14        =  81
    EkKeyF10        =  82
    EkKeyF12        =  83
    EkKeyF15        =  84
    EkKeyPageup     =  85
    EkKeyHome       =  86
    EkKeySupr       =  87
    EkKeyF4         =  88
    EkKeyPagedown   =  89
    EkKeyF2         =  90
    EkKeyEnd        =  91
    EkKeyF1         =  92
    EkKeyLeft       =  93
    EkKeyRight      =  94
    EkKeyDown       =  95
    EkKeyUp         =  96
    EkKeyLshift     =  97
    EkKeyRshift     =  98
    EkKeyLctrl      =  99
    EkKeyRctrl      = 100
    EkKeyLalt       = 101
    EkKeyRalt       = 102
    EkKeyInsert     = 103
    EkKeyExclam     = 104
    EkKeyMenu       = 105
    EkKeyLwin       = 106
    EkKeyRwin       = 107
    EkKeyCaps       = 108
    EkKeyTilde      = 109
    EkKeyGrave      = 110
    EkKeyPlus       = 111
  end
  type VkeyT = X_KeyT
  fun keybuf_on_down = keybuf_OnDown(buffer : KeyBuf, key : VkeyT)
  fun keybuf_clear(buffer : KeyBuf)
  fun keybuf_pressed(buffer : KeyBuf, key : VkeyT) : BoolT
  fun keybuf_str(key : VkeyT) : CharT*
  fun keybuf_dump(buffer : KeyBuf)
  fun respack_destroy(pack : ResPack*)
  fun respack_text(pack : ResPack, id : ResId) : CharT*
  alias ResId = CharT*
  fun respack_file(pack : ResPack, id : ResId, size : Uint32T*) : ByteT*
  fun regex_create(pattern : CharT*) : RegEx
  type RegEx = Void*
  fun regex_destroy(regex : RegEx*)
  fun regex_match(regex : RegEx, str : CharT*) : BoolT
  fun stm_from_block(data : ByteT*, size : Uint32T) : Stream
  fun stm_memory(size : Uint32T) : Stream
  fun stm_from_file(pathname : CharT*, error : FerrorT*) : Stream
  fun stm_to_file(pathname : CharT*, error : FerrorT*) : Stream
  fun stm_append_file(pathname : CharT*, error : FerrorT*) : Stream
  fun stm_socket(socket : Socket) : Stream
  fun stm_close(stm : Stream*)
  fun stm_get_write_endian(stm : Stream) : EndianT
  fun stm_get_read_endian(stm : Stream) : EndianT
  fun stm_set_write_endian(stm : Stream, endian : EndianT)
  fun stm_set_read_endian(stm : Stream, endian : EndianT)
  fun stm_get_write_utf(stm : Stream) : UnicodeT
  fun stm_get_read_utf(stm : Stream) : UnicodeT
  fun stm_set_write_utf(stm : Stream, format : UnicodeT)
  fun stm_set_read_utf(stm : Stream, format : UnicodeT)
  fun stm_is_memory(stm : Stream) : BoolT
  fun stm_bytes_written(stm : Stream) : Uint64T
  fun stm_bytes_readed(stm : Stream) : Uint64T
  fun stm_col(stm : Stream) : Uint32T
  fun stm_row(stm : Stream) : Uint32T
  fun stm_token_col(stm : Stream) : Uint32T
  fun stm_token_row(stm : Stream) : Uint32T
  fun stm_token_lexeme(stm : Stream, size : Uint32T*) : CharT*
  fun stm_token_escapes(stm : Stream, active_escapes : BoolT)
  fun stm_token_spaces(stm : Stream, active_spaces : BoolT)
  fun stm_token_comments(stm : Stream, active_comments : BoolT)
  fun stm_state(stm : Stream) : SstateT
  enum X_SstateT
    EkStok      = 0
    EkStend     = 1
    EkStcorrupt = 2
    EkStbroken  = 3
  end
  type SstateT = X_SstateT
  fun stm_file_err(stm : Stream) : FerrorT
  fun stm_sock_err(stm : Stream) : SerrorT
  fun stm_corrupt(stm : Stream)
  fun stm_str(stm : Stream) : String*
  fun stm_buffer(stm : Stream) : ByteT*
  fun stm_buffer_size(stm : Stream) : Uint32T
  fun stm_write(stm : Stream, data : ByteT*, size : Uint32T)
  fun stm_write_char(stm : Stream, codepoint : Uint32T)
  fun stm_printf(stm : Stream, format : CharT*, ...) : Uint32T
  fun stm_writef(stm : Stream, str : CharT*) : Uint32T
  fun stm_write_bool(stm : Stream, value : BoolT)
  fun stm_write_i8(stm : Stream, value : Int8T)
  fun stm_write_i16(stm : Stream, value : Int16T)
  fun stm_write_i32(stm : Stream, value : Int32T)
  fun stm_write_i64(stm : Stream, value : Int64T)
  fun stm_write_u8(stm : Stream, value : Uint8T)
  fun stm_write_u16(stm : Stream, value : Uint16T)
  fun stm_write_u32(stm : Stream, value : Uint32T)
  fun stm_write_u64(stm : Stream, value : Uint64T)
  fun stm_write_r32(stm : Stream, value : Real32T)
  fun stm_write_r64(stm : Stream, value : Real64T)
  fun stm_read(stm : Stream, data : ByteT*, size : Uint32T) : Uint32T
  fun stm_read_char(stm : Stream) : Uint32T
  fun stm_read_chars(stm : Stream, n : Uint32T) : CharT*
  fun stm_read_line(stm : Stream) : CharT*
  fun stm_read_trim(stm : Stream) : CharT*
  fun stm_read_token(stm : Stream) : LtokenT
  enum X_TokenT
    EkTslcom    =  1
    EkTmlcom    =  2
    EkTspace    =  3
    EkTeol      =  4
    EkTless     =  5
    EkTgreat    =  6
    EkTcomma    =  7
    EkTperiod   =  8
    EkTscolon   =  9
    EkTcolon    = 10
    EkTopenpar  = 11
    EkTclospar  = 12
    EkTopenbrac = 13
    EkTclosbrac = 14
    EkTopencurl = 15
    EkTcloscurl = 16
    EkTplus     = 17
    EkTminus    = 18
    EkTasterk   = 19
    EkTequals   = 20
    EkTdollar   = 21
    EkTpercent  = 22
    EkTpound    = 23
    EkTamper    = 24
    EkTapost    = 25
    EkTquote    = 26
    EkTcircum   = 27
    EkTtilde    = 28
    EkTexcla    = 29
    EkTquest    = 30
    EkTvline    = 31
    EkTslash    = 32
    EkTbslash   = 33
    EkTat       = 34
    EkTinteger  = 35
    EkToctal    = 36
    EkThex      = 37
    EkTreal     = 38
    EkTstring   = 39
    EkTident    = 40
    EkTundef    = 41
    EkTcorrup   = 42
    EkTeof      = 43
    EkTreserved = 44
  end
  type LtokenT = X_TokenT
  fun stm_read_i8_tok(stm : Stream) : Int8T
  fun stm_read_i16_tok(stm : Stream) : Int16T
  fun stm_read_i32_tok(stm : Stream) : Int32T
  fun stm_read_i64_tok(stm : Stream) : Int64T
  fun stm_read_u8_tok(stm : Stream) : Uint8T
  fun stm_read_u16_tok(stm : Stream) : Uint16T
  fun stm_read_u32_tok(stm : Stream) : Uint32T
  fun stm_read_u64_tok(stm : Stream) : Uint64T
  fun stm_read_r32_tok(stm : Stream) : Real32T
  fun stm_read_r64_tok(stm : Stream) : Real64T
  fun stm_read_bool(stm : Stream) : BoolT
  fun stm_read_i8(stm : Stream) : Int8T
  fun stm_read_i16(stm : Stream) : Int16T
  fun stm_read_i32(stm : Stream) : Int32T
  fun stm_read_i64(stm : Stream) : Int64T
  fun stm_read_u8(stm : Stream) : Uint8T
  fun stm_read_u16(stm : Stream) : Uint16T
  fun stm_read_u32(stm : Stream) : Uint32T
  fun stm_read_u64(stm : Stream) : Uint64T
  fun stm_read_r32(stm : Stream) : Real32T
  fun stm_read_r64(stm : Stream) : Real64T
  fun stm_skip(stm : Stream, size : Uint32T)
  fun stm_skip_bom(stm : Stream)
  fun stm_skip_token(stm : Stream, token : LtokenT)
  fun stm_flush(stm : Stream)
  fun stm_pipe(from : Stream, to : Stream, n : Uint32T)
  fun tc(str : String*) : CharT*
  fun tcc(str : String*) : CharT*
  fun str_c(str : CharT*) : String*
  fun str_cn(str : CharT*, n : Uint32T) : String*
  fun str_trim(str : CharT*) : String*
  fun str_trim_n(str : CharT*, n : Uint32T) : String*
  fun str_copy(str : String*) : String*
  fun str_printf(format : CharT*, ...) : String*
  fun str_path(platform : PlatformT, format : CharT*, ...) : String*
  fun str_cpath(format : CharT*, ...) : String*
  fun str_relpath(path1 : CharT*, path2 : CharT*) : String*
  fun str_repl(str : CharT*, ...) : String*
  fun str_reserve(n : Uint32T) : String*
  fun str_fill(n : Uint32T, c : CharT) : String*
  fun str_read(stream : Stream) : String*
  fun str_write(stream : Stream, str : String*)
  fun str_writef(stream : Stream, str : String*)
  fun str_copy_c(dest : CharT*, size : Uint32T, src : CharT*)
  fun str_copy_cn(dest : CharT*, size : Uint32T, src : CharT*, n : Uint32T)
  fun str_cat(dest : String**, src : CharT*)
  fun str_cat_c(dest : CharT*, size : Uint32T, src : CharT*)
  fun str_upd(str : String**, new_str : CharT*)
  fun str_destroy(str : String**)
  fun str_destopt(str : String**)
  fun str_len(str : String*) : Uint32T
  fun str_len_c(str : CharT*) : Uint32T
  fun str_nchars(str : String*) : Uint32T
  fun str_prefix(str1 : CharT*, str2 : CharT*) : Uint32T
  fun str_is_prefix(str : CharT*, prefix : CharT*) : BoolT
  fun str_is_sufix(str : CharT*, sufix : CharT*) : BoolT
  fun str_scmp(str1 : String*, str2 : String*) : LibC::Int
  fun str_cmp(str1 : String*, str2 : CharT*) : LibC::Int
  fun str_cmp_c(str1 : CharT*, str2 : CharT*) : LibC::Int
  fun str_cmp_cn(str1 : CharT*, str2 : CharT*, n : Uint32T) : LibC::Int
  fun str_empty(str : String*) : BoolT
  fun str_empty_c(str : CharT*) : BoolT
  fun str_equ(str1 : String*, str2 : CharT*) : BoolT
  fun str_equ_c(str1 : CharT*, str2 : CharT*) : BoolT
  fun str_equ_cn(str1 : CharT*, str2 : CharT*, n : Uint32T) : BoolT
  fun str_equ_nocase(str1 : CharT*, str2 : CharT*) : BoolT
  fun str_equ_end(str : CharT*, _end : CharT*) : BoolT
  fun str_upper(str : String*)
  fun str_lower(str : String*)
  fun str_upper_c(dest : CharT*, size : Uint32T, str : CharT*)
  fun str_lower_c(dest : CharT*, size : Uint32T, str : CharT*)
  fun str_subs(str : String*, replace : CharT, with : CharT)
  fun str_repl_c(str : CharT*, replace : CharT*, with : CharT*)
  fun str_str(str : CharT*, substr : CharT*) : CharT*
  fun str_split(str : CharT*, substr : CharT*, left : String**, right : String**) : BoolT
  fun str_split_trim(str : CharT*, substr : CharT*, left : String**, right : String**) : BoolT
  fun str_split_pathname(pathname : CharT*, path : String**, file : String**)
  fun str_split_pathext(pathname : CharT*, path : String**, file : String**, ext : String**)
  fun str_filename(pathname : CharT*) : CharT*
  fun str_filext(pathname : CharT*) : CharT*
  fun str_find(array : ArrPtString*, str : CharT*) : Uint32T
  fun str_to_i8(str : CharT*, base : Uint32T, error : BoolT*) : Int8T
  fun str_to_i16(str : CharT*, base : Uint32T, error : BoolT*) : Int16T
  fun str_to_i32(str : CharT*, base : Uint32T, error : BoolT*) : Int32T
  fun str_to_i64(str : CharT*, base : Uint32T, error : BoolT*) : Int64T
  fun str_to_u8(str : CharT*, base : Uint32T, error : BoolT*) : Uint8T
  fun str_to_u16(str : CharT*, base : Uint32T, error : BoolT*) : Uint16T
  fun str_to_u32(str : CharT*, base : Uint32T, error : BoolT*) : Uint32T
  fun str_to_u64(str : CharT*, base : Uint32T, error : BoolT*) : Uint64T
  fun str_to_r32(str : CharT*, error : BoolT*) : Real32T
  fun str_to_r64(str : CharT*, error : BoolT*) : Real64T
  fun arrst_v2_df_create = arrst_V2Df_create(esize : Uint16T) : ArrStV2Df*

  struct ArrStV2Df
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : V2DfData*
  end

  struct V2DfData
    elem : V2Df[1024]
  end

  struct V2Df
    x : Real32T
    y : Real32T
  end

  fun arrst_v2_df_create = arrst_V2Df_create(esize : Uint16T) : ArrStV2Df*
  fun arrst_v2_df_copy = arrst_V2Df_copy(array : ArrStV2Df*, func_copy : (V2Df*, V2Df* -> Void)) : ArrStV2Df*
  fun arrst_v2_df_copy = arrst_V2Df_copy(array : ArrStV2Df*, func_copy : (V2Df*, V2Df* -> Void)) : ArrStV2Df*
  fun arrst_v2_df_read = arrst_V2Df_read(stream : Stream, esize : Uint16T, func_read : (Stream, V2Df* -> Void)) : ArrStV2Df*
  fun arrst_v2_df_read = arrst_V2Df_read(stream : Stream, esize : Uint16T, func_read : (Stream, V2Df* -> Void)) : ArrStV2Df*
  fun arrst_v2_df_destroy = arrst_V2Df_destroy(array : ArrStV2Df**, func_remove : (V2Df* -> Void))
  fun arrst_v2_df_destroy = arrst_V2Df_destroy(array : ArrStV2Df**, func_remove : (V2Df* -> Void))
  fun arrst_v2_df_destopt = arrst_V2Df_destopt(array : ArrStV2Df**, func_remove : (V2Df* -> Void))
  fun arrst_v2_df_destopt = arrst_V2Df_destopt(array : ArrStV2Df**, func_remove : (V2Df* -> Void))
  fun arrst_v2_df_clear = arrst_V2Df_clear(array : ArrStV2Df*, func_remove : (V2Df* -> Void))
  fun arrst_v2_df_clear = arrst_V2Df_clear(array : ArrStV2Df*, func_remove : (V2Df* -> Void))
  fun arrst_v2_df_write = arrst_V2Df_write(stream : Stream, array : ArrStV2Df*, func_write : (Stream, V2Df* -> Void))
  fun arrst_v2_df_write = arrst_V2Df_write(stream : Stream, array : ArrStV2Df*, func_write : (Stream, V2Df* -> Void))
  fun arrst_v2_df_size = arrst_V2Df_size(array : ArrStV2Df*) : Uint32T
  fun arrst_v2_df_size = arrst_V2Df_size(array : ArrStV2Df*) : Uint32T
  fun arrst_v2_df_get = arrst_V2Df_get(array : ArrStV2Df*, pos : Uint32T) : V2Df*
  fun arrst_v2_df_get = arrst_V2Df_get(array : ArrStV2Df*, pos : Uint32T) : V2Df*
  fun arrst_v2_df_get_const = arrst_V2Df_get_const(array : ArrStV2Df*, pos : Uint32T) : V2Df*
  fun arrst_v2_df_get_const = arrst_V2Df_get_const(array : ArrStV2Df*, pos : Uint32T) : V2Df*
  fun arrst_v2_df_last = arrst_V2Df_last(array : ArrStV2Df*) : V2Df*
  fun arrst_v2_df_last = arrst_V2Df_last(array : ArrStV2Df*) : V2Df*
  fun arrst_v2_df_last_const = arrst_V2Df_last_const(array : ArrStV2Df*) : V2Df*
  fun arrst_v2_df_last_const = arrst_V2Df_last_const(array : ArrStV2Df*) : V2Df*
  fun arrst_v2_df_all = arrst_V2Df_all(array : ArrStV2Df*) : V2Df*
  fun arrst_v2_df_all = arrst_V2Df_all(array : ArrStV2Df*) : V2Df*
  fun arrst_v2_df_all_const = arrst_V2Df_all_const(array : ArrStV2Df*) : V2Df*
  fun arrst_v2_df_all_const = arrst_V2Df_all_const(array : ArrStV2Df*) : V2Df*
  fun arrst_v2_df_insert = arrst_V2Df_insert(array : ArrStV2Df*, pos : Uint32T, n : Uint32T) : V2Df*
  fun arrst_v2_df_insert = arrst_V2Df_insert(array : ArrStV2Df*, pos : Uint32T, n : Uint32T) : V2Df*
  fun arrst_v2_df_insert0 = arrst_V2Df_insert0(array : ArrStV2Df*, pos : Uint32T, n : Uint32T) : V2Df*
  fun arrst_v2_df_insert0 = arrst_V2Df_insert0(array : ArrStV2Df*, pos : Uint32T, n : Uint32T) : V2Df*
  fun arrst_v2_df_join = arrst_V2Df_join(dest : ArrStV2Df*, src : ArrStV2Df*, func_copy : (V2Df*, V2Df* -> Void))
  fun arrst_v2_df_join = arrst_V2Df_join(dest : ArrStV2Df*, src : ArrStV2Df*, func_copy : (V2Df*, V2Df* -> Void))
  fun arrst_v2_df_delete = arrst_V2Df_delete(array : ArrStV2Df*, pos : Uint32T, func_remove : (V2Df* -> Void))
  fun arrst_v2_df_delete = arrst_V2Df_delete(array : ArrStV2Df*, pos : Uint32T, func_remove : (V2Df* -> Void))
  fun arrst_v2_df_pop = arrst_V2Df_pop(array : ArrStV2Df*, func_remove : (V2Df* -> Void))
  fun arrst_v2_df_pop = arrst_V2Df_pop(array : ArrStV2Df*, func_remove : (V2Df* -> Void))
  fun arrst_v2_df_sort = arrst_V2Df_sort(array : ArrStV2Df*, func_compare : (V2Df*, V2Df* -> LibC::Int))
  fun arrst_v2_df_sort = arrst_V2Df_sort(array : ArrStV2Df*, func_compare : (V2Df*, V2Df* -> LibC::Int))
  fun arrst_v2_df_sort_ex = arrst_V2Df_sort_ex(array : ArrStV2Df*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_v2_df_sort_ex = arrst_V2Df_sort_ex(array : ArrStV2Df*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_v2_df_search = arrst_V2Df_search(array : ArrStV2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : V2Df*
  fun arrst_v2_df_search = arrst_V2Df_search(array : ArrStV2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : V2Df*
  fun arrst_v2_df_search_const = arrst_V2Df_search_const(array : ArrStV2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : V2Df*
  fun arrst_v2_df_search_const = arrst_V2Df_search_const(array : ArrStV2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : V2Df*
  fun arrst_v2_df_bsearch = arrst_V2Df_bsearch(array : ArrStV2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : V2Df*
  fun arrst_v2_df_bsearch = arrst_V2Df_bsearch(array : ArrStV2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : V2Df*
  fun arrst_v2_df_bsearch_const = arrst_V2Df_bsearch_const(array : ArrStV2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : V2Df*
  fun arrst_v2_df_bsearch_const = arrst_V2Df_bsearch_const(array : ArrStV2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : V2Df*
  fun arrst_v2_df_end = arrst_V2Df_end
  fun setst_v2_df_create = setst_V2Df_create(func_compare : (V2Df*, V2Df* -> LibC::Int), esize : Uint16T) : SetStV2Df*

  struct SetStV2Df
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStV2Df*
    func_compare : FPtrCompare
  end

  struct NodeStV2Df
    rb : Uint32T
    left : NodeStV2Df*
    right : NodeStV2Df*
    data : V2Df
  end

  fun setst_v2_df_create = setst_V2Df_create(func_compare : (V2Df*, V2Df* -> LibC::Int), esize : Uint16T) : SetStV2Df*
  fun setst_v2_df_destroy = setst_V2Df_destroy(set : SetStV2Df**, func_remove : (V2Df* -> Void))
  fun setst_v2_df_destroy = setst_V2Df_destroy(set : SetStV2Df**, func_remove : (V2Df* -> Void))
  fun setst_v2_df_size = setst_V2Df_size(set : SetStV2Df*) : Uint32T
  fun setst_v2_df_size = setst_V2Df_size(set : SetStV2Df*) : Uint32T
  fun setst_v2_df_get = setst_V2Df_get(set : SetStV2Df*, key : V2Df*) : V2Df*
  fun setst_v2_df_get = setst_V2Df_get(set : SetStV2Df*, key : V2Df*) : V2Df*
  fun setst_v2_df_get_const = setst_V2Df_get_const(set : SetStV2Df*, key : V2Df*) : V2Df*
  fun setst_v2_df_get_const = setst_V2Df_get_const(set : SetStV2Df*, key : V2Df*) : V2Df*
  fun setst_v2_df_insert = setst_V2Df_insert(set : SetStV2Df*, key : V2Df*) : V2Df*
  fun setst_v2_df_insert = setst_V2Df_insert(set : SetStV2Df*, key : V2Df*) : V2Df*
  fun setst_v2_df_delete = setst_V2Df_delete(set : SetStV2Df*, key : V2Df*, func_remove : (V2Df* -> Void)) : BoolT
  fun setst_v2_df_delete = setst_V2Df_delete(set : SetStV2Df*, key : V2Df*, func_remove : (V2Df* -> Void)) : BoolT
  fun setst_v2_df_first = setst_V2Df_first(set : SetStV2Df*) : V2Df*
  fun setst_v2_df_first = setst_V2Df_first(set : SetStV2Df*) : V2Df*
  fun setst_v2_df_first_const = setst_V2Df_first_const(set : SetStV2Df*) : V2Df*
  fun setst_v2_df_first_const = setst_V2Df_first_const(set : SetStV2Df*) : V2Df*
  fun setst_v2_df_last = setst_V2Df_last(set : SetStV2Df*) : V2Df*
  fun setst_v2_df_last = setst_V2Df_last(set : SetStV2Df*) : V2Df*
  fun setst_v2_df_last_const = setst_V2Df_last_const(set : SetStV2Df*) : V2Df*
  fun setst_v2_df_last_const = setst_V2Df_last_const(set : SetStV2Df*) : V2Df*
  fun setst_v2_df_next = setst_V2Df_next(set : SetStV2Df*) : V2Df*
  fun setst_v2_df_next = setst_V2Df_next(set : SetStV2Df*) : V2Df*
  fun setst_v2_df_next_const = setst_V2Df_next_const(set : SetStV2Df*) : V2Df*
  fun setst_v2_df_next_const = setst_V2Df_next_const(set : SetStV2Df*) : V2Df*
  fun setst_v2_df_prev = setst_V2Df_prev(set : SetStV2Df*) : V2Df*
  fun setst_v2_df_prev = setst_V2Df_prev(set : SetStV2Df*) : V2Df*
  fun setst_v2_df_prev_const = setst_V2Df_prev_const(set : SetStV2Df*) : V2Df*
  fun setst_v2_df_prev_const = setst_V2Df_prev_const(set : SetStV2Df*) : V2Df*
  fun setst_v2_df_end = setst_V2Df_end
  fun arrst_v2_dd_create = arrst_V2Dd_create(esize : Uint16T) : ArrStV2Dd*

  struct ArrStV2Dd
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : V2DdData*
  end

  struct V2DdData
    elem : V2Dd[1024]
  end

  struct X_V2ddT
    x : Real64T
    y : Real64T
  end

  type V2Dd = X_V2ddT
  fun arrst_v2_dd_create = arrst_V2Dd_create(esize : Uint16T) : ArrStV2Dd*
  fun arrst_v2_dd_copy = arrst_V2Dd_copy(array : ArrStV2Dd*, func_copy : (V2Dd*, V2Dd* -> Void)) : ArrStV2Dd*
  fun arrst_v2_dd_copy = arrst_V2Dd_copy(array : ArrStV2Dd*, func_copy : (V2Dd*, V2Dd* -> Void)) : ArrStV2Dd*
  fun arrst_v2_dd_read = arrst_V2Dd_read(stream : Stream, esize : Uint16T, func_read : (Stream, V2Dd* -> Void)) : ArrStV2Dd*
  fun arrst_v2_dd_read = arrst_V2Dd_read(stream : Stream, esize : Uint16T, func_read : (Stream, V2Dd* -> Void)) : ArrStV2Dd*
  fun arrst_v2_dd_destroy = arrst_V2Dd_destroy(array : ArrStV2Dd**, func_remove : (V2Dd* -> Void))
  fun arrst_v2_dd_destroy = arrst_V2Dd_destroy(array : ArrStV2Dd**, func_remove : (V2Dd* -> Void))
  fun arrst_v2_dd_destopt = arrst_V2Dd_destopt(array : ArrStV2Dd**, func_remove : (V2Dd* -> Void))
  fun arrst_v2_dd_destopt = arrst_V2Dd_destopt(array : ArrStV2Dd**, func_remove : (V2Dd* -> Void))
  fun arrst_v2_dd_clear = arrst_V2Dd_clear(array : ArrStV2Dd*, func_remove : (V2Dd* -> Void))
  fun arrst_v2_dd_clear = arrst_V2Dd_clear(array : ArrStV2Dd*, func_remove : (V2Dd* -> Void))
  fun arrst_v2_dd_write = arrst_V2Dd_write(stream : Stream, array : ArrStV2Dd*, func_write : (Stream, V2Dd* -> Void))
  fun arrst_v2_dd_write = arrst_V2Dd_write(stream : Stream, array : ArrStV2Dd*, func_write : (Stream, V2Dd* -> Void))
  fun arrst_v2_dd_size = arrst_V2Dd_size(array : ArrStV2Dd*) : Uint32T
  fun arrst_v2_dd_size = arrst_V2Dd_size(array : ArrStV2Dd*) : Uint32T
  fun arrst_v2_dd_get = arrst_V2Dd_get(array : ArrStV2Dd*, pos : Uint32T) : V2Dd*
  fun arrst_v2_dd_get = arrst_V2Dd_get(array : ArrStV2Dd*, pos : Uint32T) : V2Dd*
  fun arrst_v2_dd_get_const = arrst_V2Dd_get_const(array : ArrStV2Dd*, pos : Uint32T) : V2Dd*
  fun arrst_v2_dd_get_const = arrst_V2Dd_get_const(array : ArrStV2Dd*, pos : Uint32T) : V2Dd*
  fun arrst_v2_dd_last = arrst_V2Dd_last(array : ArrStV2Dd*) : V2Dd*
  fun arrst_v2_dd_last = arrst_V2Dd_last(array : ArrStV2Dd*) : V2Dd*
  fun arrst_v2_dd_last_const = arrst_V2Dd_last_const(array : ArrStV2Dd*) : V2Dd*
  fun arrst_v2_dd_last_const = arrst_V2Dd_last_const(array : ArrStV2Dd*) : V2Dd*
  fun arrst_v2_dd_all = arrst_V2Dd_all(array : ArrStV2Dd*) : V2Dd*
  fun arrst_v2_dd_all = arrst_V2Dd_all(array : ArrStV2Dd*) : V2Dd*
  fun arrst_v2_dd_all_const = arrst_V2Dd_all_const(array : ArrStV2Dd*) : V2Dd*
  fun arrst_v2_dd_all_const = arrst_V2Dd_all_const(array : ArrStV2Dd*) : V2Dd*
  fun arrst_v2_dd_insert = arrst_V2Dd_insert(array : ArrStV2Dd*, pos : Uint32T, n : Uint32T) : V2Dd*
  fun arrst_v2_dd_insert = arrst_V2Dd_insert(array : ArrStV2Dd*, pos : Uint32T, n : Uint32T) : V2Dd*
  fun arrst_v2_dd_insert0 = arrst_V2Dd_insert0(array : ArrStV2Dd*, pos : Uint32T, n : Uint32T) : V2Dd*
  fun arrst_v2_dd_insert0 = arrst_V2Dd_insert0(array : ArrStV2Dd*, pos : Uint32T, n : Uint32T) : V2Dd*
  fun arrst_v2_dd_join = arrst_V2Dd_join(dest : ArrStV2Dd*, src : ArrStV2Dd*, func_copy : (V2Dd*, V2Dd* -> Void))
  fun arrst_v2_dd_join = arrst_V2Dd_join(dest : ArrStV2Dd*, src : ArrStV2Dd*, func_copy : (V2Dd*, V2Dd* -> Void))
  fun arrst_v2_dd_delete = arrst_V2Dd_delete(array : ArrStV2Dd*, pos : Uint32T, func_remove : (V2Dd* -> Void))
  fun arrst_v2_dd_delete = arrst_V2Dd_delete(array : ArrStV2Dd*, pos : Uint32T, func_remove : (V2Dd* -> Void))
  fun arrst_v2_dd_pop = arrst_V2Dd_pop(array : ArrStV2Dd*, func_remove : (V2Dd* -> Void))
  fun arrst_v2_dd_pop = arrst_V2Dd_pop(array : ArrStV2Dd*, func_remove : (V2Dd* -> Void))
  fun arrst_v2_dd_sort = arrst_V2Dd_sort(array : ArrStV2Dd*, func_compare : (V2Dd*, V2Dd* -> LibC::Int))
  fun arrst_v2_dd_sort = arrst_V2Dd_sort(array : ArrStV2Dd*, func_compare : (V2Dd*, V2Dd* -> LibC::Int))
  fun arrst_v2_dd_sort_ex = arrst_V2Dd_sort_ex(array : ArrStV2Dd*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_v2_dd_sort_ex = arrst_V2Dd_sort_ex(array : ArrStV2Dd*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_v2_dd_search = arrst_V2Dd_search(array : ArrStV2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : V2Dd*
  fun arrst_v2_dd_search = arrst_V2Dd_search(array : ArrStV2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : V2Dd*
  fun arrst_v2_dd_search_const = arrst_V2Dd_search_const(array : ArrStV2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : V2Dd*
  fun arrst_v2_dd_search_const = arrst_V2Dd_search_const(array : ArrStV2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : V2Dd*
  fun arrst_v2_dd_bsearch = arrst_V2Dd_bsearch(array : ArrStV2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : V2Dd*
  fun arrst_v2_dd_bsearch = arrst_V2Dd_bsearch(array : ArrStV2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : V2Dd*
  fun arrst_v2_dd_bsearch_const = arrst_V2Dd_bsearch_const(array : ArrStV2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : V2Dd*
  fun arrst_v2_dd_bsearch_const = arrst_V2Dd_bsearch_const(array : ArrStV2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : V2Dd*
  fun arrst_v2_dd_end = arrst_V2Dd_end
  fun setst_v2_dd_create = setst_V2Dd_create(func_compare : (V2Dd*, V2Dd* -> LibC::Int), esize : Uint16T) : SetStV2Dd*

  struct SetStV2Dd
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStV2Dd*
    func_compare : FPtrCompare
  end

  struct NodeStV2Dd
    rb : Uint32T
    left : NodeStV2Dd*
    right : NodeStV2Dd*
    data : V2Dd
  end

  fun setst_v2_dd_create = setst_V2Dd_create(func_compare : (V2Dd*, V2Dd* -> LibC::Int), esize : Uint16T) : SetStV2Dd*
  fun setst_v2_dd_destroy = setst_V2Dd_destroy(set : SetStV2Dd**, func_remove : (V2Dd* -> Void))
  fun setst_v2_dd_destroy = setst_V2Dd_destroy(set : SetStV2Dd**, func_remove : (V2Dd* -> Void))
  fun setst_v2_dd_size = setst_V2Dd_size(set : SetStV2Dd*) : Uint32T
  fun setst_v2_dd_size = setst_V2Dd_size(set : SetStV2Dd*) : Uint32T
  fun setst_v2_dd_get = setst_V2Dd_get(set : SetStV2Dd*, key : V2Dd*) : V2Dd*
  fun setst_v2_dd_get = setst_V2Dd_get(set : SetStV2Dd*, key : V2Dd*) : V2Dd*
  fun setst_v2_dd_get_const = setst_V2Dd_get_const(set : SetStV2Dd*, key : V2Dd*) : V2Dd*
  fun setst_v2_dd_get_const = setst_V2Dd_get_const(set : SetStV2Dd*, key : V2Dd*) : V2Dd*
  fun setst_v2_dd_insert = setst_V2Dd_insert(set : SetStV2Dd*, key : V2Dd*) : V2Dd*
  fun setst_v2_dd_insert = setst_V2Dd_insert(set : SetStV2Dd*, key : V2Dd*) : V2Dd*
  fun setst_v2_dd_delete = setst_V2Dd_delete(set : SetStV2Dd*, key : V2Dd*, func_remove : (V2Dd* -> Void)) : BoolT
  fun setst_v2_dd_delete = setst_V2Dd_delete(set : SetStV2Dd*, key : V2Dd*, func_remove : (V2Dd* -> Void)) : BoolT
  fun setst_v2_dd_first = setst_V2Dd_first(set : SetStV2Dd*) : V2Dd*
  fun setst_v2_dd_first = setst_V2Dd_first(set : SetStV2Dd*) : V2Dd*
  fun setst_v2_dd_first_const = setst_V2Dd_first_const(set : SetStV2Dd*) : V2Dd*
  fun setst_v2_dd_first_const = setst_V2Dd_first_const(set : SetStV2Dd*) : V2Dd*
  fun setst_v2_dd_last = setst_V2Dd_last(set : SetStV2Dd*) : V2Dd*
  fun setst_v2_dd_last = setst_V2Dd_last(set : SetStV2Dd*) : V2Dd*
  fun setst_v2_dd_last_const = setst_V2Dd_last_const(set : SetStV2Dd*) : V2Dd*
  fun setst_v2_dd_last_const = setst_V2Dd_last_const(set : SetStV2Dd*) : V2Dd*
  fun setst_v2_dd_next = setst_V2Dd_next(set : SetStV2Dd*) : V2Dd*
  fun setst_v2_dd_next = setst_V2Dd_next(set : SetStV2Dd*) : V2Dd*
  fun setst_v2_dd_next_const = setst_V2Dd_next_const(set : SetStV2Dd*) : V2Dd*
  fun setst_v2_dd_next_const = setst_V2Dd_next_const(set : SetStV2Dd*) : V2Dd*
  fun setst_v2_dd_prev = setst_V2Dd_prev(set : SetStV2Dd*) : V2Dd*
  fun setst_v2_dd_prev = setst_V2Dd_prev(set : SetStV2Dd*) : V2Dd*
  fun setst_v2_dd_prev_const = setst_V2Dd_prev_const(set : SetStV2Dd*) : V2Dd*
  fun setst_v2_dd_prev_const = setst_V2Dd_prev_const(set : SetStV2Dd*) : V2Dd*
  fun setst_v2_dd_end = setst_V2Dd_end
  fun arrst_s2_df_create = arrst_S2Df_create(esize : Uint16T) : ArrStS2Df*

  struct ArrStS2Df
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : S2DfData*
  end

  struct S2DfData
    elem : S2Df[1024]
  end

  struct X_S2dfT
    width : Real32T
    height : Real32T
  end

  type S2Df = X_S2dfT
  fun arrst_s2_df_create = arrst_S2Df_create(esize : Uint16T) : ArrStS2Df*
  fun arrst_s2_df_copy = arrst_S2Df_copy(array : ArrStS2Df*, func_copy : (S2Df*, S2Df* -> Void)) : ArrStS2Df*
  fun arrst_s2_df_copy = arrst_S2Df_copy(array : ArrStS2Df*, func_copy : (S2Df*, S2Df* -> Void)) : ArrStS2Df*
  fun arrst_s2_df_read = arrst_S2Df_read(stream : Stream, esize : Uint16T, func_read : (Stream, S2Df* -> Void)) : ArrStS2Df*
  fun arrst_s2_df_read = arrst_S2Df_read(stream : Stream, esize : Uint16T, func_read : (Stream, S2Df* -> Void)) : ArrStS2Df*
  fun arrst_s2_df_destroy = arrst_S2Df_destroy(array : ArrStS2Df**, func_remove : (S2Df* -> Void))
  fun arrst_s2_df_destroy = arrst_S2Df_destroy(array : ArrStS2Df**, func_remove : (S2Df* -> Void))
  fun arrst_s2_df_destopt = arrst_S2Df_destopt(array : ArrStS2Df**, func_remove : (S2Df* -> Void))
  fun arrst_s2_df_destopt = arrst_S2Df_destopt(array : ArrStS2Df**, func_remove : (S2Df* -> Void))
  fun arrst_s2_df_clear = arrst_S2Df_clear(array : ArrStS2Df*, func_remove : (S2Df* -> Void))
  fun arrst_s2_df_clear = arrst_S2Df_clear(array : ArrStS2Df*, func_remove : (S2Df* -> Void))
  fun arrst_s2_df_write = arrst_S2Df_write(stream : Stream, array : ArrStS2Df*, func_write : (Stream, S2Df* -> Void))
  fun arrst_s2_df_write = arrst_S2Df_write(stream : Stream, array : ArrStS2Df*, func_write : (Stream, S2Df* -> Void))
  fun arrst_s2_df_size = arrst_S2Df_size(array : ArrStS2Df*) : Uint32T
  fun arrst_s2_df_size = arrst_S2Df_size(array : ArrStS2Df*) : Uint32T
  fun arrst_s2_df_get = arrst_S2Df_get(array : ArrStS2Df*, pos : Uint32T) : S2Df*
  fun arrst_s2_df_get = arrst_S2Df_get(array : ArrStS2Df*, pos : Uint32T) : S2Df*
  fun arrst_s2_df_get_const = arrst_S2Df_get_const(array : ArrStS2Df*, pos : Uint32T) : S2Df*
  fun arrst_s2_df_get_const = arrst_S2Df_get_const(array : ArrStS2Df*, pos : Uint32T) : S2Df*
  fun arrst_s2_df_last = arrst_S2Df_last(array : ArrStS2Df*) : S2Df*
  fun arrst_s2_df_last = arrst_S2Df_last(array : ArrStS2Df*) : S2Df*
  fun arrst_s2_df_last_const = arrst_S2Df_last_const(array : ArrStS2Df*) : S2Df*
  fun arrst_s2_df_last_const = arrst_S2Df_last_const(array : ArrStS2Df*) : S2Df*
  fun arrst_s2_df_all = arrst_S2Df_all(array : ArrStS2Df*) : S2Df*
  fun arrst_s2_df_all = arrst_S2Df_all(array : ArrStS2Df*) : S2Df*
  fun arrst_s2_df_all_const = arrst_S2Df_all_const(array : ArrStS2Df*) : S2Df*
  fun arrst_s2_df_all_const = arrst_S2Df_all_const(array : ArrStS2Df*) : S2Df*
  fun arrst_s2_df_insert = arrst_S2Df_insert(array : ArrStS2Df*, pos : Uint32T, n : Uint32T) : S2Df*
  fun arrst_s2_df_insert = arrst_S2Df_insert(array : ArrStS2Df*, pos : Uint32T, n : Uint32T) : S2Df*
  fun arrst_s2_df_insert0 = arrst_S2Df_insert0(array : ArrStS2Df*, pos : Uint32T, n : Uint32T) : S2Df*
  fun arrst_s2_df_insert0 = arrst_S2Df_insert0(array : ArrStS2Df*, pos : Uint32T, n : Uint32T) : S2Df*
  fun arrst_s2_df_join = arrst_S2Df_join(dest : ArrStS2Df*, src : ArrStS2Df*, func_copy : (S2Df*, S2Df* -> Void))
  fun arrst_s2_df_join = arrst_S2Df_join(dest : ArrStS2Df*, src : ArrStS2Df*, func_copy : (S2Df*, S2Df* -> Void))
  fun arrst_s2_df_delete = arrst_S2Df_delete(array : ArrStS2Df*, pos : Uint32T, func_remove : (S2Df* -> Void))
  fun arrst_s2_df_delete = arrst_S2Df_delete(array : ArrStS2Df*, pos : Uint32T, func_remove : (S2Df* -> Void))
  fun arrst_s2_df_pop = arrst_S2Df_pop(array : ArrStS2Df*, func_remove : (S2Df* -> Void))
  fun arrst_s2_df_pop = arrst_S2Df_pop(array : ArrStS2Df*, func_remove : (S2Df* -> Void))
  fun arrst_s2_df_sort = arrst_S2Df_sort(array : ArrStS2Df*, func_compare : (S2Df*, S2Df* -> LibC::Int))
  fun arrst_s2_df_sort = arrst_S2Df_sort(array : ArrStS2Df*, func_compare : (S2Df*, S2Df* -> LibC::Int))
  fun arrst_s2_df_sort_ex = arrst_S2Df_sort_ex(array : ArrStS2Df*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_s2_df_sort_ex = arrst_S2Df_sort_ex(array : ArrStS2Df*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_s2_df_search = arrst_S2Df_search(array : ArrStS2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : S2Df*
  fun arrst_s2_df_search = arrst_S2Df_search(array : ArrStS2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : S2Df*
  fun arrst_s2_df_search_const = arrst_S2Df_search_const(array : ArrStS2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : S2Df*
  fun arrst_s2_df_search_const = arrst_S2Df_search_const(array : ArrStS2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : S2Df*
  fun arrst_s2_df_bsearch = arrst_S2Df_bsearch(array : ArrStS2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : S2Df*
  fun arrst_s2_df_bsearch = arrst_S2Df_bsearch(array : ArrStS2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : S2Df*
  fun arrst_s2_df_bsearch_const = arrst_S2Df_bsearch_const(array : ArrStS2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : S2Df*
  fun arrst_s2_df_bsearch_const = arrst_S2Df_bsearch_const(array : ArrStS2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : S2Df*
  fun arrst_s2_df_end = arrst_S2Df_end
  fun setst_s2_df_create = setst_S2Df_create(func_compare : (S2Df*, S2Df* -> LibC::Int), esize : Uint16T) : SetStS2Df*

  struct SetStS2Df
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStS2Df*
    func_compare : FPtrCompare
  end

  struct NodeStS2Df
    rb : Uint32T
    left : NodeStS2Df*
    right : NodeStS2Df*
    data : S2Df
  end

  fun setst_s2_df_create = setst_S2Df_create(func_compare : (S2Df*, S2Df* -> LibC::Int), esize : Uint16T) : SetStS2Df*
  fun setst_s2_df_destroy = setst_S2Df_destroy(set : SetStS2Df**, func_remove : (S2Df* -> Void))
  fun setst_s2_df_destroy = setst_S2Df_destroy(set : SetStS2Df**, func_remove : (S2Df* -> Void))
  fun setst_s2_df_size = setst_S2Df_size(set : SetStS2Df*) : Uint32T
  fun setst_s2_df_size = setst_S2Df_size(set : SetStS2Df*) : Uint32T
  fun setst_s2_df_get = setst_S2Df_get(set : SetStS2Df*, key : S2Df*) : S2Df*
  fun setst_s2_df_get = setst_S2Df_get(set : SetStS2Df*, key : S2Df*) : S2Df*
  fun setst_s2_df_get_const = setst_S2Df_get_const(set : SetStS2Df*, key : S2Df*) : S2Df*
  fun setst_s2_df_get_const = setst_S2Df_get_const(set : SetStS2Df*, key : S2Df*) : S2Df*
  fun setst_s2_df_insert = setst_S2Df_insert(set : SetStS2Df*, key : S2Df*) : S2Df*
  fun setst_s2_df_insert = setst_S2Df_insert(set : SetStS2Df*, key : S2Df*) : S2Df*
  fun setst_s2_df_delete = setst_S2Df_delete(set : SetStS2Df*, key : S2Df*, func_remove : (S2Df* -> Void)) : BoolT
  fun setst_s2_df_delete = setst_S2Df_delete(set : SetStS2Df*, key : S2Df*, func_remove : (S2Df* -> Void)) : BoolT
  fun setst_s2_df_first = setst_S2Df_first(set : SetStS2Df*) : S2Df*
  fun setst_s2_df_first = setst_S2Df_first(set : SetStS2Df*) : S2Df*
  fun setst_s2_df_first_const = setst_S2Df_first_const(set : SetStS2Df*) : S2Df*
  fun setst_s2_df_first_const = setst_S2Df_first_const(set : SetStS2Df*) : S2Df*
  fun setst_s2_df_last = setst_S2Df_last(set : SetStS2Df*) : S2Df*
  fun setst_s2_df_last = setst_S2Df_last(set : SetStS2Df*) : S2Df*
  fun setst_s2_df_last_const = setst_S2Df_last_const(set : SetStS2Df*) : S2Df*
  fun setst_s2_df_last_const = setst_S2Df_last_const(set : SetStS2Df*) : S2Df*
  fun setst_s2_df_next = setst_S2Df_next(set : SetStS2Df*) : S2Df*
  fun setst_s2_df_next = setst_S2Df_next(set : SetStS2Df*) : S2Df*
  fun setst_s2_df_next_const = setst_S2Df_next_const(set : SetStS2Df*) : S2Df*
  fun setst_s2_df_next_const = setst_S2Df_next_const(set : SetStS2Df*) : S2Df*
  fun setst_s2_df_prev = setst_S2Df_prev(set : SetStS2Df*) : S2Df*
  fun setst_s2_df_prev = setst_S2Df_prev(set : SetStS2Df*) : S2Df*
  fun setst_s2_df_prev_const = setst_S2Df_prev_const(set : SetStS2Df*) : S2Df*
  fun setst_s2_df_prev_const = setst_S2Df_prev_const(set : SetStS2Df*) : S2Df*
  fun setst_s2_df_end = setst_S2Df_end
  fun arrst_s2_dd_create = arrst_S2Dd_create(esize : Uint16T) : ArrStS2Dd*

  struct ArrStS2Dd
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : S2DdData*
  end

  struct S2DdData
    elem : S2Dd[1024]
  end

  struct X_S2ddT
    width : Real64T
    height : Real64T
  end

  type S2Dd = X_S2ddT
  fun arrst_s2_dd_create = arrst_S2Dd_create(esize : Uint16T) : ArrStS2Dd*
  fun arrst_s2_dd_copy = arrst_S2Dd_copy(array : ArrStS2Dd*, func_copy : (S2Dd*, S2Dd* -> Void)) : ArrStS2Dd*
  fun arrst_s2_dd_copy = arrst_S2Dd_copy(array : ArrStS2Dd*, func_copy : (S2Dd*, S2Dd* -> Void)) : ArrStS2Dd*
  fun arrst_s2_dd_read = arrst_S2Dd_read(stream : Stream, esize : Uint16T, func_read : (Stream, S2Dd* -> Void)) : ArrStS2Dd*
  fun arrst_s2_dd_read = arrst_S2Dd_read(stream : Stream, esize : Uint16T, func_read : (Stream, S2Dd* -> Void)) : ArrStS2Dd*
  fun arrst_s2_dd_destroy = arrst_S2Dd_destroy(array : ArrStS2Dd**, func_remove : (S2Dd* -> Void))
  fun arrst_s2_dd_destroy = arrst_S2Dd_destroy(array : ArrStS2Dd**, func_remove : (S2Dd* -> Void))
  fun arrst_s2_dd_destopt = arrst_S2Dd_destopt(array : ArrStS2Dd**, func_remove : (S2Dd* -> Void))
  fun arrst_s2_dd_destopt = arrst_S2Dd_destopt(array : ArrStS2Dd**, func_remove : (S2Dd* -> Void))
  fun arrst_s2_dd_clear = arrst_S2Dd_clear(array : ArrStS2Dd*, func_remove : (S2Dd* -> Void))
  fun arrst_s2_dd_clear = arrst_S2Dd_clear(array : ArrStS2Dd*, func_remove : (S2Dd* -> Void))
  fun arrst_s2_dd_write = arrst_S2Dd_write(stream : Stream, array : ArrStS2Dd*, func_write : (Stream, S2Dd* -> Void))
  fun arrst_s2_dd_write = arrst_S2Dd_write(stream : Stream, array : ArrStS2Dd*, func_write : (Stream, S2Dd* -> Void))
  fun arrst_s2_dd_size = arrst_S2Dd_size(array : ArrStS2Dd*) : Uint32T
  fun arrst_s2_dd_size = arrst_S2Dd_size(array : ArrStS2Dd*) : Uint32T
  fun arrst_s2_dd_get = arrst_S2Dd_get(array : ArrStS2Dd*, pos : Uint32T) : S2Dd*
  fun arrst_s2_dd_get = arrst_S2Dd_get(array : ArrStS2Dd*, pos : Uint32T) : S2Dd*
  fun arrst_s2_dd_get_const = arrst_S2Dd_get_const(array : ArrStS2Dd*, pos : Uint32T) : S2Dd*
  fun arrst_s2_dd_get_const = arrst_S2Dd_get_const(array : ArrStS2Dd*, pos : Uint32T) : S2Dd*
  fun arrst_s2_dd_last = arrst_S2Dd_last(array : ArrStS2Dd*) : S2Dd*
  fun arrst_s2_dd_last = arrst_S2Dd_last(array : ArrStS2Dd*) : S2Dd*
  fun arrst_s2_dd_last_const = arrst_S2Dd_last_const(array : ArrStS2Dd*) : S2Dd*
  fun arrst_s2_dd_last_const = arrst_S2Dd_last_const(array : ArrStS2Dd*) : S2Dd*
  fun arrst_s2_dd_all = arrst_S2Dd_all(array : ArrStS2Dd*) : S2Dd*
  fun arrst_s2_dd_all = arrst_S2Dd_all(array : ArrStS2Dd*) : S2Dd*
  fun arrst_s2_dd_all_const = arrst_S2Dd_all_const(array : ArrStS2Dd*) : S2Dd*
  fun arrst_s2_dd_all_const = arrst_S2Dd_all_const(array : ArrStS2Dd*) : S2Dd*
  fun arrst_s2_dd_insert = arrst_S2Dd_insert(array : ArrStS2Dd*, pos : Uint32T, n : Uint32T) : S2Dd*
  fun arrst_s2_dd_insert = arrst_S2Dd_insert(array : ArrStS2Dd*, pos : Uint32T, n : Uint32T) : S2Dd*
  fun arrst_s2_dd_insert0 = arrst_S2Dd_insert0(array : ArrStS2Dd*, pos : Uint32T, n : Uint32T) : S2Dd*
  fun arrst_s2_dd_insert0 = arrst_S2Dd_insert0(array : ArrStS2Dd*, pos : Uint32T, n : Uint32T) : S2Dd*
  fun arrst_s2_dd_join = arrst_S2Dd_join(dest : ArrStS2Dd*, src : ArrStS2Dd*, func_copy : (S2Dd*, S2Dd* -> Void))
  fun arrst_s2_dd_join = arrst_S2Dd_join(dest : ArrStS2Dd*, src : ArrStS2Dd*, func_copy : (S2Dd*, S2Dd* -> Void))
  fun arrst_s2_dd_delete = arrst_S2Dd_delete(array : ArrStS2Dd*, pos : Uint32T, func_remove : (S2Dd* -> Void))
  fun arrst_s2_dd_delete = arrst_S2Dd_delete(array : ArrStS2Dd*, pos : Uint32T, func_remove : (S2Dd* -> Void))
  fun arrst_s2_dd_pop = arrst_S2Dd_pop(array : ArrStS2Dd*, func_remove : (S2Dd* -> Void))
  fun arrst_s2_dd_pop = arrst_S2Dd_pop(array : ArrStS2Dd*, func_remove : (S2Dd* -> Void))
  fun arrst_s2_dd_sort = arrst_S2Dd_sort(array : ArrStS2Dd*, func_compare : (S2Dd*, S2Dd* -> LibC::Int))
  fun arrst_s2_dd_sort = arrst_S2Dd_sort(array : ArrStS2Dd*, func_compare : (S2Dd*, S2Dd* -> LibC::Int))
  fun arrst_s2_dd_sort_ex = arrst_S2Dd_sort_ex(array : ArrStS2Dd*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_s2_dd_sort_ex = arrst_S2Dd_sort_ex(array : ArrStS2Dd*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_s2_dd_search = arrst_S2Dd_search(array : ArrStS2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : S2Dd*
  fun arrst_s2_dd_search = arrst_S2Dd_search(array : ArrStS2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : S2Dd*
  fun arrst_s2_dd_search_const = arrst_S2Dd_search_const(array : ArrStS2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : S2Dd*
  fun arrst_s2_dd_search_const = arrst_S2Dd_search_const(array : ArrStS2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : S2Dd*
  fun arrst_s2_dd_bsearch = arrst_S2Dd_bsearch(array : ArrStS2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : S2Dd*
  fun arrst_s2_dd_bsearch = arrst_S2Dd_bsearch(array : ArrStS2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : S2Dd*
  fun arrst_s2_dd_bsearch_const = arrst_S2Dd_bsearch_const(array : ArrStS2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : S2Dd*
  fun arrst_s2_dd_bsearch_const = arrst_S2Dd_bsearch_const(array : ArrStS2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : S2Dd*
  fun arrst_s2_dd_end = arrst_S2Dd_end
  fun setst_s2_dd_create = setst_S2Dd_create(func_compare : (S2Dd*, S2Dd* -> LibC::Int), esize : Uint16T) : SetStS2Dd*

  struct SetStS2Dd
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStS2Dd*
    func_compare : FPtrCompare
  end

  struct NodeStS2Dd
    rb : Uint32T
    left : NodeStS2Dd*
    right : NodeStS2Dd*
    data : S2Dd
  end

  fun setst_s2_dd_create = setst_S2Dd_create(func_compare : (S2Dd*, S2Dd* -> LibC::Int), esize : Uint16T) : SetStS2Dd*
  fun setst_s2_dd_destroy = setst_S2Dd_destroy(set : SetStS2Dd**, func_remove : (S2Dd* -> Void))
  fun setst_s2_dd_destroy = setst_S2Dd_destroy(set : SetStS2Dd**, func_remove : (S2Dd* -> Void))
  fun setst_s2_dd_size = setst_S2Dd_size(set : SetStS2Dd*) : Uint32T
  fun setst_s2_dd_size = setst_S2Dd_size(set : SetStS2Dd*) : Uint32T
  fun setst_s2_dd_get = setst_S2Dd_get(set : SetStS2Dd*, key : S2Dd*) : S2Dd*
  fun setst_s2_dd_get = setst_S2Dd_get(set : SetStS2Dd*, key : S2Dd*) : S2Dd*
  fun setst_s2_dd_get_const = setst_S2Dd_get_const(set : SetStS2Dd*, key : S2Dd*) : S2Dd*
  fun setst_s2_dd_get_const = setst_S2Dd_get_const(set : SetStS2Dd*, key : S2Dd*) : S2Dd*
  fun setst_s2_dd_insert = setst_S2Dd_insert(set : SetStS2Dd*, key : S2Dd*) : S2Dd*
  fun setst_s2_dd_insert = setst_S2Dd_insert(set : SetStS2Dd*, key : S2Dd*) : S2Dd*
  fun setst_s2_dd_delete = setst_S2Dd_delete(set : SetStS2Dd*, key : S2Dd*, func_remove : (S2Dd* -> Void)) : BoolT
  fun setst_s2_dd_delete = setst_S2Dd_delete(set : SetStS2Dd*, key : S2Dd*, func_remove : (S2Dd* -> Void)) : BoolT
  fun setst_s2_dd_first = setst_S2Dd_first(set : SetStS2Dd*) : S2Dd*
  fun setst_s2_dd_first = setst_S2Dd_first(set : SetStS2Dd*) : S2Dd*
  fun setst_s2_dd_first_const = setst_S2Dd_first_const(set : SetStS2Dd*) : S2Dd*
  fun setst_s2_dd_first_const = setst_S2Dd_first_const(set : SetStS2Dd*) : S2Dd*
  fun setst_s2_dd_last = setst_S2Dd_last(set : SetStS2Dd*) : S2Dd*
  fun setst_s2_dd_last = setst_S2Dd_last(set : SetStS2Dd*) : S2Dd*
  fun setst_s2_dd_last_const = setst_S2Dd_last_const(set : SetStS2Dd*) : S2Dd*
  fun setst_s2_dd_last_const = setst_S2Dd_last_const(set : SetStS2Dd*) : S2Dd*
  fun setst_s2_dd_next = setst_S2Dd_next(set : SetStS2Dd*) : S2Dd*
  fun setst_s2_dd_next = setst_S2Dd_next(set : SetStS2Dd*) : S2Dd*
  fun setst_s2_dd_next_const = setst_S2Dd_next_const(set : SetStS2Dd*) : S2Dd*
  fun setst_s2_dd_next_const = setst_S2Dd_next_const(set : SetStS2Dd*) : S2Dd*
  fun setst_s2_dd_prev = setst_S2Dd_prev(set : SetStS2Dd*) : S2Dd*
  fun setst_s2_dd_prev = setst_S2Dd_prev(set : SetStS2Dd*) : S2Dd*
  fun setst_s2_dd_prev_const = setst_S2Dd_prev_const(set : SetStS2Dd*) : S2Dd*
  fun setst_s2_dd_prev_const = setst_S2Dd_prev_const(set : SetStS2Dd*) : S2Dd*
  fun setst_s2_dd_end = setst_S2Dd_end
  fun arrst_r2_df_create = arrst_R2Df_create(esize : Uint16T) : ArrStR2Df*

  struct ArrStR2Df
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : R2DfData*
  end

  struct R2DfData
    elem : R2Df[1024]
  end

  struct X_R2dfT
    pos : V2Df
    size : S2Df
  end

  type R2Df = X_R2dfT
  fun arrst_r2_df_create = arrst_R2Df_create(esize : Uint16T) : ArrStR2Df*
  fun arrst_r2_df_copy = arrst_R2Df_copy(array : ArrStR2Df*, func_copy : (R2Df*, R2Df* -> Void)) : ArrStR2Df*
  fun arrst_r2_df_copy = arrst_R2Df_copy(array : ArrStR2Df*, func_copy : (R2Df*, R2Df* -> Void)) : ArrStR2Df*
  fun arrst_r2_df_read = arrst_R2Df_read(stream : Stream, esize : Uint16T, func_read : (Stream, R2Df* -> Void)) : ArrStR2Df*
  fun arrst_r2_df_read = arrst_R2Df_read(stream : Stream, esize : Uint16T, func_read : (Stream, R2Df* -> Void)) : ArrStR2Df*
  fun arrst_r2_df_destroy = arrst_R2Df_destroy(array : ArrStR2Df**, func_remove : (R2Df* -> Void))
  fun arrst_r2_df_destroy = arrst_R2Df_destroy(array : ArrStR2Df**, func_remove : (R2Df* -> Void))
  fun arrst_r2_df_destopt = arrst_R2Df_destopt(array : ArrStR2Df**, func_remove : (R2Df* -> Void))
  fun arrst_r2_df_destopt = arrst_R2Df_destopt(array : ArrStR2Df**, func_remove : (R2Df* -> Void))
  fun arrst_r2_df_clear = arrst_R2Df_clear(array : ArrStR2Df*, func_remove : (R2Df* -> Void))
  fun arrst_r2_df_clear = arrst_R2Df_clear(array : ArrStR2Df*, func_remove : (R2Df* -> Void))
  fun arrst_r2_df_write = arrst_R2Df_write(stream : Stream, array : ArrStR2Df*, func_write : (Stream, R2Df* -> Void))
  fun arrst_r2_df_write = arrst_R2Df_write(stream : Stream, array : ArrStR2Df*, func_write : (Stream, R2Df* -> Void))
  fun arrst_r2_df_size = arrst_R2Df_size(array : ArrStR2Df*) : Uint32T
  fun arrst_r2_df_size = arrst_R2Df_size(array : ArrStR2Df*) : Uint32T
  fun arrst_r2_df_get = arrst_R2Df_get(array : ArrStR2Df*, pos : Uint32T) : R2Df*
  fun arrst_r2_df_get = arrst_R2Df_get(array : ArrStR2Df*, pos : Uint32T) : R2Df*
  fun arrst_r2_df_get_const = arrst_R2Df_get_const(array : ArrStR2Df*, pos : Uint32T) : R2Df*
  fun arrst_r2_df_get_const = arrst_R2Df_get_const(array : ArrStR2Df*, pos : Uint32T) : R2Df*
  fun arrst_r2_df_last = arrst_R2Df_last(array : ArrStR2Df*) : R2Df*
  fun arrst_r2_df_last = arrst_R2Df_last(array : ArrStR2Df*) : R2Df*
  fun arrst_r2_df_last_const = arrst_R2Df_last_const(array : ArrStR2Df*) : R2Df*
  fun arrst_r2_df_last_const = arrst_R2Df_last_const(array : ArrStR2Df*) : R2Df*
  fun arrst_r2_df_all = arrst_R2Df_all(array : ArrStR2Df*) : R2Df*
  fun arrst_r2_df_all = arrst_R2Df_all(array : ArrStR2Df*) : R2Df*
  fun arrst_r2_df_all_const = arrst_R2Df_all_const(array : ArrStR2Df*) : R2Df*
  fun arrst_r2_df_all_const = arrst_R2Df_all_const(array : ArrStR2Df*) : R2Df*
  fun arrst_r2_df_insert = arrst_R2Df_insert(array : ArrStR2Df*, pos : Uint32T, n : Uint32T) : R2Df*
  fun arrst_r2_df_insert = arrst_R2Df_insert(array : ArrStR2Df*, pos : Uint32T, n : Uint32T) : R2Df*
  fun arrst_r2_df_insert0 = arrst_R2Df_insert0(array : ArrStR2Df*, pos : Uint32T, n : Uint32T) : R2Df*
  fun arrst_r2_df_insert0 = arrst_R2Df_insert0(array : ArrStR2Df*, pos : Uint32T, n : Uint32T) : R2Df*
  fun arrst_r2_df_join = arrst_R2Df_join(dest : ArrStR2Df*, src : ArrStR2Df*, func_copy : (R2Df*, R2Df* -> Void))
  fun arrst_r2_df_join = arrst_R2Df_join(dest : ArrStR2Df*, src : ArrStR2Df*, func_copy : (R2Df*, R2Df* -> Void))
  fun arrst_r2_df_delete = arrst_R2Df_delete(array : ArrStR2Df*, pos : Uint32T, func_remove : (R2Df* -> Void))
  fun arrst_r2_df_delete = arrst_R2Df_delete(array : ArrStR2Df*, pos : Uint32T, func_remove : (R2Df* -> Void))
  fun arrst_r2_df_pop = arrst_R2Df_pop(array : ArrStR2Df*, func_remove : (R2Df* -> Void))
  fun arrst_r2_df_pop = arrst_R2Df_pop(array : ArrStR2Df*, func_remove : (R2Df* -> Void))
  fun arrst_r2_df_sort = arrst_R2Df_sort(array : ArrStR2Df*, func_compare : (R2Df*, R2Df* -> LibC::Int))
  fun arrst_r2_df_sort = arrst_R2Df_sort(array : ArrStR2Df*, func_compare : (R2Df*, R2Df* -> LibC::Int))
  fun arrst_r2_df_sort_ex = arrst_R2Df_sort_ex(array : ArrStR2Df*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_r2_df_sort_ex = arrst_R2Df_sort_ex(array : ArrStR2Df*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_r2_df_search = arrst_R2Df_search(array : ArrStR2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : R2Df*
  fun arrst_r2_df_search = arrst_R2Df_search(array : ArrStR2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : R2Df*
  fun arrst_r2_df_search_const = arrst_R2Df_search_const(array : ArrStR2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : R2Df*
  fun arrst_r2_df_search_const = arrst_R2Df_search_const(array : ArrStR2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : R2Df*
  fun arrst_r2_df_bsearch = arrst_R2Df_bsearch(array : ArrStR2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : R2Df*
  fun arrst_r2_df_bsearch = arrst_R2Df_bsearch(array : ArrStR2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : R2Df*
  fun arrst_r2_df_bsearch_const = arrst_R2Df_bsearch_const(array : ArrStR2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : R2Df*
  fun arrst_r2_df_bsearch_const = arrst_R2Df_bsearch_const(array : ArrStR2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : R2Df*
  fun arrst_r2_df_end = arrst_R2Df_end
  fun setst_r2_df_create = setst_R2Df_create(func_compare : (R2Df*, R2Df* -> LibC::Int), esize : Uint16T) : SetStR2Df*

  struct SetStR2Df
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStR2Df*
    func_compare : FPtrCompare
  end

  struct NodeStR2Df
    rb : Uint32T
    left : NodeStR2Df*
    right : NodeStR2Df*
    data : R2Df
  end

  fun setst_r2_df_create = setst_R2Df_create(func_compare : (R2Df*, R2Df* -> LibC::Int), esize : Uint16T) : SetStR2Df*
  fun setst_r2_df_destroy = setst_R2Df_destroy(set : SetStR2Df**, func_remove : (R2Df* -> Void))
  fun setst_r2_df_destroy = setst_R2Df_destroy(set : SetStR2Df**, func_remove : (R2Df* -> Void))
  fun setst_r2_df_size = setst_R2Df_size(set : SetStR2Df*) : Uint32T
  fun setst_r2_df_size = setst_R2Df_size(set : SetStR2Df*) : Uint32T
  fun setst_r2_df_get = setst_R2Df_get(set : SetStR2Df*, key : R2Df*) : R2Df*
  fun setst_r2_df_get = setst_R2Df_get(set : SetStR2Df*, key : R2Df*) : R2Df*
  fun setst_r2_df_get_const = setst_R2Df_get_const(set : SetStR2Df*, key : R2Df*) : R2Df*
  fun setst_r2_df_get_const = setst_R2Df_get_const(set : SetStR2Df*, key : R2Df*) : R2Df*
  fun setst_r2_df_insert = setst_R2Df_insert(set : SetStR2Df*, key : R2Df*) : R2Df*
  fun setst_r2_df_insert = setst_R2Df_insert(set : SetStR2Df*, key : R2Df*) : R2Df*
  fun setst_r2_df_delete = setst_R2Df_delete(set : SetStR2Df*, key : R2Df*, func_remove : (R2Df* -> Void)) : BoolT
  fun setst_r2_df_delete = setst_R2Df_delete(set : SetStR2Df*, key : R2Df*, func_remove : (R2Df* -> Void)) : BoolT
  fun setst_r2_df_first = setst_R2Df_first(set : SetStR2Df*) : R2Df*
  fun setst_r2_df_first = setst_R2Df_first(set : SetStR2Df*) : R2Df*
  fun setst_r2_df_first_const = setst_R2Df_first_const(set : SetStR2Df*) : R2Df*
  fun setst_r2_df_first_const = setst_R2Df_first_const(set : SetStR2Df*) : R2Df*
  fun setst_r2_df_last = setst_R2Df_last(set : SetStR2Df*) : R2Df*
  fun setst_r2_df_last = setst_R2Df_last(set : SetStR2Df*) : R2Df*
  fun setst_r2_df_last_const = setst_R2Df_last_const(set : SetStR2Df*) : R2Df*
  fun setst_r2_df_last_const = setst_R2Df_last_const(set : SetStR2Df*) : R2Df*
  fun setst_r2_df_next = setst_R2Df_next(set : SetStR2Df*) : R2Df*
  fun setst_r2_df_next = setst_R2Df_next(set : SetStR2Df*) : R2Df*
  fun setst_r2_df_next_const = setst_R2Df_next_const(set : SetStR2Df*) : R2Df*
  fun setst_r2_df_next_const = setst_R2Df_next_const(set : SetStR2Df*) : R2Df*
  fun setst_r2_df_prev = setst_R2Df_prev(set : SetStR2Df*) : R2Df*
  fun setst_r2_df_prev = setst_R2Df_prev(set : SetStR2Df*) : R2Df*
  fun setst_r2_df_prev_const = setst_R2Df_prev_const(set : SetStR2Df*) : R2Df*
  fun setst_r2_df_prev_const = setst_R2Df_prev_const(set : SetStR2Df*) : R2Df*
  fun setst_r2_df_end = setst_R2Df_end
  fun arrst_r2_dd_create = arrst_R2Dd_create(esize : Uint16T) : ArrStR2Dd*

  struct ArrStR2Dd
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : R2DdData*
  end

  struct R2DdData
    elem : R2Dd[1024]
  end

  struct X_R2ddT
    pos : V2Dd
    size : S2Dd
  end

  type R2Dd = X_R2ddT
  fun arrst_r2_dd_create = arrst_R2Dd_create(esize : Uint16T) : ArrStR2Dd*
  fun arrst_r2_dd_copy = arrst_R2Dd_copy(array : ArrStR2Dd*, func_copy : (R2Dd*, R2Dd* -> Void)) : ArrStR2Dd*
  fun arrst_r2_dd_copy = arrst_R2Dd_copy(array : ArrStR2Dd*, func_copy : (R2Dd*, R2Dd* -> Void)) : ArrStR2Dd*
  fun arrst_r2_dd_read = arrst_R2Dd_read(stream : Stream, esize : Uint16T, func_read : (Stream, R2Dd* -> Void)) : ArrStR2Dd*
  fun arrst_r2_dd_read = arrst_R2Dd_read(stream : Stream, esize : Uint16T, func_read : (Stream, R2Dd* -> Void)) : ArrStR2Dd*
  fun arrst_r2_dd_destroy = arrst_R2Dd_destroy(array : ArrStR2Dd**, func_remove : (R2Dd* -> Void))
  fun arrst_r2_dd_destroy = arrst_R2Dd_destroy(array : ArrStR2Dd**, func_remove : (R2Dd* -> Void))
  fun arrst_r2_dd_destopt = arrst_R2Dd_destopt(array : ArrStR2Dd**, func_remove : (R2Dd* -> Void))
  fun arrst_r2_dd_destopt = arrst_R2Dd_destopt(array : ArrStR2Dd**, func_remove : (R2Dd* -> Void))
  fun arrst_r2_dd_clear = arrst_R2Dd_clear(array : ArrStR2Dd*, func_remove : (R2Dd* -> Void))
  fun arrst_r2_dd_clear = arrst_R2Dd_clear(array : ArrStR2Dd*, func_remove : (R2Dd* -> Void))
  fun arrst_r2_dd_write = arrst_R2Dd_write(stream : Stream, array : ArrStR2Dd*, func_write : (Stream, R2Dd* -> Void))
  fun arrst_r2_dd_write = arrst_R2Dd_write(stream : Stream, array : ArrStR2Dd*, func_write : (Stream, R2Dd* -> Void))
  fun arrst_r2_dd_size = arrst_R2Dd_size(array : ArrStR2Dd*) : Uint32T
  fun arrst_r2_dd_size = arrst_R2Dd_size(array : ArrStR2Dd*) : Uint32T
  fun arrst_r2_dd_get = arrst_R2Dd_get(array : ArrStR2Dd*, pos : Uint32T) : R2Dd*
  fun arrst_r2_dd_get = arrst_R2Dd_get(array : ArrStR2Dd*, pos : Uint32T) : R2Dd*
  fun arrst_r2_dd_get_const = arrst_R2Dd_get_const(array : ArrStR2Dd*, pos : Uint32T) : R2Dd*
  fun arrst_r2_dd_get_const = arrst_R2Dd_get_const(array : ArrStR2Dd*, pos : Uint32T) : R2Dd*
  fun arrst_r2_dd_last = arrst_R2Dd_last(array : ArrStR2Dd*) : R2Dd*
  fun arrst_r2_dd_last = arrst_R2Dd_last(array : ArrStR2Dd*) : R2Dd*
  fun arrst_r2_dd_last_const = arrst_R2Dd_last_const(array : ArrStR2Dd*) : R2Dd*
  fun arrst_r2_dd_last_const = arrst_R2Dd_last_const(array : ArrStR2Dd*) : R2Dd*
  fun arrst_r2_dd_all = arrst_R2Dd_all(array : ArrStR2Dd*) : R2Dd*
  fun arrst_r2_dd_all = arrst_R2Dd_all(array : ArrStR2Dd*) : R2Dd*
  fun arrst_r2_dd_all_const = arrst_R2Dd_all_const(array : ArrStR2Dd*) : R2Dd*
  fun arrst_r2_dd_all_const = arrst_R2Dd_all_const(array : ArrStR2Dd*) : R2Dd*
  fun arrst_r2_dd_insert = arrst_R2Dd_insert(array : ArrStR2Dd*, pos : Uint32T, n : Uint32T) : R2Dd*
  fun arrst_r2_dd_insert = arrst_R2Dd_insert(array : ArrStR2Dd*, pos : Uint32T, n : Uint32T) : R2Dd*
  fun arrst_r2_dd_insert0 = arrst_R2Dd_insert0(array : ArrStR2Dd*, pos : Uint32T, n : Uint32T) : R2Dd*
  fun arrst_r2_dd_insert0 = arrst_R2Dd_insert0(array : ArrStR2Dd*, pos : Uint32T, n : Uint32T) : R2Dd*
  fun arrst_r2_dd_join = arrst_R2Dd_join(dest : ArrStR2Dd*, src : ArrStR2Dd*, func_copy : (R2Dd*, R2Dd* -> Void))
  fun arrst_r2_dd_join = arrst_R2Dd_join(dest : ArrStR2Dd*, src : ArrStR2Dd*, func_copy : (R2Dd*, R2Dd* -> Void))
  fun arrst_r2_dd_delete = arrst_R2Dd_delete(array : ArrStR2Dd*, pos : Uint32T, func_remove : (R2Dd* -> Void))
  fun arrst_r2_dd_delete = arrst_R2Dd_delete(array : ArrStR2Dd*, pos : Uint32T, func_remove : (R2Dd* -> Void))
  fun arrst_r2_dd_pop = arrst_R2Dd_pop(array : ArrStR2Dd*, func_remove : (R2Dd* -> Void))
  fun arrst_r2_dd_pop = arrst_R2Dd_pop(array : ArrStR2Dd*, func_remove : (R2Dd* -> Void))
  fun arrst_r2_dd_sort = arrst_R2Dd_sort(array : ArrStR2Dd*, func_compare : (R2Dd*, R2Dd* -> LibC::Int))
  fun arrst_r2_dd_sort = arrst_R2Dd_sort(array : ArrStR2Dd*, func_compare : (R2Dd*, R2Dd* -> LibC::Int))
  fun arrst_r2_dd_sort_ex = arrst_R2Dd_sort_ex(array : ArrStR2Dd*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_r2_dd_sort_ex = arrst_R2Dd_sort_ex(array : ArrStR2Dd*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_r2_dd_search = arrst_R2Dd_search(array : ArrStR2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : R2Dd*
  fun arrst_r2_dd_search = arrst_R2Dd_search(array : ArrStR2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : R2Dd*
  fun arrst_r2_dd_search_const = arrst_R2Dd_search_const(array : ArrStR2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : R2Dd*
  fun arrst_r2_dd_search_const = arrst_R2Dd_search_const(array : ArrStR2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : R2Dd*
  fun arrst_r2_dd_bsearch = arrst_R2Dd_bsearch(array : ArrStR2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : R2Dd*
  fun arrst_r2_dd_bsearch = arrst_R2Dd_bsearch(array : ArrStR2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : R2Dd*
  fun arrst_r2_dd_bsearch_const = arrst_R2Dd_bsearch_const(array : ArrStR2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : R2Dd*
  fun arrst_r2_dd_bsearch_const = arrst_R2Dd_bsearch_const(array : ArrStR2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : R2Dd*
  fun arrst_r2_dd_end = arrst_R2Dd_end
  fun setst_r2_dd_create = setst_R2Dd_create(func_compare : (R2Dd*, R2Dd* -> LibC::Int), esize : Uint16T) : SetStR2Dd*

  struct SetStR2Dd
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStR2Dd*
    func_compare : FPtrCompare
  end

  struct NodeStR2Dd
    rb : Uint32T
    left : NodeStR2Dd*
    right : NodeStR2Dd*
    data : R2Dd
  end

  fun setst_r2_dd_create = setst_R2Dd_create(func_compare : (R2Dd*, R2Dd* -> LibC::Int), esize : Uint16T) : SetStR2Dd*
  fun setst_r2_dd_destroy = setst_R2Dd_destroy(set : SetStR2Dd**, func_remove : (R2Dd* -> Void))
  fun setst_r2_dd_destroy = setst_R2Dd_destroy(set : SetStR2Dd**, func_remove : (R2Dd* -> Void))
  fun setst_r2_dd_size = setst_R2Dd_size(set : SetStR2Dd*) : Uint32T
  fun setst_r2_dd_size = setst_R2Dd_size(set : SetStR2Dd*) : Uint32T
  fun setst_r2_dd_get = setst_R2Dd_get(set : SetStR2Dd*, key : R2Dd*) : R2Dd*
  fun setst_r2_dd_get = setst_R2Dd_get(set : SetStR2Dd*, key : R2Dd*) : R2Dd*
  fun setst_r2_dd_get_const = setst_R2Dd_get_const(set : SetStR2Dd*, key : R2Dd*) : R2Dd*
  fun setst_r2_dd_get_const = setst_R2Dd_get_const(set : SetStR2Dd*, key : R2Dd*) : R2Dd*
  fun setst_r2_dd_insert = setst_R2Dd_insert(set : SetStR2Dd*, key : R2Dd*) : R2Dd*
  fun setst_r2_dd_insert = setst_R2Dd_insert(set : SetStR2Dd*, key : R2Dd*) : R2Dd*
  fun setst_r2_dd_delete = setst_R2Dd_delete(set : SetStR2Dd*, key : R2Dd*, func_remove : (R2Dd* -> Void)) : BoolT
  fun setst_r2_dd_delete = setst_R2Dd_delete(set : SetStR2Dd*, key : R2Dd*, func_remove : (R2Dd* -> Void)) : BoolT
  fun setst_r2_dd_first = setst_R2Dd_first(set : SetStR2Dd*) : R2Dd*
  fun setst_r2_dd_first = setst_R2Dd_first(set : SetStR2Dd*) : R2Dd*
  fun setst_r2_dd_first_const = setst_R2Dd_first_const(set : SetStR2Dd*) : R2Dd*
  fun setst_r2_dd_first_const = setst_R2Dd_first_const(set : SetStR2Dd*) : R2Dd*
  fun setst_r2_dd_last = setst_R2Dd_last(set : SetStR2Dd*) : R2Dd*
  fun setst_r2_dd_last = setst_R2Dd_last(set : SetStR2Dd*) : R2Dd*
  fun setst_r2_dd_last_const = setst_R2Dd_last_const(set : SetStR2Dd*) : R2Dd*
  fun setst_r2_dd_last_const = setst_R2Dd_last_const(set : SetStR2Dd*) : R2Dd*
  fun setst_r2_dd_next = setst_R2Dd_next(set : SetStR2Dd*) : R2Dd*
  fun setst_r2_dd_next = setst_R2Dd_next(set : SetStR2Dd*) : R2Dd*
  fun setst_r2_dd_next_const = setst_R2Dd_next_const(set : SetStR2Dd*) : R2Dd*
  fun setst_r2_dd_next_const = setst_R2Dd_next_const(set : SetStR2Dd*) : R2Dd*
  fun setst_r2_dd_prev = setst_R2Dd_prev(set : SetStR2Dd*) : R2Dd*
  fun setst_r2_dd_prev = setst_R2Dd_prev(set : SetStR2Dd*) : R2Dd*
  fun setst_r2_dd_prev_const = setst_R2Dd_prev_const(set : SetStR2Dd*) : R2Dd*
  fun setst_r2_dd_prev_const = setst_R2Dd_prev_const(set : SetStR2Dd*) : R2Dd*
  fun setst_r2_dd_end = setst_R2Dd_end
  fun arrst_t2_df_create = arrst_T2Df_create(esize : Uint16T) : ArrStT2Df*

  struct ArrStT2Df
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : T2DfData*
  end

  struct T2DfData
    elem : T2Df[1024]
  end

  struct X_T2dfT
    i : V2Df
    j : V2Df
    p : V2Df
  end

  type T2Df = X_T2dfT
  fun arrst_t2_df_create = arrst_T2Df_create(esize : Uint16T) : ArrStT2Df*
  fun arrst_t2_df_copy = arrst_T2Df_copy(array : ArrStT2Df*, func_copy : (T2Df*, T2Df* -> Void)) : ArrStT2Df*
  fun arrst_t2_df_copy = arrst_T2Df_copy(array : ArrStT2Df*, func_copy : (T2Df*, T2Df* -> Void)) : ArrStT2Df*
  fun arrst_t2_df_read = arrst_T2Df_read(stream : Stream, esize : Uint16T, func_read : (Stream, T2Df* -> Void)) : ArrStT2Df*
  fun arrst_t2_df_read = arrst_T2Df_read(stream : Stream, esize : Uint16T, func_read : (Stream, T2Df* -> Void)) : ArrStT2Df*
  fun arrst_t2_df_destroy = arrst_T2Df_destroy(array : ArrStT2Df**, func_remove : (T2Df* -> Void))
  fun arrst_t2_df_destroy = arrst_T2Df_destroy(array : ArrStT2Df**, func_remove : (T2Df* -> Void))
  fun arrst_t2_df_destopt = arrst_T2Df_destopt(array : ArrStT2Df**, func_remove : (T2Df* -> Void))
  fun arrst_t2_df_destopt = arrst_T2Df_destopt(array : ArrStT2Df**, func_remove : (T2Df* -> Void))
  fun arrst_t2_df_clear = arrst_T2Df_clear(array : ArrStT2Df*, func_remove : (T2Df* -> Void))
  fun arrst_t2_df_clear = arrst_T2Df_clear(array : ArrStT2Df*, func_remove : (T2Df* -> Void))
  fun arrst_t2_df_write = arrst_T2Df_write(stream : Stream, array : ArrStT2Df*, func_write : (Stream, T2Df* -> Void))
  fun arrst_t2_df_write = arrst_T2Df_write(stream : Stream, array : ArrStT2Df*, func_write : (Stream, T2Df* -> Void))
  fun arrst_t2_df_size = arrst_T2Df_size(array : ArrStT2Df*) : Uint32T
  fun arrst_t2_df_size = arrst_T2Df_size(array : ArrStT2Df*) : Uint32T
  fun arrst_t2_df_get = arrst_T2Df_get(array : ArrStT2Df*, pos : Uint32T) : T2Df*
  fun arrst_t2_df_get = arrst_T2Df_get(array : ArrStT2Df*, pos : Uint32T) : T2Df*
  fun arrst_t2_df_get_const = arrst_T2Df_get_const(array : ArrStT2Df*, pos : Uint32T) : T2Df*
  fun arrst_t2_df_get_const = arrst_T2Df_get_const(array : ArrStT2Df*, pos : Uint32T) : T2Df*
  fun arrst_t2_df_last = arrst_T2Df_last(array : ArrStT2Df*) : T2Df*
  fun arrst_t2_df_last = arrst_T2Df_last(array : ArrStT2Df*) : T2Df*
  fun arrst_t2_df_last_const = arrst_T2Df_last_const(array : ArrStT2Df*) : T2Df*
  fun arrst_t2_df_last_const = arrst_T2Df_last_const(array : ArrStT2Df*) : T2Df*
  fun arrst_t2_df_all = arrst_T2Df_all(array : ArrStT2Df*) : T2Df*
  fun arrst_t2_df_all = arrst_T2Df_all(array : ArrStT2Df*) : T2Df*
  fun arrst_t2_df_all_const = arrst_T2Df_all_const(array : ArrStT2Df*) : T2Df*
  fun arrst_t2_df_all_const = arrst_T2Df_all_const(array : ArrStT2Df*) : T2Df*
  fun arrst_t2_df_insert = arrst_T2Df_insert(array : ArrStT2Df*, pos : Uint32T, n : Uint32T) : T2Df*
  fun arrst_t2_df_insert = arrst_T2Df_insert(array : ArrStT2Df*, pos : Uint32T, n : Uint32T) : T2Df*
  fun arrst_t2_df_insert0 = arrst_T2Df_insert0(array : ArrStT2Df*, pos : Uint32T, n : Uint32T) : T2Df*
  fun arrst_t2_df_insert0 = arrst_T2Df_insert0(array : ArrStT2Df*, pos : Uint32T, n : Uint32T) : T2Df*
  fun arrst_t2_df_join = arrst_T2Df_join(dest : ArrStT2Df*, src : ArrStT2Df*, func_copy : (T2Df*, T2Df* -> Void))
  fun arrst_t2_df_join = arrst_T2Df_join(dest : ArrStT2Df*, src : ArrStT2Df*, func_copy : (T2Df*, T2Df* -> Void))
  fun arrst_t2_df_delete = arrst_T2Df_delete(array : ArrStT2Df*, pos : Uint32T, func_remove : (T2Df* -> Void))
  fun arrst_t2_df_delete = arrst_T2Df_delete(array : ArrStT2Df*, pos : Uint32T, func_remove : (T2Df* -> Void))
  fun arrst_t2_df_pop = arrst_T2Df_pop(array : ArrStT2Df*, func_remove : (T2Df* -> Void))
  fun arrst_t2_df_pop = arrst_T2Df_pop(array : ArrStT2Df*, func_remove : (T2Df* -> Void))
  fun arrst_t2_df_sort = arrst_T2Df_sort(array : ArrStT2Df*, func_compare : (T2Df*, T2Df* -> LibC::Int))
  fun arrst_t2_df_sort = arrst_T2Df_sort(array : ArrStT2Df*, func_compare : (T2Df*, T2Df* -> LibC::Int))
  fun arrst_t2_df_sort_ex = arrst_T2Df_sort_ex(array : ArrStT2Df*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_t2_df_sort_ex = arrst_T2Df_sort_ex(array : ArrStT2Df*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_t2_df_search = arrst_T2Df_search(array : ArrStT2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : T2Df*
  fun arrst_t2_df_search = arrst_T2Df_search(array : ArrStT2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : T2Df*
  fun arrst_t2_df_search_const = arrst_T2Df_search_const(array : ArrStT2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : T2Df*
  fun arrst_t2_df_search_const = arrst_T2Df_search_const(array : ArrStT2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : T2Df*
  fun arrst_t2_df_bsearch = arrst_T2Df_bsearch(array : ArrStT2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : T2Df*
  fun arrst_t2_df_bsearch = arrst_T2Df_bsearch(array : ArrStT2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : T2Df*
  fun arrst_t2_df_bsearch_const = arrst_T2Df_bsearch_const(array : ArrStT2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : T2Df*
  fun arrst_t2_df_bsearch_const = arrst_T2Df_bsearch_const(array : ArrStT2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : T2Df*
  fun arrst_t2_df_end = arrst_T2Df_end
  fun setst_t2_df_create = setst_T2Df_create(func_compare : (T2Df*, T2Df* -> LibC::Int), esize : Uint16T) : SetStT2Df*

  struct SetStT2Df
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStT2Df*
    func_compare : FPtrCompare
  end

  struct NodeStT2Df
    rb : Uint32T
    left : NodeStT2Df*
    right : NodeStT2Df*
    data : T2Df
  end

  fun setst_t2_df_create = setst_T2Df_create(func_compare : (T2Df*, T2Df* -> LibC::Int), esize : Uint16T) : SetStT2Df*
  fun setst_t2_df_destroy = setst_T2Df_destroy(set : SetStT2Df**, func_remove : (T2Df* -> Void))
  fun setst_t2_df_destroy = setst_T2Df_destroy(set : SetStT2Df**, func_remove : (T2Df* -> Void))
  fun setst_t2_df_size = setst_T2Df_size(set : SetStT2Df*) : Uint32T
  fun setst_t2_df_size = setst_T2Df_size(set : SetStT2Df*) : Uint32T
  fun setst_t2_df_get = setst_T2Df_get(set : SetStT2Df*, key : T2Df*) : T2Df*
  fun setst_t2_df_get = setst_T2Df_get(set : SetStT2Df*, key : T2Df*) : T2Df*
  fun setst_t2_df_get_const = setst_T2Df_get_const(set : SetStT2Df*, key : T2Df*) : T2Df*
  fun setst_t2_df_get_const = setst_T2Df_get_const(set : SetStT2Df*, key : T2Df*) : T2Df*
  fun setst_t2_df_insert = setst_T2Df_insert(set : SetStT2Df*, key : T2Df*) : T2Df*
  fun setst_t2_df_insert = setst_T2Df_insert(set : SetStT2Df*, key : T2Df*) : T2Df*
  fun setst_t2_df_delete = setst_T2Df_delete(set : SetStT2Df*, key : T2Df*, func_remove : (T2Df* -> Void)) : BoolT
  fun setst_t2_df_delete = setst_T2Df_delete(set : SetStT2Df*, key : T2Df*, func_remove : (T2Df* -> Void)) : BoolT
  fun setst_t2_df_first = setst_T2Df_first(set : SetStT2Df*) : T2Df*
  fun setst_t2_df_first = setst_T2Df_first(set : SetStT2Df*) : T2Df*
  fun setst_t2_df_first_const = setst_T2Df_first_const(set : SetStT2Df*) : T2Df*
  fun setst_t2_df_first_const = setst_T2Df_first_const(set : SetStT2Df*) : T2Df*
  fun setst_t2_df_last = setst_T2Df_last(set : SetStT2Df*) : T2Df*
  fun setst_t2_df_last = setst_T2Df_last(set : SetStT2Df*) : T2Df*
  fun setst_t2_df_last_const = setst_T2Df_last_const(set : SetStT2Df*) : T2Df*
  fun setst_t2_df_last_const = setst_T2Df_last_const(set : SetStT2Df*) : T2Df*
  fun setst_t2_df_next = setst_T2Df_next(set : SetStT2Df*) : T2Df*
  fun setst_t2_df_next = setst_T2Df_next(set : SetStT2Df*) : T2Df*
  fun setst_t2_df_next_const = setst_T2Df_next_const(set : SetStT2Df*) : T2Df*
  fun setst_t2_df_next_const = setst_T2Df_next_const(set : SetStT2Df*) : T2Df*
  fun setst_t2_df_prev = setst_T2Df_prev(set : SetStT2Df*) : T2Df*
  fun setst_t2_df_prev = setst_T2Df_prev(set : SetStT2Df*) : T2Df*
  fun setst_t2_df_prev_const = setst_T2Df_prev_const(set : SetStT2Df*) : T2Df*
  fun setst_t2_df_prev_const = setst_T2Df_prev_const(set : SetStT2Df*) : T2Df*
  fun setst_t2_df_end = setst_T2Df_end
  fun arrst_t2_dd_create = arrst_T2Dd_create(esize : Uint16T) : ArrStT2Dd*

  struct ArrStT2Dd
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : T2DdData*
  end

  struct T2DdData
    elem : T2Dd[1024]
  end

  struct X_T2ddT
    i : V2Dd
    j : V2Dd
    p : V2Dd
  end

  type T2Dd = X_T2ddT
  fun arrst_t2_dd_create = arrst_T2Dd_create(esize : Uint16T) : ArrStT2Dd*
  fun arrst_t2_dd_copy = arrst_T2Dd_copy(array : ArrStT2Dd*, func_copy : (T2Dd*, T2Dd* -> Void)) : ArrStT2Dd*
  fun arrst_t2_dd_copy = arrst_T2Dd_copy(array : ArrStT2Dd*, func_copy : (T2Dd*, T2Dd* -> Void)) : ArrStT2Dd*
  fun arrst_t2_dd_read = arrst_T2Dd_read(stream : Stream, esize : Uint16T, func_read : (Stream, T2Dd* -> Void)) : ArrStT2Dd*
  fun arrst_t2_dd_read = arrst_T2Dd_read(stream : Stream, esize : Uint16T, func_read : (Stream, T2Dd* -> Void)) : ArrStT2Dd*
  fun arrst_t2_dd_destroy = arrst_T2Dd_destroy(array : ArrStT2Dd**, func_remove : (T2Dd* -> Void))
  fun arrst_t2_dd_destroy = arrst_T2Dd_destroy(array : ArrStT2Dd**, func_remove : (T2Dd* -> Void))
  fun arrst_t2_dd_destopt = arrst_T2Dd_destopt(array : ArrStT2Dd**, func_remove : (T2Dd* -> Void))
  fun arrst_t2_dd_destopt = arrst_T2Dd_destopt(array : ArrStT2Dd**, func_remove : (T2Dd* -> Void))
  fun arrst_t2_dd_clear = arrst_T2Dd_clear(array : ArrStT2Dd*, func_remove : (T2Dd* -> Void))
  fun arrst_t2_dd_clear = arrst_T2Dd_clear(array : ArrStT2Dd*, func_remove : (T2Dd* -> Void))
  fun arrst_t2_dd_write = arrst_T2Dd_write(stream : Stream, array : ArrStT2Dd*, func_write : (Stream, T2Dd* -> Void))
  fun arrst_t2_dd_write = arrst_T2Dd_write(stream : Stream, array : ArrStT2Dd*, func_write : (Stream, T2Dd* -> Void))
  fun arrst_t2_dd_size = arrst_T2Dd_size(array : ArrStT2Dd*) : Uint32T
  fun arrst_t2_dd_size = arrst_T2Dd_size(array : ArrStT2Dd*) : Uint32T
  fun arrst_t2_dd_get = arrst_T2Dd_get(array : ArrStT2Dd*, pos : Uint32T) : T2Dd*
  fun arrst_t2_dd_get = arrst_T2Dd_get(array : ArrStT2Dd*, pos : Uint32T) : T2Dd*
  fun arrst_t2_dd_get_const = arrst_T2Dd_get_const(array : ArrStT2Dd*, pos : Uint32T) : T2Dd*
  fun arrst_t2_dd_get_const = arrst_T2Dd_get_const(array : ArrStT2Dd*, pos : Uint32T) : T2Dd*
  fun arrst_t2_dd_last = arrst_T2Dd_last(array : ArrStT2Dd*) : T2Dd*
  fun arrst_t2_dd_last = arrst_T2Dd_last(array : ArrStT2Dd*) : T2Dd*
  fun arrst_t2_dd_last_const = arrst_T2Dd_last_const(array : ArrStT2Dd*) : T2Dd*
  fun arrst_t2_dd_last_const = arrst_T2Dd_last_const(array : ArrStT2Dd*) : T2Dd*
  fun arrst_t2_dd_all = arrst_T2Dd_all(array : ArrStT2Dd*) : T2Dd*
  fun arrst_t2_dd_all = arrst_T2Dd_all(array : ArrStT2Dd*) : T2Dd*
  fun arrst_t2_dd_all_const = arrst_T2Dd_all_const(array : ArrStT2Dd*) : T2Dd*
  fun arrst_t2_dd_all_const = arrst_T2Dd_all_const(array : ArrStT2Dd*) : T2Dd*
  fun arrst_t2_dd_insert = arrst_T2Dd_insert(array : ArrStT2Dd*, pos : Uint32T, n : Uint32T) : T2Dd*
  fun arrst_t2_dd_insert = arrst_T2Dd_insert(array : ArrStT2Dd*, pos : Uint32T, n : Uint32T) : T2Dd*
  fun arrst_t2_dd_insert0 = arrst_T2Dd_insert0(array : ArrStT2Dd*, pos : Uint32T, n : Uint32T) : T2Dd*
  fun arrst_t2_dd_insert0 = arrst_T2Dd_insert0(array : ArrStT2Dd*, pos : Uint32T, n : Uint32T) : T2Dd*
  fun arrst_t2_dd_join = arrst_T2Dd_join(dest : ArrStT2Dd*, src : ArrStT2Dd*, func_copy : (T2Dd*, T2Dd* -> Void))
  fun arrst_t2_dd_join = arrst_T2Dd_join(dest : ArrStT2Dd*, src : ArrStT2Dd*, func_copy : (T2Dd*, T2Dd* -> Void))
  fun arrst_t2_dd_delete = arrst_T2Dd_delete(array : ArrStT2Dd*, pos : Uint32T, func_remove : (T2Dd* -> Void))
  fun arrst_t2_dd_delete = arrst_T2Dd_delete(array : ArrStT2Dd*, pos : Uint32T, func_remove : (T2Dd* -> Void))
  fun arrst_t2_dd_pop = arrst_T2Dd_pop(array : ArrStT2Dd*, func_remove : (T2Dd* -> Void))
  fun arrst_t2_dd_pop = arrst_T2Dd_pop(array : ArrStT2Dd*, func_remove : (T2Dd* -> Void))
  fun arrst_t2_dd_sort = arrst_T2Dd_sort(array : ArrStT2Dd*, func_compare : (T2Dd*, T2Dd* -> LibC::Int))
  fun arrst_t2_dd_sort = arrst_T2Dd_sort(array : ArrStT2Dd*, func_compare : (T2Dd*, T2Dd* -> LibC::Int))
  fun arrst_t2_dd_sort_ex = arrst_T2Dd_sort_ex(array : ArrStT2Dd*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_t2_dd_sort_ex = arrst_T2Dd_sort_ex(array : ArrStT2Dd*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_t2_dd_search = arrst_T2Dd_search(array : ArrStT2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : T2Dd*
  fun arrst_t2_dd_search = arrst_T2Dd_search(array : ArrStT2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : T2Dd*
  fun arrst_t2_dd_search_const = arrst_T2Dd_search_const(array : ArrStT2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : T2Dd*
  fun arrst_t2_dd_search_const = arrst_T2Dd_search_const(array : ArrStT2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : T2Dd*
  fun arrst_t2_dd_bsearch = arrst_T2Dd_bsearch(array : ArrStT2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : T2Dd*
  fun arrst_t2_dd_bsearch = arrst_T2Dd_bsearch(array : ArrStT2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : T2Dd*
  fun arrst_t2_dd_bsearch_const = arrst_T2Dd_bsearch_const(array : ArrStT2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : T2Dd*
  fun arrst_t2_dd_bsearch_const = arrst_T2Dd_bsearch_const(array : ArrStT2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : T2Dd*
  fun arrst_t2_dd_end = arrst_T2Dd_end
  fun setst_t2_dd_create = setst_T2Dd_create(func_compare : (T2Dd*, T2Dd* -> LibC::Int), esize : Uint16T) : SetStT2Dd*

  struct SetStT2Dd
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStT2Dd*
    func_compare : FPtrCompare
  end

  struct NodeStT2Dd
    rb : Uint32T
    left : NodeStT2Dd*
    right : NodeStT2Dd*
    data : T2Dd
  end

  fun setst_t2_dd_create = setst_T2Dd_create(func_compare : (T2Dd*, T2Dd* -> LibC::Int), esize : Uint16T) : SetStT2Dd*
  fun setst_t2_dd_destroy = setst_T2Dd_destroy(set : SetStT2Dd**, func_remove : (T2Dd* -> Void))
  fun setst_t2_dd_destroy = setst_T2Dd_destroy(set : SetStT2Dd**, func_remove : (T2Dd* -> Void))
  fun setst_t2_dd_size = setst_T2Dd_size(set : SetStT2Dd*) : Uint32T
  fun setst_t2_dd_size = setst_T2Dd_size(set : SetStT2Dd*) : Uint32T
  fun setst_t2_dd_get = setst_T2Dd_get(set : SetStT2Dd*, key : T2Dd*) : T2Dd*
  fun setst_t2_dd_get = setst_T2Dd_get(set : SetStT2Dd*, key : T2Dd*) : T2Dd*
  fun setst_t2_dd_get_const = setst_T2Dd_get_const(set : SetStT2Dd*, key : T2Dd*) : T2Dd*
  fun setst_t2_dd_get_const = setst_T2Dd_get_const(set : SetStT2Dd*, key : T2Dd*) : T2Dd*
  fun setst_t2_dd_insert = setst_T2Dd_insert(set : SetStT2Dd*, key : T2Dd*) : T2Dd*
  fun setst_t2_dd_insert = setst_T2Dd_insert(set : SetStT2Dd*, key : T2Dd*) : T2Dd*
  fun setst_t2_dd_delete = setst_T2Dd_delete(set : SetStT2Dd*, key : T2Dd*, func_remove : (T2Dd* -> Void)) : BoolT
  fun setst_t2_dd_delete = setst_T2Dd_delete(set : SetStT2Dd*, key : T2Dd*, func_remove : (T2Dd* -> Void)) : BoolT
  fun setst_t2_dd_first = setst_T2Dd_first(set : SetStT2Dd*) : T2Dd*
  fun setst_t2_dd_first = setst_T2Dd_first(set : SetStT2Dd*) : T2Dd*
  fun setst_t2_dd_first_const = setst_T2Dd_first_const(set : SetStT2Dd*) : T2Dd*
  fun setst_t2_dd_first_const = setst_T2Dd_first_const(set : SetStT2Dd*) : T2Dd*
  fun setst_t2_dd_last = setst_T2Dd_last(set : SetStT2Dd*) : T2Dd*
  fun setst_t2_dd_last = setst_T2Dd_last(set : SetStT2Dd*) : T2Dd*
  fun setst_t2_dd_last_const = setst_T2Dd_last_const(set : SetStT2Dd*) : T2Dd*
  fun setst_t2_dd_last_const = setst_T2Dd_last_const(set : SetStT2Dd*) : T2Dd*
  fun setst_t2_dd_next = setst_T2Dd_next(set : SetStT2Dd*) : T2Dd*
  fun setst_t2_dd_next = setst_T2Dd_next(set : SetStT2Dd*) : T2Dd*
  fun setst_t2_dd_next_const = setst_T2Dd_next_const(set : SetStT2Dd*) : T2Dd*
  fun setst_t2_dd_next_const = setst_T2Dd_next_const(set : SetStT2Dd*) : T2Dd*
  fun setst_t2_dd_prev = setst_T2Dd_prev(set : SetStT2Dd*) : T2Dd*
  fun setst_t2_dd_prev = setst_T2Dd_prev(set : SetStT2Dd*) : T2Dd*
  fun setst_t2_dd_prev_const = setst_T2Dd_prev_const(set : SetStT2Dd*) : T2Dd*
  fun setst_t2_dd_prev_const = setst_T2Dd_prev_const(set : SetStT2Dd*) : T2Dd*
  fun setst_t2_dd_end = setst_T2Dd_end
  fun arrst_seg2_df_create = arrst_Seg2Df_create(esize : Uint16T) : ArrStSeg2Df*

  struct ArrStSeg2Df
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : Seg2DfData*
  end

  struct Seg2DfData
    elem : Seg2Df[1024]
  end

  struct X_Seg2dfT
    p0 : V2Df
    p1 : V2Df
  end

  type Seg2Df = X_Seg2dfT
  fun arrst_seg2_df_create = arrst_Seg2Df_create(esize : Uint16T) : ArrStSeg2Df*
  fun arrst_seg2_df_copy = arrst_Seg2Df_copy(array : ArrStSeg2Df*, func_copy : (Seg2Df*, Seg2Df* -> Void)) : ArrStSeg2Df*
  fun arrst_seg2_df_copy = arrst_Seg2Df_copy(array : ArrStSeg2Df*, func_copy : (Seg2Df*, Seg2Df* -> Void)) : ArrStSeg2Df*
  fun arrst_seg2_df_read = arrst_Seg2Df_read(stream : Stream, esize : Uint16T, func_read : (Stream, Seg2Df* -> Void)) : ArrStSeg2Df*
  fun arrst_seg2_df_read = arrst_Seg2Df_read(stream : Stream, esize : Uint16T, func_read : (Stream, Seg2Df* -> Void)) : ArrStSeg2Df*
  fun arrst_seg2_df_destroy = arrst_Seg2Df_destroy(array : ArrStSeg2Df**, func_remove : (Seg2Df* -> Void))
  fun arrst_seg2_df_destroy = arrst_Seg2Df_destroy(array : ArrStSeg2Df**, func_remove : (Seg2Df* -> Void))
  fun arrst_seg2_df_destopt = arrst_Seg2Df_destopt(array : ArrStSeg2Df**, func_remove : (Seg2Df* -> Void))
  fun arrst_seg2_df_destopt = arrst_Seg2Df_destopt(array : ArrStSeg2Df**, func_remove : (Seg2Df* -> Void))
  fun arrst_seg2_df_clear = arrst_Seg2Df_clear(array : ArrStSeg2Df*, func_remove : (Seg2Df* -> Void))
  fun arrst_seg2_df_clear = arrst_Seg2Df_clear(array : ArrStSeg2Df*, func_remove : (Seg2Df* -> Void))
  fun arrst_seg2_df_write = arrst_Seg2Df_write(stream : Stream, array : ArrStSeg2Df*, func_write : (Stream, Seg2Df* -> Void))
  fun arrst_seg2_df_write = arrst_Seg2Df_write(stream : Stream, array : ArrStSeg2Df*, func_write : (Stream, Seg2Df* -> Void))
  fun arrst_seg2_df_size = arrst_Seg2Df_size(array : ArrStSeg2Df*) : Uint32T
  fun arrst_seg2_df_size = arrst_Seg2Df_size(array : ArrStSeg2Df*) : Uint32T
  fun arrst_seg2_df_get = arrst_Seg2Df_get(array : ArrStSeg2Df*, pos : Uint32T) : Seg2Df*
  fun arrst_seg2_df_get = arrst_Seg2Df_get(array : ArrStSeg2Df*, pos : Uint32T) : Seg2Df*
  fun arrst_seg2_df_get_const = arrst_Seg2Df_get_const(array : ArrStSeg2Df*, pos : Uint32T) : Seg2Df*
  fun arrst_seg2_df_get_const = arrst_Seg2Df_get_const(array : ArrStSeg2Df*, pos : Uint32T) : Seg2Df*
  fun arrst_seg2_df_last = arrst_Seg2Df_last(array : ArrStSeg2Df*) : Seg2Df*
  fun arrst_seg2_df_last = arrst_Seg2Df_last(array : ArrStSeg2Df*) : Seg2Df*
  fun arrst_seg2_df_last_const = arrst_Seg2Df_last_const(array : ArrStSeg2Df*) : Seg2Df*
  fun arrst_seg2_df_last_const = arrst_Seg2Df_last_const(array : ArrStSeg2Df*) : Seg2Df*
  fun arrst_seg2_df_all = arrst_Seg2Df_all(array : ArrStSeg2Df*) : Seg2Df*
  fun arrst_seg2_df_all = arrst_Seg2Df_all(array : ArrStSeg2Df*) : Seg2Df*
  fun arrst_seg2_df_all_const = arrst_Seg2Df_all_const(array : ArrStSeg2Df*) : Seg2Df*
  fun arrst_seg2_df_all_const = arrst_Seg2Df_all_const(array : ArrStSeg2Df*) : Seg2Df*
  fun arrst_seg2_df_insert = arrst_Seg2Df_insert(array : ArrStSeg2Df*, pos : Uint32T, n : Uint32T) : Seg2Df*
  fun arrst_seg2_df_insert = arrst_Seg2Df_insert(array : ArrStSeg2Df*, pos : Uint32T, n : Uint32T) : Seg2Df*
  fun arrst_seg2_df_insert0 = arrst_Seg2Df_insert0(array : ArrStSeg2Df*, pos : Uint32T, n : Uint32T) : Seg2Df*
  fun arrst_seg2_df_insert0 = arrst_Seg2Df_insert0(array : ArrStSeg2Df*, pos : Uint32T, n : Uint32T) : Seg2Df*
  fun arrst_seg2_df_join = arrst_Seg2Df_join(dest : ArrStSeg2Df*, src : ArrStSeg2Df*, func_copy : (Seg2Df*, Seg2Df* -> Void))
  fun arrst_seg2_df_join = arrst_Seg2Df_join(dest : ArrStSeg2Df*, src : ArrStSeg2Df*, func_copy : (Seg2Df*, Seg2Df* -> Void))
  fun arrst_seg2_df_delete = arrst_Seg2Df_delete(array : ArrStSeg2Df*, pos : Uint32T, func_remove : (Seg2Df* -> Void))
  fun arrst_seg2_df_delete = arrst_Seg2Df_delete(array : ArrStSeg2Df*, pos : Uint32T, func_remove : (Seg2Df* -> Void))
  fun arrst_seg2_df_pop = arrst_Seg2Df_pop(array : ArrStSeg2Df*, func_remove : (Seg2Df* -> Void))
  fun arrst_seg2_df_pop = arrst_Seg2Df_pop(array : ArrStSeg2Df*, func_remove : (Seg2Df* -> Void))
  fun arrst_seg2_df_sort = arrst_Seg2Df_sort(array : ArrStSeg2Df*, func_compare : (Seg2Df*, Seg2Df* -> LibC::Int))
  fun arrst_seg2_df_sort = arrst_Seg2Df_sort(array : ArrStSeg2Df*, func_compare : (Seg2Df*, Seg2Df* -> LibC::Int))
  fun arrst_seg2_df_sort_ex = arrst_Seg2Df_sort_ex(array : ArrStSeg2Df*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_seg2_df_sort_ex = arrst_Seg2Df_sort_ex(array : ArrStSeg2Df*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_seg2_df_search = arrst_Seg2Df_search(array : ArrStSeg2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Seg2Df*
  fun arrst_seg2_df_search = arrst_Seg2Df_search(array : ArrStSeg2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Seg2Df*
  fun arrst_seg2_df_search_const = arrst_Seg2Df_search_const(array : ArrStSeg2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Seg2Df*
  fun arrst_seg2_df_search_const = arrst_Seg2Df_search_const(array : ArrStSeg2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Seg2Df*
  fun arrst_seg2_df_bsearch = arrst_Seg2Df_bsearch(array : ArrStSeg2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Seg2Df*
  fun arrst_seg2_df_bsearch = arrst_Seg2Df_bsearch(array : ArrStSeg2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Seg2Df*
  fun arrst_seg2_df_bsearch_const = arrst_Seg2Df_bsearch_const(array : ArrStSeg2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Seg2Df*
  fun arrst_seg2_df_bsearch_const = arrst_Seg2Df_bsearch_const(array : ArrStSeg2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Seg2Df*
  fun arrst_seg2_df_end = arrst_Seg2Df_end
  fun setst_seg2_df_create = setst_Seg2Df_create(func_compare : (Seg2Df*, Seg2Df* -> LibC::Int), esize : Uint16T) : SetStSeg2Df*

  struct SetStSeg2Df
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStSeg2Df*
    func_compare : FPtrCompare
  end

  struct NodeStSeg2Df
    rb : Uint32T
    left : NodeStSeg2Df*
    right : NodeStSeg2Df*
    data : Seg2Df
  end

  fun setst_seg2_df_create = setst_Seg2Df_create(func_compare : (Seg2Df*, Seg2Df* -> LibC::Int), esize : Uint16T) : SetStSeg2Df*
  fun setst_seg2_df_destroy = setst_Seg2Df_destroy(set : SetStSeg2Df**, func_remove : (Seg2Df* -> Void))
  fun setst_seg2_df_destroy = setst_Seg2Df_destroy(set : SetStSeg2Df**, func_remove : (Seg2Df* -> Void))
  fun setst_seg2_df_size = setst_Seg2Df_size(set : SetStSeg2Df*) : Uint32T
  fun setst_seg2_df_size = setst_Seg2Df_size(set : SetStSeg2Df*) : Uint32T
  fun setst_seg2_df_get = setst_Seg2Df_get(set : SetStSeg2Df*, key : Seg2Df*) : Seg2Df*
  fun setst_seg2_df_get = setst_Seg2Df_get(set : SetStSeg2Df*, key : Seg2Df*) : Seg2Df*
  fun setst_seg2_df_get_const = setst_Seg2Df_get_const(set : SetStSeg2Df*, key : Seg2Df*) : Seg2Df*
  fun setst_seg2_df_get_const = setst_Seg2Df_get_const(set : SetStSeg2Df*, key : Seg2Df*) : Seg2Df*
  fun setst_seg2_df_insert = setst_Seg2Df_insert(set : SetStSeg2Df*, key : Seg2Df*) : Seg2Df*
  fun setst_seg2_df_insert = setst_Seg2Df_insert(set : SetStSeg2Df*, key : Seg2Df*) : Seg2Df*
  fun setst_seg2_df_delete = setst_Seg2Df_delete(set : SetStSeg2Df*, key : Seg2Df*, func_remove : (Seg2Df* -> Void)) : BoolT
  fun setst_seg2_df_delete = setst_Seg2Df_delete(set : SetStSeg2Df*, key : Seg2Df*, func_remove : (Seg2Df* -> Void)) : BoolT
  fun setst_seg2_df_first = setst_Seg2Df_first(set : SetStSeg2Df*) : Seg2Df*
  fun setst_seg2_df_first = setst_Seg2Df_first(set : SetStSeg2Df*) : Seg2Df*
  fun setst_seg2_df_first_const = setst_Seg2Df_first_const(set : SetStSeg2Df*) : Seg2Df*
  fun setst_seg2_df_first_const = setst_Seg2Df_first_const(set : SetStSeg2Df*) : Seg2Df*
  fun setst_seg2_df_last = setst_Seg2Df_last(set : SetStSeg2Df*) : Seg2Df*
  fun setst_seg2_df_last = setst_Seg2Df_last(set : SetStSeg2Df*) : Seg2Df*
  fun setst_seg2_df_last_const = setst_Seg2Df_last_const(set : SetStSeg2Df*) : Seg2Df*
  fun setst_seg2_df_last_const = setst_Seg2Df_last_const(set : SetStSeg2Df*) : Seg2Df*
  fun setst_seg2_df_next = setst_Seg2Df_next(set : SetStSeg2Df*) : Seg2Df*
  fun setst_seg2_df_next = setst_Seg2Df_next(set : SetStSeg2Df*) : Seg2Df*
  fun setst_seg2_df_next_const = setst_Seg2Df_next_const(set : SetStSeg2Df*) : Seg2Df*
  fun setst_seg2_df_next_const = setst_Seg2Df_next_const(set : SetStSeg2Df*) : Seg2Df*
  fun setst_seg2_df_prev = setst_Seg2Df_prev(set : SetStSeg2Df*) : Seg2Df*
  fun setst_seg2_df_prev = setst_Seg2Df_prev(set : SetStSeg2Df*) : Seg2Df*
  fun setst_seg2_df_prev_const = setst_Seg2Df_prev_const(set : SetStSeg2Df*) : Seg2Df*
  fun setst_seg2_df_prev_const = setst_Seg2Df_prev_const(set : SetStSeg2Df*) : Seg2Df*
  fun setst_seg2_df_end = setst_Seg2Df_end
  fun arrst_seg2_dd_create = arrst_Seg2Dd_create(esize : Uint16T) : ArrStSeg2Dd*

  struct ArrStSeg2Dd
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : Seg2DdData*
  end

  struct Seg2DdData
    elem : Seg2Dd[1024]
  end

  struct X_Seg2ddT
    p0 : V2Dd
    p1 : V2Dd
  end

  type Seg2Dd = X_Seg2ddT
  fun arrst_seg2_dd_create = arrst_Seg2Dd_create(esize : Uint16T) : ArrStSeg2Dd*
  fun arrst_seg2_dd_copy = arrst_Seg2Dd_copy(array : ArrStSeg2Dd*, func_copy : (Seg2Dd*, Seg2Dd* -> Void)) : ArrStSeg2Dd*
  fun arrst_seg2_dd_copy = arrst_Seg2Dd_copy(array : ArrStSeg2Dd*, func_copy : (Seg2Dd*, Seg2Dd* -> Void)) : ArrStSeg2Dd*
  fun arrst_seg2_dd_read = arrst_Seg2Dd_read(stream : Stream, esize : Uint16T, func_read : (Stream, Seg2Dd* -> Void)) : ArrStSeg2Dd*
  fun arrst_seg2_dd_read = arrst_Seg2Dd_read(stream : Stream, esize : Uint16T, func_read : (Stream, Seg2Dd* -> Void)) : ArrStSeg2Dd*
  fun arrst_seg2_dd_destroy = arrst_Seg2Dd_destroy(array : ArrStSeg2Dd**, func_remove : (Seg2Dd* -> Void))
  fun arrst_seg2_dd_destroy = arrst_Seg2Dd_destroy(array : ArrStSeg2Dd**, func_remove : (Seg2Dd* -> Void))
  fun arrst_seg2_dd_destopt = arrst_Seg2Dd_destopt(array : ArrStSeg2Dd**, func_remove : (Seg2Dd* -> Void))
  fun arrst_seg2_dd_destopt = arrst_Seg2Dd_destopt(array : ArrStSeg2Dd**, func_remove : (Seg2Dd* -> Void))
  fun arrst_seg2_dd_clear = arrst_Seg2Dd_clear(array : ArrStSeg2Dd*, func_remove : (Seg2Dd* -> Void))
  fun arrst_seg2_dd_clear = arrst_Seg2Dd_clear(array : ArrStSeg2Dd*, func_remove : (Seg2Dd* -> Void))
  fun arrst_seg2_dd_write = arrst_Seg2Dd_write(stream : Stream, array : ArrStSeg2Dd*, func_write : (Stream, Seg2Dd* -> Void))
  fun arrst_seg2_dd_write = arrst_Seg2Dd_write(stream : Stream, array : ArrStSeg2Dd*, func_write : (Stream, Seg2Dd* -> Void))
  fun arrst_seg2_dd_size = arrst_Seg2Dd_size(array : ArrStSeg2Dd*) : Uint32T
  fun arrst_seg2_dd_size = arrst_Seg2Dd_size(array : ArrStSeg2Dd*) : Uint32T
  fun arrst_seg2_dd_get = arrst_Seg2Dd_get(array : ArrStSeg2Dd*, pos : Uint32T) : Seg2Dd*
  fun arrst_seg2_dd_get = arrst_Seg2Dd_get(array : ArrStSeg2Dd*, pos : Uint32T) : Seg2Dd*
  fun arrst_seg2_dd_get_const = arrst_Seg2Dd_get_const(array : ArrStSeg2Dd*, pos : Uint32T) : Seg2Dd*
  fun arrst_seg2_dd_get_const = arrst_Seg2Dd_get_const(array : ArrStSeg2Dd*, pos : Uint32T) : Seg2Dd*
  fun arrst_seg2_dd_last = arrst_Seg2Dd_last(array : ArrStSeg2Dd*) : Seg2Dd*
  fun arrst_seg2_dd_last = arrst_Seg2Dd_last(array : ArrStSeg2Dd*) : Seg2Dd*
  fun arrst_seg2_dd_last_const = arrst_Seg2Dd_last_const(array : ArrStSeg2Dd*) : Seg2Dd*
  fun arrst_seg2_dd_last_const = arrst_Seg2Dd_last_const(array : ArrStSeg2Dd*) : Seg2Dd*
  fun arrst_seg2_dd_all = arrst_Seg2Dd_all(array : ArrStSeg2Dd*) : Seg2Dd*
  fun arrst_seg2_dd_all = arrst_Seg2Dd_all(array : ArrStSeg2Dd*) : Seg2Dd*
  fun arrst_seg2_dd_all_const = arrst_Seg2Dd_all_const(array : ArrStSeg2Dd*) : Seg2Dd*
  fun arrst_seg2_dd_all_const = arrst_Seg2Dd_all_const(array : ArrStSeg2Dd*) : Seg2Dd*
  fun arrst_seg2_dd_insert = arrst_Seg2Dd_insert(array : ArrStSeg2Dd*, pos : Uint32T, n : Uint32T) : Seg2Dd*
  fun arrst_seg2_dd_insert = arrst_Seg2Dd_insert(array : ArrStSeg2Dd*, pos : Uint32T, n : Uint32T) : Seg2Dd*
  fun arrst_seg2_dd_insert0 = arrst_Seg2Dd_insert0(array : ArrStSeg2Dd*, pos : Uint32T, n : Uint32T) : Seg2Dd*
  fun arrst_seg2_dd_insert0 = arrst_Seg2Dd_insert0(array : ArrStSeg2Dd*, pos : Uint32T, n : Uint32T) : Seg2Dd*
  fun arrst_seg2_dd_join = arrst_Seg2Dd_join(dest : ArrStSeg2Dd*, src : ArrStSeg2Dd*, func_copy : (Seg2Dd*, Seg2Dd* -> Void))
  fun arrst_seg2_dd_join = arrst_Seg2Dd_join(dest : ArrStSeg2Dd*, src : ArrStSeg2Dd*, func_copy : (Seg2Dd*, Seg2Dd* -> Void))
  fun arrst_seg2_dd_delete = arrst_Seg2Dd_delete(array : ArrStSeg2Dd*, pos : Uint32T, func_remove : (Seg2Dd* -> Void))
  fun arrst_seg2_dd_delete = arrst_Seg2Dd_delete(array : ArrStSeg2Dd*, pos : Uint32T, func_remove : (Seg2Dd* -> Void))
  fun arrst_seg2_dd_pop = arrst_Seg2Dd_pop(array : ArrStSeg2Dd*, func_remove : (Seg2Dd* -> Void))
  fun arrst_seg2_dd_pop = arrst_Seg2Dd_pop(array : ArrStSeg2Dd*, func_remove : (Seg2Dd* -> Void))
  fun arrst_seg2_dd_sort = arrst_Seg2Dd_sort(array : ArrStSeg2Dd*, func_compare : (Seg2Dd*, Seg2Dd* -> LibC::Int))
  fun arrst_seg2_dd_sort = arrst_Seg2Dd_sort(array : ArrStSeg2Dd*, func_compare : (Seg2Dd*, Seg2Dd* -> LibC::Int))
  fun arrst_seg2_dd_sort_ex = arrst_Seg2Dd_sort_ex(array : ArrStSeg2Dd*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_seg2_dd_sort_ex = arrst_Seg2Dd_sort_ex(array : ArrStSeg2Dd*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_seg2_dd_search = arrst_Seg2Dd_search(array : ArrStSeg2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Seg2Dd*
  fun arrst_seg2_dd_search = arrst_Seg2Dd_search(array : ArrStSeg2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Seg2Dd*
  fun arrst_seg2_dd_search_const = arrst_Seg2Dd_search_const(array : ArrStSeg2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Seg2Dd*
  fun arrst_seg2_dd_search_const = arrst_Seg2Dd_search_const(array : ArrStSeg2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Seg2Dd*
  fun arrst_seg2_dd_bsearch = arrst_Seg2Dd_bsearch(array : ArrStSeg2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Seg2Dd*
  fun arrst_seg2_dd_bsearch = arrst_Seg2Dd_bsearch(array : ArrStSeg2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Seg2Dd*
  fun arrst_seg2_dd_bsearch_const = arrst_Seg2Dd_bsearch_const(array : ArrStSeg2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Seg2Dd*
  fun arrst_seg2_dd_bsearch_const = arrst_Seg2Dd_bsearch_const(array : ArrStSeg2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Seg2Dd*
  fun arrst_seg2_dd_end = arrst_Seg2Dd_end
  fun setst_seg2_dd_create = setst_Seg2Dd_create(func_compare : (Seg2Dd*, Seg2Dd* -> LibC::Int), esize : Uint16T) : SetStSeg2Dd*

  struct SetStSeg2Dd
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStSeg2Dd*
    func_compare : FPtrCompare
  end

  struct NodeStSeg2Dd
    rb : Uint32T
    left : NodeStSeg2Dd*
    right : NodeStSeg2Dd*
    data : Seg2Dd
  end

  fun setst_seg2_dd_create = setst_Seg2Dd_create(func_compare : (Seg2Dd*, Seg2Dd* -> LibC::Int), esize : Uint16T) : SetStSeg2Dd*
  fun setst_seg2_dd_destroy = setst_Seg2Dd_destroy(set : SetStSeg2Dd**, func_remove : (Seg2Dd* -> Void))
  fun setst_seg2_dd_destroy = setst_Seg2Dd_destroy(set : SetStSeg2Dd**, func_remove : (Seg2Dd* -> Void))
  fun setst_seg2_dd_size = setst_Seg2Dd_size(set : SetStSeg2Dd*) : Uint32T
  fun setst_seg2_dd_size = setst_Seg2Dd_size(set : SetStSeg2Dd*) : Uint32T
  fun setst_seg2_dd_get = setst_Seg2Dd_get(set : SetStSeg2Dd*, key : Seg2Dd*) : Seg2Dd*
  fun setst_seg2_dd_get = setst_Seg2Dd_get(set : SetStSeg2Dd*, key : Seg2Dd*) : Seg2Dd*
  fun setst_seg2_dd_get_const = setst_Seg2Dd_get_const(set : SetStSeg2Dd*, key : Seg2Dd*) : Seg2Dd*
  fun setst_seg2_dd_get_const = setst_Seg2Dd_get_const(set : SetStSeg2Dd*, key : Seg2Dd*) : Seg2Dd*
  fun setst_seg2_dd_insert = setst_Seg2Dd_insert(set : SetStSeg2Dd*, key : Seg2Dd*) : Seg2Dd*
  fun setst_seg2_dd_insert = setst_Seg2Dd_insert(set : SetStSeg2Dd*, key : Seg2Dd*) : Seg2Dd*
  fun setst_seg2_dd_delete = setst_Seg2Dd_delete(set : SetStSeg2Dd*, key : Seg2Dd*, func_remove : (Seg2Dd* -> Void)) : BoolT
  fun setst_seg2_dd_delete = setst_Seg2Dd_delete(set : SetStSeg2Dd*, key : Seg2Dd*, func_remove : (Seg2Dd* -> Void)) : BoolT
  fun setst_seg2_dd_first = setst_Seg2Dd_first(set : SetStSeg2Dd*) : Seg2Dd*
  fun setst_seg2_dd_first = setst_Seg2Dd_first(set : SetStSeg2Dd*) : Seg2Dd*
  fun setst_seg2_dd_first_const = setst_Seg2Dd_first_const(set : SetStSeg2Dd*) : Seg2Dd*
  fun setst_seg2_dd_first_const = setst_Seg2Dd_first_const(set : SetStSeg2Dd*) : Seg2Dd*
  fun setst_seg2_dd_last = setst_Seg2Dd_last(set : SetStSeg2Dd*) : Seg2Dd*
  fun setst_seg2_dd_last = setst_Seg2Dd_last(set : SetStSeg2Dd*) : Seg2Dd*
  fun setst_seg2_dd_last_const = setst_Seg2Dd_last_const(set : SetStSeg2Dd*) : Seg2Dd*
  fun setst_seg2_dd_last_const = setst_Seg2Dd_last_const(set : SetStSeg2Dd*) : Seg2Dd*
  fun setst_seg2_dd_next = setst_Seg2Dd_next(set : SetStSeg2Dd*) : Seg2Dd*
  fun setst_seg2_dd_next = setst_Seg2Dd_next(set : SetStSeg2Dd*) : Seg2Dd*
  fun setst_seg2_dd_next_const = setst_Seg2Dd_next_const(set : SetStSeg2Dd*) : Seg2Dd*
  fun setst_seg2_dd_next_const = setst_Seg2Dd_next_const(set : SetStSeg2Dd*) : Seg2Dd*
  fun setst_seg2_dd_prev = setst_Seg2Dd_prev(set : SetStSeg2Dd*) : Seg2Dd*
  fun setst_seg2_dd_prev = setst_Seg2Dd_prev(set : SetStSeg2Dd*) : Seg2Dd*
  fun setst_seg2_dd_prev_const = setst_Seg2Dd_prev_const(set : SetStSeg2Dd*) : Seg2Dd*
  fun setst_seg2_dd_prev_const = setst_Seg2Dd_prev_const(set : SetStSeg2Dd*) : Seg2Dd*
  fun setst_seg2_dd_end = setst_Seg2Dd_end
  fun arrst_cir2_df_create = arrst_Cir2Df_create(esize : Uint16T) : ArrStCir2Df*

  struct ArrStCir2Df
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : Cir2DfData*
  end

  struct Cir2DfData
    elem : Cir2Df[1024]
  end

  struct X_Cir2dfT
    c : V2Df
    r : Real32T
  end

  type Cir2Df = X_Cir2dfT
  fun arrst_cir2_df_create = arrst_Cir2Df_create(esize : Uint16T) : ArrStCir2Df*
  fun arrst_cir2_df_copy = arrst_Cir2Df_copy(array : ArrStCir2Df*, func_copy : (Cir2Df*, Cir2Df* -> Void)) : ArrStCir2Df*
  fun arrst_cir2_df_copy = arrst_Cir2Df_copy(array : ArrStCir2Df*, func_copy : (Cir2Df*, Cir2Df* -> Void)) : ArrStCir2Df*
  fun arrst_cir2_df_read = arrst_Cir2Df_read(stream : Stream, esize : Uint16T, func_read : (Stream, Cir2Df* -> Void)) : ArrStCir2Df*
  fun arrst_cir2_df_read = arrst_Cir2Df_read(stream : Stream, esize : Uint16T, func_read : (Stream, Cir2Df* -> Void)) : ArrStCir2Df*
  fun arrst_cir2_df_destroy = arrst_Cir2Df_destroy(array : ArrStCir2Df**, func_remove : (Cir2Df* -> Void))
  fun arrst_cir2_df_destroy = arrst_Cir2Df_destroy(array : ArrStCir2Df**, func_remove : (Cir2Df* -> Void))
  fun arrst_cir2_df_destopt = arrst_Cir2Df_destopt(array : ArrStCir2Df**, func_remove : (Cir2Df* -> Void))
  fun arrst_cir2_df_destopt = arrst_Cir2Df_destopt(array : ArrStCir2Df**, func_remove : (Cir2Df* -> Void))
  fun arrst_cir2_df_clear = arrst_Cir2Df_clear(array : ArrStCir2Df*, func_remove : (Cir2Df* -> Void))
  fun arrst_cir2_df_clear = arrst_Cir2Df_clear(array : ArrStCir2Df*, func_remove : (Cir2Df* -> Void))
  fun arrst_cir2_df_write = arrst_Cir2Df_write(stream : Stream, array : ArrStCir2Df*, func_write : (Stream, Cir2Df* -> Void))
  fun arrst_cir2_df_write = arrst_Cir2Df_write(stream : Stream, array : ArrStCir2Df*, func_write : (Stream, Cir2Df* -> Void))
  fun arrst_cir2_df_size = arrst_Cir2Df_size(array : ArrStCir2Df*) : Uint32T
  fun arrst_cir2_df_size = arrst_Cir2Df_size(array : ArrStCir2Df*) : Uint32T
  fun arrst_cir2_df_get = arrst_Cir2Df_get(array : ArrStCir2Df*, pos : Uint32T) : Cir2Df*
  fun arrst_cir2_df_get = arrst_Cir2Df_get(array : ArrStCir2Df*, pos : Uint32T) : Cir2Df*
  fun arrst_cir2_df_get_const = arrst_Cir2Df_get_const(array : ArrStCir2Df*, pos : Uint32T) : Cir2Df*
  fun arrst_cir2_df_get_const = arrst_Cir2Df_get_const(array : ArrStCir2Df*, pos : Uint32T) : Cir2Df*
  fun arrst_cir2_df_last = arrst_Cir2Df_last(array : ArrStCir2Df*) : Cir2Df*
  fun arrst_cir2_df_last = arrst_Cir2Df_last(array : ArrStCir2Df*) : Cir2Df*
  fun arrst_cir2_df_last_const = arrst_Cir2Df_last_const(array : ArrStCir2Df*) : Cir2Df*
  fun arrst_cir2_df_last_const = arrst_Cir2Df_last_const(array : ArrStCir2Df*) : Cir2Df*
  fun arrst_cir2_df_all = arrst_Cir2Df_all(array : ArrStCir2Df*) : Cir2Df*
  fun arrst_cir2_df_all = arrst_Cir2Df_all(array : ArrStCir2Df*) : Cir2Df*
  fun arrst_cir2_df_all_const = arrst_Cir2Df_all_const(array : ArrStCir2Df*) : Cir2Df*
  fun arrst_cir2_df_all_const = arrst_Cir2Df_all_const(array : ArrStCir2Df*) : Cir2Df*
  fun arrst_cir2_df_insert = arrst_Cir2Df_insert(array : ArrStCir2Df*, pos : Uint32T, n : Uint32T) : Cir2Df*
  fun arrst_cir2_df_insert = arrst_Cir2Df_insert(array : ArrStCir2Df*, pos : Uint32T, n : Uint32T) : Cir2Df*
  fun arrst_cir2_df_insert0 = arrst_Cir2Df_insert0(array : ArrStCir2Df*, pos : Uint32T, n : Uint32T) : Cir2Df*
  fun arrst_cir2_df_insert0 = arrst_Cir2Df_insert0(array : ArrStCir2Df*, pos : Uint32T, n : Uint32T) : Cir2Df*
  fun arrst_cir2_df_join = arrst_Cir2Df_join(dest : ArrStCir2Df*, src : ArrStCir2Df*, func_copy : (Cir2Df*, Cir2Df* -> Void))
  fun arrst_cir2_df_join = arrst_Cir2Df_join(dest : ArrStCir2Df*, src : ArrStCir2Df*, func_copy : (Cir2Df*, Cir2Df* -> Void))
  fun arrst_cir2_df_delete = arrst_Cir2Df_delete(array : ArrStCir2Df*, pos : Uint32T, func_remove : (Cir2Df* -> Void))
  fun arrst_cir2_df_delete = arrst_Cir2Df_delete(array : ArrStCir2Df*, pos : Uint32T, func_remove : (Cir2Df* -> Void))
  fun arrst_cir2_df_pop = arrst_Cir2Df_pop(array : ArrStCir2Df*, func_remove : (Cir2Df* -> Void))
  fun arrst_cir2_df_pop = arrst_Cir2Df_pop(array : ArrStCir2Df*, func_remove : (Cir2Df* -> Void))
  fun arrst_cir2_df_sort = arrst_Cir2Df_sort(array : ArrStCir2Df*, func_compare : (Cir2Df*, Cir2Df* -> LibC::Int))
  fun arrst_cir2_df_sort = arrst_Cir2Df_sort(array : ArrStCir2Df*, func_compare : (Cir2Df*, Cir2Df* -> LibC::Int))
  fun arrst_cir2_df_sort_ex = arrst_Cir2Df_sort_ex(array : ArrStCir2Df*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_cir2_df_sort_ex = arrst_Cir2Df_sort_ex(array : ArrStCir2Df*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_cir2_df_search = arrst_Cir2Df_search(array : ArrStCir2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Cir2Df*
  fun arrst_cir2_df_search = arrst_Cir2Df_search(array : ArrStCir2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Cir2Df*
  fun arrst_cir2_df_search_const = arrst_Cir2Df_search_const(array : ArrStCir2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Cir2Df*
  fun arrst_cir2_df_search_const = arrst_Cir2Df_search_const(array : ArrStCir2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Cir2Df*
  fun arrst_cir2_df_bsearch = arrst_Cir2Df_bsearch(array : ArrStCir2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Cir2Df*
  fun arrst_cir2_df_bsearch = arrst_Cir2Df_bsearch(array : ArrStCir2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Cir2Df*
  fun arrst_cir2_df_bsearch_const = arrst_Cir2Df_bsearch_const(array : ArrStCir2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Cir2Df*
  fun arrst_cir2_df_bsearch_const = arrst_Cir2Df_bsearch_const(array : ArrStCir2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Cir2Df*
  fun arrst_cir2_df_end = arrst_Cir2Df_end
  fun setst_cir2_df_create = setst_Cir2Df_create(func_compare : (Cir2Df*, Cir2Df* -> LibC::Int), esize : Uint16T) : SetStCir2Df*

  struct SetStCir2Df
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStCir2Df*
    func_compare : FPtrCompare
  end

  struct NodeStCir2Df
    rb : Uint32T
    left : NodeStCir2Df*
    right : NodeStCir2Df*
    data : Cir2Df
  end

  fun setst_cir2_df_create = setst_Cir2Df_create(func_compare : (Cir2Df*, Cir2Df* -> LibC::Int), esize : Uint16T) : SetStCir2Df*
  fun setst_cir2_df_destroy = setst_Cir2Df_destroy(set : SetStCir2Df**, func_remove : (Cir2Df* -> Void))
  fun setst_cir2_df_destroy = setst_Cir2Df_destroy(set : SetStCir2Df**, func_remove : (Cir2Df* -> Void))
  fun setst_cir2_df_size = setst_Cir2Df_size(set : SetStCir2Df*) : Uint32T
  fun setst_cir2_df_size = setst_Cir2Df_size(set : SetStCir2Df*) : Uint32T
  fun setst_cir2_df_get = setst_Cir2Df_get(set : SetStCir2Df*, key : Cir2Df*) : Cir2Df*
  fun setst_cir2_df_get = setst_Cir2Df_get(set : SetStCir2Df*, key : Cir2Df*) : Cir2Df*
  fun setst_cir2_df_get_const = setst_Cir2Df_get_const(set : SetStCir2Df*, key : Cir2Df*) : Cir2Df*
  fun setst_cir2_df_get_const = setst_Cir2Df_get_const(set : SetStCir2Df*, key : Cir2Df*) : Cir2Df*
  fun setst_cir2_df_insert = setst_Cir2Df_insert(set : SetStCir2Df*, key : Cir2Df*) : Cir2Df*
  fun setst_cir2_df_insert = setst_Cir2Df_insert(set : SetStCir2Df*, key : Cir2Df*) : Cir2Df*
  fun setst_cir2_df_delete = setst_Cir2Df_delete(set : SetStCir2Df*, key : Cir2Df*, func_remove : (Cir2Df* -> Void)) : BoolT
  fun setst_cir2_df_delete = setst_Cir2Df_delete(set : SetStCir2Df*, key : Cir2Df*, func_remove : (Cir2Df* -> Void)) : BoolT
  fun setst_cir2_df_first = setst_Cir2Df_first(set : SetStCir2Df*) : Cir2Df*
  fun setst_cir2_df_first = setst_Cir2Df_first(set : SetStCir2Df*) : Cir2Df*
  fun setst_cir2_df_first_const = setst_Cir2Df_first_const(set : SetStCir2Df*) : Cir2Df*
  fun setst_cir2_df_first_const = setst_Cir2Df_first_const(set : SetStCir2Df*) : Cir2Df*
  fun setst_cir2_df_last = setst_Cir2Df_last(set : SetStCir2Df*) : Cir2Df*
  fun setst_cir2_df_last = setst_Cir2Df_last(set : SetStCir2Df*) : Cir2Df*
  fun setst_cir2_df_last_const = setst_Cir2Df_last_const(set : SetStCir2Df*) : Cir2Df*
  fun setst_cir2_df_last_const = setst_Cir2Df_last_const(set : SetStCir2Df*) : Cir2Df*
  fun setst_cir2_df_next = setst_Cir2Df_next(set : SetStCir2Df*) : Cir2Df*
  fun setst_cir2_df_next = setst_Cir2Df_next(set : SetStCir2Df*) : Cir2Df*
  fun setst_cir2_df_next_const = setst_Cir2Df_next_const(set : SetStCir2Df*) : Cir2Df*
  fun setst_cir2_df_next_const = setst_Cir2Df_next_const(set : SetStCir2Df*) : Cir2Df*
  fun setst_cir2_df_prev = setst_Cir2Df_prev(set : SetStCir2Df*) : Cir2Df*
  fun setst_cir2_df_prev = setst_Cir2Df_prev(set : SetStCir2Df*) : Cir2Df*
  fun setst_cir2_df_prev_const = setst_Cir2Df_prev_const(set : SetStCir2Df*) : Cir2Df*
  fun setst_cir2_df_prev_const = setst_Cir2Df_prev_const(set : SetStCir2Df*) : Cir2Df*
  fun setst_cir2_df_end = setst_Cir2Df_end
  fun arrst_cir2_dd_create = arrst_Cir2Dd_create(esize : Uint16T) : ArrStCir2Dd*

  struct ArrStCir2Dd
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : Cir2DdData*
  end

  struct Cir2DdData
    elem : Cir2Dd[1024]
  end

  struct X_Cir2ddT
    c : V2Dd
    r : Real64T
  end

  type Cir2Dd = X_Cir2ddT
  fun arrst_cir2_dd_create = arrst_Cir2Dd_create(esize : Uint16T) : ArrStCir2Dd*
  fun arrst_cir2_dd_copy = arrst_Cir2Dd_copy(array : ArrStCir2Dd*, func_copy : (Cir2Dd*, Cir2Dd* -> Void)) : ArrStCir2Dd*
  fun arrst_cir2_dd_copy = arrst_Cir2Dd_copy(array : ArrStCir2Dd*, func_copy : (Cir2Dd*, Cir2Dd* -> Void)) : ArrStCir2Dd*
  fun arrst_cir2_dd_read = arrst_Cir2Dd_read(stream : Stream, esize : Uint16T, func_read : (Stream, Cir2Dd* -> Void)) : ArrStCir2Dd*
  fun arrst_cir2_dd_read = arrst_Cir2Dd_read(stream : Stream, esize : Uint16T, func_read : (Stream, Cir2Dd* -> Void)) : ArrStCir2Dd*
  fun arrst_cir2_dd_destroy = arrst_Cir2Dd_destroy(array : ArrStCir2Dd**, func_remove : (Cir2Dd* -> Void))
  fun arrst_cir2_dd_destroy = arrst_Cir2Dd_destroy(array : ArrStCir2Dd**, func_remove : (Cir2Dd* -> Void))
  fun arrst_cir2_dd_destopt = arrst_Cir2Dd_destopt(array : ArrStCir2Dd**, func_remove : (Cir2Dd* -> Void))
  fun arrst_cir2_dd_destopt = arrst_Cir2Dd_destopt(array : ArrStCir2Dd**, func_remove : (Cir2Dd* -> Void))
  fun arrst_cir2_dd_clear = arrst_Cir2Dd_clear(array : ArrStCir2Dd*, func_remove : (Cir2Dd* -> Void))
  fun arrst_cir2_dd_clear = arrst_Cir2Dd_clear(array : ArrStCir2Dd*, func_remove : (Cir2Dd* -> Void))
  fun arrst_cir2_dd_write = arrst_Cir2Dd_write(stream : Stream, array : ArrStCir2Dd*, func_write : (Stream, Cir2Dd* -> Void))
  fun arrst_cir2_dd_write = arrst_Cir2Dd_write(stream : Stream, array : ArrStCir2Dd*, func_write : (Stream, Cir2Dd* -> Void))
  fun arrst_cir2_dd_size = arrst_Cir2Dd_size(array : ArrStCir2Dd*) : Uint32T
  fun arrst_cir2_dd_size = arrst_Cir2Dd_size(array : ArrStCir2Dd*) : Uint32T
  fun arrst_cir2_dd_get = arrst_Cir2Dd_get(array : ArrStCir2Dd*, pos : Uint32T) : Cir2Dd*
  fun arrst_cir2_dd_get = arrst_Cir2Dd_get(array : ArrStCir2Dd*, pos : Uint32T) : Cir2Dd*
  fun arrst_cir2_dd_get_const = arrst_Cir2Dd_get_const(array : ArrStCir2Dd*, pos : Uint32T) : Cir2Dd*
  fun arrst_cir2_dd_get_const = arrst_Cir2Dd_get_const(array : ArrStCir2Dd*, pos : Uint32T) : Cir2Dd*
  fun arrst_cir2_dd_last = arrst_Cir2Dd_last(array : ArrStCir2Dd*) : Cir2Dd*
  fun arrst_cir2_dd_last = arrst_Cir2Dd_last(array : ArrStCir2Dd*) : Cir2Dd*
  fun arrst_cir2_dd_last_const = arrst_Cir2Dd_last_const(array : ArrStCir2Dd*) : Cir2Dd*
  fun arrst_cir2_dd_last_const = arrst_Cir2Dd_last_const(array : ArrStCir2Dd*) : Cir2Dd*
  fun arrst_cir2_dd_all = arrst_Cir2Dd_all(array : ArrStCir2Dd*) : Cir2Dd*
  fun arrst_cir2_dd_all = arrst_Cir2Dd_all(array : ArrStCir2Dd*) : Cir2Dd*
  fun arrst_cir2_dd_all_const = arrst_Cir2Dd_all_const(array : ArrStCir2Dd*) : Cir2Dd*
  fun arrst_cir2_dd_all_const = arrst_Cir2Dd_all_const(array : ArrStCir2Dd*) : Cir2Dd*
  fun arrst_cir2_dd_insert = arrst_Cir2Dd_insert(array : ArrStCir2Dd*, pos : Uint32T, n : Uint32T) : Cir2Dd*
  fun arrst_cir2_dd_insert = arrst_Cir2Dd_insert(array : ArrStCir2Dd*, pos : Uint32T, n : Uint32T) : Cir2Dd*
  fun arrst_cir2_dd_insert0 = arrst_Cir2Dd_insert0(array : ArrStCir2Dd*, pos : Uint32T, n : Uint32T) : Cir2Dd*
  fun arrst_cir2_dd_insert0 = arrst_Cir2Dd_insert0(array : ArrStCir2Dd*, pos : Uint32T, n : Uint32T) : Cir2Dd*
  fun arrst_cir2_dd_join = arrst_Cir2Dd_join(dest : ArrStCir2Dd*, src : ArrStCir2Dd*, func_copy : (Cir2Dd*, Cir2Dd* -> Void))
  fun arrst_cir2_dd_join = arrst_Cir2Dd_join(dest : ArrStCir2Dd*, src : ArrStCir2Dd*, func_copy : (Cir2Dd*, Cir2Dd* -> Void))
  fun arrst_cir2_dd_delete = arrst_Cir2Dd_delete(array : ArrStCir2Dd*, pos : Uint32T, func_remove : (Cir2Dd* -> Void))
  fun arrst_cir2_dd_delete = arrst_Cir2Dd_delete(array : ArrStCir2Dd*, pos : Uint32T, func_remove : (Cir2Dd* -> Void))
  fun arrst_cir2_dd_pop = arrst_Cir2Dd_pop(array : ArrStCir2Dd*, func_remove : (Cir2Dd* -> Void))
  fun arrst_cir2_dd_pop = arrst_Cir2Dd_pop(array : ArrStCir2Dd*, func_remove : (Cir2Dd* -> Void))
  fun arrst_cir2_dd_sort = arrst_Cir2Dd_sort(array : ArrStCir2Dd*, func_compare : (Cir2Dd*, Cir2Dd* -> LibC::Int))
  fun arrst_cir2_dd_sort = arrst_Cir2Dd_sort(array : ArrStCir2Dd*, func_compare : (Cir2Dd*, Cir2Dd* -> LibC::Int))
  fun arrst_cir2_dd_sort_ex = arrst_Cir2Dd_sort_ex(array : ArrStCir2Dd*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_cir2_dd_sort_ex = arrst_Cir2Dd_sort_ex(array : ArrStCir2Dd*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_cir2_dd_search = arrst_Cir2Dd_search(array : ArrStCir2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Cir2Dd*
  fun arrst_cir2_dd_search = arrst_Cir2Dd_search(array : ArrStCir2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Cir2Dd*
  fun arrst_cir2_dd_search_const = arrst_Cir2Dd_search_const(array : ArrStCir2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Cir2Dd*
  fun arrst_cir2_dd_search_const = arrst_Cir2Dd_search_const(array : ArrStCir2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Cir2Dd*
  fun arrst_cir2_dd_bsearch = arrst_Cir2Dd_bsearch(array : ArrStCir2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Cir2Dd*
  fun arrst_cir2_dd_bsearch = arrst_Cir2Dd_bsearch(array : ArrStCir2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Cir2Dd*
  fun arrst_cir2_dd_bsearch_const = arrst_Cir2Dd_bsearch_const(array : ArrStCir2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Cir2Dd*
  fun arrst_cir2_dd_bsearch_const = arrst_Cir2Dd_bsearch_const(array : ArrStCir2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Cir2Dd*
  fun arrst_cir2_dd_end = arrst_Cir2Dd_end
  fun setst_cir2_dd_create = setst_Cir2Dd_create(func_compare : (Cir2Dd*, Cir2Dd* -> LibC::Int), esize : Uint16T) : SetStCir2Dd*

  struct SetStCir2Dd
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStCir2Dd*
    func_compare : FPtrCompare
  end

  struct NodeStCir2Dd
    rb : Uint32T
    left : NodeStCir2Dd*
    right : NodeStCir2Dd*
    data : Cir2Dd
  end

  fun setst_cir2_dd_create = setst_Cir2Dd_create(func_compare : (Cir2Dd*, Cir2Dd* -> LibC::Int), esize : Uint16T) : SetStCir2Dd*
  fun setst_cir2_dd_destroy = setst_Cir2Dd_destroy(set : SetStCir2Dd**, func_remove : (Cir2Dd* -> Void))
  fun setst_cir2_dd_destroy = setst_Cir2Dd_destroy(set : SetStCir2Dd**, func_remove : (Cir2Dd* -> Void))
  fun setst_cir2_dd_size = setst_Cir2Dd_size(set : SetStCir2Dd*) : Uint32T
  fun setst_cir2_dd_size = setst_Cir2Dd_size(set : SetStCir2Dd*) : Uint32T
  fun setst_cir2_dd_get = setst_Cir2Dd_get(set : SetStCir2Dd*, key : Cir2Dd*) : Cir2Dd*
  fun setst_cir2_dd_get = setst_Cir2Dd_get(set : SetStCir2Dd*, key : Cir2Dd*) : Cir2Dd*
  fun setst_cir2_dd_get_const = setst_Cir2Dd_get_const(set : SetStCir2Dd*, key : Cir2Dd*) : Cir2Dd*
  fun setst_cir2_dd_get_const = setst_Cir2Dd_get_const(set : SetStCir2Dd*, key : Cir2Dd*) : Cir2Dd*
  fun setst_cir2_dd_insert = setst_Cir2Dd_insert(set : SetStCir2Dd*, key : Cir2Dd*) : Cir2Dd*
  fun setst_cir2_dd_insert = setst_Cir2Dd_insert(set : SetStCir2Dd*, key : Cir2Dd*) : Cir2Dd*
  fun setst_cir2_dd_delete = setst_Cir2Dd_delete(set : SetStCir2Dd*, key : Cir2Dd*, func_remove : (Cir2Dd* -> Void)) : BoolT
  fun setst_cir2_dd_delete = setst_Cir2Dd_delete(set : SetStCir2Dd*, key : Cir2Dd*, func_remove : (Cir2Dd* -> Void)) : BoolT
  fun setst_cir2_dd_first = setst_Cir2Dd_first(set : SetStCir2Dd*) : Cir2Dd*
  fun setst_cir2_dd_first = setst_Cir2Dd_first(set : SetStCir2Dd*) : Cir2Dd*
  fun setst_cir2_dd_first_const = setst_Cir2Dd_first_const(set : SetStCir2Dd*) : Cir2Dd*
  fun setst_cir2_dd_first_const = setst_Cir2Dd_first_const(set : SetStCir2Dd*) : Cir2Dd*
  fun setst_cir2_dd_last = setst_Cir2Dd_last(set : SetStCir2Dd*) : Cir2Dd*
  fun setst_cir2_dd_last = setst_Cir2Dd_last(set : SetStCir2Dd*) : Cir2Dd*
  fun setst_cir2_dd_last_const = setst_Cir2Dd_last_const(set : SetStCir2Dd*) : Cir2Dd*
  fun setst_cir2_dd_last_const = setst_Cir2Dd_last_const(set : SetStCir2Dd*) : Cir2Dd*
  fun setst_cir2_dd_next = setst_Cir2Dd_next(set : SetStCir2Dd*) : Cir2Dd*
  fun setst_cir2_dd_next = setst_Cir2Dd_next(set : SetStCir2Dd*) : Cir2Dd*
  fun setst_cir2_dd_next_const = setst_Cir2Dd_next_const(set : SetStCir2Dd*) : Cir2Dd*
  fun setst_cir2_dd_next_const = setst_Cir2Dd_next_const(set : SetStCir2Dd*) : Cir2Dd*
  fun setst_cir2_dd_prev = setst_Cir2Dd_prev(set : SetStCir2Dd*) : Cir2Dd*
  fun setst_cir2_dd_prev = setst_Cir2Dd_prev(set : SetStCir2Dd*) : Cir2Dd*
  fun setst_cir2_dd_prev_const = setst_Cir2Dd_prev_const(set : SetStCir2Dd*) : Cir2Dd*
  fun setst_cir2_dd_prev_const = setst_Cir2Dd_prev_const(set : SetStCir2Dd*) : Cir2Dd*
  fun setst_cir2_dd_end = setst_Cir2Dd_end
  fun arrst_box2_df_create = arrst_Box2Df_create(esize : Uint16T) : ArrStBox2Df*

  struct ArrStBox2Df
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : Box2DfData*
  end

  struct Box2DfData
    elem : Box2Df[1024]
  end

  struct X_Box2dfT
    min : V2Df
    max : V2Df
  end

  type Box2Df = X_Box2dfT
  fun arrst_box2_df_create = arrst_Box2Df_create(esize : Uint16T) : ArrStBox2Df*
  fun arrst_box2_df_copy = arrst_Box2Df_copy(array : ArrStBox2Df*, func_copy : (Box2Df*, Box2Df* -> Void)) : ArrStBox2Df*
  fun arrst_box2_df_copy = arrst_Box2Df_copy(array : ArrStBox2Df*, func_copy : (Box2Df*, Box2Df* -> Void)) : ArrStBox2Df*
  fun arrst_box2_df_read = arrst_Box2Df_read(stream : Stream, esize : Uint16T, func_read : (Stream, Box2Df* -> Void)) : ArrStBox2Df*
  fun arrst_box2_df_read = arrst_Box2Df_read(stream : Stream, esize : Uint16T, func_read : (Stream, Box2Df* -> Void)) : ArrStBox2Df*
  fun arrst_box2_df_destroy = arrst_Box2Df_destroy(array : ArrStBox2Df**, func_remove : (Box2Df* -> Void))
  fun arrst_box2_df_destroy = arrst_Box2Df_destroy(array : ArrStBox2Df**, func_remove : (Box2Df* -> Void))
  fun arrst_box2_df_destopt = arrst_Box2Df_destopt(array : ArrStBox2Df**, func_remove : (Box2Df* -> Void))
  fun arrst_box2_df_destopt = arrst_Box2Df_destopt(array : ArrStBox2Df**, func_remove : (Box2Df* -> Void))
  fun arrst_box2_df_clear = arrst_Box2Df_clear(array : ArrStBox2Df*, func_remove : (Box2Df* -> Void))
  fun arrst_box2_df_clear = arrst_Box2Df_clear(array : ArrStBox2Df*, func_remove : (Box2Df* -> Void))
  fun arrst_box2_df_write = arrst_Box2Df_write(stream : Stream, array : ArrStBox2Df*, func_write : (Stream, Box2Df* -> Void))
  fun arrst_box2_df_write = arrst_Box2Df_write(stream : Stream, array : ArrStBox2Df*, func_write : (Stream, Box2Df* -> Void))
  fun arrst_box2_df_size = arrst_Box2Df_size(array : ArrStBox2Df*) : Uint32T
  fun arrst_box2_df_size = arrst_Box2Df_size(array : ArrStBox2Df*) : Uint32T
  fun arrst_box2_df_get = arrst_Box2Df_get(array : ArrStBox2Df*, pos : Uint32T) : Box2Df*
  fun arrst_box2_df_get = arrst_Box2Df_get(array : ArrStBox2Df*, pos : Uint32T) : Box2Df*
  fun arrst_box2_df_get_const = arrst_Box2Df_get_const(array : ArrStBox2Df*, pos : Uint32T) : Box2Df*
  fun arrst_box2_df_get_const = arrst_Box2Df_get_const(array : ArrStBox2Df*, pos : Uint32T) : Box2Df*
  fun arrst_box2_df_last = arrst_Box2Df_last(array : ArrStBox2Df*) : Box2Df*
  fun arrst_box2_df_last = arrst_Box2Df_last(array : ArrStBox2Df*) : Box2Df*
  fun arrst_box2_df_last_const = arrst_Box2Df_last_const(array : ArrStBox2Df*) : Box2Df*
  fun arrst_box2_df_last_const = arrst_Box2Df_last_const(array : ArrStBox2Df*) : Box2Df*
  fun arrst_box2_df_all = arrst_Box2Df_all(array : ArrStBox2Df*) : Box2Df*
  fun arrst_box2_df_all = arrst_Box2Df_all(array : ArrStBox2Df*) : Box2Df*
  fun arrst_box2_df_all_const = arrst_Box2Df_all_const(array : ArrStBox2Df*) : Box2Df*
  fun arrst_box2_df_all_const = arrst_Box2Df_all_const(array : ArrStBox2Df*) : Box2Df*
  fun arrst_box2_df_insert = arrst_Box2Df_insert(array : ArrStBox2Df*, pos : Uint32T, n : Uint32T) : Box2Df*
  fun arrst_box2_df_insert = arrst_Box2Df_insert(array : ArrStBox2Df*, pos : Uint32T, n : Uint32T) : Box2Df*
  fun arrst_box2_df_insert0 = arrst_Box2Df_insert0(array : ArrStBox2Df*, pos : Uint32T, n : Uint32T) : Box2Df*
  fun arrst_box2_df_insert0 = arrst_Box2Df_insert0(array : ArrStBox2Df*, pos : Uint32T, n : Uint32T) : Box2Df*
  fun arrst_box2_df_join = arrst_Box2Df_join(dest : ArrStBox2Df*, src : ArrStBox2Df*, func_copy : (Box2Df*, Box2Df* -> Void))
  fun arrst_box2_df_join = arrst_Box2Df_join(dest : ArrStBox2Df*, src : ArrStBox2Df*, func_copy : (Box2Df*, Box2Df* -> Void))
  fun arrst_box2_df_delete = arrst_Box2Df_delete(array : ArrStBox2Df*, pos : Uint32T, func_remove : (Box2Df* -> Void))
  fun arrst_box2_df_delete = arrst_Box2Df_delete(array : ArrStBox2Df*, pos : Uint32T, func_remove : (Box2Df* -> Void))
  fun arrst_box2_df_pop = arrst_Box2Df_pop(array : ArrStBox2Df*, func_remove : (Box2Df* -> Void))
  fun arrst_box2_df_pop = arrst_Box2Df_pop(array : ArrStBox2Df*, func_remove : (Box2Df* -> Void))
  fun arrst_box2_df_sort = arrst_Box2Df_sort(array : ArrStBox2Df*, func_compare : (Box2Df*, Box2Df* -> LibC::Int))
  fun arrst_box2_df_sort = arrst_Box2Df_sort(array : ArrStBox2Df*, func_compare : (Box2Df*, Box2Df* -> LibC::Int))
  fun arrst_box2_df_sort_ex = arrst_Box2Df_sort_ex(array : ArrStBox2Df*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_box2_df_sort_ex = arrst_Box2Df_sort_ex(array : ArrStBox2Df*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_box2_df_search = arrst_Box2Df_search(array : ArrStBox2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Box2Df*
  fun arrst_box2_df_search = arrst_Box2Df_search(array : ArrStBox2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Box2Df*
  fun arrst_box2_df_search_const = arrst_Box2Df_search_const(array : ArrStBox2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Box2Df*
  fun arrst_box2_df_search_const = arrst_Box2Df_search_const(array : ArrStBox2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Box2Df*
  fun arrst_box2_df_bsearch = arrst_Box2Df_bsearch(array : ArrStBox2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Box2Df*
  fun arrst_box2_df_bsearch = arrst_Box2Df_bsearch(array : ArrStBox2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Box2Df*
  fun arrst_box2_df_bsearch_const = arrst_Box2Df_bsearch_const(array : ArrStBox2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Box2Df*
  fun arrst_box2_df_bsearch_const = arrst_Box2Df_bsearch_const(array : ArrStBox2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Box2Df*
  fun arrst_box2_df_end = arrst_Box2Df_end
  fun setst_box2_df_create = setst_Box2Df_create(func_compare : (Box2Df*, Box2Df* -> LibC::Int), esize : Uint16T) : SetStBox2Df*

  struct SetStBox2Df
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStBox2Df*
    func_compare : FPtrCompare
  end

  struct NodeStBox2Df
    rb : Uint32T
    left : NodeStBox2Df*
    right : NodeStBox2Df*
    data : Box2Df
  end

  fun setst_box2_df_create = setst_Box2Df_create(func_compare : (Box2Df*, Box2Df* -> LibC::Int), esize : Uint16T) : SetStBox2Df*
  fun setst_box2_df_destroy = setst_Box2Df_destroy(set : SetStBox2Df**, func_remove : (Box2Df* -> Void))
  fun setst_box2_df_destroy = setst_Box2Df_destroy(set : SetStBox2Df**, func_remove : (Box2Df* -> Void))
  fun setst_box2_df_size = setst_Box2Df_size(set : SetStBox2Df*) : Uint32T
  fun setst_box2_df_size = setst_Box2Df_size(set : SetStBox2Df*) : Uint32T
  fun setst_box2_df_get = setst_Box2Df_get(set : SetStBox2Df*, key : Box2Df*) : Box2Df*
  fun setst_box2_df_get = setst_Box2Df_get(set : SetStBox2Df*, key : Box2Df*) : Box2Df*
  fun setst_box2_df_get_const = setst_Box2Df_get_const(set : SetStBox2Df*, key : Box2Df*) : Box2Df*
  fun setst_box2_df_get_const = setst_Box2Df_get_const(set : SetStBox2Df*, key : Box2Df*) : Box2Df*
  fun setst_box2_df_insert = setst_Box2Df_insert(set : SetStBox2Df*, key : Box2Df*) : Box2Df*
  fun setst_box2_df_insert = setst_Box2Df_insert(set : SetStBox2Df*, key : Box2Df*) : Box2Df*
  fun setst_box2_df_delete = setst_Box2Df_delete(set : SetStBox2Df*, key : Box2Df*, func_remove : (Box2Df* -> Void)) : BoolT
  fun setst_box2_df_delete = setst_Box2Df_delete(set : SetStBox2Df*, key : Box2Df*, func_remove : (Box2Df* -> Void)) : BoolT
  fun setst_box2_df_first = setst_Box2Df_first(set : SetStBox2Df*) : Box2Df*
  fun setst_box2_df_first = setst_Box2Df_first(set : SetStBox2Df*) : Box2Df*
  fun setst_box2_df_first_const = setst_Box2Df_first_const(set : SetStBox2Df*) : Box2Df*
  fun setst_box2_df_first_const = setst_Box2Df_first_const(set : SetStBox2Df*) : Box2Df*
  fun setst_box2_df_last = setst_Box2Df_last(set : SetStBox2Df*) : Box2Df*
  fun setst_box2_df_last = setst_Box2Df_last(set : SetStBox2Df*) : Box2Df*
  fun setst_box2_df_last_const = setst_Box2Df_last_const(set : SetStBox2Df*) : Box2Df*
  fun setst_box2_df_last_const = setst_Box2Df_last_const(set : SetStBox2Df*) : Box2Df*
  fun setst_box2_df_next = setst_Box2Df_next(set : SetStBox2Df*) : Box2Df*
  fun setst_box2_df_next = setst_Box2Df_next(set : SetStBox2Df*) : Box2Df*
  fun setst_box2_df_next_const = setst_Box2Df_next_const(set : SetStBox2Df*) : Box2Df*
  fun setst_box2_df_next_const = setst_Box2Df_next_const(set : SetStBox2Df*) : Box2Df*
  fun setst_box2_df_prev = setst_Box2Df_prev(set : SetStBox2Df*) : Box2Df*
  fun setst_box2_df_prev = setst_Box2Df_prev(set : SetStBox2Df*) : Box2Df*
  fun setst_box2_df_prev_const = setst_Box2Df_prev_const(set : SetStBox2Df*) : Box2Df*
  fun setst_box2_df_prev_const = setst_Box2Df_prev_const(set : SetStBox2Df*) : Box2Df*
  fun setst_box2_df_end = setst_Box2Df_end
  fun arrst_box2_dd_create = arrst_Box2Dd_create(esize : Uint16T) : ArrStBox2Dd*

  struct ArrStBox2Dd
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : Box2DdData*
  end

  struct Box2DdData
    elem : Box2Dd[1024]
  end

  struct X_Box2ddT
    min : V2Dd
    max : V2Dd
  end

  type Box2Dd = X_Box2ddT
  fun arrst_box2_dd_create = arrst_Box2Dd_create(esize : Uint16T) : ArrStBox2Dd*
  fun arrst_box2_dd_copy = arrst_Box2Dd_copy(array : ArrStBox2Dd*, func_copy : (Box2Dd*, Box2Dd* -> Void)) : ArrStBox2Dd*
  fun arrst_box2_dd_copy = arrst_Box2Dd_copy(array : ArrStBox2Dd*, func_copy : (Box2Dd*, Box2Dd* -> Void)) : ArrStBox2Dd*
  fun arrst_box2_dd_read = arrst_Box2Dd_read(stream : Stream, esize : Uint16T, func_read : (Stream, Box2Dd* -> Void)) : ArrStBox2Dd*
  fun arrst_box2_dd_read = arrst_Box2Dd_read(stream : Stream, esize : Uint16T, func_read : (Stream, Box2Dd* -> Void)) : ArrStBox2Dd*
  fun arrst_box2_dd_destroy = arrst_Box2Dd_destroy(array : ArrStBox2Dd**, func_remove : (Box2Dd* -> Void))
  fun arrst_box2_dd_destroy = arrst_Box2Dd_destroy(array : ArrStBox2Dd**, func_remove : (Box2Dd* -> Void))
  fun arrst_box2_dd_destopt = arrst_Box2Dd_destopt(array : ArrStBox2Dd**, func_remove : (Box2Dd* -> Void))
  fun arrst_box2_dd_destopt = arrst_Box2Dd_destopt(array : ArrStBox2Dd**, func_remove : (Box2Dd* -> Void))
  fun arrst_box2_dd_clear = arrst_Box2Dd_clear(array : ArrStBox2Dd*, func_remove : (Box2Dd* -> Void))
  fun arrst_box2_dd_clear = arrst_Box2Dd_clear(array : ArrStBox2Dd*, func_remove : (Box2Dd* -> Void))
  fun arrst_box2_dd_write = arrst_Box2Dd_write(stream : Stream, array : ArrStBox2Dd*, func_write : (Stream, Box2Dd* -> Void))
  fun arrst_box2_dd_write = arrst_Box2Dd_write(stream : Stream, array : ArrStBox2Dd*, func_write : (Stream, Box2Dd* -> Void))
  fun arrst_box2_dd_size = arrst_Box2Dd_size(array : ArrStBox2Dd*) : Uint32T
  fun arrst_box2_dd_size = arrst_Box2Dd_size(array : ArrStBox2Dd*) : Uint32T
  fun arrst_box2_dd_get = arrst_Box2Dd_get(array : ArrStBox2Dd*, pos : Uint32T) : Box2Dd*
  fun arrst_box2_dd_get = arrst_Box2Dd_get(array : ArrStBox2Dd*, pos : Uint32T) : Box2Dd*
  fun arrst_box2_dd_get_const = arrst_Box2Dd_get_const(array : ArrStBox2Dd*, pos : Uint32T) : Box2Dd*
  fun arrst_box2_dd_get_const = arrst_Box2Dd_get_const(array : ArrStBox2Dd*, pos : Uint32T) : Box2Dd*
  fun arrst_box2_dd_last = arrst_Box2Dd_last(array : ArrStBox2Dd*) : Box2Dd*
  fun arrst_box2_dd_last = arrst_Box2Dd_last(array : ArrStBox2Dd*) : Box2Dd*
  fun arrst_box2_dd_last_const = arrst_Box2Dd_last_const(array : ArrStBox2Dd*) : Box2Dd*
  fun arrst_box2_dd_last_const = arrst_Box2Dd_last_const(array : ArrStBox2Dd*) : Box2Dd*
  fun arrst_box2_dd_all = arrst_Box2Dd_all(array : ArrStBox2Dd*) : Box2Dd*
  fun arrst_box2_dd_all = arrst_Box2Dd_all(array : ArrStBox2Dd*) : Box2Dd*
  fun arrst_box2_dd_all_const = arrst_Box2Dd_all_const(array : ArrStBox2Dd*) : Box2Dd*
  fun arrst_box2_dd_all_const = arrst_Box2Dd_all_const(array : ArrStBox2Dd*) : Box2Dd*
  fun arrst_box2_dd_insert = arrst_Box2Dd_insert(array : ArrStBox2Dd*, pos : Uint32T, n : Uint32T) : Box2Dd*
  fun arrst_box2_dd_insert = arrst_Box2Dd_insert(array : ArrStBox2Dd*, pos : Uint32T, n : Uint32T) : Box2Dd*
  fun arrst_box2_dd_insert0 = arrst_Box2Dd_insert0(array : ArrStBox2Dd*, pos : Uint32T, n : Uint32T) : Box2Dd*
  fun arrst_box2_dd_insert0 = arrst_Box2Dd_insert0(array : ArrStBox2Dd*, pos : Uint32T, n : Uint32T) : Box2Dd*
  fun arrst_box2_dd_join = arrst_Box2Dd_join(dest : ArrStBox2Dd*, src : ArrStBox2Dd*, func_copy : (Box2Dd*, Box2Dd* -> Void))
  fun arrst_box2_dd_join = arrst_Box2Dd_join(dest : ArrStBox2Dd*, src : ArrStBox2Dd*, func_copy : (Box2Dd*, Box2Dd* -> Void))
  fun arrst_box2_dd_delete = arrst_Box2Dd_delete(array : ArrStBox2Dd*, pos : Uint32T, func_remove : (Box2Dd* -> Void))
  fun arrst_box2_dd_delete = arrst_Box2Dd_delete(array : ArrStBox2Dd*, pos : Uint32T, func_remove : (Box2Dd* -> Void))
  fun arrst_box2_dd_pop = arrst_Box2Dd_pop(array : ArrStBox2Dd*, func_remove : (Box2Dd* -> Void))
  fun arrst_box2_dd_pop = arrst_Box2Dd_pop(array : ArrStBox2Dd*, func_remove : (Box2Dd* -> Void))
  fun arrst_box2_dd_sort = arrst_Box2Dd_sort(array : ArrStBox2Dd*, func_compare : (Box2Dd*, Box2Dd* -> LibC::Int))
  fun arrst_box2_dd_sort = arrst_Box2Dd_sort(array : ArrStBox2Dd*, func_compare : (Box2Dd*, Box2Dd* -> LibC::Int))
  fun arrst_box2_dd_sort_ex = arrst_Box2Dd_sort_ex(array : ArrStBox2Dd*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_box2_dd_sort_ex = arrst_Box2Dd_sort_ex(array : ArrStBox2Dd*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_box2_dd_search = arrst_Box2Dd_search(array : ArrStBox2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Box2Dd*
  fun arrst_box2_dd_search = arrst_Box2Dd_search(array : ArrStBox2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Box2Dd*
  fun arrst_box2_dd_search_const = arrst_Box2Dd_search_const(array : ArrStBox2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Box2Dd*
  fun arrst_box2_dd_search_const = arrst_Box2Dd_search_const(array : ArrStBox2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Box2Dd*
  fun arrst_box2_dd_bsearch = arrst_Box2Dd_bsearch(array : ArrStBox2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Box2Dd*
  fun arrst_box2_dd_bsearch = arrst_Box2Dd_bsearch(array : ArrStBox2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Box2Dd*
  fun arrst_box2_dd_bsearch_const = arrst_Box2Dd_bsearch_const(array : ArrStBox2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Box2Dd*
  fun arrst_box2_dd_bsearch_const = arrst_Box2Dd_bsearch_const(array : ArrStBox2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Box2Dd*
  fun arrst_box2_dd_end = arrst_Box2Dd_end
  fun setst_box2_dd_create = setst_Box2Dd_create(func_compare : (Box2Dd*, Box2Dd* -> LibC::Int), esize : Uint16T) : SetStBox2Dd*

  struct SetStBox2Dd
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStBox2Dd*
    func_compare : FPtrCompare
  end

  struct NodeStBox2Dd
    rb : Uint32T
    left : NodeStBox2Dd*
    right : NodeStBox2Dd*
    data : Box2Dd
  end

  fun setst_box2_dd_create = setst_Box2Dd_create(func_compare : (Box2Dd*, Box2Dd* -> LibC::Int), esize : Uint16T) : SetStBox2Dd*
  fun setst_box2_dd_destroy = setst_Box2Dd_destroy(set : SetStBox2Dd**, func_remove : (Box2Dd* -> Void))
  fun setst_box2_dd_destroy = setst_Box2Dd_destroy(set : SetStBox2Dd**, func_remove : (Box2Dd* -> Void))
  fun setst_box2_dd_size = setst_Box2Dd_size(set : SetStBox2Dd*) : Uint32T
  fun setst_box2_dd_size = setst_Box2Dd_size(set : SetStBox2Dd*) : Uint32T
  fun setst_box2_dd_get = setst_Box2Dd_get(set : SetStBox2Dd*, key : Box2Dd*) : Box2Dd*
  fun setst_box2_dd_get = setst_Box2Dd_get(set : SetStBox2Dd*, key : Box2Dd*) : Box2Dd*
  fun setst_box2_dd_get_const = setst_Box2Dd_get_const(set : SetStBox2Dd*, key : Box2Dd*) : Box2Dd*
  fun setst_box2_dd_get_const = setst_Box2Dd_get_const(set : SetStBox2Dd*, key : Box2Dd*) : Box2Dd*
  fun setst_box2_dd_insert = setst_Box2Dd_insert(set : SetStBox2Dd*, key : Box2Dd*) : Box2Dd*
  fun setst_box2_dd_insert = setst_Box2Dd_insert(set : SetStBox2Dd*, key : Box2Dd*) : Box2Dd*
  fun setst_box2_dd_delete = setst_Box2Dd_delete(set : SetStBox2Dd*, key : Box2Dd*, func_remove : (Box2Dd* -> Void)) : BoolT
  fun setst_box2_dd_delete = setst_Box2Dd_delete(set : SetStBox2Dd*, key : Box2Dd*, func_remove : (Box2Dd* -> Void)) : BoolT
  fun setst_box2_dd_first = setst_Box2Dd_first(set : SetStBox2Dd*) : Box2Dd*
  fun setst_box2_dd_first = setst_Box2Dd_first(set : SetStBox2Dd*) : Box2Dd*
  fun setst_box2_dd_first_const = setst_Box2Dd_first_const(set : SetStBox2Dd*) : Box2Dd*
  fun setst_box2_dd_first_const = setst_Box2Dd_first_const(set : SetStBox2Dd*) : Box2Dd*
  fun setst_box2_dd_last = setst_Box2Dd_last(set : SetStBox2Dd*) : Box2Dd*
  fun setst_box2_dd_last = setst_Box2Dd_last(set : SetStBox2Dd*) : Box2Dd*
  fun setst_box2_dd_last_const = setst_Box2Dd_last_const(set : SetStBox2Dd*) : Box2Dd*
  fun setst_box2_dd_last_const = setst_Box2Dd_last_const(set : SetStBox2Dd*) : Box2Dd*
  fun setst_box2_dd_next = setst_Box2Dd_next(set : SetStBox2Dd*) : Box2Dd*
  fun setst_box2_dd_next = setst_Box2Dd_next(set : SetStBox2Dd*) : Box2Dd*
  fun setst_box2_dd_next_const = setst_Box2Dd_next_const(set : SetStBox2Dd*) : Box2Dd*
  fun setst_box2_dd_next_const = setst_Box2Dd_next_const(set : SetStBox2Dd*) : Box2Dd*
  fun setst_box2_dd_prev = setst_Box2Dd_prev(set : SetStBox2Dd*) : Box2Dd*
  fun setst_box2_dd_prev = setst_Box2Dd_prev(set : SetStBox2Dd*) : Box2Dd*
  fun setst_box2_dd_prev_const = setst_Box2Dd_prev_const(set : SetStBox2Dd*) : Box2Dd*
  fun setst_box2_dd_prev_const = setst_Box2Dd_prev_const(set : SetStBox2Dd*) : Box2Dd*
  fun setst_box2_dd_end = setst_Box2Dd_end
  fun arrst_tri2_df_create = arrst_Tri2Df_create(esize : Uint16T) : ArrStTri2Df*

  struct ArrStTri2Df
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : Tri2DfData*
  end

  struct Tri2DfData
    elem : Tri2Df[1024]
  end

  struct X_Tri2dfT
    p0 : V2Df
    p1 : V2Df
    p2 : V2Df
  end

  type Tri2Df = X_Tri2dfT
  fun arrst_tri2_df_create = arrst_Tri2Df_create(esize : Uint16T) : ArrStTri2Df*
  fun arrst_tri2_df_copy = arrst_Tri2Df_copy(array : ArrStTri2Df*, func_copy : (Tri2Df*, Tri2Df* -> Void)) : ArrStTri2Df*
  fun arrst_tri2_df_copy = arrst_Tri2Df_copy(array : ArrStTri2Df*, func_copy : (Tri2Df*, Tri2Df* -> Void)) : ArrStTri2Df*
  fun arrst_tri2_df_read = arrst_Tri2Df_read(stream : Stream, esize : Uint16T, func_read : (Stream, Tri2Df* -> Void)) : ArrStTri2Df*
  fun arrst_tri2_df_read = arrst_Tri2Df_read(stream : Stream, esize : Uint16T, func_read : (Stream, Tri2Df* -> Void)) : ArrStTri2Df*
  fun arrst_tri2_df_destroy = arrst_Tri2Df_destroy(array : ArrStTri2Df**, func_remove : (Tri2Df* -> Void))
  fun arrst_tri2_df_destroy = arrst_Tri2Df_destroy(array : ArrStTri2Df**, func_remove : (Tri2Df* -> Void))
  fun arrst_tri2_df_destopt = arrst_Tri2Df_destopt(array : ArrStTri2Df**, func_remove : (Tri2Df* -> Void))
  fun arrst_tri2_df_destopt = arrst_Tri2Df_destopt(array : ArrStTri2Df**, func_remove : (Tri2Df* -> Void))
  fun arrst_tri2_df_clear = arrst_Tri2Df_clear(array : ArrStTri2Df*, func_remove : (Tri2Df* -> Void))
  fun arrst_tri2_df_clear = arrst_Tri2Df_clear(array : ArrStTri2Df*, func_remove : (Tri2Df* -> Void))
  fun arrst_tri2_df_write = arrst_Tri2Df_write(stream : Stream, array : ArrStTri2Df*, func_write : (Stream, Tri2Df* -> Void))
  fun arrst_tri2_df_write = arrst_Tri2Df_write(stream : Stream, array : ArrStTri2Df*, func_write : (Stream, Tri2Df* -> Void))
  fun arrst_tri2_df_size = arrst_Tri2Df_size(array : ArrStTri2Df*) : Uint32T
  fun arrst_tri2_df_size = arrst_Tri2Df_size(array : ArrStTri2Df*) : Uint32T
  fun arrst_tri2_df_get = arrst_Tri2Df_get(array : ArrStTri2Df*, pos : Uint32T) : Tri2Df*
  fun arrst_tri2_df_get = arrst_Tri2Df_get(array : ArrStTri2Df*, pos : Uint32T) : Tri2Df*
  fun arrst_tri2_df_get_const = arrst_Tri2Df_get_const(array : ArrStTri2Df*, pos : Uint32T) : Tri2Df*
  fun arrst_tri2_df_get_const = arrst_Tri2Df_get_const(array : ArrStTri2Df*, pos : Uint32T) : Tri2Df*
  fun arrst_tri2_df_last = arrst_Tri2Df_last(array : ArrStTri2Df*) : Tri2Df*
  fun arrst_tri2_df_last = arrst_Tri2Df_last(array : ArrStTri2Df*) : Tri2Df*
  fun arrst_tri2_df_last_const = arrst_Tri2Df_last_const(array : ArrStTri2Df*) : Tri2Df*
  fun arrst_tri2_df_last_const = arrst_Tri2Df_last_const(array : ArrStTri2Df*) : Tri2Df*
  fun arrst_tri2_df_all = arrst_Tri2Df_all(array : ArrStTri2Df*) : Tri2Df*
  fun arrst_tri2_df_all = arrst_Tri2Df_all(array : ArrStTri2Df*) : Tri2Df*
  fun arrst_tri2_df_all_const = arrst_Tri2Df_all_const(array : ArrStTri2Df*) : Tri2Df*
  fun arrst_tri2_df_all_const = arrst_Tri2Df_all_const(array : ArrStTri2Df*) : Tri2Df*
  fun arrst_tri2_df_insert = arrst_Tri2Df_insert(array : ArrStTri2Df*, pos : Uint32T, n : Uint32T) : Tri2Df*
  fun arrst_tri2_df_insert = arrst_Tri2Df_insert(array : ArrStTri2Df*, pos : Uint32T, n : Uint32T) : Tri2Df*
  fun arrst_tri2_df_insert0 = arrst_Tri2Df_insert0(array : ArrStTri2Df*, pos : Uint32T, n : Uint32T) : Tri2Df*
  fun arrst_tri2_df_insert0 = arrst_Tri2Df_insert0(array : ArrStTri2Df*, pos : Uint32T, n : Uint32T) : Tri2Df*
  fun arrst_tri2_df_join = arrst_Tri2Df_join(dest : ArrStTri2Df*, src : ArrStTri2Df*, func_copy : (Tri2Df*, Tri2Df* -> Void))
  fun arrst_tri2_df_join = arrst_Tri2Df_join(dest : ArrStTri2Df*, src : ArrStTri2Df*, func_copy : (Tri2Df*, Tri2Df* -> Void))
  fun arrst_tri2_df_delete = arrst_Tri2Df_delete(array : ArrStTri2Df*, pos : Uint32T, func_remove : (Tri2Df* -> Void))
  fun arrst_tri2_df_delete = arrst_Tri2Df_delete(array : ArrStTri2Df*, pos : Uint32T, func_remove : (Tri2Df* -> Void))
  fun arrst_tri2_df_pop = arrst_Tri2Df_pop(array : ArrStTri2Df*, func_remove : (Tri2Df* -> Void))
  fun arrst_tri2_df_pop = arrst_Tri2Df_pop(array : ArrStTri2Df*, func_remove : (Tri2Df* -> Void))
  fun arrst_tri2_df_sort = arrst_Tri2Df_sort(array : ArrStTri2Df*, func_compare : (Tri2Df*, Tri2Df* -> LibC::Int))
  fun arrst_tri2_df_sort = arrst_Tri2Df_sort(array : ArrStTri2Df*, func_compare : (Tri2Df*, Tri2Df* -> LibC::Int))
  fun arrst_tri2_df_sort_ex = arrst_Tri2Df_sort_ex(array : ArrStTri2Df*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_tri2_df_sort_ex = arrst_Tri2Df_sort_ex(array : ArrStTri2Df*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_tri2_df_search = arrst_Tri2Df_search(array : ArrStTri2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Tri2Df*
  fun arrst_tri2_df_search = arrst_Tri2Df_search(array : ArrStTri2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Tri2Df*
  fun arrst_tri2_df_search_const = arrst_Tri2Df_search_const(array : ArrStTri2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Tri2Df*
  fun arrst_tri2_df_search_const = arrst_Tri2Df_search_const(array : ArrStTri2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Tri2Df*
  fun arrst_tri2_df_bsearch = arrst_Tri2Df_bsearch(array : ArrStTri2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Tri2Df*
  fun arrst_tri2_df_bsearch = arrst_Tri2Df_bsearch(array : ArrStTri2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Tri2Df*
  fun arrst_tri2_df_bsearch_const = arrst_Tri2Df_bsearch_const(array : ArrStTri2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Tri2Df*
  fun arrst_tri2_df_bsearch_const = arrst_Tri2Df_bsearch_const(array : ArrStTri2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Tri2Df*
  fun arrst_tri2_df_end = arrst_Tri2Df_end
  fun setst_tri2_df_create = setst_Tri2Df_create(func_compare : (Tri2Df*, Tri2Df* -> LibC::Int), esize : Uint16T) : SetStTri2Df*

  struct SetStTri2Df
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStTri2Df*
    func_compare : FPtrCompare
  end

  struct NodeStTri2Df
    rb : Uint32T
    left : NodeStTri2Df*
    right : NodeStTri2Df*
    data : Tri2Df
  end

  fun setst_tri2_df_create = setst_Tri2Df_create(func_compare : (Tri2Df*, Tri2Df* -> LibC::Int), esize : Uint16T) : SetStTri2Df*
  fun setst_tri2_df_destroy = setst_Tri2Df_destroy(set : SetStTri2Df**, func_remove : (Tri2Df* -> Void))
  fun setst_tri2_df_destroy = setst_Tri2Df_destroy(set : SetStTri2Df**, func_remove : (Tri2Df* -> Void))
  fun setst_tri2_df_size = setst_Tri2Df_size(set : SetStTri2Df*) : Uint32T
  fun setst_tri2_df_size = setst_Tri2Df_size(set : SetStTri2Df*) : Uint32T
  fun setst_tri2_df_get = setst_Tri2Df_get(set : SetStTri2Df*, key : Tri2Df*) : Tri2Df*
  fun setst_tri2_df_get = setst_Tri2Df_get(set : SetStTri2Df*, key : Tri2Df*) : Tri2Df*
  fun setst_tri2_df_get_const = setst_Tri2Df_get_const(set : SetStTri2Df*, key : Tri2Df*) : Tri2Df*
  fun setst_tri2_df_get_const = setst_Tri2Df_get_const(set : SetStTri2Df*, key : Tri2Df*) : Tri2Df*
  fun setst_tri2_df_insert = setst_Tri2Df_insert(set : SetStTri2Df*, key : Tri2Df*) : Tri2Df*
  fun setst_tri2_df_insert = setst_Tri2Df_insert(set : SetStTri2Df*, key : Tri2Df*) : Tri2Df*
  fun setst_tri2_df_delete = setst_Tri2Df_delete(set : SetStTri2Df*, key : Tri2Df*, func_remove : (Tri2Df* -> Void)) : BoolT
  fun setst_tri2_df_delete = setst_Tri2Df_delete(set : SetStTri2Df*, key : Tri2Df*, func_remove : (Tri2Df* -> Void)) : BoolT
  fun setst_tri2_df_first = setst_Tri2Df_first(set : SetStTri2Df*) : Tri2Df*
  fun setst_tri2_df_first = setst_Tri2Df_first(set : SetStTri2Df*) : Tri2Df*
  fun setst_tri2_df_first_const = setst_Tri2Df_first_const(set : SetStTri2Df*) : Tri2Df*
  fun setst_tri2_df_first_const = setst_Tri2Df_first_const(set : SetStTri2Df*) : Tri2Df*
  fun setst_tri2_df_last = setst_Tri2Df_last(set : SetStTri2Df*) : Tri2Df*
  fun setst_tri2_df_last = setst_Tri2Df_last(set : SetStTri2Df*) : Tri2Df*
  fun setst_tri2_df_last_const = setst_Tri2Df_last_const(set : SetStTri2Df*) : Tri2Df*
  fun setst_tri2_df_last_const = setst_Tri2Df_last_const(set : SetStTri2Df*) : Tri2Df*
  fun setst_tri2_df_next = setst_Tri2Df_next(set : SetStTri2Df*) : Tri2Df*
  fun setst_tri2_df_next = setst_Tri2Df_next(set : SetStTri2Df*) : Tri2Df*
  fun setst_tri2_df_next_const = setst_Tri2Df_next_const(set : SetStTri2Df*) : Tri2Df*
  fun setst_tri2_df_next_const = setst_Tri2Df_next_const(set : SetStTri2Df*) : Tri2Df*
  fun setst_tri2_df_prev = setst_Tri2Df_prev(set : SetStTri2Df*) : Tri2Df*
  fun setst_tri2_df_prev = setst_Tri2Df_prev(set : SetStTri2Df*) : Tri2Df*
  fun setst_tri2_df_prev_const = setst_Tri2Df_prev_const(set : SetStTri2Df*) : Tri2Df*
  fun setst_tri2_df_prev_const = setst_Tri2Df_prev_const(set : SetStTri2Df*) : Tri2Df*
  fun setst_tri2_df_end = setst_Tri2Df_end
  fun arrst_tri2_dd_create = arrst_Tri2Dd_create(esize : Uint16T) : ArrStTri2Dd*

  struct ArrStTri2Dd
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : Tri2DdData*
  end

  struct Tri2DdData
    elem : Tri2Dd[1024]
  end

  struct X_Tri2ddT
    p0 : V2Dd
    p1 : V2Dd
    p2 : V2Dd
  end

  type Tri2Dd = X_Tri2ddT
  fun arrst_tri2_dd_create = arrst_Tri2Dd_create(esize : Uint16T) : ArrStTri2Dd*
  fun arrst_tri2_dd_copy = arrst_Tri2Dd_copy(array : ArrStTri2Dd*, func_copy : (Tri2Dd*, Tri2Dd* -> Void)) : ArrStTri2Dd*
  fun arrst_tri2_dd_copy = arrst_Tri2Dd_copy(array : ArrStTri2Dd*, func_copy : (Tri2Dd*, Tri2Dd* -> Void)) : ArrStTri2Dd*
  fun arrst_tri2_dd_read = arrst_Tri2Dd_read(stream : Stream, esize : Uint16T, func_read : (Stream, Tri2Dd* -> Void)) : ArrStTri2Dd*
  fun arrst_tri2_dd_read = arrst_Tri2Dd_read(stream : Stream, esize : Uint16T, func_read : (Stream, Tri2Dd* -> Void)) : ArrStTri2Dd*
  fun arrst_tri2_dd_destroy = arrst_Tri2Dd_destroy(array : ArrStTri2Dd**, func_remove : (Tri2Dd* -> Void))
  fun arrst_tri2_dd_destroy = arrst_Tri2Dd_destroy(array : ArrStTri2Dd**, func_remove : (Tri2Dd* -> Void))
  fun arrst_tri2_dd_destopt = arrst_Tri2Dd_destopt(array : ArrStTri2Dd**, func_remove : (Tri2Dd* -> Void))
  fun arrst_tri2_dd_destopt = arrst_Tri2Dd_destopt(array : ArrStTri2Dd**, func_remove : (Tri2Dd* -> Void))
  fun arrst_tri2_dd_clear = arrst_Tri2Dd_clear(array : ArrStTri2Dd*, func_remove : (Tri2Dd* -> Void))
  fun arrst_tri2_dd_clear = arrst_Tri2Dd_clear(array : ArrStTri2Dd*, func_remove : (Tri2Dd* -> Void))
  fun arrst_tri2_dd_write = arrst_Tri2Dd_write(stream : Stream, array : ArrStTri2Dd*, func_write : (Stream, Tri2Dd* -> Void))
  fun arrst_tri2_dd_write = arrst_Tri2Dd_write(stream : Stream, array : ArrStTri2Dd*, func_write : (Stream, Tri2Dd* -> Void))
  fun arrst_tri2_dd_size = arrst_Tri2Dd_size(array : ArrStTri2Dd*) : Uint32T
  fun arrst_tri2_dd_size = arrst_Tri2Dd_size(array : ArrStTri2Dd*) : Uint32T
  fun arrst_tri2_dd_get = arrst_Tri2Dd_get(array : ArrStTri2Dd*, pos : Uint32T) : Tri2Dd*
  fun arrst_tri2_dd_get = arrst_Tri2Dd_get(array : ArrStTri2Dd*, pos : Uint32T) : Tri2Dd*
  fun arrst_tri2_dd_get_const = arrst_Tri2Dd_get_const(array : ArrStTri2Dd*, pos : Uint32T) : Tri2Dd*
  fun arrst_tri2_dd_get_const = arrst_Tri2Dd_get_const(array : ArrStTri2Dd*, pos : Uint32T) : Tri2Dd*
  fun arrst_tri2_dd_last = arrst_Tri2Dd_last(array : ArrStTri2Dd*) : Tri2Dd*
  fun arrst_tri2_dd_last = arrst_Tri2Dd_last(array : ArrStTri2Dd*) : Tri2Dd*
  fun arrst_tri2_dd_last_const = arrst_Tri2Dd_last_const(array : ArrStTri2Dd*) : Tri2Dd*
  fun arrst_tri2_dd_last_const = arrst_Tri2Dd_last_const(array : ArrStTri2Dd*) : Tri2Dd*
  fun arrst_tri2_dd_all = arrst_Tri2Dd_all(array : ArrStTri2Dd*) : Tri2Dd*
  fun arrst_tri2_dd_all = arrst_Tri2Dd_all(array : ArrStTri2Dd*) : Tri2Dd*
  fun arrst_tri2_dd_all_const = arrst_Tri2Dd_all_const(array : ArrStTri2Dd*) : Tri2Dd*
  fun arrst_tri2_dd_all_const = arrst_Tri2Dd_all_const(array : ArrStTri2Dd*) : Tri2Dd*
  fun arrst_tri2_dd_insert = arrst_Tri2Dd_insert(array : ArrStTri2Dd*, pos : Uint32T, n : Uint32T) : Tri2Dd*
  fun arrst_tri2_dd_insert = arrst_Tri2Dd_insert(array : ArrStTri2Dd*, pos : Uint32T, n : Uint32T) : Tri2Dd*
  fun arrst_tri2_dd_insert0 = arrst_Tri2Dd_insert0(array : ArrStTri2Dd*, pos : Uint32T, n : Uint32T) : Tri2Dd*
  fun arrst_tri2_dd_insert0 = arrst_Tri2Dd_insert0(array : ArrStTri2Dd*, pos : Uint32T, n : Uint32T) : Tri2Dd*
  fun arrst_tri2_dd_join = arrst_Tri2Dd_join(dest : ArrStTri2Dd*, src : ArrStTri2Dd*, func_copy : (Tri2Dd*, Tri2Dd* -> Void))
  fun arrst_tri2_dd_join = arrst_Tri2Dd_join(dest : ArrStTri2Dd*, src : ArrStTri2Dd*, func_copy : (Tri2Dd*, Tri2Dd* -> Void))
  fun arrst_tri2_dd_delete = arrst_Tri2Dd_delete(array : ArrStTri2Dd*, pos : Uint32T, func_remove : (Tri2Dd* -> Void))
  fun arrst_tri2_dd_delete = arrst_Tri2Dd_delete(array : ArrStTri2Dd*, pos : Uint32T, func_remove : (Tri2Dd* -> Void))
  fun arrst_tri2_dd_pop = arrst_Tri2Dd_pop(array : ArrStTri2Dd*, func_remove : (Tri2Dd* -> Void))
  fun arrst_tri2_dd_pop = arrst_Tri2Dd_pop(array : ArrStTri2Dd*, func_remove : (Tri2Dd* -> Void))
  fun arrst_tri2_dd_sort = arrst_Tri2Dd_sort(array : ArrStTri2Dd*, func_compare : (Tri2Dd*, Tri2Dd* -> LibC::Int))
  fun arrst_tri2_dd_sort = arrst_Tri2Dd_sort(array : ArrStTri2Dd*, func_compare : (Tri2Dd*, Tri2Dd* -> LibC::Int))
  fun arrst_tri2_dd_sort_ex = arrst_Tri2Dd_sort_ex(array : ArrStTri2Dd*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_tri2_dd_sort_ex = arrst_Tri2Dd_sort_ex(array : ArrStTri2Dd*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_tri2_dd_search = arrst_Tri2Dd_search(array : ArrStTri2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Tri2Dd*
  fun arrst_tri2_dd_search = arrst_Tri2Dd_search(array : ArrStTri2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Tri2Dd*
  fun arrst_tri2_dd_search_const = arrst_Tri2Dd_search_const(array : ArrStTri2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Tri2Dd*
  fun arrst_tri2_dd_search_const = arrst_Tri2Dd_search_const(array : ArrStTri2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Tri2Dd*
  fun arrst_tri2_dd_bsearch = arrst_Tri2Dd_bsearch(array : ArrStTri2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Tri2Dd*
  fun arrst_tri2_dd_bsearch = arrst_Tri2Dd_bsearch(array : ArrStTri2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Tri2Dd*
  fun arrst_tri2_dd_bsearch_const = arrst_Tri2Dd_bsearch_const(array : ArrStTri2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Tri2Dd*
  fun arrst_tri2_dd_bsearch_const = arrst_Tri2Dd_bsearch_const(array : ArrStTri2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Tri2Dd*
  fun arrst_tri2_dd_end = arrst_Tri2Dd_end
  fun setst_tri2_dd_create = setst_Tri2Dd_create(func_compare : (Tri2Dd*, Tri2Dd* -> LibC::Int), esize : Uint16T) : SetStTri2Dd*

  struct SetStTri2Dd
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStTri2Dd*
    func_compare : FPtrCompare
  end

  struct NodeStTri2Dd
    rb : Uint32T
    left : NodeStTri2Dd*
    right : NodeStTri2Dd*
    data : Tri2Dd
  end

  fun setst_tri2_dd_create = setst_Tri2Dd_create(func_compare : (Tri2Dd*, Tri2Dd* -> LibC::Int), esize : Uint16T) : SetStTri2Dd*
  fun setst_tri2_dd_destroy = setst_Tri2Dd_destroy(set : SetStTri2Dd**, func_remove : (Tri2Dd* -> Void))
  fun setst_tri2_dd_destroy = setst_Tri2Dd_destroy(set : SetStTri2Dd**, func_remove : (Tri2Dd* -> Void))
  fun setst_tri2_dd_size = setst_Tri2Dd_size(set : SetStTri2Dd*) : Uint32T
  fun setst_tri2_dd_size = setst_Tri2Dd_size(set : SetStTri2Dd*) : Uint32T
  fun setst_tri2_dd_get = setst_Tri2Dd_get(set : SetStTri2Dd*, key : Tri2Dd*) : Tri2Dd*
  fun setst_tri2_dd_get = setst_Tri2Dd_get(set : SetStTri2Dd*, key : Tri2Dd*) : Tri2Dd*
  fun setst_tri2_dd_get_const = setst_Tri2Dd_get_const(set : SetStTri2Dd*, key : Tri2Dd*) : Tri2Dd*
  fun setst_tri2_dd_get_const = setst_Tri2Dd_get_const(set : SetStTri2Dd*, key : Tri2Dd*) : Tri2Dd*
  fun setst_tri2_dd_insert = setst_Tri2Dd_insert(set : SetStTri2Dd*, key : Tri2Dd*) : Tri2Dd*
  fun setst_tri2_dd_insert = setst_Tri2Dd_insert(set : SetStTri2Dd*, key : Tri2Dd*) : Tri2Dd*
  fun setst_tri2_dd_delete = setst_Tri2Dd_delete(set : SetStTri2Dd*, key : Tri2Dd*, func_remove : (Tri2Dd* -> Void)) : BoolT
  fun setst_tri2_dd_delete = setst_Tri2Dd_delete(set : SetStTri2Dd*, key : Tri2Dd*, func_remove : (Tri2Dd* -> Void)) : BoolT
  fun setst_tri2_dd_first = setst_Tri2Dd_first(set : SetStTri2Dd*) : Tri2Dd*
  fun setst_tri2_dd_first = setst_Tri2Dd_first(set : SetStTri2Dd*) : Tri2Dd*
  fun setst_tri2_dd_first_const = setst_Tri2Dd_first_const(set : SetStTri2Dd*) : Tri2Dd*
  fun setst_tri2_dd_first_const = setst_Tri2Dd_first_const(set : SetStTri2Dd*) : Tri2Dd*
  fun setst_tri2_dd_last = setst_Tri2Dd_last(set : SetStTri2Dd*) : Tri2Dd*
  fun setst_tri2_dd_last = setst_Tri2Dd_last(set : SetStTri2Dd*) : Tri2Dd*
  fun setst_tri2_dd_last_const = setst_Tri2Dd_last_const(set : SetStTri2Dd*) : Tri2Dd*
  fun setst_tri2_dd_last_const = setst_Tri2Dd_last_const(set : SetStTri2Dd*) : Tri2Dd*
  fun setst_tri2_dd_next = setst_Tri2Dd_next(set : SetStTri2Dd*) : Tri2Dd*
  fun setst_tri2_dd_next = setst_Tri2Dd_next(set : SetStTri2Dd*) : Tri2Dd*
  fun setst_tri2_dd_next_const = setst_Tri2Dd_next_const(set : SetStTri2Dd*) : Tri2Dd*
  fun setst_tri2_dd_next_const = setst_Tri2Dd_next_const(set : SetStTri2Dd*) : Tri2Dd*
  fun setst_tri2_dd_prev = setst_Tri2Dd_prev(set : SetStTri2Dd*) : Tri2Dd*
  fun setst_tri2_dd_prev = setst_Tri2Dd_prev(set : SetStTri2Dd*) : Tri2Dd*
  fun setst_tri2_dd_prev_const = setst_Tri2Dd_prev_const(set : SetStTri2Dd*) : Tri2Dd*
  fun setst_tri2_dd_prev_const = setst_Tri2Dd_prev_const(set : SetStTri2Dd*) : Tri2Dd*
  fun setst_tri2_dd_end = setst_Tri2Dd_end
  fun arrpt_pol2_df_create = arrpt_Pol2Df_create(esize : Uint16T) : ArrPtPol2Df*

  struct ArrPtPol2Df
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : Pol2DfPtData*
  end

  struct Pol2DfPtData
    elem : Pol2Df[1024]
  end

  type Pol2Df = Void*
  fun arrpt_pol2_df_create = arrpt_Pol2Df_create(esize : Uint16T) : ArrPtPol2Df*
  fun arrpt_pol2_df_copy = arrpt_Pol2Df_copy(array : ArrPtPol2Df*, func_copy : (Pol2Df -> Pol2Df)) : ArrPtPol2Df*
  fun arrpt_pol2_df_copy = arrpt_Pol2Df_copy(array : ArrPtPol2Df*, func_copy : (Pol2Df -> Pol2Df)) : ArrPtPol2Df*
  fun arrpt_pol2_df_read = arrpt_Pol2Df_read(stream : Stream, func_read : (Stream -> Pol2Df)) : ArrPtPol2Df*
  fun arrpt_pol2_df_read = arrpt_Pol2Df_read(stream : Stream, func_read : (Stream -> Pol2Df)) : ArrPtPol2Df*
  fun arrpt_pol2_df_destroy = arrpt_Pol2Df_destroy(array : ArrPtPol2Df**, func_destroy : (Pol2Df* -> Void))
  fun arrpt_pol2_df_destroy = arrpt_Pol2Df_destroy(array : ArrPtPol2Df**, func_destroy : (Pol2Df* -> Void))
  fun arrpt_pol2_df_destopt = arrpt_Pol2Df_destopt(array : ArrPtPol2Df**, func_destroy : (Pol2Df* -> Void))
  fun arrpt_pol2_df_destopt = arrpt_Pol2Df_destopt(array : ArrPtPol2Df**, func_destroy : (Pol2Df* -> Void))
  fun arrpt_pol2_df_clear = arrpt_Pol2Df_clear(array : ArrPtPol2Df*, func_destroy : (Pol2Df* -> Void))
  fun arrpt_pol2_df_clear = arrpt_Pol2Df_clear(array : ArrPtPol2Df*, func_destroy : (Pol2Df* -> Void))
  fun arrpt_pol2_df_write = arrpt_Pol2Df_write(stream : Stream, array : ArrPtPol2Df*, func_write : (Stream, Pol2Df -> Void))
  fun arrpt_pol2_df_write = arrpt_Pol2Df_write(stream : Stream, array : ArrPtPol2Df*, func_write : (Stream, Pol2Df -> Void))
  fun arrpt_pol2_df_size = arrpt_Pol2Df_size(array : ArrPtPol2Df*) : Uint32T
  fun arrpt_pol2_df_size = arrpt_Pol2Df_size(array : ArrPtPol2Df*) : Uint32T
  fun arrpt_pol2_df_get = arrpt_Pol2Df_get(array : ArrPtPol2Df*, pos : Uint32T) : Pol2Df
  fun arrpt_pol2_df_get = arrpt_Pol2Df_get(array : ArrPtPol2Df*, pos : Uint32T) : Pol2Df
  fun arrpt_pol2_df_get_const = arrpt_Pol2Df_get_const(array : ArrPtPol2Df*, pos : Uint32T) : Pol2Df
  fun arrpt_pol2_df_get_const = arrpt_Pol2Df_get_const(array : ArrPtPol2Df*, pos : Uint32T) : Pol2Df
  fun arrpt_pol2_df_first = arrpt_Pol2Df_first(array : ArrPtPol2Df*) : Pol2Df
  fun arrpt_pol2_df_first = arrpt_Pol2Df_first(array : ArrPtPol2Df*) : Pol2Df
  fun arrpt_pol2_df_first_const = arrpt_Pol2Df_first_const(array : ArrPtPol2Df*) : Pol2Df
  fun arrpt_pol2_df_first_const = arrpt_Pol2Df_first_const(array : ArrPtPol2Df*) : Pol2Df
  fun arrpt_pol2_df_last = arrpt_Pol2Df_last(array : ArrPtPol2Df*) : Pol2Df
  fun arrpt_pol2_df_last = arrpt_Pol2Df_last(array : ArrPtPol2Df*) : Pol2Df
  fun arrpt_pol2_df_last_const = arrpt_Pol2Df_last_const(array : ArrPtPol2Df*) : Pol2Df
  fun arrpt_pol2_df_last_const = arrpt_Pol2Df_last_const(array : ArrPtPol2Df*) : Pol2Df
  fun arrpt_pol2_df_all = arrpt_Pol2Df_all(array : ArrPtPol2Df*) : Pol2Df*
  fun arrpt_pol2_df_all = arrpt_Pol2Df_all(array : ArrPtPol2Df*) : Pol2Df*
  fun arrpt_pol2_df_all_const = arrpt_Pol2Df_all_const(array : ArrPtPol2Df*) : Pol2Df*
  fun arrpt_pol2_df_all_const = arrpt_Pol2Df_all_const(array : ArrPtPol2Df*) : Pol2Df*
  fun arrpt_pol2_df_insert = arrpt_Pol2Df_insert(array : ArrPtPol2Df*, pos : Uint32T, n : Uint32T) : Pol2Df*
  fun arrpt_pol2_df_insert = arrpt_Pol2Df_insert(array : ArrPtPol2Df*, pos : Uint32T, n : Uint32T) : Pol2Df*
  fun arrpt_pol2_df_join = arrpt_Pol2Df_join(dest : ArrPtPol2Df*, src : ArrPtPol2Df*, func_copy : (Pol2Df -> Pol2Df))
  fun arrpt_pol2_df_join = arrpt_Pol2Df_join(dest : ArrPtPol2Df*, src : ArrPtPol2Df*, func_copy : (Pol2Df -> Pol2Df))
  fun arrpt_pol2_df_delete = arrpt_Pol2Df_delete(array : ArrPtPol2Df*, pos : Uint32T, func_destroy : (Pol2Df* -> Void))
  fun arrpt_pol2_df_delete = arrpt_Pol2Df_delete(array : ArrPtPol2Df*, pos : Uint32T, func_destroy : (Pol2Df* -> Void))
  fun arrpt_pol2_df_pop = arrpt_Pol2Df_pop(array : ArrPtPol2Df*, func_destroy : (Pol2Df* -> Void))
  fun arrpt_pol2_df_pop = arrpt_Pol2Df_pop(array : ArrPtPol2Df*, func_destroy : (Pol2Df* -> Void))
  fun arrpt_pol2_df_sort = arrpt_Pol2Df_sort(array : ArrPtPol2Df*, func_compare : (Pol2Df, Pol2Df -> LibC::Int))
  fun arrpt_pol2_df_sort = arrpt_Pol2Df_sort(array : ArrPtPol2Df*, func_compare : (Pol2Df, Pol2Df -> LibC::Int))
  fun arrpt_pol2_df_sort_ex = arrpt_Pol2Df_sort_ex(array : ArrPtPol2Df*, func_compare : FPtrCompareEx, data : Void*)
  fun arrpt_pol2_df_sort_ex = arrpt_Pol2Df_sort_ex(array : ArrPtPol2Df*, func_compare : FPtrCompareEx, data : Void*)
  fun arrpt_pol2_df_find = arrpt_Pol2Df_find(array : ArrPtPol2Df*, elem : Pol2Df) : Uint32T
  fun arrpt_pol2_df_find = arrpt_Pol2Df_find(array : ArrPtPol2Df*, elem : Pol2Df) : Uint32T
  fun arrpt_pol2_df_search = arrpt_Pol2Df_search(array : ArrPtPol2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Pol2Df
  fun arrpt_pol2_df_search = arrpt_Pol2Df_search(array : ArrPtPol2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Pol2Df
  fun arrpt_pol2_df_search_const = arrpt_Pol2Df_search_const(array : ArrPtPol2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Pol2Df
  fun arrpt_pol2_df_search_const = arrpt_Pol2Df_search_const(array : ArrPtPol2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Pol2Df
  fun arrpt_pol2_df_bsearch = arrpt_Pol2Df_bsearch(array : ArrPtPol2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Pol2Df
  fun arrpt_pol2_df_bsearch = arrpt_Pol2Df_bsearch(array : ArrPtPol2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Pol2Df
  fun arrpt_pol2_df_bsearch_const = arrpt_Pol2Df_bsearch_const(array : ArrPtPol2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Pol2Df
  fun arrpt_pol2_df_bsearch_const = arrpt_Pol2Df_bsearch_const(array : ArrPtPol2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Pol2Df
  fun arrpt_pol2_df_end = arrpt_Pol2Df_end
  fun setpt_pol2_df_create = setpt_Pol2Df_create(func_compare : (Pol2Df, Pol2Df -> LibC::Int), esize : Uint16T) : SetPtPol2Df*

  struct SetPtPol2Df
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodePtPol2Df*
    func_compare : FPtrCompare
  end

  struct NodePtPol2Df
    rb : Uint32T
    left : NodePtPol2Df*
    right : NodePtPol2Df*
    data : Pol2Df
  end

  fun setpt_pol2_df_create = setpt_Pol2Df_create(func_compare : (Pol2Df, Pol2Df -> LibC::Int), esize : Uint16T) : SetPtPol2Df*
  fun setpt_pol2_df_destroy = setpt_Pol2Df_destroy(set : SetPtPol2Df**, func_destroy : (Pol2Df* -> Void))
  fun setpt_pol2_df_destroy = setpt_Pol2Df_destroy(set : SetPtPol2Df**, func_destroy : (Pol2Df* -> Void))
  fun setpt_pol2_df_size = setpt_Pol2Df_size(set : SetPtPol2Df*) : Uint32T
  fun setpt_pol2_df_size = setpt_Pol2Df_size(set : SetPtPol2Df*) : Uint32T
  fun setpt_pol2_df_get = setpt_Pol2Df_get(set : SetPtPol2Df*, key : Pol2Df) : Pol2Df
  fun setpt_pol2_df_get = setpt_Pol2Df_get(set : SetPtPol2Df*, key : Pol2Df) : Pol2Df
  fun setpt_pol2_df_get_const = setpt_Pol2Df_get_const(set : SetPtPol2Df*, key : Pol2Df) : Pol2Df
  fun setpt_pol2_df_get_const = setpt_Pol2Df_get_const(set : SetPtPol2Df*, key : Pol2Df) : Pol2Df
  fun setpt_pol2_df_insert = setpt_Pol2Df_insert(set : SetPtPol2Df*, value : Pol2Df) : BoolT
  fun setpt_pol2_df_insert = setpt_Pol2Df_insert(set : SetPtPol2Df*, value : Pol2Df) : BoolT
  fun setpt_pol2_df_delete = setpt_Pol2Df_delete(set : SetPtPol2Df*, key : Pol2Df, func_destroy : (Pol2Df* -> Void)) : BoolT
  fun setpt_pol2_df_delete = setpt_Pol2Df_delete(set : SetPtPol2Df*, key : Pol2Df, func_destroy : (Pol2Df* -> Void)) : BoolT
  fun setpt_pol2_df_first = setpt_Pol2Df_first(set : SetPtPol2Df*) : Pol2Df
  fun setpt_pol2_df_first = setpt_Pol2Df_first(set : SetPtPol2Df*) : Pol2Df
  fun setpt_pol2_df_first_const = setpt_Pol2Df_first_const(set : SetPtPol2Df*) : Pol2Df
  fun setpt_pol2_df_first_const = setpt_Pol2Df_first_const(set : SetPtPol2Df*) : Pol2Df
  fun setpt_pol2_df_last = setpt_Pol2Df_last(set : SetPtPol2Df*) : Pol2Df
  fun setpt_pol2_df_last = setpt_Pol2Df_last(set : SetPtPol2Df*) : Pol2Df
  fun setpt_pol2_df_last_const = setpt_Pol2Df_last_const(set : SetPtPol2Df*) : Pol2Df
  fun setpt_pol2_df_last_const = setpt_Pol2Df_last_const(set : SetPtPol2Df*) : Pol2Df
  fun setpt_pol2_df_next = setpt_Pol2Df_next(set : SetPtPol2Df*) : Pol2Df
  fun setpt_pol2_df_next = setpt_Pol2Df_next(set : SetPtPol2Df*) : Pol2Df
  fun setpt_pol2_df_next_const = setpt_Pol2Df_next_const(set : SetPtPol2Df*) : Pol2Df
  fun setpt_pol2_df_next_const = setpt_Pol2Df_next_const(set : SetPtPol2Df*) : Pol2Df
  fun setpt_pol2_df_prev = setpt_Pol2Df_prev(set : SetPtPol2Df*) : Pol2Df
  fun setpt_pol2_df_prev = setpt_Pol2Df_prev(set : SetPtPol2Df*) : Pol2Df
  fun setpt_pol2_df_prev_const = setpt_Pol2Df_prev_const(set : SetPtPol2Df*) : Pol2Df
  fun setpt_pol2_df_prev_const = setpt_Pol2Df_prev_const(set : SetPtPol2Df*) : Pol2Df
  fun setpt_pol2_df_end = setpt_Pol2Df_end
  fun arrpt_pol2_dd_create = arrpt_Pol2Dd_create(esize : Uint16T) : ArrPtPol2Dd*

  struct ArrPtPol2Dd
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : Pol2DdPtData*
  end

  struct Pol2DdPtData
    elem : Pol2Dd[1024]
  end

  type Pol2Dd = Void*
  fun arrpt_pol2_dd_create = arrpt_Pol2Dd_create(esize : Uint16T) : ArrPtPol2Dd*
  fun arrpt_pol2_dd_copy = arrpt_Pol2Dd_copy(array : ArrPtPol2Dd*, func_copy : (Pol2Dd -> Pol2Dd)) : ArrPtPol2Dd*
  fun arrpt_pol2_dd_copy = arrpt_Pol2Dd_copy(array : ArrPtPol2Dd*, func_copy : (Pol2Dd -> Pol2Dd)) : ArrPtPol2Dd*
  fun arrpt_pol2_dd_read = arrpt_Pol2Dd_read(stream : Stream, func_read : (Stream -> Pol2Dd)) : ArrPtPol2Dd*
  fun arrpt_pol2_dd_read = arrpt_Pol2Dd_read(stream : Stream, func_read : (Stream -> Pol2Dd)) : ArrPtPol2Dd*
  fun arrpt_pol2_dd_destroy = arrpt_Pol2Dd_destroy(array : ArrPtPol2Dd**, func_destroy : (Pol2Dd* -> Void))
  fun arrpt_pol2_dd_destroy = arrpt_Pol2Dd_destroy(array : ArrPtPol2Dd**, func_destroy : (Pol2Dd* -> Void))
  fun arrpt_pol2_dd_destopt = arrpt_Pol2Dd_destopt(array : ArrPtPol2Dd**, func_destroy : (Pol2Dd* -> Void))
  fun arrpt_pol2_dd_destopt = arrpt_Pol2Dd_destopt(array : ArrPtPol2Dd**, func_destroy : (Pol2Dd* -> Void))
  fun arrpt_pol2_dd_clear = arrpt_Pol2Dd_clear(array : ArrPtPol2Dd*, func_destroy : (Pol2Dd* -> Void))
  fun arrpt_pol2_dd_clear = arrpt_Pol2Dd_clear(array : ArrPtPol2Dd*, func_destroy : (Pol2Dd* -> Void))
  fun arrpt_pol2_dd_write = arrpt_Pol2Dd_write(stream : Stream, array : ArrPtPol2Dd*, func_write : (Stream, Pol2Dd -> Void))
  fun arrpt_pol2_dd_write = arrpt_Pol2Dd_write(stream : Stream, array : ArrPtPol2Dd*, func_write : (Stream, Pol2Dd -> Void))
  fun arrpt_pol2_dd_size = arrpt_Pol2Dd_size(array : ArrPtPol2Dd*) : Uint32T
  fun arrpt_pol2_dd_size = arrpt_Pol2Dd_size(array : ArrPtPol2Dd*) : Uint32T
  fun arrpt_pol2_dd_get = arrpt_Pol2Dd_get(array : ArrPtPol2Dd*, pos : Uint32T) : Pol2Dd
  fun arrpt_pol2_dd_get = arrpt_Pol2Dd_get(array : ArrPtPol2Dd*, pos : Uint32T) : Pol2Dd
  fun arrpt_pol2_dd_get_const = arrpt_Pol2Dd_get_const(array : ArrPtPol2Dd*, pos : Uint32T) : Pol2Dd
  fun arrpt_pol2_dd_get_const = arrpt_Pol2Dd_get_const(array : ArrPtPol2Dd*, pos : Uint32T) : Pol2Dd
  fun arrpt_pol2_dd_first = arrpt_Pol2Dd_first(array : ArrPtPol2Dd*) : Pol2Dd
  fun arrpt_pol2_dd_first = arrpt_Pol2Dd_first(array : ArrPtPol2Dd*) : Pol2Dd
  fun arrpt_pol2_dd_first_const = arrpt_Pol2Dd_first_const(array : ArrPtPol2Dd*) : Pol2Dd
  fun arrpt_pol2_dd_first_const = arrpt_Pol2Dd_first_const(array : ArrPtPol2Dd*) : Pol2Dd
  fun arrpt_pol2_dd_last = arrpt_Pol2Dd_last(array : ArrPtPol2Dd*) : Pol2Dd
  fun arrpt_pol2_dd_last = arrpt_Pol2Dd_last(array : ArrPtPol2Dd*) : Pol2Dd
  fun arrpt_pol2_dd_last_const = arrpt_Pol2Dd_last_const(array : ArrPtPol2Dd*) : Pol2Dd
  fun arrpt_pol2_dd_last_const = arrpt_Pol2Dd_last_const(array : ArrPtPol2Dd*) : Pol2Dd
  fun arrpt_pol2_dd_all = arrpt_Pol2Dd_all(array : ArrPtPol2Dd*) : Pol2Dd*
  fun arrpt_pol2_dd_all = arrpt_Pol2Dd_all(array : ArrPtPol2Dd*) : Pol2Dd*
  fun arrpt_pol2_dd_all_const = arrpt_Pol2Dd_all_const(array : ArrPtPol2Dd*) : Pol2Dd*
  fun arrpt_pol2_dd_all_const = arrpt_Pol2Dd_all_const(array : ArrPtPol2Dd*) : Pol2Dd*
  fun arrpt_pol2_dd_insert = arrpt_Pol2Dd_insert(array : ArrPtPol2Dd*, pos : Uint32T, n : Uint32T) : Pol2Dd*
  fun arrpt_pol2_dd_insert = arrpt_Pol2Dd_insert(array : ArrPtPol2Dd*, pos : Uint32T, n : Uint32T) : Pol2Dd*
  fun arrpt_pol2_dd_join = arrpt_Pol2Dd_join(dest : ArrPtPol2Dd*, src : ArrPtPol2Dd*, func_copy : (Pol2Dd -> Pol2Dd))
  fun arrpt_pol2_dd_join = arrpt_Pol2Dd_join(dest : ArrPtPol2Dd*, src : ArrPtPol2Dd*, func_copy : (Pol2Dd -> Pol2Dd))
  fun arrpt_pol2_dd_delete = arrpt_Pol2Dd_delete(array : ArrPtPol2Dd*, pos : Uint32T, func_destroy : (Pol2Dd* -> Void))
  fun arrpt_pol2_dd_delete = arrpt_Pol2Dd_delete(array : ArrPtPol2Dd*, pos : Uint32T, func_destroy : (Pol2Dd* -> Void))
  fun arrpt_pol2_dd_pop = arrpt_Pol2Dd_pop(array : ArrPtPol2Dd*, func_destroy : (Pol2Dd* -> Void))
  fun arrpt_pol2_dd_pop = arrpt_Pol2Dd_pop(array : ArrPtPol2Dd*, func_destroy : (Pol2Dd* -> Void))
  fun arrpt_pol2_dd_sort = arrpt_Pol2Dd_sort(array : ArrPtPol2Dd*, func_compare : (Pol2Dd, Pol2Dd -> LibC::Int))
  fun arrpt_pol2_dd_sort = arrpt_Pol2Dd_sort(array : ArrPtPol2Dd*, func_compare : (Pol2Dd, Pol2Dd -> LibC::Int))
  fun arrpt_pol2_dd_sort_ex = arrpt_Pol2Dd_sort_ex(array : ArrPtPol2Dd*, func_compare : FPtrCompareEx, data : Void*)
  fun arrpt_pol2_dd_sort_ex = arrpt_Pol2Dd_sort_ex(array : ArrPtPol2Dd*, func_compare : FPtrCompareEx, data : Void*)
  fun arrpt_pol2_dd_find = arrpt_Pol2Dd_find(array : ArrPtPol2Dd*, elem : Pol2Dd) : Uint32T
  fun arrpt_pol2_dd_find = arrpt_Pol2Dd_find(array : ArrPtPol2Dd*, elem : Pol2Dd) : Uint32T
  fun arrpt_pol2_dd_search = arrpt_Pol2Dd_search(array : ArrPtPol2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Pol2Dd
  fun arrpt_pol2_dd_search = arrpt_Pol2Dd_search(array : ArrPtPol2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Pol2Dd
  fun arrpt_pol2_dd_search_const = arrpt_Pol2Dd_search_const(array : ArrPtPol2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Pol2Dd
  fun arrpt_pol2_dd_search_const = arrpt_Pol2Dd_search_const(array : ArrPtPol2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Pol2Dd
  fun arrpt_pol2_dd_bsearch = arrpt_Pol2Dd_bsearch(array : ArrPtPol2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Pol2Dd
  fun arrpt_pol2_dd_bsearch = arrpt_Pol2Dd_bsearch(array : ArrPtPol2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Pol2Dd
  fun arrpt_pol2_dd_bsearch_const = arrpt_Pol2Dd_bsearch_const(array : ArrPtPol2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Pol2Dd
  fun arrpt_pol2_dd_bsearch_const = arrpt_Pol2Dd_bsearch_const(array : ArrPtPol2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Pol2Dd
  fun arrpt_pol2_dd_end = arrpt_Pol2Dd_end
  fun setpt_pol2_dd_create = setpt_Pol2Dd_create(func_compare : (Pol2Dd, Pol2Dd -> LibC::Int), esize : Uint16T) : SetPtPol2Dd*

  struct SetPtPol2Dd
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodePtPol2Dd*
    func_compare : FPtrCompare
  end

  struct NodePtPol2Dd
    rb : Uint32T
    left : NodePtPol2Dd*
    right : NodePtPol2Dd*
    data : Pol2Dd
  end

  fun setpt_pol2_dd_create = setpt_Pol2Dd_create(func_compare : (Pol2Dd, Pol2Dd -> LibC::Int), esize : Uint16T) : SetPtPol2Dd*
  fun setpt_pol2_dd_destroy = setpt_Pol2Dd_destroy(set : SetPtPol2Dd**, func_destroy : (Pol2Dd* -> Void))
  fun setpt_pol2_dd_destroy = setpt_Pol2Dd_destroy(set : SetPtPol2Dd**, func_destroy : (Pol2Dd* -> Void))
  fun setpt_pol2_dd_size = setpt_Pol2Dd_size(set : SetPtPol2Dd*) : Uint32T
  fun setpt_pol2_dd_size = setpt_Pol2Dd_size(set : SetPtPol2Dd*) : Uint32T
  fun setpt_pol2_dd_get = setpt_Pol2Dd_get(set : SetPtPol2Dd*, key : Pol2Dd) : Pol2Dd
  fun setpt_pol2_dd_get = setpt_Pol2Dd_get(set : SetPtPol2Dd*, key : Pol2Dd) : Pol2Dd
  fun setpt_pol2_dd_get_const = setpt_Pol2Dd_get_const(set : SetPtPol2Dd*, key : Pol2Dd) : Pol2Dd
  fun setpt_pol2_dd_get_const = setpt_Pol2Dd_get_const(set : SetPtPol2Dd*, key : Pol2Dd) : Pol2Dd
  fun setpt_pol2_dd_insert = setpt_Pol2Dd_insert(set : SetPtPol2Dd*, value : Pol2Dd) : BoolT
  fun setpt_pol2_dd_insert = setpt_Pol2Dd_insert(set : SetPtPol2Dd*, value : Pol2Dd) : BoolT
  fun setpt_pol2_dd_delete = setpt_Pol2Dd_delete(set : SetPtPol2Dd*, key : Pol2Dd, func_destroy : (Pol2Dd* -> Void)) : BoolT
  fun setpt_pol2_dd_delete = setpt_Pol2Dd_delete(set : SetPtPol2Dd*, key : Pol2Dd, func_destroy : (Pol2Dd* -> Void)) : BoolT
  fun setpt_pol2_dd_first = setpt_Pol2Dd_first(set : SetPtPol2Dd*) : Pol2Dd
  fun setpt_pol2_dd_first = setpt_Pol2Dd_first(set : SetPtPol2Dd*) : Pol2Dd
  fun setpt_pol2_dd_first_const = setpt_Pol2Dd_first_const(set : SetPtPol2Dd*) : Pol2Dd
  fun setpt_pol2_dd_first_const = setpt_Pol2Dd_first_const(set : SetPtPol2Dd*) : Pol2Dd
  fun setpt_pol2_dd_last = setpt_Pol2Dd_last(set : SetPtPol2Dd*) : Pol2Dd
  fun setpt_pol2_dd_last = setpt_Pol2Dd_last(set : SetPtPol2Dd*) : Pol2Dd
  fun setpt_pol2_dd_last_const = setpt_Pol2Dd_last_const(set : SetPtPol2Dd*) : Pol2Dd
  fun setpt_pol2_dd_last_const = setpt_Pol2Dd_last_const(set : SetPtPol2Dd*) : Pol2Dd
  fun setpt_pol2_dd_next = setpt_Pol2Dd_next(set : SetPtPol2Dd*) : Pol2Dd
  fun setpt_pol2_dd_next = setpt_Pol2Dd_next(set : SetPtPol2Dd*) : Pol2Dd
  fun setpt_pol2_dd_next_const = setpt_Pol2Dd_next_const(set : SetPtPol2Dd*) : Pol2Dd
  fun setpt_pol2_dd_next_const = setpt_Pol2Dd_next_const(set : SetPtPol2Dd*) : Pol2Dd
  fun setpt_pol2_dd_prev = setpt_Pol2Dd_prev(set : SetPtPol2Dd*) : Pol2Dd
  fun setpt_pol2_dd_prev = setpt_Pol2Dd_prev(set : SetPtPol2Dd*) : Pol2Dd
  fun setpt_pol2_dd_prev_const = setpt_Pol2Dd_prev_const(set : SetPtPol2Dd*) : Pol2Dd
  fun setpt_pol2_dd_prev_const = setpt_Pol2Dd_prev_const(set : SetPtPol2Dd*) : Pol2Dd
  fun setpt_pol2_dd_end = setpt_Pol2Dd_end
  fun arrst_col2_df_create = arrst_Col2Df_create(esize : Uint16T) : ArrStCol2Df*

  struct ArrStCol2Df
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : Col2DfData*
  end

  struct Col2DfData
    elem : Col2Df[1024]
  end

  struct X_Col2dfT
    p : V2Df
    n : V2Df
    d : Real32T
  end

  type Col2Df = X_Col2dfT
  fun arrst_col2_df_create = arrst_Col2Df_create(esize : Uint16T) : ArrStCol2Df*
  fun arrst_col2_df_copy = arrst_Col2Df_copy(array : ArrStCol2Df*, func_copy : (Col2Df*, Col2Df* -> Void)) : ArrStCol2Df*
  fun arrst_col2_df_copy = arrst_Col2Df_copy(array : ArrStCol2Df*, func_copy : (Col2Df*, Col2Df* -> Void)) : ArrStCol2Df*
  fun arrst_col2_df_read = arrst_Col2Df_read(stream : Stream, esize : Uint16T, func_read : (Stream, Col2Df* -> Void)) : ArrStCol2Df*
  fun arrst_col2_df_read = arrst_Col2Df_read(stream : Stream, esize : Uint16T, func_read : (Stream, Col2Df* -> Void)) : ArrStCol2Df*
  fun arrst_col2_df_destroy = arrst_Col2Df_destroy(array : ArrStCol2Df**, func_remove : (Col2Df* -> Void))
  fun arrst_col2_df_destroy = arrst_Col2Df_destroy(array : ArrStCol2Df**, func_remove : (Col2Df* -> Void))
  fun arrst_col2_df_destopt = arrst_Col2Df_destopt(array : ArrStCol2Df**, func_remove : (Col2Df* -> Void))
  fun arrst_col2_df_destopt = arrst_Col2Df_destopt(array : ArrStCol2Df**, func_remove : (Col2Df* -> Void))
  fun arrst_col2_df_clear = arrst_Col2Df_clear(array : ArrStCol2Df*, func_remove : (Col2Df* -> Void))
  fun arrst_col2_df_clear = arrst_Col2Df_clear(array : ArrStCol2Df*, func_remove : (Col2Df* -> Void))
  fun arrst_col2_df_write = arrst_Col2Df_write(stream : Stream, array : ArrStCol2Df*, func_write : (Stream, Col2Df* -> Void))
  fun arrst_col2_df_write = arrst_Col2Df_write(stream : Stream, array : ArrStCol2Df*, func_write : (Stream, Col2Df* -> Void))
  fun arrst_col2_df_size = arrst_Col2Df_size(array : ArrStCol2Df*) : Uint32T
  fun arrst_col2_df_size = arrst_Col2Df_size(array : ArrStCol2Df*) : Uint32T
  fun arrst_col2_df_get = arrst_Col2Df_get(array : ArrStCol2Df*, pos : Uint32T) : Col2Df*
  fun arrst_col2_df_get = arrst_Col2Df_get(array : ArrStCol2Df*, pos : Uint32T) : Col2Df*
  fun arrst_col2_df_get_const = arrst_Col2Df_get_const(array : ArrStCol2Df*, pos : Uint32T) : Col2Df*
  fun arrst_col2_df_get_const = arrst_Col2Df_get_const(array : ArrStCol2Df*, pos : Uint32T) : Col2Df*
  fun arrst_col2_df_last = arrst_Col2Df_last(array : ArrStCol2Df*) : Col2Df*
  fun arrst_col2_df_last = arrst_Col2Df_last(array : ArrStCol2Df*) : Col2Df*
  fun arrst_col2_df_last_const = arrst_Col2Df_last_const(array : ArrStCol2Df*) : Col2Df*
  fun arrst_col2_df_last_const = arrst_Col2Df_last_const(array : ArrStCol2Df*) : Col2Df*
  fun arrst_col2_df_all = arrst_Col2Df_all(array : ArrStCol2Df*) : Col2Df*
  fun arrst_col2_df_all = arrst_Col2Df_all(array : ArrStCol2Df*) : Col2Df*
  fun arrst_col2_df_all_const = arrst_Col2Df_all_const(array : ArrStCol2Df*) : Col2Df*
  fun arrst_col2_df_all_const = arrst_Col2Df_all_const(array : ArrStCol2Df*) : Col2Df*
  fun arrst_col2_df_insert = arrst_Col2Df_insert(array : ArrStCol2Df*, pos : Uint32T, n : Uint32T) : Col2Df*
  fun arrst_col2_df_insert = arrst_Col2Df_insert(array : ArrStCol2Df*, pos : Uint32T, n : Uint32T) : Col2Df*
  fun arrst_col2_df_insert0 = arrst_Col2Df_insert0(array : ArrStCol2Df*, pos : Uint32T, n : Uint32T) : Col2Df*
  fun arrst_col2_df_insert0 = arrst_Col2Df_insert0(array : ArrStCol2Df*, pos : Uint32T, n : Uint32T) : Col2Df*
  fun arrst_col2_df_join = arrst_Col2Df_join(dest : ArrStCol2Df*, src : ArrStCol2Df*, func_copy : (Col2Df*, Col2Df* -> Void))
  fun arrst_col2_df_join = arrst_Col2Df_join(dest : ArrStCol2Df*, src : ArrStCol2Df*, func_copy : (Col2Df*, Col2Df* -> Void))
  fun arrst_col2_df_delete = arrst_Col2Df_delete(array : ArrStCol2Df*, pos : Uint32T, func_remove : (Col2Df* -> Void))
  fun arrst_col2_df_delete = arrst_Col2Df_delete(array : ArrStCol2Df*, pos : Uint32T, func_remove : (Col2Df* -> Void))
  fun arrst_col2_df_pop = arrst_Col2Df_pop(array : ArrStCol2Df*, func_remove : (Col2Df* -> Void))
  fun arrst_col2_df_pop = arrst_Col2Df_pop(array : ArrStCol2Df*, func_remove : (Col2Df* -> Void))
  fun arrst_col2_df_sort = arrst_Col2Df_sort(array : ArrStCol2Df*, func_compare : (Col2Df*, Col2Df* -> LibC::Int))
  fun arrst_col2_df_sort = arrst_Col2Df_sort(array : ArrStCol2Df*, func_compare : (Col2Df*, Col2Df* -> LibC::Int))
  fun arrst_col2_df_sort_ex = arrst_Col2Df_sort_ex(array : ArrStCol2Df*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_col2_df_sort_ex = arrst_Col2Df_sort_ex(array : ArrStCol2Df*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_col2_df_search = arrst_Col2Df_search(array : ArrStCol2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Col2Df*
  fun arrst_col2_df_search = arrst_Col2Df_search(array : ArrStCol2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Col2Df*
  fun arrst_col2_df_search_const = arrst_Col2Df_search_const(array : ArrStCol2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Col2Df*
  fun arrst_col2_df_search_const = arrst_Col2Df_search_const(array : ArrStCol2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Col2Df*
  fun arrst_col2_df_bsearch = arrst_Col2Df_bsearch(array : ArrStCol2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Col2Df*
  fun arrst_col2_df_bsearch = arrst_Col2Df_bsearch(array : ArrStCol2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Col2Df*
  fun arrst_col2_df_bsearch_const = arrst_Col2Df_bsearch_const(array : ArrStCol2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Col2Df*
  fun arrst_col2_df_bsearch_const = arrst_Col2Df_bsearch_const(array : ArrStCol2Df*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Col2Df*
  fun arrst_col2_df_end = arrst_Col2Df_end
  fun setst_col2_df_create = setst_Col2Df_create(func_compare : (Col2Df*, Col2Df* -> LibC::Int), esize : Uint16T) : SetStCol2Df*

  struct SetStCol2Df
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStCol2Df*
    func_compare : FPtrCompare
  end

  struct NodeStCol2Df
    rb : Uint32T
    left : NodeStCol2Df*
    right : NodeStCol2Df*
    data : Col2Df
  end

  fun setst_col2_df_create = setst_Col2Df_create(func_compare : (Col2Df*, Col2Df* -> LibC::Int), esize : Uint16T) : SetStCol2Df*
  fun setst_col2_df_destroy = setst_Col2Df_destroy(set : SetStCol2Df**, func_remove : (Col2Df* -> Void))
  fun setst_col2_df_destroy = setst_Col2Df_destroy(set : SetStCol2Df**, func_remove : (Col2Df* -> Void))
  fun setst_col2_df_size = setst_Col2Df_size(set : SetStCol2Df*) : Uint32T
  fun setst_col2_df_size = setst_Col2Df_size(set : SetStCol2Df*) : Uint32T
  fun setst_col2_df_get = setst_Col2Df_get(set : SetStCol2Df*, key : Col2Df*) : Col2Df*
  fun setst_col2_df_get = setst_Col2Df_get(set : SetStCol2Df*, key : Col2Df*) : Col2Df*
  fun setst_col2_df_get_const = setst_Col2Df_get_const(set : SetStCol2Df*, key : Col2Df*) : Col2Df*
  fun setst_col2_df_get_const = setst_Col2Df_get_const(set : SetStCol2Df*, key : Col2Df*) : Col2Df*
  fun setst_col2_df_insert = setst_Col2Df_insert(set : SetStCol2Df*, key : Col2Df*) : Col2Df*
  fun setst_col2_df_insert = setst_Col2Df_insert(set : SetStCol2Df*, key : Col2Df*) : Col2Df*
  fun setst_col2_df_delete = setst_Col2Df_delete(set : SetStCol2Df*, key : Col2Df*, func_remove : (Col2Df* -> Void)) : BoolT
  fun setst_col2_df_delete = setst_Col2Df_delete(set : SetStCol2Df*, key : Col2Df*, func_remove : (Col2Df* -> Void)) : BoolT
  fun setst_col2_df_first = setst_Col2Df_first(set : SetStCol2Df*) : Col2Df*
  fun setst_col2_df_first = setst_Col2Df_first(set : SetStCol2Df*) : Col2Df*
  fun setst_col2_df_first_const = setst_Col2Df_first_const(set : SetStCol2Df*) : Col2Df*
  fun setst_col2_df_first_const = setst_Col2Df_first_const(set : SetStCol2Df*) : Col2Df*
  fun setst_col2_df_last = setst_Col2Df_last(set : SetStCol2Df*) : Col2Df*
  fun setst_col2_df_last = setst_Col2Df_last(set : SetStCol2Df*) : Col2Df*
  fun setst_col2_df_last_const = setst_Col2Df_last_const(set : SetStCol2Df*) : Col2Df*
  fun setst_col2_df_last_const = setst_Col2Df_last_const(set : SetStCol2Df*) : Col2Df*
  fun setst_col2_df_next = setst_Col2Df_next(set : SetStCol2Df*) : Col2Df*
  fun setst_col2_df_next = setst_Col2Df_next(set : SetStCol2Df*) : Col2Df*
  fun setst_col2_df_next_const = setst_Col2Df_next_const(set : SetStCol2Df*) : Col2Df*
  fun setst_col2_df_next_const = setst_Col2Df_next_const(set : SetStCol2Df*) : Col2Df*
  fun setst_col2_df_prev = setst_Col2Df_prev(set : SetStCol2Df*) : Col2Df*
  fun setst_col2_df_prev = setst_Col2Df_prev(set : SetStCol2Df*) : Col2Df*
  fun setst_col2_df_prev_const = setst_Col2Df_prev_const(set : SetStCol2Df*) : Col2Df*
  fun setst_col2_df_prev_const = setst_Col2Df_prev_const(set : SetStCol2Df*) : Col2Df*
  fun setst_col2_df_end = setst_Col2Df_end
  fun arrst_col2_dd_create = arrst_Col2Dd_create(esize : Uint16T) : ArrStCol2Dd*

  struct ArrStCol2Dd
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : Col2DdData*
  end

  struct Col2DdData
    elem : Col2Dd[1024]
  end

  struct X_Col2ddT
    p : V2Dd
    n : V2Dd
    d : Real64T
  end

  type Col2Dd = X_Col2ddT
  fun arrst_col2_dd_create = arrst_Col2Dd_create(esize : Uint16T) : ArrStCol2Dd*
  fun arrst_col2_dd_copy = arrst_Col2Dd_copy(array : ArrStCol2Dd*, func_copy : (Col2Dd*, Col2Dd* -> Void)) : ArrStCol2Dd*
  fun arrst_col2_dd_copy = arrst_Col2Dd_copy(array : ArrStCol2Dd*, func_copy : (Col2Dd*, Col2Dd* -> Void)) : ArrStCol2Dd*
  fun arrst_col2_dd_read = arrst_Col2Dd_read(stream : Stream, esize : Uint16T, func_read : (Stream, Col2Dd* -> Void)) : ArrStCol2Dd*
  fun arrst_col2_dd_read = arrst_Col2Dd_read(stream : Stream, esize : Uint16T, func_read : (Stream, Col2Dd* -> Void)) : ArrStCol2Dd*
  fun arrst_col2_dd_destroy = arrst_Col2Dd_destroy(array : ArrStCol2Dd**, func_remove : (Col2Dd* -> Void))
  fun arrst_col2_dd_destroy = arrst_Col2Dd_destroy(array : ArrStCol2Dd**, func_remove : (Col2Dd* -> Void))
  fun arrst_col2_dd_destopt = arrst_Col2Dd_destopt(array : ArrStCol2Dd**, func_remove : (Col2Dd* -> Void))
  fun arrst_col2_dd_destopt = arrst_Col2Dd_destopt(array : ArrStCol2Dd**, func_remove : (Col2Dd* -> Void))
  fun arrst_col2_dd_clear = arrst_Col2Dd_clear(array : ArrStCol2Dd*, func_remove : (Col2Dd* -> Void))
  fun arrst_col2_dd_clear = arrst_Col2Dd_clear(array : ArrStCol2Dd*, func_remove : (Col2Dd* -> Void))
  fun arrst_col2_dd_write = arrst_Col2Dd_write(stream : Stream, array : ArrStCol2Dd*, func_write : (Stream, Col2Dd* -> Void))
  fun arrst_col2_dd_write = arrst_Col2Dd_write(stream : Stream, array : ArrStCol2Dd*, func_write : (Stream, Col2Dd* -> Void))
  fun arrst_col2_dd_size = arrst_Col2Dd_size(array : ArrStCol2Dd*) : Uint32T
  fun arrst_col2_dd_size = arrst_Col2Dd_size(array : ArrStCol2Dd*) : Uint32T
  fun arrst_col2_dd_get = arrst_Col2Dd_get(array : ArrStCol2Dd*, pos : Uint32T) : Col2Dd*
  fun arrst_col2_dd_get = arrst_Col2Dd_get(array : ArrStCol2Dd*, pos : Uint32T) : Col2Dd*
  fun arrst_col2_dd_get_const = arrst_Col2Dd_get_const(array : ArrStCol2Dd*, pos : Uint32T) : Col2Dd*
  fun arrst_col2_dd_get_const = arrst_Col2Dd_get_const(array : ArrStCol2Dd*, pos : Uint32T) : Col2Dd*
  fun arrst_col2_dd_last = arrst_Col2Dd_last(array : ArrStCol2Dd*) : Col2Dd*
  fun arrst_col2_dd_last = arrst_Col2Dd_last(array : ArrStCol2Dd*) : Col2Dd*
  fun arrst_col2_dd_last_const = arrst_Col2Dd_last_const(array : ArrStCol2Dd*) : Col2Dd*
  fun arrst_col2_dd_last_const = arrst_Col2Dd_last_const(array : ArrStCol2Dd*) : Col2Dd*
  fun arrst_col2_dd_all = arrst_Col2Dd_all(array : ArrStCol2Dd*) : Col2Dd*
  fun arrst_col2_dd_all = arrst_Col2Dd_all(array : ArrStCol2Dd*) : Col2Dd*
  fun arrst_col2_dd_all_const = arrst_Col2Dd_all_const(array : ArrStCol2Dd*) : Col2Dd*
  fun arrst_col2_dd_all_const = arrst_Col2Dd_all_const(array : ArrStCol2Dd*) : Col2Dd*
  fun arrst_col2_dd_insert = arrst_Col2Dd_insert(array : ArrStCol2Dd*, pos : Uint32T, n : Uint32T) : Col2Dd*
  fun arrst_col2_dd_insert = arrst_Col2Dd_insert(array : ArrStCol2Dd*, pos : Uint32T, n : Uint32T) : Col2Dd*
  fun arrst_col2_dd_insert0 = arrst_Col2Dd_insert0(array : ArrStCol2Dd*, pos : Uint32T, n : Uint32T) : Col2Dd*
  fun arrst_col2_dd_insert0 = arrst_Col2Dd_insert0(array : ArrStCol2Dd*, pos : Uint32T, n : Uint32T) : Col2Dd*
  fun arrst_col2_dd_join = arrst_Col2Dd_join(dest : ArrStCol2Dd*, src : ArrStCol2Dd*, func_copy : (Col2Dd*, Col2Dd* -> Void))
  fun arrst_col2_dd_join = arrst_Col2Dd_join(dest : ArrStCol2Dd*, src : ArrStCol2Dd*, func_copy : (Col2Dd*, Col2Dd* -> Void))
  fun arrst_col2_dd_delete = arrst_Col2Dd_delete(array : ArrStCol2Dd*, pos : Uint32T, func_remove : (Col2Dd* -> Void))
  fun arrst_col2_dd_delete = arrst_Col2Dd_delete(array : ArrStCol2Dd*, pos : Uint32T, func_remove : (Col2Dd* -> Void))
  fun arrst_col2_dd_pop = arrst_Col2Dd_pop(array : ArrStCol2Dd*, func_remove : (Col2Dd* -> Void))
  fun arrst_col2_dd_pop = arrst_Col2Dd_pop(array : ArrStCol2Dd*, func_remove : (Col2Dd* -> Void))
  fun arrst_col2_dd_sort = arrst_Col2Dd_sort(array : ArrStCol2Dd*, func_compare : (Col2Dd*, Col2Dd* -> LibC::Int))
  fun arrst_col2_dd_sort = arrst_Col2Dd_sort(array : ArrStCol2Dd*, func_compare : (Col2Dd*, Col2Dd* -> LibC::Int))
  fun arrst_col2_dd_sort_ex = arrst_Col2Dd_sort_ex(array : ArrStCol2Dd*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_col2_dd_sort_ex = arrst_Col2Dd_sort_ex(array : ArrStCol2Dd*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_col2_dd_search = arrst_Col2Dd_search(array : ArrStCol2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Col2Dd*
  fun arrst_col2_dd_search = arrst_Col2Dd_search(array : ArrStCol2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Col2Dd*
  fun arrst_col2_dd_search_const = arrst_Col2Dd_search_const(array : ArrStCol2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Col2Dd*
  fun arrst_col2_dd_search_const = arrst_Col2Dd_search_const(array : ArrStCol2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Col2Dd*
  fun arrst_col2_dd_bsearch = arrst_Col2Dd_bsearch(array : ArrStCol2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Col2Dd*
  fun arrst_col2_dd_bsearch = arrst_Col2Dd_bsearch(array : ArrStCol2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Col2Dd*
  fun arrst_col2_dd_bsearch_const = arrst_Col2Dd_bsearch_const(array : ArrStCol2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Col2Dd*
  fun arrst_col2_dd_bsearch_const = arrst_Col2Dd_bsearch_const(array : ArrStCol2Dd*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Col2Dd*
  fun arrst_col2_dd_end = arrst_Col2Dd_end
  fun setst_col2_dd_create = setst_Col2Dd_create(func_compare : (Col2Dd*, Col2Dd* -> LibC::Int), esize : Uint16T) : SetStCol2Dd*

  struct SetStCol2Dd
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStCol2Dd*
    func_compare : FPtrCompare
  end

  struct NodeStCol2Dd
    rb : Uint32T
    left : NodeStCol2Dd*
    right : NodeStCol2Dd*
    data : Col2Dd
  end

  fun setst_col2_dd_create = setst_Col2Dd_create(func_compare : (Col2Dd*, Col2Dd* -> LibC::Int), esize : Uint16T) : SetStCol2Dd*
  fun setst_col2_dd_destroy = setst_Col2Dd_destroy(set : SetStCol2Dd**, func_remove : (Col2Dd* -> Void))
  fun setst_col2_dd_destroy = setst_Col2Dd_destroy(set : SetStCol2Dd**, func_remove : (Col2Dd* -> Void))
  fun setst_col2_dd_size = setst_Col2Dd_size(set : SetStCol2Dd*) : Uint32T
  fun setst_col2_dd_size = setst_Col2Dd_size(set : SetStCol2Dd*) : Uint32T
  fun setst_col2_dd_get = setst_Col2Dd_get(set : SetStCol2Dd*, key : Col2Dd*) : Col2Dd*
  fun setst_col2_dd_get = setst_Col2Dd_get(set : SetStCol2Dd*, key : Col2Dd*) : Col2Dd*
  fun setst_col2_dd_get_const = setst_Col2Dd_get_const(set : SetStCol2Dd*, key : Col2Dd*) : Col2Dd*
  fun setst_col2_dd_get_const = setst_Col2Dd_get_const(set : SetStCol2Dd*, key : Col2Dd*) : Col2Dd*
  fun setst_col2_dd_insert = setst_Col2Dd_insert(set : SetStCol2Dd*, key : Col2Dd*) : Col2Dd*
  fun setst_col2_dd_insert = setst_Col2Dd_insert(set : SetStCol2Dd*, key : Col2Dd*) : Col2Dd*
  fun setst_col2_dd_delete = setst_Col2Dd_delete(set : SetStCol2Dd*, key : Col2Dd*, func_remove : (Col2Dd* -> Void)) : BoolT
  fun setst_col2_dd_delete = setst_Col2Dd_delete(set : SetStCol2Dd*, key : Col2Dd*, func_remove : (Col2Dd* -> Void)) : BoolT
  fun setst_col2_dd_first = setst_Col2Dd_first(set : SetStCol2Dd*) : Col2Dd*
  fun setst_col2_dd_first = setst_Col2Dd_first(set : SetStCol2Dd*) : Col2Dd*
  fun setst_col2_dd_first_const = setst_Col2Dd_first_const(set : SetStCol2Dd*) : Col2Dd*
  fun setst_col2_dd_first_const = setst_Col2Dd_first_const(set : SetStCol2Dd*) : Col2Dd*
  fun setst_col2_dd_last = setst_Col2Dd_last(set : SetStCol2Dd*) : Col2Dd*
  fun setst_col2_dd_last = setst_Col2Dd_last(set : SetStCol2Dd*) : Col2Dd*
  fun setst_col2_dd_last_const = setst_Col2Dd_last_const(set : SetStCol2Dd*) : Col2Dd*
  fun setst_col2_dd_last_const = setst_Col2Dd_last_const(set : SetStCol2Dd*) : Col2Dd*
  fun setst_col2_dd_next = setst_Col2Dd_next(set : SetStCol2Dd*) : Col2Dd*
  fun setst_col2_dd_next = setst_Col2Dd_next(set : SetStCol2Dd*) : Col2Dd*
  fun setst_col2_dd_next_const = setst_Col2Dd_next_const(set : SetStCol2Dd*) : Col2Dd*
  fun setst_col2_dd_next_const = setst_Col2Dd_next_const(set : SetStCol2Dd*) : Col2Dd*
  fun setst_col2_dd_prev = setst_Col2Dd_prev(set : SetStCol2Dd*) : Col2Dd*
  fun setst_col2_dd_prev = setst_Col2Dd_prev(set : SetStCol2Dd*) : Col2Dd*
  fun setst_col2_dd_prev_const = setst_Col2Dd_prev_const(set : SetStCol2Dd*) : Col2Dd*
  fun setst_col2_dd_prev_const = setst_Col2Dd_prev_const(set : SetStCol2Dd*) : Col2Dd*
  fun setst_col2_dd_end = setst_Col2Dd_end
  fun box2df(min_x : Real32T, min_y : Real32T, max_x : Real32T, max_y : Real32T) : Box2Df
  fun box2dd(min_x : Real64T, min_y : Real64T, max_x : Real64T, max_y : Real64T) : Box2Dd
  fun box2d_from_pointsf(p : V2Df*, n : Uint32T) : Box2Df
  fun box2d_from_pointsd(p : V2Dd*, n : Uint32T) : Box2Dd
  fun box2d_centerf(box : Box2Df*) : V2Df
  fun box2d_centerd(box : Box2Dd*) : V2Dd
  fun box2d_addf(box : Box2Df*, p : V2Df*)
  fun box2d_addd(box : Box2Dd*, p : V2Dd*)
  fun box2d_addnf(box : Box2Df*, p : V2Df*, n : Uint32T)
  fun box2d_addnd(box : Box2Dd*, p : V2Dd*, n : Uint32T)
  fun box2d_add_circlef(box : Box2Df*, cir : Cir2Df*)
  fun box2d_add_circled(box : Box2Dd*, cir : Cir2Dd*)
  fun box2d_mergef(dest : Box2Df*, src : Box2Df*)
  fun box2d_merged(dest : Box2Dd*, src : Box2Dd*)
  fun box2d_segmentsf(box : Box2Df*, segs : Seg2Df*)
  fun box2d_segmentsd(box : Box2Dd*, segs : Seg2Dd*)
  fun box2d_areaf(box : Box2Df*) : Real32T
  fun box2d_aread(box : Box2Dd*) : Real64T
  fun box2d_is_nullf(box : Box2Df*) : BoolT
  fun box2d_is_nulld(box : Box2Dd*) : BoolT
  fun cir2df(x : Real32T, y : Real32T, r : Real32T) : Cir2Df
  fun cir2dd(x : Real64T, y : Real64T, r : Real64T) : Cir2Dd
  fun cir2d_from_boxf(box : Box2Df*) : Cir2Df
  fun cir2d_from_boxd(box : Box2Dd*) : Cir2Dd
  fun cir2d_from_pointsf(p : V2Df*, n : Uint32T) : Cir2Df
  fun cir2d_from_pointsd(p : V2Dd*, n : Uint32T) : Cir2Dd
  fun cir2d_minimumf(p : V2Df*, n : Uint32T) : Cir2Df
  fun cir2d_minimumd(p : V2Dd*, n : Uint32T) : Cir2Dd
  fun cir2d_areaf(cir : Cir2Df*) : Real32T
  fun cir2d_aread(cir : Cir2Dd*) : Real64T
  fun cir2d_is_nullf(cir : Cir2Df*) : BoolT
  fun cir2d_is_nulld(cir : Cir2Dd*) : BoolT
  fun col2d_point_pointf(pnt1 : V2Df*, pnt2 : V2Df*, tol : Real32T, col : Col2Df*) : BoolT
  fun col2d_point_pointd(pnt1 : V2Dd*, pnt2 : V2Dd*, tol : Real64T, col : Col2Dd*) : BoolT
  fun col2d_segment_pointf(seg : Seg2Df*, pnt : V2Df*, tol : Real32T, col : Col2Df*) : BoolT
  fun col2d_segment_pointd(seg : Seg2Dd*, pnt : V2Dd*, tol : Real64T, col : Col2Dd*) : BoolT
  fun col2d_segment_segmentf(seg1 : Seg2Df*, seg2 : Seg2Df*, col : Col2Df*) : BoolT
  fun col2d_segment_segmentd(seg1 : Seg2Dd*, seg2 : Seg2Dd*, col : Col2Dd*) : BoolT
  fun col2d_circle_pointf(cir : Cir2Df*, pnt : V2Df*, col : Col2Df*) : BoolT
  fun col2d_circle_pointd(cir : Cir2Dd*, pnt : V2Dd*, col : Col2Dd*) : BoolT
  fun col2d_circle_segmentf(cir : Cir2Df*, seg : Seg2Df*, col : Col2Df*) : BoolT
  fun col2d_circle_segmentd(cir : Cir2Dd*, seg : Seg2Dd*, col : Col2Dd*) : BoolT
  fun col2d_circle_circlef(cir1 : Cir2Df*, cir2 : Cir2Df*, col : Col2Df*) : BoolT
  fun col2d_circle_circled(cir1 : Cir2Dd*, cir2 : Cir2Dd*, col : Col2Dd*) : BoolT
  fun col2d_box_pointf(box : Box2Df*, pnt : V2Df*, col : Col2Df*) : BoolT
  fun col2d_box_pointd(box : Box2Dd*, pnt : V2Dd*, col : Col2Dd*) : BoolT
  fun col2d_box_segmentf(box : Box2Df*, seg : Seg2Df*, col : Col2Df*) : BoolT
  fun col2d_box_segmentd(box : Box2Dd*, seg : Seg2Dd*, col : Col2Df*) : BoolT
  fun col2d_box_circlef(box : Box2Df*, cir : Cir2Df*, col : Col2Df*) : BoolT
  fun col2d_box_circled(box : Box2Dd*, cir : Cir2Dd*, col : Col2Dd*) : BoolT
  fun col2d_box_boxf(box1 : Box2Df*, box2 : Box2Df*, col : Col2Df*) : BoolT
  fun col2d_box_boxd(box1 : Box2Dd*, box2 : Box2Dd*, col : Col2Dd*) : BoolT
  fun col2d_obb_pointf(obb : Obb2Df, pnt : V2Df*, col : Col2Df*) : BoolT
  type Obb2Df = Void*
  fun col2d_obb_pointd(obb : Obb2Dd, pnt : V2Dd*, col : Col2Dd*) : BoolT
  type Obb2Dd = Void*
  fun col2d_obb_segmentf(obb : Obb2Df, seg : Seg2Df*, col : Col2Df*) : BoolT
  fun col2d_obb_segmentd(obb : Obb2Dd, seg : Seg2Dd*, col : Col2Dd*) : BoolT
  fun col2d_obb_circlef(obb : Obb2Df, cir : Cir2Df*, col : Col2Df*) : BoolT
  fun col2d_obb_circled(obb : Obb2Dd, cir : Cir2Dd*, col : Col2Dd*) : BoolT
  fun col2d_obb_boxf(obb : Obb2Df, box : Box2Df*, col : Col2Df*) : BoolT
  fun col2d_obb_boxd(obb : Obb2Dd, box : Box2Dd*, col : Col2Dd*) : BoolT
  fun col2d_obb_obbf(obb1 : Obb2Df, obb2 : Obb2Df, col : Col2Df*) : BoolT
  fun col2d_obb_obbd(obb1 : Obb2Dd, obb2 : Obb2Dd, col : Col2Dd*) : BoolT
  fun col2d_tri_pointf(tri : Tri2Df*, pnt : V2Df*, col : Col2Df*) : BoolT
  fun col2d_tri_pointd(tri : Tri2Dd*, pnt : V2Dd*, col : Col2Dd*) : BoolT
  fun col2d_tri_segmentf(tri : Tri2Df*, seg : Seg2Df*, col : Col2Df*) : BoolT
  fun col2d_tri_segmentd(tri : Tri2Dd*, seg : Seg2Dd*, col : Col2Dd*) : BoolT
  fun col2d_tri_circlef(tri : Tri2Df*, cir : Cir2Df*, col : Col2Df*) : BoolT
  fun col2d_tri_circled(tri : Tri2Dd*, cir : Cir2Df*, col : Col2Df*) : BoolT
  fun col2d_tri_boxf(tri : Tri2Df*, box : Box2Df*, col : Col2Df*) : BoolT
  fun col2d_tri_boxd(tri : Tri2Dd*, box : Box2Df*, col : Col2Df*) : BoolT
  fun col2d_tri_obbf(tri : Tri2Df*, obb : Obb2Df, col : Col2Df*) : BoolT
  fun col2d_tri_obbd(tri : Tri2Dd*, obb : Obb2Dd, col : Col2Dd*) : BoolT
  fun col2d_tri_trif(tri1 : Tri2Df*, tri2 : Tri2Df*, col : Col2Df*) : BoolT
  fun col2d_tri_trid(tri1 : Tri2Dd*, tri2 : Tri2Dd*, col : Col2Dd*) : BoolT
  fun col2d_poly_pointf(poly : Pol2Df, pnt : V2Df*, col : Col2Df*) : BoolT
  fun col2d_poly_pointd(poly : Pol2Dd, pnt : V2Dd*, col : Col2Dd*) : BoolT
  fun col2d_poly_segmentf(poly : Pol2Df, seg : Seg2Df*, col : Col2Df*) : BoolT
  fun col2d_poly_segmentd(poly : Pol2Dd, seg : Seg2Dd*, col : Col2Dd*) : BoolT
  fun col2d_poly_circlef(poly : Pol2Df, cir : Cir2Df*, col : Col2Df*) : BoolT
  fun col2d_poly_circled(poly : Pol2Dd, cir : Cir2Dd*, col : Col2Dd*) : BoolT
  fun col2d_poly_boxf(poly : Pol2Df, box : Box2Df*, col : Col2Df*) : BoolT
  fun col2d_poly_boxd(poly : Pol2Dd, box : Box2Dd*, col : Col2Dd*) : BoolT
  fun col2d_poly_obbf(poly : Pol2Df, obb : Obb2Df, col : Col2Df*) : BoolT
  fun col2d_poly_obbd(poly : Pol2Dd, obb : Obb2Dd, col : Col2Dd*) : BoolT
  fun col2d_poly_trif(poly : Pol2Df, tri : Tri2Df*, col : Col2Df*) : BoolT
  fun col2d_poly_trid(poly : Pol2Dd, tri : Tri2Dd*, col : Col2Dd*) : BoolT
  fun col2d_poly_polyf(poly1 : Pol2Df, poly2 : Pol2Df, col : Col2Df*) : BoolT
  fun col2d_poly_polyd(poly1 : Pol2Dd, poly2 : Pol2Dd, col : Col2Dd*) : BoolT
  fun obb2d_createf(center : V2Df*, width : Real32T, height : Real32T, angle : Real32T) : Obb2Df
  fun obb2d_created(center : V2Dd*, width : Real64T, height : Real64T, angle : Real64T) : Obb2Dd
  fun obb2d_from_linef(p0 : V2Df*, p1 : V2Df*, thickness : Real32T) : Obb2Df
  fun obb2d_from_lined(p0 : V2Dd*, p1 : V2Dd*, thickness : Real64T) : Obb2Dd
  fun obb2d_from_pointsf(p : V2Df*, n : Uint32T) : Obb2Df
  fun obb2d_from_pointsd(p : V2Dd*, n : Uint32T) : Obb2Dd
  fun obb2d_copyf(obb : Obb2Df) : Obb2Df
  fun obb2d_copyd(obb : Obb2Dd) : Obb2Dd
  fun obb2d_destroyf(obb : Obb2Df*)
  fun obb2d_destroyd(obb : Obb2Dd*)
  fun obb2d_updatef(obb : Obb2Df, center : V2Df*, width : Real32T, height : Real32T, angle : Real32T)
  fun obb2d_updated(obb : Obb2Dd, center : V2Dd*, width : Real64T, height : Real64T, angle : Real64T)
  fun obb2d_movef(obb : Obb2Df, offset_x : Real32T, offset_y : Real32T)
  fun obb2d_moved(obb : Obb2Dd, offset_x : Real64T, offset_y : Real64T)
  fun obb2d_transformf(obb : Obb2Df, t2d : T2Df*)
  fun obb2d_transformd(obb : Obb2Dd, t2d : T2Dd*)
  fun obb2d_cornersf(obb : Obb2Df) : V2Df*
  fun obb2d_cornersd(obb : Obb2Dd) : V2Dd*
  fun obb2d_centerf(obb : Obb2Df) : V2Df
  fun obb2d_centerd(obb : Obb2Dd) : V2Dd
  fun obb2d_widthf(obb : Obb2Df) : Real32T
  fun obb2d_widthd(obb : Obb2Dd) : Real64T
  fun obb2d_heightf(obb : Obb2Df) : Real32T
  fun obb2d_heightd(obb : Obb2Dd) : Real64T
  fun obb2d_anglef(obb : Obb2Df) : Real32T
  fun obb2d_angled(obb : Obb2Dd) : Real64T
  fun obb2d_areaf(obb : Obb2Df) : Real32T
  fun obb2d_aread(obb : Obb2Dd) : Real64T
  fun obb2d_boxf(obb : Obb2Df) : Box2Df
  fun obb2d_boxd(obb : Obb2Dd) : Box2Dd
  fun pol2d_createf(points : V2Df*, n : Uint32T) : Pol2Df
  fun pol2d_created(points : V2Dd*, n : Uint32T) : Pol2Dd
  fun pol2d_convex_hullf(points : V2Df*, n : Uint32T) : Pol2Df
  fun pol2d_convex_hulld(points : V2Dd*, n : Uint32T) : Pol2Dd
  fun pol2d_copyf(pol : Pol2Df) : Pol2Df
  fun pol2d_copyd(pol : Pol2Dd) : Pol2Dd
  fun pol2d_destroyf(pol : Pol2Df*)
  fun pol2d_destroyd(pol : Pol2Dd*)
  fun pol2d_transformf(pol : Pol2Df, t2d : T2Df*)
  fun pol2d_transformd(pol : Pol2Dd, t2d : T2Dd*)
  fun pol2d_pointsf(pol : Pol2Df) : V2Df*
  fun pol2d_pointsd(pol : Pol2Dd) : V2Dd*
  fun pol2d_nf(pol : Pol2Df) : Uint32T
  fun pol2d_nd(pol : Pol2Dd) : Uint32T
  fun pol2d_areaf(pol : Pol2Df) : Real32T
  fun pol2d_aread(pol : Pol2Dd) : Real64T
  fun pol2d_boxf(pol : Pol2Df) : Box2Df
  fun pol2d_boxd(pol : Pol2Dd) : Box2Dd
  fun pol2d_ccwf(pol : Pol2Df) : BoolT
  fun pol2d_ccwd(pol : Pol2Dd) : BoolT
  fun pol2d_convexf(pol : Pol2Df) : BoolT
  fun pol2d_convexd(pol : Pol2Dd) : BoolT
  fun pol2d_centroidf(pol : Pol2Df) : V2Df
  fun pol2d_centroidd(pol : Pol2Dd) : V2Dd
  fun pol2d_visual_centerf(pol : Pol2Df, norm_tol : Real32T) : V2Df
  fun pol2d_visual_centerd(pol : Pol2Dd, norm_tol : Real64T) : V2Dd
  fun pol2d_trianglesf(pol : Pol2Df) : ArrStTri2Df*
  fun pol2d_trianglesd(pol : Pol2Dd) : ArrStTri2Dd*
  fun pol2d_convex_partitionf(pol : Pol2Df) : ArrPtPol2Df*
  fun pol2d_convex_partitiond(pol : Pol2Dd) : ArrPtPol2Dd*
  fun r2df(x : Real32T, y : Real32T, width : Real32T, height : Real32T) : R2Df
  fun r2dd(x : Real64T, y : Real64T, width : Real64T, height : Real64T) : R2Dd
  fun r2d_centerf(r2d : R2Df*) : V2Df
  fun r2d_centerd(r2d : R2Dd*) : V2Dd
  fun r2d_collidef(r2d1 : R2Df*, r2d2 : R2Df*) : BoolT
  fun r2d_collided(r2d1 : R2Dd*, r2d2 : R2Dd*) : BoolT
  fun r2d_containsf(r2d : R2Df*, x : Real32T, y : Real32T) : BoolT
  fun r2d_containsd(r2d : R2Dd*, x : Real64T, y : Real64T) : BoolT
  fun r2d_clipf(viewport : R2Df*, r2d : R2Df*) : BoolT
  fun r2d_clipd(viewport : R2Dd*, r2d : R2Dd*) : BoolT
  fun r2d_joinf(r2d : R2Df*, src : R2Df*)
  fun r2d_joind(r2d : R2Dd*, src : R2Dd*)
  fun s2df(width : Real32T, height : Real32T) : S2Df
  fun s2di(width : Uint32T, height : Uint32T) : S2Df
  fun s2dd(width : Real64T, height : Real64T) : S2Dd
  fun seg2df(x0 : Real32T, y0 : Real32T, x1 : Real32T, y1 : Real32T) : Seg2Df
  fun seg2dd(x0 : Real64T, y0 : Real64T, x1 : Real64T, y1 : Real64T) : Seg2Dd
  fun seg2d_vf(p0 : V2Df*, p1 : V2Df*) : Seg2Df
  fun seg2d_vd(p0 : V2Dd*, p1 : V2Dd*) : Seg2Dd
  fun seg2d_lengthf(seg : Seg2Df*) : Real32T
  fun seg2d_lengthd(seg : Seg2Dd*) : Real64T
  fun seg2d_sqlengthf(seg : Seg2Df*) : Real32T
  fun seg2d_sqlengthd(seg : Seg2Dd*) : Real64T
  fun seg2d_evalf(seg : Seg2Df*, t : Real32T) : V2Df
  fun seg2d_evald(seg : Seg2Dd*, t : Real64T) : V2Dd
  fun seg2d_close_paramf(seg : Seg2Df*, pnt : V2Df*) : Real32T
  fun seg2d_close_paramd(seg : Seg2Dd*, pnt : V2Dd*) : Real64T
  fun seg2d_point_sqdistf(seg : Seg2Df*, pnt : V2Df*, t : Real32T*) : Real32T
  fun seg2d_point_sqdistd(seg : Seg2Dd*, pnt : V2Dd*, t : Real64T*) : Real64T
  fun seg2d_sqdistf(seg1 : Seg2Df*, seg2 : Seg2Df*, t1 : Real32T*, t2 : Real32T*) : Real32T
  fun seg2d_sqdistd(seg1 : Seg2Dd*, seg2 : Seg2Dd*, t1 : Real64T*, t2 : Real64T*) : Real64T
  fun t2d_tof(dest : T2Df*, src : T2Dd*)
  fun t2d_tod(dest : T2Dd*, src : T2Df*)
  fun t2d_movef(dest : T2Df*, src : T2Df*, x : Real32T, y : Real32T)
  fun t2d_moved(dest : T2Dd*, src : T2Dd*, x : Real64T, y : Real64T)
  fun t2d_rotatef(dest : T2Df*, src : T2Df*, angle : Real32T)
  fun t2d_rotated(dest : T2Dd*, src : T2Dd*, angle : Real64T)
  fun t2d_scalef(dest : T2Df*, src : T2Df*, sx : Real32T, sy : Real32T)
  fun t2d_scaled(dest : T2Dd*, src : T2Dd*, sx : Real64T, sy : Real64T)
  fun t2d_invfastf(dest : T2Df*, src : T2Df*)
  fun t2d_invfastd(dest : T2Dd*, src : T2Dd*)
  fun t2d_inversef(dest : T2Df*, src : T2Df*)
  fun t2d_inversed(dest : T2Dd*, src : T2Dd*)
  fun t2d_multf(dest : T2Df*, src1 : T2Df*, src2 : T2Df*)
  fun t2d_multd(dest : T2Dd*, src1 : T2Dd*, src2 : T2Dd*)
  fun t2d_vmultf(dest : V2Df*, t2d : T2Df*, src : V2Df*)
  fun t2d_vmultd(dest : V2Dd*, t2d : T2Dd*, src : V2Dd*)
  fun t2d_vmultnf(dest : V2Df*, t2d : T2Df*, src : V2Df*, n : Uint32T)
  fun t2d_vmultnd(dest : V2Dd*, t2d : T2Dd*, src : V2Dd*, n : Uint32T)
  fun t2d_decomposef(t2d : T2Df*, pos : V2Df*, angle : Real32T*, sc : V2Df*)
  fun t2d_decomposed(t2d : T2Dd*, pos : V2Dd*, angle : Real64T*, sc : V2Dd*)
  fun tri2df(x0 : Real32T, y0 : Real32T, x1 : Real32T, y1 : Real32T, x2 : Real32T, y2 : Real32T) : Tri2Df
  fun tri2dd(x0 : Real64T, y0 : Real64T, x1 : Real64T, y1 : Real64T, x2 : Real64T, y2 : Real64T) : Tri2Dd
  fun tri2d_vf(p0 : V2Df*, p1 : V2Df*, p2 : V2Df*) : Tri2Df
  fun tri2d_vd(p0 : V2Dd*, p1 : V2Dd*, p2 : V2Dd*) : Tri2Dd
  fun tri2d_transformf(tri : Tri2Df*, t2d : T2Df*)
  fun tri2d_transformd(tri : Tri2Dd*, t2d : T2Dd*)
  fun tri2d_areaf(tri : Tri2Df*) : Real32T
  fun tri2d_aread(tri : Tri2Dd*) : Real64T
  fun tri2d_ccwf(tri : Tri2Df*) : BoolT
  fun tri2d_ccwd(tri : Tri2Dd*) : BoolT
  fun tri2d_centroidf(tri : Tri2Df*) : V2Df
  fun tri2d_centroidd(tri : Tri2Dd*) : V2Dd
  fun v2df(x : Real32T, y : Real32T) : V2Df
  fun v2dd(x : Real64T, y : Real64T) : V2Dd
  fun v2d_tof(v : V2Dd*) : V2Df
  fun v2d_tod(v : V2Df*) : V2Dd
  fun v2d_tofn(vf : V2Df*, vd : V2Dd*, n : Uint32T)
  fun v2d_todn(vd : V2Dd*, vf : V2Df*, n : Uint32T)
  fun v2d_addf(v1 : V2Df*, v2 : V2Df*) : V2Df
  fun v2d_addd(v1 : V2Dd*, v2 : V2Dd*) : V2Dd
  fun v2d_subf(v1 : V2Df*, v2 : V2Df*) : V2Df
  fun v2d_subd(v1 : V2Dd*, v2 : V2Dd*) : V2Dd
  fun v2d_mulf(v : V2Df*, s : Real32T) : V2Df
  fun v2d_muld(v : V2Dd*, s : Real64T) : V2Dd
  fun v2d_fromf(v : V2Df*, dir : V2Df*, length : Real32T) : V2Df
  fun v2d_fromd(v : V2Dd*, dir : V2Dd*, length : Real64T) : V2Dd
  fun v2d_midf(v1 : V2Df*, v2 : V2Df*) : V2Df
  fun v2d_midd(v1 : V2Dd*, v2 : V2Dd*) : V2Dd
  fun v2d_unitf(v1 : V2Df*, v2 : V2Df*, dist : Real32T*) : V2Df
  fun v2d_unitd(v1 : V2Dd*, v2 : V2Dd*, dist : Real64T*) : V2Dd
  fun v2d_unit_xyf(x1 : Real32T, y1 : Real32T, x2 : Real32T, y2 : Real32T, dist : Real32T*) : V2Df
  fun v2d_unit_xyd(x1 : Real64T, y1 : Real64T, x2 : Real64T, y2 : Real64T, dist : Real64T*) : V2Dd
  fun v2d_perp_posf(v : V2Df*) : V2Df
  fun v2d_perp_posd(v : V2Dd*) : V2Dd
  fun v2d_perp_negf(v : V2Df*) : V2Df
  fun v2d_perp_negd(v : V2Dd*) : V2Dd
  fun v2d_from_anglef(a : Real32T) : V2Df
  fun v2d_from_angled(a : Real64T) : V2Dd
  fun v2d_normf(v : V2Df*) : BoolT
  fun v2d_normd(v : V2Dd*) : BoolT
  fun v2d_lengthf(v : V2Df*) : Real32T
  fun v2d_lengthd(v : V2Dd*) : Real64T
  fun v2d_sqlengthf(v : V2Df*) : Real32T
  fun v2d_sqlengthd(v : V2Dd*) : Real64T
  fun v2d_dotf(v1 : V2Df*, v2 : V2Df*) : Real32T
  fun v2d_dotd(v1 : V2Dd*, v2 : V2Dd*) : Real64T
  fun v2d_distf(v1 : V2Df*, v2 : V2Df*) : Real32T
  fun v2d_distd(v1 : V2Dd*, v2 : V2Dd*) : Real64T
  fun v2d_sqdistf(v1 : V2Df*, v2 : V2Df*) : Real32T
  fun v2d_sqdistd(v1 : V2Dd*, v2 : V2Dd*) : Real64T
  fun v2d_anglef(v1 : V2Df*, v2 : V2Df*) : Real32T
  fun v2d_angled(v1 : V2Dd*, v2 : V2Dd*) : Real64T
  fun v2d_rotatef(v : V2Df*, a : Real32T)
  fun v2d_rotated(v : V2Dd*, a : Real64T)

  struct ColorTData
    elem : ColorT[1024]
  end

  alias ColorT = Uint32T
  fun arrst_color_t_create(esize : Uint16T) : ArrStcolorT*

  struct ArrStcolorT
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : ColorTData*
  end

  fun arrst_color_t_create(esize : Uint16T) : ArrStcolorT*
  fun arrst_color_t_copy(array : ArrStcolorT*, func_copy : (ColorT*, ColorT* -> Void)) : ArrStcolorT*
  fun arrst_color_t_copy(array : ArrStcolorT*, func_copy : (ColorT*, ColorT* -> Void)) : ArrStcolorT*
  fun arrst_color_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, ColorT* -> Void)) : ArrStcolorT*
  fun arrst_color_t_read(stream : Stream, esize : Uint16T, func_read : (Stream, ColorT* -> Void)) : ArrStcolorT*
  fun arrst_color_t_destroy(array : ArrStcolorT**, func_remove : (ColorT* -> Void))
  fun arrst_color_t_destroy(array : ArrStcolorT**, func_remove : (ColorT* -> Void))
  fun arrst_color_t_destopt(array : ArrStcolorT**, func_remove : (ColorT* -> Void))
  fun arrst_color_t_destopt(array : ArrStcolorT**, func_remove : (ColorT* -> Void))
  fun arrst_color_t_clear(array : ArrStcolorT*, func_remove : (ColorT* -> Void))
  fun arrst_color_t_clear(array : ArrStcolorT*, func_remove : (ColorT* -> Void))
  fun arrst_color_t_write(stream : Stream, array : ArrStcolorT*, func_write : (Stream, ColorT* -> Void))
  fun arrst_color_t_write(stream : Stream, array : ArrStcolorT*, func_write : (Stream, ColorT* -> Void))
  fun arrst_color_t_size(array : ArrStcolorT*) : Uint32T
  fun arrst_color_t_size(array : ArrStcolorT*) : Uint32T
  fun arrst_color_t_get(array : ArrStcolorT*, pos : Uint32T) : ColorT*
  fun arrst_color_t_get(array : ArrStcolorT*, pos : Uint32T) : ColorT*
  fun arrst_color_t_get_const(array : ArrStcolorT*, pos : Uint32T) : ColorT*
  fun arrst_color_t_get_const(array : ArrStcolorT*, pos : Uint32T) : ColorT*
  fun arrst_color_t_last(array : ArrStcolorT*) : ColorT*
  fun arrst_color_t_last(array : ArrStcolorT*) : ColorT*
  fun arrst_color_t_last_const(array : ArrStcolorT*) : ColorT*
  fun arrst_color_t_last_const(array : ArrStcolorT*) : ColorT*
  fun arrst_color_t_all(array : ArrStcolorT*) : ColorT*
  fun arrst_color_t_all(array : ArrStcolorT*) : ColorT*
  fun arrst_color_t_all_const(array : ArrStcolorT*) : ColorT*
  fun arrst_color_t_all_const(array : ArrStcolorT*) : ColorT*
  fun arrst_color_t_insert(array : ArrStcolorT*, pos : Uint32T, n : Uint32T) : ColorT*
  fun arrst_color_t_insert(array : ArrStcolorT*, pos : Uint32T, n : Uint32T) : ColorT*
  fun arrst_color_t_insert0(array : ArrStcolorT*, pos : Uint32T, n : Uint32T) : ColorT*
  fun arrst_color_t_insert0(array : ArrStcolorT*, pos : Uint32T, n : Uint32T) : ColorT*
  fun arrst_color_t_join(dest : ArrStcolorT*, src : ArrStcolorT*, func_copy : (ColorT*, ColorT* -> Void))
  fun arrst_color_t_join(dest : ArrStcolorT*, src : ArrStcolorT*, func_copy : (ColorT*, ColorT* -> Void))
  fun arrst_color_t_delete(array : ArrStcolorT*, pos : Uint32T, func_remove : (ColorT* -> Void))
  fun arrst_color_t_delete(array : ArrStcolorT*, pos : Uint32T, func_remove : (ColorT* -> Void))
  fun arrst_color_t_pop(array : ArrStcolorT*, func_remove : (ColorT* -> Void))
  fun arrst_color_t_pop(array : ArrStcolorT*, func_remove : (ColorT* -> Void))
  fun arrst_color_t_sort(array : ArrStcolorT*, func_compare : (ColorT*, ColorT* -> LibC::Int))
  fun arrst_color_t_sort(array : ArrStcolorT*, func_compare : (ColorT*, ColorT* -> LibC::Int))
  fun arrst_color_t_sort_ex(array : ArrStcolorT*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_color_t_sort_ex(array : ArrStcolorT*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_color_t_search(array : ArrStcolorT*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : ColorT*
  fun arrst_color_t_search(array : ArrStcolorT*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : ColorT*
  fun arrst_color_t_search_const(array : ArrStcolorT*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : ColorT*
  fun arrst_color_t_search_const(array : ArrStcolorT*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : ColorT*
  fun arrst_color_t_bsearch(array : ArrStcolorT*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : ColorT*
  fun arrst_color_t_bsearch(array : ArrStcolorT*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : ColorT*
  fun arrst_color_t_bsearch_const(array : ArrStcolorT*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : ColorT*
  fun arrst_color_t_bsearch_const(array : ArrStcolorT*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : ColorT*
  fun arrst_color_t_end
  fun setst_color_t_create(func_compare : (ColorT*, ColorT* -> LibC::Int), esize : Uint16T) : SetStcolorT*

  struct SetStcolorT
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStcolorT*
    func_compare : FPtrCompare
  end

  struct NodeStcolorT
    rb : Uint32T
    left : NodeStcolorT*
    right : NodeStcolorT*
    data : ColorT
  end

  fun setst_color_t_create(func_compare : (ColorT*, ColorT* -> LibC::Int), esize : Uint16T) : SetStcolorT*
  fun setst_color_t_destroy(set : SetStcolorT**, func_remove : (ColorT* -> Void))
  fun setst_color_t_destroy(set : SetStcolorT**, func_remove : (ColorT* -> Void))
  fun setst_color_t_size(set : SetStcolorT*) : Uint32T
  fun setst_color_t_size(set : SetStcolorT*) : Uint32T
  fun setst_color_t_get(set : SetStcolorT*, key : ColorT*) : ColorT*
  fun setst_color_t_get(set : SetStcolorT*, key : ColorT*) : ColorT*
  fun setst_color_t_get_const(set : SetStcolorT*, key : ColorT*) : ColorT*
  fun setst_color_t_get_const(set : SetStcolorT*, key : ColorT*) : ColorT*
  fun setst_color_t_insert(set : SetStcolorT*, key : ColorT*) : ColorT*
  fun setst_color_t_insert(set : SetStcolorT*, key : ColorT*) : ColorT*
  fun setst_color_t_delete(set : SetStcolorT*, key : ColorT*, func_remove : (ColorT* -> Void)) : BoolT
  fun setst_color_t_delete(set : SetStcolorT*, key : ColorT*, func_remove : (ColorT* -> Void)) : BoolT
  fun setst_color_t_first(set : SetStcolorT*) : ColorT*
  fun setst_color_t_first(set : SetStcolorT*) : ColorT*
  fun setst_color_t_first_const(set : SetStcolorT*) : ColorT*
  fun setst_color_t_first_const(set : SetStcolorT*) : ColorT*
  fun setst_color_t_last(set : SetStcolorT*) : ColorT*
  fun setst_color_t_last(set : SetStcolorT*) : ColorT*
  fun setst_color_t_last_const(set : SetStcolorT*) : ColorT*
  fun setst_color_t_last_const(set : SetStcolorT*) : ColorT*
  fun setst_color_t_next(set : SetStcolorT*) : ColorT*
  fun setst_color_t_next(set : SetStcolorT*) : ColorT*
  fun setst_color_t_next_const(set : SetStcolorT*) : ColorT*
  fun setst_color_t_next_const(set : SetStcolorT*) : ColorT*
  fun setst_color_t_prev(set : SetStcolorT*) : ColorT*
  fun setst_color_t_prev(set : SetStcolorT*) : ColorT*
  fun setst_color_t_prev_const(set : SetStcolorT*) : ColorT*
  fun setst_color_t_prev_const(set : SetStcolorT*) : ColorT*
  fun setst_color_t_end
  fun arrpt_image_create = arrpt_Image_create(esize : Uint16T) : ArrPtImage*

  struct ArrPtImage
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : ImagePtData*
  end

  struct ImagePtData
    elem : Image[1024]
  end

  type Image = Void*
  fun arrpt_image_create = arrpt_Image_create(esize : Uint16T) : ArrPtImage*
  fun arrpt_image_copy = arrpt_Image_copy(array : ArrPtImage*, func_copy : (Image -> Image)) : ArrPtImage*
  fun arrpt_image_copy = arrpt_Image_copy(array : ArrPtImage*, func_copy : (Image -> Image)) : ArrPtImage*
  fun arrpt_image_read = arrpt_Image_read(stream : Stream, func_read : (Stream -> Image)) : ArrPtImage*
  fun arrpt_image_read = arrpt_Image_read(stream : Stream, func_read : (Stream -> Image)) : ArrPtImage*
  fun arrpt_image_destroy = arrpt_Image_destroy(array : ArrPtImage**, func_destroy : (Image* -> Void))
  fun arrpt_image_destroy = arrpt_Image_destroy(array : ArrPtImage**, func_destroy : (Image* -> Void))
  fun arrpt_image_destopt = arrpt_Image_destopt(array : ArrPtImage**, func_destroy : (Image* -> Void))
  fun arrpt_image_destopt = arrpt_Image_destopt(array : ArrPtImage**, func_destroy : (Image* -> Void))
  fun arrpt_image_clear = arrpt_Image_clear(array : ArrPtImage*, func_destroy : (Image* -> Void))
  fun arrpt_image_clear = arrpt_Image_clear(array : ArrPtImage*, func_destroy : (Image* -> Void))
  fun arrpt_image_write = arrpt_Image_write(stream : Stream, array : ArrPtImage*, func_write : (Stream, Image -> Void))
  fun arrpt_image_write = arrpt_Image_write(stream : Stream, array : ArrPtImage*, func_write : (Stream, Image -> Void))
  fun arrpt_image_size = arrpt_Image_size(array : ArrPtImage*) : Uint32T
  fun arrpt_image_size = arrpt_Image_size(array : ArrPtImage*) : Uint32T
  fun arrpt_image_get = arrpt_Image_get(array : ArrPtImage*, pos : Uint32T) : Image
  fun arrpt_image_get = arrpt_Image_get(array : ArrPtImage*, pos : Uint32T) : Image
  fun arrpt_image_get_const = arrpt_Image_get_const(array : ArrPtImage*, pos : Uint32T) : Image
  fun arrpt_image_get_const = arrpt_Image_get_const(array : ArrPtImage*, pos : Uint32T) : Image
  fun arrpt_image_first = arrpt_Image_first(array : ArrPtImage*) : Image
  fun arrpt_image_first = arrpt_Image_first(array : ArrPtImage*) : Image
  fun arrpt_image_first_const = arrpt_Image_first_const(array : ArrPtImage*) : Image
  fun arrpt_image_first_const = arrpt_Image_first_const(array : ArrPtImage*) : Image
  fun arrpt_image_last = arrpt_Image_last(array : ArrPtImage*) : Image
  fun arrpt_image_last = arrpt_Image_last(array : ArrPtImage*) : Image
  fun arrpt_image_last_const = arrpt_Image_last_const(array : ArrPtImage*) : Image
  fun arrpt_image_last_const = arrpt_Image_last_const(array : ArrPtImage*) : Image
  fun arrpt_image_all = arrpt_Image_all(array : ArrPtImage*) : Image*
  fun arrpt_image_all = arrpt_Image_all(array : ArrPtImage*) : Image*
  fun arrpt_image_all_const = arrpt_Image_all_const(array : ArrPtImage*) : Image*
  fun arrpt_image_all_const = arrpt_Image_all_const(array : ArrPtImage*) : Image*
  fun arrpt_image_insert = arrpt_Image_insert(array : ArrPtImage*, pos : Uint32T, n : Uint32T) : Image*
  fun arrpt_image_insert = arrpt_Image_insert(array : ArrPtImage*, pos : Uint32T, n : Uint32T) : Image*
  fun arrpt_image_join = arrpt_Image_join(dest : ArrPtImage*, src : ArrPtImage*, func_copy : (Image -> Image))
  fun arrpt_image_join = arrpt_Image_join(dest : ArrPtImage*, src : ArrPtImage*, func_copy : (Image -> Image))
  fun arrpt_image_delete = arrpt_Image_delete(array : ArrPtImage*, pos : Uint32T, func_destroy : (Image* -> Void))
  fun arrpt_image_delete = arrpt_Image_delete(array : ArrPtImage*, pos : Uint32T, func_destroy : (Image* -> Void))
  fun arrpt_image_pop = arrpt_Image_pop(array : ArrPtImage*, func_destroy : (Image* -> Void))
  fun arrpt_image_pop = arrpt_Image_pop(array : ArrPtImage*, func_destroy : (Image* -> Void))
  fun arrpt_image_sort = arrpt_Image_sort(array : ArrPtImage*, func_compare : (Image, Image -> LibC::Int))
  fun arrpt_image_sort = arrpt_Image_sort(array : ArrPtImage*, func_compare : (Image, Image -> LibC::Int))
  fun arrpt_image_sort_ex = arrpt_Image_sort_ex(array : ArrPtImage*, func_compare : FPtrCompareEx, data : Void*)
  fun arrpt_image_sort_ex = arrpt_Image_sort_ex(array : ArrPtImage*, func_compare : FPtrCompareEx, data : Void*)
  fun arrpt_image_find = arrpt_Image_find(array : ArrPtImage*, elem : Image) : Uint32T
  fun arrpt_image_find = arrpt_Image_find(array : ArrPtImage*, elem : Image) : Uint32T
  fun arrpt_image_search = arrpt_Image_search(array : ArrPtImage*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Image
  fun arrpt_image_search = arrpt_Image_search(array : ArrPtImage*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Image
  fun arrpt_image_search_const = arrpt_Image_search_const(array : ArrPtImage*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Image
  fun arrpt_image_search_const = arrpt_Image_search_const(array : ArrPtImage*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Image
  fun arrpt_image_bsearch = arrpt_Image_bsearch(array : ArrPtImage*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Image
  fun arrpt_image_bsearch = arrpt_Image_bsearch(array : ArrPtImage*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Image
  fun arrpt_image_bsearch_const = arrpt_Image_bsearch_const(array : ArrPtImage*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Image
  fun arrpt_image_bsearch_const = arrpt_Image_bsearch_const(array : ArrPtImage*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : Image
  fun arrpt_image_end = arrpt_Image_end
  fun setpt_image_create = setpt_Image_create(func_compare : (Image, Image -> LibC::Int), esize : Uint16T) : SetPtImage*

  struct SetPtImage
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodePtImage*
    func_compare : FPtrCompare
  end

  struct NodePtImage
    rb : Uint32T
    left : NodePtImage*
    right : NodePtImage*
    data : Image
  end

  fun setpt_image_create = setpt_Image_create(func_compare : (Image, Image -> LibC::Int), esize : Uint16T) : SetPtImage*
  fun setpt_image_destroy = setpt_Image_destroy(set : SetPtImage**, func_destroy : (Image* -> Void))
  fun setpt_image_destroy = setpt_Image_destroy(set : SetPtImage**, func_destroy : (Image* -> Void))
  fun setpt_image_size = setpt_Image_size(set : SetPtImage*) : Uint32T
  fun setpt_image_size = setpt_Image_size(set : SetPtImage*) : Uint32T
  fun setpt_image_get = setpt_Image_get(set : SetPtImage*, key : Image) : Image
  fun setpt_image_get = setpt_Image_get(set : SetPtImage*, key : Image) : Image
  fun setpt_image_get_const = setpt_Image_get_const(set : SetPtImage*, key : Image) : Image
  fun setpt_image_get_const = setpt_Image_get_const(set : SetPtImage*, key : Image) : Image
  fun setpt_image_insert = setpt_Image_insert(set : SetPtImage*, value : Image) : BoolT
  fun setpt_image_insert = setpt_Image_insert(set : SetPtImage*, value : Image) : BoolT
  fun setpt_image_delete = setpt_Image_delete(set : SetPtImage*, key : Image, func_destroy : (Image* -> Void)) : BoolT
  fun setpt_image_delete = setpt_Image_delete(set : SetPtImage*, key : Image, func_destroy : (Image* -> Void)) : BoolT
  fun setpt_image_first = setpt_Image_first(set : SetPtImage*) : Image
  fun setpt_image_first = setpt_Image_first(set : SetPtImage*) : Image
  fun setpt_image_first_const = setpt_Image_first_const(set : SetPtImage*) : Image
  fun setpt_image_first_const = setpt_Image_first_const(set : SetPtImage*) : Image
  fun setpt_image_last = setpt_Image_last(set : SetPtImage*) : Image
  fun setpt_image_last = setpt_Image_last(set : SetPtImage*) : Image
  fun setpt_image_last_const = setpt_Image_last_const(set : SetPtImage*) : Image
  fun setpt_image_last_const = setpt_Image_last_const(set : SetPtImage*) : Image
  fun setpt_image_next = setpt_Image_next(set : SetPtImage*) : Image
  fun setpt_image_next = setpt_Image_next(set : SetPtImage*) : Image
  fun setpt_image_next_const = setpt_Image_next_const(set : SetPtImage*) : Image
  fun setpt_image_next_const = setpt_Image_next_const(set : SetPtImage*) : Image
  fun setpt_image_prev = setpt_Image_prev(set : SetPtImage*) : Image
  fun setpt_image_prev = setpt_Image_prev(set : SetPtImage*) : Image
  fun setpt_image_prev_const = setpt_Image_prev_const(set : SetPtImage*) : Image
  fun setpt_image_prev_const = setpt_Image_prev_const(set : SetPtImage*) : Image
  fun setpt_image_end = setpt_Image_end
  fun color_rgb(r : Uint8T, g : Uint8T, b : Uint8T) : ColorT
  fun color_rgba(r : Uint8T, g : Uint8T, b : Uint8T, a : Uint8T) : ColorT
  fun color_rgbaf(r : Real32T, g : Real32T, b : Real32T, a : Real32T) : ColorT
  fun color_hsbf(hue : Real32T, sat : Real32T, bright : Real32T) : ColorT
  fun color_red(r : Uint8T) : ColorT
  fun color_green(g : Uint8T) : ColorT
  fun color_blue(b : Uint8T) : ColorT
  fun color_gray(l : Uint8T) : ColorT
  fun color_bgr(bgr : Uint32T) : ColorT
  fun color_html(html : CharT*) : ColorT
  fun color_indexed(index : Uint16T, color : ColorT) : ColorT
  fun color_to_hsbf(color : ColorT, hue : Real32T*, sat : Real32T*, bright : Real32T*)
  fun color_to_html(color : ColorT, html : CharT*, size : Uint32T)
  fun color_get_rgb(color : ColorT, r : Uint8T*, g : Uint8T*, b : Uint8T*)
  fun color_get_rgbf(color : ColorT, r : Real32T*, g : Real32T*, b : Real32T*)
  fun color_get_rgba(color : ColorT, r : Uint8T*, g : Uint8T*, b : Uint8T*, a : Uint8T*)
  fun color_get_rgbaf(color : ColorT, r : Real32T*, g : Real32T*, b : Real32T*, a : Real32T*)
  fun color_get_alpha(color : ColorT) : Uint8T
  fun color_set_alpha(color : ColorT, alpha : Uint8T) : ColorT
  fun dctx_bitmap(width : Uint32T, height : Uint32T, format : PixformatT) : DCtx
  enum X_PixformatT
    EkIndex1 = 0
    EkIndex2 = 1
    EkIndex4 = 2
    EkIndex8 = 3
    EkGray8  = 4
    EkRgb24  = 5
    EkRgba32 = 6
    EkFimage = 7
  end
  type PixformatT = X_PixformatT
  type DCtx = Void*
  fun dctx_image(ctx : DCtx*) : Image
  fun draw_clear(ctx : DCtx, color : ColorT)
  fun draw_matrixf(ctx : DCtx, t2d : T2Df*)
  fun draw_matrixd(ctx : DCtx, t2d : T2Dd*)
  fun draw_matrix_cartesianf(ctx : DCtx, t2d : T2Df*)
  fun draw_matrix_cartesiand(ctx : DCtx, t2d : T2Dd*)
  fun draw_antialias(ctx : DCtx, on : BoolT)
  fun draw_line(ctx : DCtx, x0 : Real32T, y0 : Real32T, x1 : Real32T, y1 : Real32T)
  fun draw_polyline(ctx : DCtx, closed : BoolT, points : V2Df*, n : Uint32T)
  fun draw_arc(ctx : DCtx, x : Real32T, y : Real32T, radius : Real32T, start : Real32T, sweep : Real32T)
  fun draw_bezier(ctx : DCtx, x0 : Real32T, y0 : Real32T, x1 : Real32T, y1 : Real32T, x2 : Real32T, y2 : Real32T, x3 : Real32T, y3 : Real32T)
  fun draw_line_color(ctx : DCtx, color : ColorT)
  fun draw_line_fill(ctx : DCtx)
  fun draw_line_width(ctx : DCtx, width : Real32T)
  fun draw_line_cap(ctx : DCtx, cap : LinecapT)
  enum X_LinecapT
    EkLcflat   = 0
    EkLcsquare = 1
    EkLcround  = 2
  end
  type LinecapT = X_LinecapT
  fun draw_line_join(ctx : DCtx, join : LinejoinT)
  enum X_LinejoinT
    EkLjmiter = 0
    EkLjround = 1
    EkLjbevel = 2
  end
  type LinejoinT = X_LinejoinT
  fun draw_line_dash(ctx : DCtx, pattern : Real32T*, n : Uint32T)
  fun draw_rect(ctx : DCtx, op : DrawopT, x : Real32T, y : Real32T, width : Real32T, height : Real32T)
  enum X_DrawopT
    EkStroke = 1
    EkFill   = 2
    EkSkfill = 3
    EkFillsk = 4
  end
  type DrawopT = X_DrawopT
  fun draw_rndrect(ctx : DCtx, op : DrawopT, x : Real32T, y : Real32T, width : Real32T, height : Real32T, radius : Real32T)
  fun draw_circle(ctx : DCtx, op : DrawopT, x : Real32T, y : Real32T, radius : Real32T)
  fun draw_ellipse(ctx : DCtx, op : DrawopT, x : Real32T, y : Real32T, radx : Real32T, rady : Real32T)
  fun draw_polygon(ctx : DCtx, op : DrawopT, points : V2Df*, n : Uint32T)
  fun draw_fill_color(ctx : DCtx, color : ColorT)
  fun draw_fill_linear(ctx : DCtx, color : ColorT*, stop : Real32T*, n : Uint32T, x0 : Real32T, y0 : Real32T, x1 : Real32T, y1 : Real32T)
  fun draw_fill_matrix(ctx : DCtx, t2d : T2Df*)
  fun draw_fill_wrap(ctx : DCtx, wrap : FillwrapT)
  enum X_FillwrapT
    EkFclamp = 0
    EkFtile  = 1
    EkFflip  = 2
  end
  type FillwrapT = X_FillwrapT
  fun draw_font(ctx : DCtx, font : Font)
  type Font = Void*
  fun draw_text_color(ctx : DCtx, color : ColorT)
  fun draw_text(ctx : DCtx, text : CharT*, x : Real32T, y : Real32T)
  fun draw_text_path(ctx : DCtx, op : DrawopT, text : CharT*, x : Real32T, y : Real32T)
  fun draw_text_width(ctx : DCtx, width : Real32T)
  fun draw_text_trim(ctx : DCtx, ellipsis : EllipsisT)
  enum X_EllipsisT
    EkEllipnone   = 1
    EkEllipbegin  = 2
    EkEllipmiddle = 3
    EkEllipend    = 4
    EkEllipmline  = 5
  end
  type EllipsisT = X_EllipsisT
  fun draw_text_align(ctx : DCtx, halign : AlignT, valign : AlignT)
  enum X_AlignT
    EkLeft    = 1
    EkTop     = 1
    EkCenter  = 2
    EkRight   = 3
    EkBottom  = 3
    EkJustify = 4
  end
  type AlignT = X_AlignT
  fun draw_text_halign(ctx : DCtx, halign : AlignT)
  fun draw_text_extents(ctx : DCtx, text : CharT*, refwidth : Real32T, width : Real32T*, height : Real32T*)
  fun draw_image(ctx : DCtx, image : Image, x : Real32T, y : Real32T)
  fun draw_image_frame(ctx : DCtx, image : Image, frame : Uint32T, x : Real32T, y : Real32T)
  fun draw_image_align(ctx : DCtx, halign : AlignT, valign : AlignT)
  fun draw2d_start
  fun draw2d_finish
  fun draw_v2df(ctx : DCtx, op : DrawopT, v2d : V2Df*, radius : Real32T)
  fun draw_v2dd(ctx : DCtx, op : DrawopT, v2d : V2Dd*, radius : Real64T)
  fun draw_seg2df(ctx : DCtx, seg : Seg2Df*)
  fun draw_seg2dd(ctx : DCtx, seg : Seg2Dd*)
  fun draw_cir2df(ctx : DCtx, op : DrawopT, cir : Cir2Df*)
  fun draw_cir2dd(ctx : DCtx, op : DrawopT, cir : Cir2Dd*)
  fun draw_box2df(ctx : DCtx, op : DrawopT, box : Box2Df*)
  fun draw_box2dd(ctx : DCtx, op : DrawopT, box : Box2Dd*)
  fun draw_obb2df(ctx : DCtx, op : DrawopT, obb : Obb2Df)
  fun draw_obb2dd(ctx : DCtx, op : DrawopT, obb : Obb2Dd)
  fun draw_tri2df(ctx : DCtx, op : DrawopT, tri : Tri2Df*)
  fun draw_tri2dd(ctx : DCtx, op : DrawopT, tri : Tri2Dd*)
  fun draw_pol2df(ctx : DCtx, op : DrawopT, pol : Pol2Df)
  fun draw_pol2dd(ctx : DCtx, op : DrawopT, pol : Pol2Dd)
  fun font_create(family : CharT*, size : Real32T, style : Uint32T) : Font
  fun font_system(size : Real32T, style : Uint32T) : Font
  fun font_monospace(size : Real32T, style : Uint32T) : Font
  fun font_with_style(font : Font, style : Uint32T) : Font
  fun font_copy(font : Font) : Font
  fun font_destroy(font : Font*)
  fun font_equals(font1 : Font, font2 : Font) : BoolT
  fun font_regular_size : Real32T
  fun font_small_size : Real32T
  fun font_mini_size : Real32T
  fun font_family(font : Font) : CharT*
  fun font_size(font : Font) : Real32T
  fun font_height(font : Font) : Real32T
  fun font_style(font : Font) : Uint32T
  fun font_extents(font : Font, text : CharT*, refwidth : Real32T, width : Real32T*, height : Real32T*)
  fun font_exists_family(family : CharT*) : BoolT
  fun font_installed_families : ArrPtString*
  fun font_native(font : Font) : Void*
  fun image_from_pixels(width : Uint32T, height : Uint32T, format : PixformatT, data : ByteT*, palette : ColorT*, palsize : Uint32T) : Image
  fun image_from_pixbuf(pixbuf : Pixbuf, palette : Palette) : Image
  type Pixbuf = Void*
  type Palette = Void*
  fun image_from_file(pathname : CharT*, error : FerrorT*) : Image
  fun image_from_data(data : ByteT*, size : Uint32T) : Image
  fun image_from_resource(pack : ResPack, id : ResId) : Image
  fun image_copy(image : Image) : Image
  fun image_trim(image : Image, x : Uint32T, y : Uint32T, width : Uint32T, height : Uint32T) : Image
  fun image_rotate(image : Image, angle : Real32T, nsize : BoolT, background : ColorT, t2d : T2Df*) : Image
  fun image_scale(image : Image, nwidth : Uint32T, nheight : Uint32T) : Image
  fun image_read(stm : Stream) : Image
  fun image_to_file(image : Image, pathname : CharT*, error : FerrorT*) : BoolT
  fun image_write(stream : Stream, image : Image)
  fun image_destroy(image : Image*)
  fun image_format(image : Image) : PixformatT
  fun image_width(image : Image) : Uint32T
  fun image_height(image : Image) : Uint32T
  fun image_pixels(image : Image, format : PixformatT) : Pixbuf
  fun image_codec(image : Image, codec : CodecT) : BoolT
  enum X_CodecT
    EkJpg = 1
    EkPng = 2
    EkBmp = 3
    EkGif = 4
  end
  type CodecT = X_CodecT
  fun image_get_codec(image : Image) : CodecT
  fun image_num_frames(image : Image) : Uint32T
  fun image_frame_length(image : Image, findex : Uint32T) : Real32T
  fun image_data_imp(image : Image, data : Void**, func_destroy_data : FPtrDestroy)
  fun image_get_data_imp(image : Image) : Void*
  fun image_native(image : Image) : Void*
  fun palette_create(size : Uint32T) : Palette
  fun palette_cga2(mode : BoolT, intense : BoolT) : Palette
  fun palette_ega4 : Palette
  fun palette_rgb8 : Palette
  fun palette_gray1 : Palette
  fun palette_gray2 : Palette
  fun palette_gray4 : Palette
  fun palette_gray8 : Palette
  fun palette_binary(zero : ColorT, one : ColorT) : Palette
  fun palette_destroy(palette : Palette*)
  fun palette_size(palette : Palette) : Uint32T
  fun palette_colors(palette : Palette) : ColorT*
  fun palette_ccolors(palette : Palette) : ColorT*
  fun pixbuf_create(width : Uint32T, height : Uint32T, format : PixformatT) : Pixbuf
  fun pixbuf_copy(pixbuf : Pixbuf) : Pixbuf
  fun pixbuf_trim(pixbuf : Pixbuf, x : Uint32T, y : Uint32T, width : Uint32T, height : Uint32T) : Pixbuf
  fun pixbuf_convert(pixbuf : Pixbuf, palette : Palette, oformat : PixformatT) : Pixbuf
  fun pixbuf_destroy(pixbuf : Pixbuf*)
  fun pixbuf_format(pixbuf : Pixbuf) : PixformatT
  fun pixbuf_width(pixbuf : Pixbuf) : Uint32T
  fun pixbuf_height(pixbuf : Pixbuf) : Uint32T
  fun pixbuf_size(pixbuf : Pixbuf) : Uint32T
  fun pixbuf_dsize(pixbuf : Pixbuf) : Uint32T
  fun pixbuf_cdata(pixbuf : Pixbuf) : ByteT*
  fun pixbuf_data(pixbuf : Pixbuf) : ByteT*
  fun pixbuf_format_bpp(format : PixformatT) : Uint32T
  fun pixbuf_get(pixbuf : Pixbuf, x : Uint32T, y : Uint32T) : Uint32T
  fun pixbuf_set(pixbuf : Pixbuf, x : Uint32T, y : Uint32T, value : Uint32T)
  fun arrst_f_ptr_respack_create = arrst_FPtr_respack_create(esize : Uint16T) : ArrStFPtrRespack*

  struct ArrStFPtrRespack
    reserved : Uint32T
    size : Uint32T
    elem_sizeof : Uint16T
    content : FPtrRespackData*
  end

  struct FPtrRespackData
    elem : FPtrRespack[1024]
  end

  alias FPtrRespack = (CharT* -> ResPack)
  fun arrst_f_ptr_respack_create = arrst_FPtr_respack_create(esize : Uint16T) : ArrStFPtrRespack*
  fun arrst_f_ptr_respack_copy = arrst_FPtr_respack_copy(array : ArrStFPtrRespack*, func_copy : (FPtrRespack*, FPtrRespack* -> Void)) : ArrStFPtrRespack*
  fun arrst_f_ptr_respack_copy = arrst_FPtr_respack_copy(array : ArrStFPtrRespack*, func_copy : (FPtrRespack*, FPtrRespack* -> Void)) : ArrStFPtrRespack*
  fun arrst_f_ptr_respack_read = arrst_FPtr_respack_read(stream : Stream, esize : Uint16T, func_read : (Stream, FPtrRespack* -> Void)) : ArrStFPtrRespack*
  fun arrst_f_ptr_respack_read = arrst_FPtr_respack_read(stream : Stream, esize : Uint16T, func_read : (Stream, FPtrRespack* -> Void)) : ArrStFPtrRespack*
  fun arrst_f_ptr_respack_destroy = arrst_FPtr_respack_destroy(array : ArrStFPtrRespack**, func_remove : (FPtrRespack* -> Void))
  fun arrst_f_ptr_respack_destroy = arrst_FPtr_respack_destroy(array : ArrStFPtrRespack**, func_remove : (FPtrRespack* -> Void))
  fun arrst_f_ptr_respack_destopt = arrst_FPtr_respack_destopt(array : ArrStFPtrRespack**, func_remove : (FPtrRespack* -> Void))
  fun arrst_f_ptr_respack_destopt = arrst_FPtr_respack_destopt(array : ArrStFPtrRespack**, func_remove : (FPtrRespack* -> Void))
  fun arrst_f_ptr_respack_clear = arrst_FPtr_respack_clear(array : ArrStFPtrRespack*, func_remove : (FPtrRespack* -> Void))
  fun arrst_f_ptr_respack_clear = arrst_FPtr_respack_clear(array : ArrStFPtrRespack*, func_remove : (FPtrRespack* -> Void))
  fun arrst_f_ptr_respack_write = arrst_FPtr_respack_write(stream : Stream, array : ArrStFPtrRespack*, func_write : (Stream, FPtrRespack* -> Void))
  fun arrst_f_ptr_respack_write = arrst_FPtr_respack_write(stream : Stream, array : ArrStFPtrRespack*, func_write : (Stream, FPtrRespack* -> Void))
  fun arrst_f_ptr_respack_size = arrst_FPtr_respack_size(array : ArrStFPtrRespack*) : Uint32T
  fun arrst_f_ptr_respack_size = arrst_FPtr_respack_size(array : ArrStFPtrRespack*) : Uint32T
  fun arrst_f_ptr_respack_get = arrst_FPtr_respack_get(array : ArrStFPtrRespack*, pos : Uint32T) : FPtrRespack*
  fun arrst_f_ptr_respack_get = arrst_FPtr_respack_get(array : ArrStFPtrRespack*, pos : Uint32T) : FPtrRespack*
  fun arrst_f_ptr_respack_get_const = arrst_FPtr_respack_get_const(array : ArrStFPtrRespack*, pos : Uint32T) : FPtrRespack*
  fun arrst_f_ptr_respack_get_const = arrst_FPtr_respack_get_const(array : ArrStFPtrRespack*, pos : Uint32T) : FPtrRespack*
  fun arrst_f_ptr_respack_last = arrst_FPtr_respack_last(array : ArrStFPtrRespack*) : FPtrRespack*
  fun arrst_f_ptr_respack_last = arrst_FPtr_respack_last(array : ArrStFPtrRespack*) : FPtrRespack*
  fun arrst_f_ptr_respack_last_const = arrst_FPtr_respack_last_const(array : ArrStFPtrRespack*) : FPtrRespack*
  fun arrst_f_ptr_respack_last_const = arrst_FPtr_respack_last_const(array : ArrStFPtrRespack*) : FPtrRespack*
  fun arrst_f_ptr_respack_all = arrst_FPtr_respack_all(array : ArrStFPtrRespack*) : FPtrRespack*
  fun arrst_f_ptr_respack_all = arrst_FPtr_respack_all(array : ArrStFPtrRespack*) : FPtrRespack*
  fun arrst_f_ptr_respack_all_const = arrst_FPtr_respack_all_const(array : ArrStFPtrRespack*) : FPtrRespack*
  fun arrst_f_ptr_respack_all_const = arrst_FPtr_respack_all_const(array : ArrStFPtrRespack*) : FPtrRespack*
  fun arrst_f_ptr_respack_insert = arrst_FPtr_respack_insert(array : ArrStFPtrRespack*, pos : Uint32T, n : Uint32T) : FPtrRespack*
  fun arrst_f_ptr_respack_insert = arrst_FPtr_respack_insert(array : ArrStFPtrRespack*, pos : Uint32T, n : Uint32T) : FPtrRespack*
  fun arrst_f_ptr_respack_insert0 = arrst_FPtr_respack_insert0(array : ArrStFPtrRespack*, pos : Uint32T, n : Uint32T) : FPtrRespack*
  fun arrst_f_ptr_respack_insert0 = arrst_FPtr_respack_insert0(array : ArrStFPtrRespack*, pos : Uint32T, n : Uint32T) : FPtrRespack*
  fun arrst_f_ptr_respack_join = arrst_FPtr_respack_join(dest : ArrStFPtrRespack*, src : ArrStFPtrRespack*, func_copy : (FPtrRespack*, FPtrRespack* -> Void))
  fun arrst_f_ptr_respack_join = arrst_FPtr_respack_join(dest : ArrStFPtrRespack*, src : ArrStFPtrRespack*, func_copy : (FPtrRespack*, FPtrRespack* -> Void))
  fun arrst_f_ptr_respack_delete = arrst_FPtr_respack_delete(array : ArrStFPtrRespack*, pos : Uint32T, func_remove : (FPtrRespack* -> Void))
  fun arrst_f_ptr_respack_delete = arrst_FPtr_respack_delete(array : ArrStFPtrRespack*, pos : Uint32T, func_remove : (FPtrRespack* -> Void))
  fun arrst_f_ptr_respack_pop = arrst_FPtr_respack_pop(array : ArrStFPtrRespack*, func_remove : (FPtrRespack* -> Void))
  fun arrst_f_ptr_respack_pop = arrst_FPtr_respack_pop(array : ArrStFPtrRespack*, func_remove : (FPtrRespack* -> Void))
  fun arrst_f_ptr_respack_sort = arrst_FPtr_respack_sort(array : ArrStFPtrRespack*, func_compare : (FPtrRespack*, FPtrRespack* -> LibC::Int))
  fun arrst_f_ptr_respack_sort = arrst_FPtr_respack_sort(array : ArrStFPtrRespack*, func_compare : (FPtrRespack*, FPtrRespack* -> LibC::Int))
  fun arrst_f_ptr_respack_sort_ex = arrst_FPtr_respack_sort_ex(array : ArrStFPtrRespack*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_f_ptr_respack_sort_ex = arrst_FPtr_respack_sort_ex(array : ArrStFPtrRespack*, func_compare : FPtrCompareEx, data : Void*)
  fun arrst_f_ptr_respack_search = arrst_FPtr_respack_search(array : ArrStFPtrRespack*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : FPtrRespack*
  fun arrst_f_ptr_respack_search = arrst_FPtr_respack_search(array : ArrStFPtrRespack*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : FPtrRespack*
  fun arrst_f_ptr_respack_search_const = arrst_FPtr_respack_search_const(array : ArrStFPtrRespack*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : FPtrRespack*
  fun arrst_f_ptr_respack_search_const = arrst_FPtr_respack_search_const(array : ArrStFPtrRespack*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : FPtrRespack*
  fun arrst_f_ptr_respack_bsearch = arrst_FPtr_respack_bsearch(array : ArrStFPtrRespack*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : FPtrRespack*
  fun arrst_f_ptr_respack_bsearch = arrst_FPtr_respack_bsearch(array : ArrStFPtrRespack*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : FPtrRespack*
  fun arrst_f_ptr_respack_bsearch_const = arrst_FPtr_respack_bsearch_const(array : ArrStFPtrRespack*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : FPtrRespack*
  fun arrst_f_ptr_respack_bsearch_const = arrst_FPtr_respack_bsearch_const(array : ArrStFPtrRespack*, func_compare : FPtrCompare, key : Void*, pos : Uint32T*) : FPtrRespack*
  fun arrst_f_ptr_respack_end = arrst_FPtr_respack_end
  fun setst_f_ptr_respack_create = setst_FPtr_respack_create(func_compare : (FPtrRespack*, FPtrRespack* -> LibC::Int), esize : Uint16T) : SetStFPtrRespack*

  struct SetStFPtrRespack
    elems : Uint32T
    esize : Uint16T
    ksize : Uint16T
    root : NodeStFPtrRespack*
    func_compare : FPtrCompare
  end

  struct NodeStFPtrRespack
    rb : Uint32T
    left : NodeStFPtrRespack*
    right : NodeStFPtrRespack*
    data : FPtrRespack
  end

  fun setst_f_ptr_respack_create = setst_FPtr_respack_create(func_compare : (FPtrRespack*, FPtrRespack* -> LibC::Int), esize : Uint16T) : SetStFPtrRespack*
  fun setst_f_ptr_respack_destroy = setst_FPtr_respack_destroy(set : SetStFPtrRespack**, func_remove : (FPtrRespack* -> Void))
  fun setst_f_ptr_respack_destroy = setst_FPtr_respack_destroy(set : SetStFPtrRespack**, func_remove : (FPtrRespack* -> Void))
  fun setst_f_ptr_respack_size = setst_FPtr_respack_size(set : SetStFPtrRespack*) : Uint32T
  fun setst_f_ptr_respack_size = setst_FPtr_respack_size(set : SetStFPtrRespack*) : Uint32T
  fun setst_f_ptr_respack_get = setst_FPtr_respack_get(set : SetStFPtrRespack*, key : FPtrRespack*) : FPtrRespack*
  fun setst_f_ptr_respack_get = setst_FPtr_respack_get(set : SetStFPtrRespack*, key : FPtrRespack*) : FPtrRespack*
  fun setst_f_ptr_respack_get_const = setst_FPtr_respack_get_const(set : SetStFPtrRespack*, key : FPtrRespack*) : FPtrRespack*
  fun setst_f_ptr_respack_get_const = setst_FPtr_respack_get_const(set : SetStFPtrRespack*, key : FPtrRespack*) : FPtrRespack*
  fun setst_f_ptr_respack_insert = setst_FPtr_respack_insert(set : SetStFPtrRespack*, key : FPtrRespack*) : FPtrRespack*
  fun setst_f_ptr_respack_insert = setst_FPtr_respack_insert(set : SetStFPtrRespack*, key : FPtrRespack*) : FPtrRespack*
  fun setst_f_ptr_respack_delete = setst_FPtr_respack_delete(set : SetStFPtrRespack*, key : FPtrRespack*, func_remove : (FPtrRespack* -> Void)) : BoolT
  fun setst_f_ptr_respack_delete = setst_FPtr_respack_delete(set : SetStFPtrRespack*, key : FPtrRespack*, func_remove : (FPtrRespack* -> Void)) : BoolT
  fun setst_f_ptr_respack_first = setst_FPtr_respack_first(set : SetStFPtrRespack*) : FPtrRespack*
  fun setst_f_ptr_respack_first = setst_FPtr_respack_first(set : SetStFPtrRespack*) : FPtrRespack*
  fun setst_f_ptr_respack_first_const = setst_FPtr_respack_first_const(set : SetStFPtrRespack*) : FPtrRespack*
  fun setst_f_ptr_respack_first_const = setst_FPtr_respack_first_const(set : SetStFPtrRespack*) : FPtrRespack*
  fun setst_f_ptr_respack_last = setst_FPtr_respack_last(set : SetStFPtrRespack*) : FPtrRespack*
  fun setst_f_ptr_respack_last = setst_FPtr_respack_last(set : SetStFPtrRespack*) : FPtrRespack*
  fun setst_f_ptr_respack_last_const = setst_FPtr_respack_last_const(set : SetStFPtrRespack*) : FPtrRespack*
  fun setst_f_ptr_respack_last_const = setst_FPtr_respack_last_const(set : SetStFPtrRespack*) : FPtrRespack*
  fun setst_f_ptr_respack_next = setst_FPtr_respack_next(set : SetStFPtrRespack*) : FPtrRespack*
  fun setst_f_ptr_respack_next = setst_FPtr_respack_next(set : SetStFPtrRespack*) : FPtrRespack*
  fun setst_f_ptr_respack_next_const = setst_FPtr_respack_next_const(set : SetStFPtrRespack*) : FPtrRespack*
  fun setst_f_ptr_respack_next_const = setst_FPtr_respack_next_const(set : SetStFPtrRespack*) : FPtrRespack*
  fun setst_f_ptr_respack_prev = setst_FPtr_respack_prev(set : SetStFPtrRespack*) : FPtrRespack*
  fun setst_f_ptr_respack_prev = setst_FPtr_respack_prev(set : SetStFPtrRespack*) : FPtrRespack*
  fun setst_f_ptr_respack_prev_const = setst_FPtr_respack_prev_const(set : SetStFPtrRespack*) : FPtrRespack*
  fun setst_f_ptr_respack_prev_const = setst_FPtr_respack_prev_const(set : SetStFPtrRespack*) : FPtrRespack*
  fun setst_f_ptr_respack_end = setst_FPtr_respack_end
  fun button_push : Button
  type Button = Void*
  fun button_check : Button
  fun button_check3 : Button
  fun button_radio : Button
  fun button_flat : Button
  fun button_flatgle : Button
  fun button_on_click = button_OnClick(button : Button, listener : Listener)
  fun button_text(button : Button, text : CharT*)
  fun button_text_alt(button : Button, text : CharT*)
  fun button_tooltip(button : Button, text : CharT*)
  fun button_font(button : Button, font : Font)
  fun button_image(button : Button, image : Image)
  fun button_image_alt(button : Button, image : Image)
  fun button_state(button : Button, state : GuiStateT)
  enum X_GuiStateT
    EkGuiOff   = 0
    EkGuiOn    = 1
    EkGuiMixed = 2
  end
  type GuiStateT = X_GuiStateT
  fun button_get_state(button : Button) : GuiStateT
  fun button_tag(button : Button, tag : Uint32T)
  fun button_get_tag(button : Button) : Uint32T
  fun cell_control_imp(cell : Cell, type : CharT*) : Void*
  type Cell = Void*
  fun cell_layout(cell : Cell) : Layout
  type Layout = Void*
  fun cell_enabled(cell : Cell, enabled : BoolT)
  fun cell_visible(cell : Cell, visible : BoolT)
  fun cell_focus(cell : Cell)
  fun cell_padding(cell : Cell, pall : Real32T)
  fun cell_padding2(cell : Cell, ptb : Real32T, plr : Real32T)
  fun cell_padding4(cell : Cell, pt : Real32T, pr : Real32T, pb : Real32T, pl : Real32T)
  fun cell_dbind_imp(cell : Cell, type : CharT*, size : Uint16T, mname : CharT*, mtype : CharT*, moffset : Uint16T, msize : Uint16T)
  fun combo_create : Combo
  type Combo = Void*
  fun combo_on_filter = combo_OnFilter(combo : Combo, listener : Listener)
  fun combo_on_change = combo_OnChange(combo : Combo, listener : Listener)
  fun combo_text(combo : Combo, text : CharT*)
  fun combo_align(combo : Combo, align : AlignT)
  fun combo_tooltip(combo : Combo, text : CharT*)
  fun combo_color(combo : Combo, color : ColorT)
  fun combo_color_focus(combo : Combo, color : ColorT)
  fun combo_bgcolor(combo : Combo, color : ColorT)
  fun combo_bgcolor_focus(combo : Combo, color : ColorT)
  fun combo_phtext(combo : Combo, text : CharT*)
  fun combo_phcolor(combo : Combo, color : ColorT)
  fun combo_phstyle(combo : Combo, fstyle : Uint32T)
  fun combo_get_text(combo : Combo, index : Uint32T) : CharT*
  fun combo_count(combo : Combo) : Uint32T
  fun combo_add_elem(combo : Combo, text : CharT*, image : Image)
  fun combo_set_elem(combo : Combo, index : Uint32T, text : CharT*, image : Image)
  fun combo_ins_elem(combo : Combo, index : Uint32T, text : CharT*, image : Image)
  fun combo_del_elem(combo : Combo, index : Uint32T)
  fun combo_duplicates(combo : Combo, duplicates : BoolT)
  fun comwin_open_file(parent : Window, ftypes : CharT**, size : Uint32T, start_dir : CharT*) : CharT*
  type Window = Void*
  fun comwin_save_file(parent : Window, ftypes : CharT**, size : Uint32T, start_dir : CharT*) : CharT*
  fun comwin_color(parent : Window, title : CharT*, x : Real32T, y : Real32T, halign : AlignT, valign : AlignT, current : ColorT, colors : ColorT*, n : Uint32T, on_change : Listener)
  fun edit_create : Edit
  type Edit = Void*
  fun edit_multiline : Edit
  fun edit_on_filter = edit_OnFilter(edit : Edit, listener : Listener)
  fun edit_on_change = edit_OnChange(edit : Edit, listener : Listener)
  fun edit_text(edit : Edit, text : CharT*)
  fun edit_font(edit : Edit, font : Font)
  fun edit_align(edit : Edit, align : AlignT)
  fun edit_passmode(edit : Edit, passmode : BoolT)
  fun edit_editable(edit : Edit, is_editable : BoolT)
  fun edit_autoselect(edit : Edit, autoselect : BoolT)
  fun edit_tooltip(edit : Edit, text : CharT*)
  fun edit_color(edit : Edit, color : ColorT)
  fun edit_color_focus(edit : Edit, color : ColorT)
  fun edit_bgcolor(edit : Edit, color : ColorT)
  fun edit_bgcolor_focus(edit : Edit, color : ColorT)
  fun edit_phtext(edit : Edit, text : CharT*)
  fun edit_phcolor(edit : Edit, color : ColorT)
  fun edit_phstyle(edit : Edit, fstyle : Uint32T)
  fun edit_get_text(edit : Edit) : CharT*
  fun globals_device : DeviceT
  enum X_DeviceT
    EkDesktop = 1
    EkPhone   = 2
    EkTablet  = 3
  end
  type DeviceT = X_DeviceT
  fun globals_resolution(resolution : S2Df*)
  fun globals_mouse_position : V2Df
  fun gui_start
  fun gui_finish
  fun gui_respack(func_respack : FPtrRespack)
  fun gui_language(lang : CharT*)
  fun gui_text(id : ResId) : CharT*
  fun gui_image(id : ResId) : Image
  fun gui_file(id : ResId, size : Uint32T*) : ByteT*
  fun gui_dark_mode : BoolT
  fun gui_alt_color(light_color : ColorT, dark_color : ColorT) : ColorT
  fun gui_label_color : ColorT
  fun gui_view_color : ColorT
  fun gui_line_color : ColorT
  fun gui_link_color : ColorT
  fun gui_border_color : ColorT
  fun gui_resolution : S2Df
  fun gui_mouse_pos : V2Df
  fun gui_update
  fun gui_on_theme_changed = gui_OnThemeChanged(listener : Listener)
  fun gui_update_transitions(prtime : Real64T, crtime : Real64T)
  fun gui_on_notification = gui_OnNotification(listener : Listener)
  fun evbind_object_imp(e : Event, type : CharT*) : Void*
  fun evbind_modify_imp(e : Event, type : CharT*, size : Uint16T, mname : CharT*, mtype : CharT*, moffset : Uint16T, msize : Uint16T) : BoolT
  fun imageview_create : ImageView
  type ImageView = Void*
  fun imageview_size(view : ImageView, size : S2Df)
  fun imageview_scale(view : ImageView, scale : GuiScaleT)
  enum X_GuiScaleT
    EkGuiScaleAuto     = 1
    EkGuiScaleNone     = 2
    EkGuiScaleAspect   = 3
    EkGuiScaleAspectdw = 4
  end
  type GuiScaleT = X_GuiScaleT
  fun imageview_image(view : ImageView, image : Image)
  fun imageview_on_click = imageview_OnClick(view : ImageView, listener : Listener)
  fun imageview_on_over_draw = imageview_OnOverDraw(view : ImageView, listener : Listener)
  fun label_create : Label
  type Label = Void*
  fun label_multiline : Label
  fun label_on_click = label_OnClick(label : Label, listener : Listener)
  fun label_text(label : Label, text : CharT*)
  fun label_font(label : Label, font : Font)
  fun label_style_over(label : Label, fstyle : Uint32T)
  fun label_align(label : Label, align : AlignT)
  fun label_color(label : Label, color : ColorT)
  fun label_color_over(label : Label, color : ColorT)
  fun label_bgcolor(label : Label, color : ColorT)
  fun label_bgcolor_over(label : Label, color : ColorT)
  fun layout_create(ncols : Uint32T, nrows : Uint32T) : Layout
  fun layout_cell(layout : Layout, col : Uint32T, row : Uint32T) : Cell
  fun layout_label(layout : Layout, label : Label, col : Uint32T, row : Uint32T)
  fun layout_button(layout : Layout, button : Button, col : Uint32T, row : Uint32T)
  fun layout_popup(layout : Layout, popup : PopUp, col : Uint32T, row : Uint32T)
  type PopUp = Void*
  fun layout_edit(layout : Layout, edit : Edit, col : Uint32T, row : Uint32T)
  fun layout_combo(layout : Layout, combo : Combo, col : Uint32T, row : Uint32T)
  fun layout_listbox(layout : Layout, list : ListBox, col : Uint32T, row : Uint32T)
  type ListBox = Void*
  fun layout_updown(layout : Layout, updown : UpDown, col : Uint32T, row : Uint32T)
  type UpDown = Void*
  fun layout_slider(layout : Layout, slider : Slider, col : Uint32T, row : Uint32T)
  type Slider = Void*
  fun layout_progress(layout : Layout, progress : Progress, col : Uint32T, row : Uint32T)
  type Progress = Void*
  fun layout_view(layout : Layout, view : View, col : Uint32T, row : Uint32T)
  type View = Void*
  fun layout_textview(layout : Layout, view : TextView, col : Uint32T, row : Uint32T)
  type TextView = Void*
  fun layout_imageview(layout : Layout, view : ImageView, col : Uint32T, row : Uint32T)
  fun layout_tableview(layout : Layout, view : TableView, col : Uint32T, row : Uint32T)
  type TableView = Void*
  fun layout_splitview(layout : Layout, view : SplitView, col : Uint32T, row : Uint32T)
  type SplitView = Void*
  fun layout_panel(layout : Layout, panel : Panel, col : Uint32T, row : Uint32T)
  type Panel = Void*
  fun layout_layout(layout : Layout, sublayout : Layout, col : Uint32T, row : Uint32T)
  fun layout_get_control_imp(layout : Layout, col : Uint32T, row : Uint32T, type : CharT*) : Void*
  fun layout_get_layout(layout : Layout, col : Uint32T, row : Uint32T) : Layout
  fun layout_taborder(layout : Layout, order : GuiOrientT)
  enum X_GuiOrientT
    EkGuiHorizontal = 1
    EkGuiVertical   = 2
  end
  type GuiOrientT = X_GuiOrientT
  fun layout_tabstop(layout : Layout, col : Uint32T, row : Uint32T, tabstop : BoolT)
  fun layout_hsize(layout : Layout, col : Uint32T, width : Real32T)
  fun layout_vsize(layout : Layout, row : Uint32T, height : Real32T)
  fun layout_hmargin(layout : Layout, col : Uint32T, margin : Real32T)
  fun layout_vmargin(layout : Layout, row : Uint32T, margin : Real32T)
  fun layout_hexpand(layout : Layout, col : Uint32T)
  fun layout_hexpand2(layout : Layout, col1 : Uint32T, col2 : Uint32T, exp : Real32T)
  fun layout_hexpand3(layout : Layout, col1 : Uint32T, col2 : Uint32T, col3 : Uint32T, exp1 : Real32T, exp2 : Real32T)
  fun layout_vexpand(layout : Layout, row : Uint32T)
  fun layout_vexpand2(layout : Layout, row1 : Uint32T, row2 : Uint32T, exp : Real32T)
  fun layout_vexpand3(layout : Layout, row1 : Uint32T, row2 : Uint32T, row3 : Uint32T, exp1 : Real32T, exp2 : Real32T)
  fun layout_halign(layout : Layout, col : Uint32T, row : Uint32T, align : AlignT)
  fun layout_valign(layout : Layout, col : Uint32T, row : Uint32T, align : AlignT)
  fun layout_show_col(layout : Layout, col : Uint32T, visible : BoolT)
  fun layout_show_row(layout : Layout, row : Uint32T, visible : BoolT)
  fun layout_margin(layout : Layout, mall : Real32T)
  fun layout_margin2(layout : Layout, mtb : Real32T, mlr : Real32T)
  fun layout_margin4(layout : Layout, mt : Real32T, mr : Real32T, mb : Real32T, ml : Real32T)
  fun layout_bgcolor(layout : Layout, color : ColorT)
  fun layout_skcolor(layout : Layout, color : ColorT)
  fun layout_update(layout : Layout)
  fun layout_dbind_imp(layout : Layout, listener : Listener, type : CharT*, size : Uint16T)
  fun layout_dbind_obj_imp(layout : Layout, obj : Void*, type : CharT*)
  fun layout_dbind_update_imp(layout : Layout, type : CharT*, size : Uint16T, mname : CharT*, mtype : CharT*, moffset : Uint16T, msize : Uint16T)
  fun listbox_create : ListBox
  fun listbox_on_select = listbox_OnSelect(listbox : ListBox, listener : Listener)
  fun listbox_size(listbox : ListBox, size : S2Df)
  fun listbox_checkbox(listbox : ListBox, show : BoolT)
  fun listbox_multisel(listbox : ListBox, multisel : BoolT)
  fun listbox_add_elem(listbox : ListBox, text : CharT*, image : Image)
  fun listbox_set_elem(listbox : ListBox, index : Uint32T, text : CharT*, image : Image)
  fun listbox_clear(listbox : ListBox)
  fun listbox_color(listbox : ListBox, index : Uint32T, color : ColorT)
  fun listbox_select(listbox : ListBox, index : Uint32T, select : BoolT)
  fun listbox_check(listbox : ListBox, index : Uint32T, check : BoolT)
  fun listbox_count(listbox : ListBox) : Uint32T
  fun listbox_text(listbox : ListBox, index : Uint32T) : CharT*
  fun listbox_selected(listbox : ListBox, index : Uint32T) : BoolT
  fun listbox_checked(listbox : ListBox, index : Uint32T) : BoolT
  fun menu_create : Menu
  type Menu = Void*
  fun menu_destroy(menu : Menu*)
  fun menu_item(menu : Menu, item : MenuItem)
  type MenuItem = Void*
  fun menu_launch(menu : Menu, position : V2Df)
  fun menu_hide(menu : Menu)
  fun menu_off_items(menu : Menu)
  fun menu_get_item(menu : Menu, index : Uint32T) : MenuItem
  fun menu_size(menu : Menu) : Uint32T
  fun menu_imp(menu : Menu) : Void*
  fun menuitem_create : MenuItem
  fun menuitem_separator : MenuItem
  fun menuitem_on_click = menuitem_OnClick(item : MenuItem, listener : Listener)
  fun menuitem_enabled(item : MenuItem, enabled : BoolT)
  fun menuitem_visible(item : MenuItem, visible : BoolT)
  fun menuitem_text(item : MenuItem, text : CharT*)
  fun menuitem_image(item : MenuItem, image : Image)
  fun menuitem_key(item : MenuItem, key : VkeyT, modifiers : Uint32T)
  fun menuitem_submenu(item : MenuItem, submenu : Menu*)
  fun menuitem_state(item : MenuItem, state : GuiStateT)
  fun panel_create : Panel
  fun panel_scroll(hscroll : BoolT, vscroll : BoolT) : Panel
  fun panel_data_imp(panel : Panel, data : Void**, func_destroy_data : FPtrDestroy)
  fun panel_get_data_imp(panel : Panel) : Void*
  fun panel_size(panel : Panel, size : S2Df)
  fun panel_layout(panel : Panel, layout : Layout) : Uint32T
  fun panel_get_layout(panel : Panel, index : Uint32T) : Layout
  fun panel_visible_layout(panel : Panel, index : Uint32T)
  fun panel_update(panel : Panel)
  fun panel_scroll_width(panel : Panel) : Real32T
  fun panel_scroll_height(panel : Panel) : Real32T
  fun popup_create : PopUp
  fun popup_on_select = popup_OnSelect(popup : PopUp, listener : Listener)
  fun popup_tooltip(popup : PopUp, text : CharT*)
  fun popup_add_elem(popup : PopUp, text : CharT*, image : Image)
  fun popup_set_elem(popup : PopUp, index : Uint32T, text : CharT*, image : Image)
  fun popup_clear(popup : PopUp)
  fun popup_count(popup : PopUp) : Uint32T
  fun popup_list_height(popup : PopUp, elems : Uint32T)
  fun popup_selected(popup : PopUp, index : Uint32T)
  fun popup_get_selected(popup : PopUp) : Uint32T
  fun progress_create : Progress
  fun progress_undefined(progress : Progress, running : BoolT)
  fun progress_value(progress : Progress, value : Real32T)
  fun slider_create : Slider
  fun slider_vertical : Slider
  fun slider_on_moved = slider_OnMoved(slider : Slider, listener : Listener)
  fun slider_tooltip(slider : Slider, text : CharT*)
  fun slider_steps(slider : Slider, steps : Uint32T)
  fun slider_value(slider : Slider, value : Real32T)
  fun slider_get_value(slider : Slider) : Real32T
  fun splitview_horizontal : SplitView
  fun splitview_vertical : SplitView
  fun splitview_size(split : SplitView, size : S2Df)
  fun splitview_view(split : SplitView, view : View)
  fun splitview_text(split : SplitView, view : TextView)
  fun splitview_split(split : SplitView, child : SplitView)
  fun splitview_panel(split : SplitView, panel : Panel)
  fun splitview_pos(split : SplitView, pos : Real32T)
  fun tableview_create : TableView
  fun tableview_on_data = tableview_OnData(view : TableView, listener : Listener)
  fun tableview_on_select = tableview_OnSelect(view : TableView, listener : Listener)
  fun tableview_on_header_click = tableview_OnHeaderClick(view : TableView, listener : Listener)
  fun tableview_font(view : TableView, font : Font)
  fun tableview_size(view : TableView, size : S2Df)
  fun tableview_new_column_text(view : TableView) : Uint32T
  fun tableview_column_width(view : TableView, column_id : Uint32T, width : Real32T)
  fun tableview_column_limits(view : TableView, column_id : Uint32T, min : Real32T, max : Real32T)
  fun tableview_column_resizable(view : TableView, column_id : Uint32T, resizable : BoolT)
  fun tableview_column_freeze(view : TableView, last_column_id : Uint32T)
  fun tableview_header_title(view : TableView, column_id : Uint32T, text : CharT*)
  fun tableview_header_align(view : TableView, column_id : Uint32T, align : AlignT)
  fun tableview_header_indicator(view : TableView, column_id : Uint32T, indicator : Uint32T)
  fun tableview_header_visible(view : TableView, visible : BoolT)
  fun tableview_header_clickable(view : TableView, clickable : BoolT)
  fun tableview_header_resizable(view : TableView, resizable : BoolT)
  fun tableview_multisel(view : TableView, multisel : BoolT, preserve : BoolT)
  fun tableview_grid(view : TableView, hlines : BoolT, vlines : BoolT)
  fun tableview_update(view : TableView)
  fun tableview_select(view : TableView, rows : Uint32T*, n : Uint32T)
  fun tableview_deselect(view : TableView, rows : Uint32T*, n : Uint32T)
  fun tableview_deselect_all(view : TableView)
  fun tableview_selected(view : TableView) : ArrStuint32T*
  fun textview_create : TextView
  fun textview_size(view : TextView, size : S2Df)
  fun textview_clear(view : TextView)
  fun textview_printf(view : TextView, format : CharT*, ...) : Uint32T
  fun textview_writef(view : TextView, text : CharT*)
  fun textview_rtf(view : TextView, rtf_in : Stream)
  fun textview_units(view : TextView, units : Uint32T)
  fun textview_family(view : TextView, family : CharT*)
  fun textview_fsize(view : TextView, size : Real32T)
  fun textview_fstyle(view : TextView, fstyle : Uint32T)
  fun textview_color(view : TextView, color : ColorT)
  fun textview_bgcolor(view : TextView, color : ColorT)
  fun textview_pgcolor(view : TextView, color : ColorT)
  fun textview_halign(view : TextView, align : AlignT)
  fun textview_lspacing(view : TextView, scale : Real32T)
  fun textview_bfspace(view : TextView, space : Real32T)
  fun textview_afspace(view : TextView, space : Real32T)
  fun textview_scroll_down(view : TextView)
  fun textview_editable(view : TextView, is_editable : BoolT)
  fun updown_create : UpDown
  fun updown_on_click = updown_OnClick(updown : UpDown, listener : Listener)
  fun updown_tooltip(updown : UpDown, text : CharT*)
  fun view_create : View
  fun view_scroll : View
  fun view_data_imp(view : View, data : Void**, func_destroy_data : FPtrDestroy)
  fun view_get_data_imp(view : View) : Void*
  fun view_size(view : View, size : S2Df)
  fun view_on_draw = view_OnDraw(view : View, listener : Listener)
  fun view_on_overlay = view_OnOverlay(view : View, listener : Listener)
  fun view_on_size = view_OnSize(view : View, listener : Listener)
  fun view_on_enter = view_OnEnter(view : View, listener : Listener)
  fun view_on_exit = view_OnExit(view : View, listener : Listener)
  fun view_on_move = view_OnMove(view : View, listener : Listener)
  fun view_on_down = view_OnDown(view : View, listener : Listener)
  fun view_on_up = view_OnUp(view : View, listener : Listener)
  fun view_on_click = view_OnClick(view : View, listener : Listener)
  fun view_on_drag = view_OnDrag(view : View, listener : Listener)
  fun view_on_wheel = view_OnWheel(view : View, listener : Listener)
  fun view_on_key_down = view_OnKeyDown(view : View, listener : Listener)
  fun view_on_key_up = view_OnKeyUp(view : View, listener : Listener)
  fun view_on_focus = view_OnFocus(view : View, listener : Listener)
  fun view_keybuf(view : View, buffer : KeyBuf)
  fun view_get_size(view : View, size : S2Df*)
  fun view_content_size(view : View, size : S2Df, line : S2Df)
  fun view_scroll_x(view : View, pos : Real32T)
  fun view_scroll_y(view : View, pos : Real32T)
  fun view_scroll_size(view : View, width : Real32T*, height : Real32T*)
  fun view_viewport(view : View, pos : V2Df*, size : S2Df*)
  fun view_point_scale(view : View, scale : Real32T*)
  fun view_update(view : View)
  fun view_native(view : View) : Void*
  fun window_create(flags : Uint32T) : Window
  fun window_destroy(window : Window*)
  fun window_panel(window : Window, panel : Panel)
  fun window_on_close = window_OnClose(window : Window, listener : Listener)
  fun window_on_moved = window_OnMoved(window : Window, listener : Listener)
  fun window_on_resize = window_OnResize(window : Window, listener : Listener)
  fun window_title(window : Window, text : CharT*)
  fun window_show(window : Window)
  fun window_hide(window : Window)
  fun window_modal(window : Window, parent : Window) : Uint32T
  fun window_stop_modal(window : Window, return_value : Uint32T)
  fun window_hotkey(window : Window, key : VkeyT, modifiers : Uint32T, listener : Listener)
  fun window_update(window : Window)
  fun window_origin(window : Window, origin : V2Df)
  fun window_size(window : Window, size : S2Df)
  fun window_get_origin(window : Window) : V2Df
  fun window_get_size(window : Window) : S2Df
  fun window_get_client_size(window : Window) : S2Df
  fun window_defbutton(window : Window, button : Button)
  fun window_cursor(window : Window, cursor : GuiCursorT, image : Image, hot_x : Real32T, hot_y : Real32T)
  enum X_GuiCursorT
    EkGuiCursorArrow  = 1
    EkGuiCursorHand   = 2
    EkGuiCursorIbeam  = 3
    EkGuiCursorCross  = 4
    EkGuiCursorSizewe = 5
    EkGuiCursorSizens = 6
    EkGuiCursorUser   = 7
  end
  type GuiCursorT = X_GuiCursorT
  fun window_imp(window : Window) : Void*
  $kBMATH_Ef : Real32T
  $kBMATH_Ed : Real64T
  $kBMATH_LN2f : Real32T
  $kBMATH_LN2d : Real64T
  $kBMATH_LN10f : Real32T
  $kBMATH_LN10d : Real64T
  $kBMATH_PIf : Real32T
  $kBMATH_PId : Real64T
  $kBMATH_SQRT2f : Real32T
  $kBMATH_SQRT2d : Real64T
  $kBMATH_SQRT3f : Real32T
  $kBMATH_SQRT3d : Real64T
  $kBMATH_DEG2RADf : Real32T
  $kBMATH_DEG2RADd : Real64T
  $kBMATH_RAD2DEGf : Real32T
  $kBMATH_RAD2DEGd : Real64T
  $kBMATH_INFINITYf : Real32T
  $kBMATH_INFINITYd : Real64T
  $kDATE_NULL : Date
  $kSTDIN : Stream
  $kSTDOUT : Stream
  $kSTDERR : Stream
  $kDEVNULL : Stream
  $kBOX2D_NULLf : Box2Df
  $kBOX2D_NULLd : Box2Dd
  $kCIR2D_NULLf : Cir2Df
  $kCIR2D_NULLd : Cir2Dd
  $kR2D_ZEROf : R2Df
  $kR2D_ZEROd : R2Dd
  $kS2D_ZEROf : S2Df
  $kS2D_ZEROd : S2Dd
  $kT2D_IDENTf : T2Df*
  $kT2D_IDENTd : T2Dd*
  $kV2D_ZEROf : V2Df
  $kV2D_ZEROd : V2Dd
  $kV2D_Xf : V2Df
  $kV2D_Xd : V2Dd
  $kV2D_Yf : V2Df
  $kV2D_Yd : V2Dd
  $kCOLOR_TRANSPARENT : ColorT
  $kCOLOR_DEFAULT : ColorT
  $kCOLOR_BLACK : ColorT
  $kCOLOR_WHITE : ColorT
  $kCOLOR_RED : ColorT
  $kCOLOR_GREEN : ColorT
  $kCOLOR_BLUE : ColorT
  $kCOLOR_YELLOW : ColorT
  $kCOLOR_CYAN : ColorT
  $kCOLOR_MAGENTA : ColorT
  #  enum WindowFlag
  #    EDGE           = 1,
  #    TITLE          = 2,
  #    MAX            = 4,
  #    MIN            = 8,
  #    ekWINDOW_CLOSE          = 16,
  #    ekWINDOW_RESIZE         = 32,
  #    ekWINDOW_RETURN         = 64,
  #    ekWINDOW_ESC            = 128,
  #    ekWINDOW_STD            = 2 | 8 | 16,
  #    ekWINDOW_STDRES         = ekWINDOW_STD | ekWINDOW_MAX | ekWINDOW_RESIZE
  #  end

  alias AppCreate = (-> Void)
  alias AppUpdate = (Void*, Float64, Float64) -> Void
  alias AppDestroy = Void** -> Void

  fun osmain_imp(argc : UInt32, argv : Void*, instance : Void*, lframe : Float64, func_create : AppCreate, func_update : AppUpdate, func_destroy : AppDestroy, options : UInt8*)
  fun osapp_finish : Void
end

def v2df(x, y) : LibGUI::V2Df
  result = LibGUI::V2Df.new
  result.x = x
  result.y = y
  result
end
