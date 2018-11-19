extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef unsigned char __u8;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef int __kernel_pid_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef unsigned long ulong;
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int oom_flags_t;
typedef u64 phys_addr_t;
typedef phys_addr_t resource_size_t;
struct __anonstruct_atomic_t_6 {
   int counter ;
};
typedef struct __anonstruct_atomic_t_6 atomic_t;
struct __anonstruct_atomic64_t_7 {
   long counter ;
};
typedef struct __anonstruct_atomic64_t_7 atomic64_t;
struct list_head {
   struct list_head *next ;
   struct list_head *prev ;
};
struct hlist_node;
struct hlist_head {
   struct hlist_node *first ;
};
struct hlist_node {
   struct hlist_node *next ;
   struct hlist_node **pprev ;
};
struct callback_head {
   struct callback_head *next ;
   void (*func)(struct callback_head * ) ;
};
struct module;
typedef void (*ctor_fn_t)(void);
struct device;
struct completion;
struct pt_regs;
struct pid;
typedef u16 __ticket_t;
typedef u32 __ticketpair_t;
struct __raw_tickets {
   __ticket_t head ;
   __ticket_t tail ;
};
union __anonunion_ldv_2024_8 {
   __ticketpair_t head_tail ;
   struct __raw_tickets tickets ;
};
struct arch_spinlock {
   union __anonunion_ldv_2024_8 ldv_2024 ;
};
typedef struct arch_spinlock arch_spinlock_t;
struct task_struct;
struct lockdep_map;
struct mm_struct;
struct pt_regs {
   unsigned long r15 ;
   unsigned long r14 ;
   unsigned long r13 ;
   unsigned long r12 ;
   unsigned long bp ;
   unsigned long bx ;
   unsigned long r11 ;
   unsigned long r10 ;
   unsigned long r9 ;
   unsigned long r8 ;
   unsigned long ax ;
   unsigned long cx ;
   unsigned long dx ;
   unsigned long si ;
   unsigned long di ;
   unsigned long orig_ax ;
   unsigned long ip ;
   unsigned long cs ;
   unsigned long flags ;
   unsigned long sp ;
   unsigned long ss ;
};
struct __anonstruct_ldv_2096_12 {
   unsigned int a ;
   unsigned int b ;
};
struct __anonstruct_ldv_2111_13 {
   u16 limit0 ;
   u16 base0 ;
   unsigned char base1 ;
   unsigned char type : 4 ;
   unsigned char s : 1 ;
   unsigned char dpl : 2 ;
   unsigned char p : 1 ;
   unsigned char limit : 4 ;
   unsigned char avl : 1 ;
   unsigned char l : 1 ;
   unsigned char d : 1 ;
   unsigned char g : 1 ;
   unsigned char base2 ;
};
union __anonunion_ldv_2112_11 {
   struct __anonstruct_ldv_2096_12 ldv_2096 ;
   struct __anonstruct_ldv_2111_13 ldv_2111 ;
};
struct desc_struct {
   union __anonunion_ldv_2112_11 ldv_2112 ;
};
typedef unsigned long pgdval_t;
typedef unsigned long pgprotval_t;
struct pgprot {
   pgprotval_t pgprot ;
};
typedef struct pgprot pgprot_t;
struct __anonstruct_pgd_t_15 {
   pgdval_t pgd ;
};
typedef struct __anonstruct_pgd_t_15 pgd_t;
struct page;
typedef struct page *pgtable_t;
struct file;
struct thread_struct;
struct cpumask;
struct kernel_vm86_regs {
   struct pt_regs pt ;
   unsigned short es ;
   unsigned short __esh ;
   unsigned short ds ;
   unsigned short __dsh ;
   unsigned short fs ;
   unsigned short __fsh ;
   unsigned short gs ;
   unsigned short __gsh ;
};
union __anonunion_ldv_2767_18 {
   struct pt_regs *regs ;
   struct kernel_vm86_regs *vm86 ;
};
struct math_emu_info {
   long ___orig_eip ;
   union __anonunion_ldv_2767_18 ldv_2767 ;
};
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct cpumask {
   unsigned long bits[64U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
struct static_key;
struct i387_fsave_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u32 status ;
};
struct __anonstruct_ldv_5125_23 {
   u64 rip ;
   u64 rdp ;
};
struct __anonstruct_ldv_5131_24 {
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
};
union __anonunion_ldv_5132_22 {
   struct __anonstruct_ldv_5125_23 ldv_5125 ;
   struct __anonstruct_ldv_5131_24 ldv_5131 ;
};
union __anonunion_ldv_5141_25 {
   u32 padding1[12U] ;
   u32 sw_reserved[12U] ;
};
struct i387_fxsave_struct {
   u16 cwd ;
   u16 swd ;
   u16 twd ;
   u16 fop ;
   union __anonunion_ldv_5132_22 ldv_5132 ;
   u32 mxcsr ;
   u32 mxcsr_mask ;
   u32 st_space[32U] ;
   u32 xmm_space[64U] ;
   u32 padding[12U] ;
   union __anonunion_ldv_5141_25 ldv_5141 ;
};
struct i387_soft_struct {
   u32 cwd ;
   u32 swd ;
   u32 twd ;
   u32 fip ;
   u32 fcs ;
   u32 foo ;
   u32 fos ;
   u32 st_space[20U] ;
   u8 ftop ;
   u8 changed ;
   u8 lookahead ;
   u8 no_update ;
   u8 rm ;
   u8 alimit ;
   struct math_emu_info *info ;
   u32 entry_eip ;
};
struct ymmh_struct {
   u32 ymmh_space[64U] ;
};
struct xsave_hdr_struct {
   u64 xstate_bv ;
   u64 reserved1[2U] ;
   u64 reserved2[5U] ;
};
struct xsave_struct {
   struct i387_fxsave_struct i387 ;
   struct xsave_hdr_struct xsave_hdr ;
   struct ymmh_struct ymmh ;
};
union thread_xstate {
   struct i387_fsave_struct fsave ;
   struct i387_fxsave_struct fxsave ;
   struct i387_soft_struct soft ;
   struct xsave_struct xsave ;
};
struct fpu {
   unsigned int last_cpu ;
   unsigned int has_fpu ;
   union thread_xstate *state ;
};
struct kmem_cache;
struct perf_event;
struct thread_struct {
   struct desc_struct tls_array[3U] ;
   unsigned long sp0 ;
   unsigned long sp ;
   unsigned long usersp ;
   unsigned short es ;
   unsigned short ds ;
   unsigned short fsindex ;
   unsigned short gsindex ;
   unsigned long fs ;
   unsigned long gs ;
   struct perf_event *ptrace_bps[4U] ;
   unsigned long debugreg6 ;
   unsigned long ptrace_dr7 ;
   unsigned long cr2 ;
   unsigned long trap_nr ;
   unsigned long error_code ;
   struct fpu fpu ;
   unsigned long *io_bitmap_ptr ;
   unsigned long iopl ;
   unsigned int io_bitmap_max ;
};
typedef atomic64_t atomic_long_t;
struct stack_trace {
   unsigned int nr_entries ;
   unsigned int max_entries ;
   unsigned long *entries ;
   int skip ;
};
struct lockdep_subclass_key {
   char __one_byte ;
} __attribute__((__packed__)) ;
struct lock_class_key {
   struct lockdep_subclass_key subkeys[8U] ;
};
struct lock_class {
   struct list_head hash_entry ;
   struct list_head lock_entry ;
   struct lockdep_subclass_key *key ;
   unsigned int subclass ;
   unsigned int dep_gen_id ;
   unsigned long usage_mask ;
   struct stack_trace usage_traces[13U] ;
   struct list_head locks_after ;
   struct list_head locks_before ;
   unsigned int version ;
   unsigned long ops ;
   char const *name ;
   int name_version ;
   unsigned long contention_point[4U] ;
   unsigned long contending_point[4U] ;
};
struct lockdep_map {
   struct lock_class_key *key ;
   struct lock_class *class_cache[2U] ;
   char const *name ;
   int cpu ;
   unsigned long ip ;
};
struct held_lock {
   u64 prev_chain_key ;
   unsigned long acquire_ip ;
   struct lockdep_map *instance ;
   struct lockdep_map *nest_lock ;
   u64 waittime_stamp ;
   u64 holdtime_stamp ;
   unsigned short class_idx : 13 ;
   unsigned char irq_context : 2 ;
   unsigned char trylock : 1 ;
   unsigned char read : 2 ;
   unsigned char check : 2 ;
   unsigned char hardirqs_off : 1 ;
   unsigned short references : 11 ;
};
struct raw_spinlock {
   arch_spinlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct raw_spinlock raw_spinlock_t;
struct __anonstruct_ldv_5960_29 {
   u8 __padding[24U] ;
   struct lockdep_map dep_map ;
};
union __anonunion_ldv_5961_28 {
   struct raw_spinlock rlock ;
   struct __anonstruct_ldv_5960_29 ldv_5960 ;
};
struct spinlock {
   union __anonunion_ldv_5961_28 ldv_5961 ;
};
typedef struct spinlock spinlock_t;
struct mutex {
   atomic_t count ;
   spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct task_struct *owner ;
   char const *name ;
   void *magic ;
   struct lockdep_map dep_map ;
};
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct timespec;
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
struct user_namespace;
typedef uid_t kuid_t;
typedef gid_t kgid_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct __anonstruct_nodemask_t_36 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_36 nodemask_t;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct tvec_base;
struct timer_list {
   struct list_head entry ;
   unsigned long expires ;
   struct tvec_base *base ;
   void (*function)(unsigned long ) ;
   unsigned long data ;
   int slack ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
   struct lockdep_map lockdep_map ;
};
struct hrtimer;
enum hrtimer_restart;
struct workqueue_struct;
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
struct pci_dev;
struct pm_message {
   int event ;
};
typedef struct pm_message pm_message_t;
struct dev_pm_ops {
   int (*prepare)(struct device * ) ;
   void (*complete)(struct device * ) ;
   int (*suspend)(struct device * ) ;
   int (*resume)(struct device * ) ;
   int (*freeze)(struct device * ) ;
   int (*thaw)(struct device * ) ;
   int (*poweroff)(struct device * ) ;
   int (*restore)(struct device * ) ;
   int (*suspend_late)(struct device * ) ;
   int (*resume_early)(struct device * ) ;
   int (*freeze_late)(struct device * ) ;
   int (*thaw_early)(struct device * ) ;
   int (*poweroff_late)(struct device * ) ;
   int (*restore_early)(struct device * ) ;
   int (*suspend_noirq)(struct device * ) ;
   int (*resume_noirq)(struct device * ) ;
   int (*freeze_noirq)(struct device * ) ;
   int (*thaw_noirq)(struct device * ) ;
   int (*poweroff_noirq)(struct device * ) ;
   int (*restore_noirq)(struct device * ) ;
   int (*runtime_suspend)(struct device * ) ;
   int (*runtime_resume)(struct device * ) ;
   int (*runtime_idle)(struct device * ) ;
};
enum rpm_status {
    RPM_ACTIVE = 0,
    RPM_RESUMING = 1,
    RPM_SUSPENDED = 2,
    RPM_SUSPENDING = 3
} ;
enum rpm_request {
    RPM_REQ_NONE = 0,
    RPM_REQ_IDLE = 1,
    RPM_REQ_SUSPEND = 2,
    RPM_REQ_AUTOSUSPEND = 3,
    RPM_REQ_RESUME = 4
} ;
struct wakeup_source;
struct pm_subsys_data {
   spinlock_t lock ;
   unsigned int refcount ;
};
struct dev_pm_qos;
struct dev_pm_info {
   pm_message_t power_state ;
   unsigned char can_wakeup : 1 ;
   unsigned char async_suspend : 1 ;
   bool is_prepared ;
   bool is_suspended ;
   bool ignore_children ;
   bool early_init ;
   spinlock_t lock ;
   struct list_head entry ;
   struct completion completion ;
   struct wakeup_source *wakeup ;
   bool wakeup_path ;
   bool syscore ;
   struct timer_list suspend_timer ;
   unsigned long timer_expires ;
   struct work_struct work ;
   wait_queue_head_t wait_queue ;
   atomic_t usage_count ;
   atomic_t child_count ;
   unsigned char disable_depth : 3 ;
   unsigned char idle_notification : 1 ;
   unsigned char request_pending : 1 ;
   unsigned char deferred_resume : 1 ;
   unsigned char run_wake : 1 ;
   unsigned char runtime_auto : 1 ;
   unsigned char no_callbacks : 1 ;
   unsigned char irq_safe : 1 ;
   unsigned char use_autosuspend : 1 ;
   unsigned char timer_autosuspends : 1 ;
   enum rpm_request request ;
   enum rpm_status runtime_status ;
   int runtime_error ;
   int autosuspend_delay ;
   unsigned long last_busy ;
   unsigned long active_jiffies ;
   unsigned long suspended_jiffies ;
   unsigned long accounting_timestamp ;
   struct pm_subsys_data *subsys_data ;
   struct dev_pm_qos *qos ;
};
struct dev_pm_domain {
   struct dev_pm_ops ops ;
};
struct pci_bus;
struct __anonstruct_mm_context_t_101 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_101 mm_context_t;
struct vm_area_struct;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct nsproxy;
struct cred;
typedef __u64 Elf64_Addr;
typedef __u16 Elf64_Half;
typedef __u32 Elf64_Word;
typedef __u64 Elf64_Xword;
struct elf64_sym {
   Elf64_Word st_name ;
   unsigned char st_info ;
   unsigned char st_other ;
   Elf64_Half st_shndx ;
   Elf64_Addr st_value ;
   Elf64_Xword st_size ;
};
typedef struct elf64_sym Elf64_Sym;
struct sock;
struct kobject;
enum kobj_ns_type {
    KOBJ_NS_TYPE_NONE = 0,
    KOBJ_NS_TYPE_NET = 1,
    KOBJ_NS_TYPES = 2
} ;
struct kobj_ns_type_operations {
   enum kobj_ns_type type ;
   void *(*grab_current_ns)(void) ;
   void const *(*netlink_ns)(struct sock * ) ;
   void const *(*initial_ns)(void) ;
   void (*drop_ns)(void * ) ;
};
struct attribute {
   char const *name ;
   umode_t mode ;
   bool ignore_lockdep ;
   struct lock_class_key *key ;
   struct lock_class_key skey ;
};
struct attribute_group {
   char const *name ;
   umode_t (*is_visible)(struct kobject * , struct attribute * , int ) ;
   struct attribute **attrs ;
};
struct bin_attribute {
   struct attribute attr ;
   size_t size ;
   void *private ;
   ssize_t (*read)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                   loff_t , size_t ) ;
   ssize_t (*write)(struct file * , struct kobject * , struct bin_attribute * , char * ,
                    loff_t , size_t ) ;
   int (*mmap)(struct file * , struct kobject * , struct bin_attribute * , struct vm_area_struct * ) ;
};
struct sysfs_ops {
   ssize_t (*show)(struct kobject * , struct attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct attribute * , char const * , size_t ) ;
   void const *(*namespace)(struct kobject * , struct attribute const * ) ;
};
struct sysfs_dirent;
struct kref {
   atomic_t refcount ;
};
struct kset;
struct kobj_type;
struct kobject {
   char const *name ;
   struct list_head entry ;
   struct kobject *parent ;
   struct kset *kset ;
   struct kobj_type *ktype ;
   struct sysfs_dirent *sd ;
   struct kref kref ;
   unsigned char state_initialized : 1 ;
   unsigned char state_in_sysfs : 1 ;
   unsigned char state_add_uevent_sent : 1 ;
   unsigned char state_remove_uevent_sent : 1 ;
   unsigned char uevent_suppress : 1 ;
};
struct kobj_type {
   void (*release)(struct kobject * ) ;
   struct sysfs_ops const *sysfs_ops ;
   struct attribute **default_attrs ;
   struct kobj_ns_type_operations const *(*child_ns_type)(struct kobject * ) ;
   void const *(*namespace)(struct kobject * ) ;
};
struct kobj_uevent_env {
   char *envp[32U] ;
   int envp_idx ;
   char buf[2048U] ;
   int buflen ;
};
struct kset_uevent_ops {
   int (* const filter)(struct kset * , struct kobject * ) ;
   char const *(* const name)(struct kset * , struct kobject * ) ;
   int (* const uevent)(struct kset * , struct kobject * , struct kobj_uevent_env * ) ;
};
struct kset {
   struct list_head list ;
   spinlock_t list_lock ;
   struct kobject kobj ;
   struct kset_uevent_ops const *uevent_ops ;
};
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_13856_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_13856_134 ldv_13856 ;
};
struct kparam_string {
   unsigned int maxlen ;
   char *string ;
};
struct kparam_array {
   unsigned int max ;
   unsigned int elemsize ;
   unsigned int *num ;
   struct kernel_param_ops const *ops ;
   void *elem ;
};
struct static_key {
   atomic_t enabled ;
};
struct tracepoint;
struct tracepoint_func {
   void *func ;
   void *data ;
};
struct tracepoint {
   char const *name ;
   struct static_key key ;
   void (*regfunc)(void) ;
   void (*unregfunc)(void) ;
   struct tracepoint_func *funcs ;
};
struct kernel_symbol {
   unsigned long value ;
   char const *name ;
};
struct mod_arch_specific {
};
struct module_param_attrs;
struct module_kobject {
   struct kobject kobj ;
   struct module *mod ;
   struct kobject *drivers_dir ;
   struct module_param_attrs *mp ;
};
struct module_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct module_attribute * , struct module_kobject * , char * ) ;
   ssize_t (*store)(struct module_attribute * , struct module_kobject * , char const * ,
                    size_t ) ;
   void (*setup)(struct module * , char const * ) ;
   int (*test)(struct module * ) ;
   void (*free)(struct module * ) ;
};
struct exception_table_entry;
enum module_state {
    MODULE_STATE_LIVE = 0,
    MODULE_STATE_COMING = 1,
    MODULE_STATE_GOING = 2
} ;
struct module_ref {
   unsigned long incs ;
   unsigned long decs ;
};
struct module_sect_attrs;
struct module_notes_attrs;
struct ftrace_event_call;
struct module {
   enum module_state state ;
   struct list_head list ;
   char name[56U] ;
   struct module_kobject mkobj ;
   struct module_attribute *modinfo_attrs ;
   char const *version ;
   char const *srcversion ;
   struct kobject *holders_dir ;
   struct kernel_symbol const *syms ;
   unsigned long const *crcs ;
   unsigned int num_syms ;
   struct kernel_param *kp ;
   unsigned int num_kp ;
   unsigned int num_gpl_syms ;
   struct kernel_symbol const *gpl_syms ;
   unsigned long const *gpl_crcs ;
   struct kernel_symbol const *unused_syms ;
   unsigned long const *unused_crcs ;
   unsigned int num_unused_syms ;
   unsigned int num_unused_gpl_syms ;
   struct kernel_symbol const *unused_gpl_syms ;
   unsigned long const *unused_gpl_crcs ;
   struct kernel_symbol const *gpl_future_syms ;
   unsigned long const *gpl_future_crcs ;
   unsigned int num_gpl_future_syms ;
   unsigned int num_exentries ;
   struct exception_table_entry *extable ;
   int (*init)(void) ;
   void *module_init ;
   void *module_core ;
   unsigned int init_size ;
   unsigned int core_size ;
   unsigned int init_text_size ;
   unsigned int core_text_size ;
   unsigned int init_ro_size ;
   unsigned int core_ro_size ;
   struct mod_arch_specific arch ;
   unsigned int taints ;
   unsigned int num_bugs ;
   struct list_head bug_list ;
   struct bug_entry *bug_table ;
   Elf64_Sym *symtab ;
   Elf64_Sym *core_symtab ;
   unsigned int num_symtab ;
   unsigned int core_num_syms ;
   char *strtab ;
   char *core_strtab ;
   struct module_sect_attrs *sect_attrs ;
   struct module_notes_attrs *notes_attrs ;
   char *args ;
   void *percpu ;
   unsigned int percpu_size ;
   unsigned int num_tracepoints ;
   struct tracepoint * const *tracepoints_ptrs ;
   unsigned int num_trace_bprintk_fmt ;
   char const **trace_bprintk_fmt_start ;
   struct ftrace_event_call **trace_events ;
   unsigned int num_trace_events ;
   struct list_head source_list ;
   struct list_head target_list ;
   struct task_struct *waiter ;
   void (*exit)(void) ;
   struct module_ref *refptr ;
   ctor_fn_t (**ctors)(void) ;
   unsigned int num_ctors ;
};
struct _i2o_pci_bus {
   __u8 PciFunctionNumber ;
   __u8 PciDeviceNumber ;
   __u8 PciBusNumber ;
   __u8 reserved ;
   __u16 PciVendorID ;
   __u16 PciDeviceID ;
};
typedef struct _i2o_pci_bus i2o_pci_bus;
struct _i2o_local_bus {
   __u16 LbBaseIOPort ;
   __u16 reserved ;
   __u32 LbBaseMemoryAddress ;
};
typedef struct _i2o_local_bus i2o_local_bus;
struct _i2o_isa_bus {
   __u16 IsaBaseIOPort ;
   __u8 CSN ;
   __u8 reserved ;
   __u32 IsaBaseMemoryAddress ;
};
typedef struct _i2o_isa_bus i2o_isa_bus;
struct _i2o_eisa_bus_info {
   __u16 EisaBaseIOPort ;
   __u8 reserved ;
   __u8 EisaSlotNumber ;
   __u32 EisaBaseMemoryAddress ;
};
typedef struct _i2o_eisa_bus_info i2o_eisa_bus;
struct _i2o_mca_bus {
   __u16 McaBaseIOPort ;
   __u8 reserved ;
   __u8 McaSlotNumber ;
   __u32 McaBaseMemoryAddress ;
};
typedef struct _i2o_mca_bus i2o_mca_bus;
struct _i2o_other_bus {
   __u16 BaseIOPort ;
   __u16 reserved ;
   __u32 BaseMemoryAddress ;
};
typedef struct _i2o_other_bus i2o_other_bus;
union __anonunion_bus_135 {
   i2o_pci_bus pci_bus ;
   i2o_local_bus local_bus ;
   i2o_isa_bus isa_bus ;
   i2o_eisa_bus eisa_bus ;
   i2o_mca_bus mca_bus ;
   i2o_other_bus other_bus ;
};
struct _i2o_hrt_entry {
   __u32 adapter_id ;
   unsigned short parent_tid : 12 ;
   unsigned char state : 4 ;
   unsigned char bus_num ;
   unsigned char bus_type ;
   union __anonunion_bus_135 bus ;
};
typedef struct _i2o_hrt_entry i2o_hrt_entry;
struct _i2o_hrt {
   __u16 num_entries ;
   __u8 entry_len ;
   __u8 hrt_version ;
   __u32 change_ind ;
   i2o_hrt_entry hrt_entry[1U] ;
};
typedef struct _i2o_hrt i2o_hrt;
struct _i2o_lct_entry {
   unsigned short entry_size ;
   unsigned short tid : 12 ;
   unsigned char reserved : 4 ;
   __u32 change_ind ;
   __u32 device_flags ;
   unsigned short class_id : 12 ;
   unsigned char version : 4 ;
   unsigned short vendor_id ;
   __u32 sub_class ;
   unsigned short user_tid : 12 ;
   unsigned short parent_tid : 12 ;
   unsigned char bios_info ;
   __u8 identity_tag[8U] ;
   __u32 event_capabilities ;
};
typedef struct _i2o_lct_entry i2o_lct_entry;
struct _i2o_lct {
   unsigned short table_size ;
   unsigned short boot_tid : 12 ;
   unsigned char lct_ver : 4 ;
   __u32 iop_flags ;
   __u32 change_ind ;
   i2o_lct_entry lct_entry[1U] ;
};
typedef struct _i2o_lct i2o_lct;
struct _i2o_status_block {
   __u16 org_id ;
   __u16 reserved ;
   unsigned short iop_id : 12 ;
   unsigned char reserved1 : 4 ;
   __u16 host_unit_id ;
   unsigned short segment_number : 12 ;
   unsigned char i2o_version : 4 ;
   __u8 iop_state ;
   __u8 msg_type ;
   __u16 inbound_frame_size ;
   __u8 init_code ;
   __u8 reserved2 ;
   __u32 max_inbound_frames ;
   __u32 cur_inbound_frames ;
   __u32 max_outbound_frames ;
   char product_id[24U] ;
   __u32 expected_lct_size ;
   __u32 iop_capabilities ;
   __u32 desired_mem_size ;
   __u32 current_mem_size ;
   __u32 current_mem_base ;
   __u32 desired_io_size ;
   __u32 current_io_size ;
   __u32 current_io_base ;
   unsigned int reserved3 : 24 ;
   unsigned char cmd_status ;
};
typedef struct _i2o_status_block i2o_status_block;
typedef unsigned long kernel_ulong_t;
struct pci_device_id {
   __u32 vendor ;
   __u32 device ;
   __u32 subvendor ;
   __u32 subdevice ;
   __u32 class ;
   __u32 class_mask ;
   kernel_ulong_t driver_data ;
};
struct acpi_device_id {
   __u8 id[16U] ;
   kernel_ulong_t driver_data ;
};
struct of_device_id {
   char name[32U] ;
   char type[32U] ;
   char compatible[128U] ;
   void const *data ;
};
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct dma_map_ops;
struct dev_archdata {
   struct dma_map_ops *dma_ops ;
   void *iommu ;
};
struct device_private;
struct device_driver;
struct driver_private;
struct class;
struct subsys_private;
struct bus_type;
struct device_node;
struct iommu_ops;
struct iommu_group;
struct bus_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct bus_type * , char * ) ;
   ssize_t (*store)(struct bus_type * , char const * , size_t ) ;
};
struct device_attribute;
struct driver_attribute;
struct bus_type {
   char const *name ;
   char const *dev_name ;
   struct device *dev_root ;
   struct bus_attribute *bus_attrs ;
   struct device_attribute *dev_attrs ;
   struct driver_attribute *drv_attrs ;
   int (*match)(struct device * , struct device_driver * ) ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct iommu_ops *iommu_ops ;
   struct subsys_private *p ;
};
struct device_type;
struct device_driver {
   char const *name ;
   struct bus_type *bus ;
   struct module *owner ;
   char const *mod_name ;
   bool suppress_bind_attrs ;
   struct of_device_id const *of_match_table ;
   struct acpi_device_id const *acpi_match_table ;
   int (*probe)(struct device * ) ;
   int (*remove)(struct device * ) ;
   void (*shutdown)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct attribute_group const **groups ;
   struct dev_pm_ops const *pm ;
   struct driver_private *p ;
};
struct driver_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device_driver * , char * ) ;
   ssize_t (*store)(struct device_driver * , char const * , size_t ) ;
};
struct class_attribute;
struct class {
   char const *name ;
   struct module *owner ;
   struct class_attribute *class_attrs ;
   struct device_attribute *dev_attrs ;
   struct bin_attribute *dev_bin_attrs ;
   struct kobject *dev_kobj ;
   int (*dev_uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*class_release)(struct class * ) ;
   void (*dev_release)(struct device * ) ;
   int (*suspend)(struct device * , pm_message_t ) ;
   int (*resume)(struct device * ) ;
   struct kobj_ns_type_operations const *ns_type ;
   void const *(*namespace)(struct device * ) ;
   struct dev_pm_ops const *pm ;
   struct subsys_private *p ;
};
struct class_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct class * , struct class_attribute * , char * ) ;
   ssize_t (*store)(struct class * , struct class_attribute * , char const * , size_t ) ;
   void const *(*namespace)(struct class * , struct class_attribute const * ) ;
};
struct device_type {
   char const *name ;
   struct attribute_group const **groups ;
   int (*uevent)(struct device * , struct kobj_uevent_env * ) ;
   char *(*devnode)(struct device * , umode_t * ) ;
   void (*release)(struct device * ) ;
   struct dev_pm_ops const *pm ;
};
struct device_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct device * , struct device_attribute * , char * ) ;
   ssize_t (*store)(struct device * , struct device_attribute * , char const * ,
                    size_t ) ;
};
struct device_dma_parameters {
   unsigned int max_segment_size ;
   unsigned long segment_boundary_mask ;
};
struct acpi_dev_node {
   void *handle ;
};
struct dma_coherent_mem;
struct device {
   struct device *parent ;
   struct device_private *p ;
   struct kobject kobj ;
   char const *init_name ;
   struct device_type const *type ;
   struct mutex mutex ;
   struct bus_type *bus ;
   struct device_driver *driver ;
   void *platform_data ;
   struct dev_pm_info power ;
   struct dev_pm_domain *pm_domain ;
   int numa_node ;
   u64 *dma_mask ;
   u64 coherent_dma_mask ;
   struct device_dma_parameters *dma_parms ;
   struct list_head dma_pools ;
   struct dma_coherent_mem *dma_mem ;
   struct dev_archdata archdata ;
   struct device_node *of_node ;
   struct acpi_dev_node acpi_node ;
   dev_t devt ;
   u32 id ;
   spinlock_t devres_lock ;
   struct list_head devres_head ;
   struct klist_node knode_class ;
   struct class *class ;
   struct attribute_group const **groups ;
   void (*release)(struct device * ) ;
   struct iommu_group *iommu_group ;
};
struct wakeup_source {
   char const *name ;
   struct list_head entry ;
   spinlock_t lock ;
   struct timer_list timer ;
   unsigned long timer_expires ;
   ktime_t total_time ;
   ktime_t max_time ;
   ktime_t last_time ;
   ktime_t start_prevent_time ;
   ktime_t prevent_sleep_time ;
   unsigned long event_count ;
   unsigned long active_count ;
   unsigned long relax_count ;
   unsigned long expire_count ;
   unsigned long wakeup_count ;
   bool active ;
   bool autosleep_enabled ;
};
struct hotplug_slot;
struct pci_slot {
   struct pci_bus *bus ;
   struct list_head list ;
   struct hotplug_slot *hotplug ;
   unsigned char number ;
   struct kobject kobj ;
};
typedef int pci_power_t;
typedef unsigned int pci_channel_state_t;
enum pci_channel_state {
    pci_channel_io_normal = 1,
    pci_channel_io_frozen = 2,
    pci_channel_io_perm_failure = 3
} ;
typedef unsigned short pci_dev_flags_t;
typedef unsigned short pci_bus_flags_t;
struct pcie_link_state;
struct pci_vpd;
struct pci_sriov;
struct pci_ats;
struct proc_dir_entry;
struct pci_driver;
union __anonunion_ldv_15725_137 {
   struct pci_sriov *sriov ;
   struct pci_dev *physfn ;
};
struct pci_dev {
   struct list_head bus_list ;
   struct pci_bus *bus ;
   struct pci_bus *subordinate ;
   void *sysdata ;
   struct proc_dir_entry *procent ;
   struct pci_slot *slot ;
   unsigned int devfn ;
   unsigned short vendor ;
   unsigned short device ;
   unsigned short subsystem_vendor ;
   unsigned short subsystem_device ;
   unsigned int class ;
   u8 revision ;
   u8 hdr_type ;
   u8 pcie_cap ;
   unsigned char pcie_mpss : 3 ;
   u8 rom_base_reg ;
   u8 pin ;
   u16 pcie_flags_reg ;
   struct pci_driver *driver ;
   u64 dma_mask ;
   struct device_dma_parameters dma_parms ;
   pci_power_t current_state ;
   int pm_cap ;
   unsigned char pme_support : 5 ;
   unsigned char pme_interrupt : 1 ;
   unsigned char pme_poll : 1 ;
   unsigned char d1_support : 1 ;
   unsigned char d2_support : 1 ;
   unsigned char no_d1d2 : 1 ;
   unsigned char no_d3cold : 1 ;
   unsigned char d3cold_allowed : 1 ;
   unsigned char mmio_always_on : 1 ;
   unsigned char wakeup_prepared : 1 ;
   unsigned char runtime_d3cold : 1 ;
   unsigned int d3_delay ;
   unsigned int d3cold_delay ;
   struct pcie_link_state *link_state ;
   pci_channel_state_t error_state ;
   struct device dev ;
   int cfg_size ;
   unsigned int irq ;
   struct resource resource[17U] ;
   unsigned char transparent : 1 ;
   unsigned char multifunction : 1 ;
   unsigned char is_added : 1 ;
   unsigned char is_busmaster : 1 ;
   unsigned char no_msi : 1 ;
   unsigned char block_cfg_access : 1 ;
   unsigned char broken_parity_status : 1 ;
   unsigned char irq_reroute_variant : 2 ;
   unsigned char msi_enabled : 1 ;
   unsigned char msix_enabled : 1 ;
   unsigned char ari_enabled : 1 ;
   unsigned char is_managed : 1 ;
   unsigned char is_pcie : 1 ;
   unsigned char needs_freset : 1 ;
   unsigned char state_saved : 1 ;
   unsigned char is_physfn : 1 ;
   unsigned char is_virtfn : 1 ;
   unsigned char reset_fn : 1 ;
   unsigned char is_hotplug_bridge : 1 ;
   unsigned char __aer_firmware_first_valid : 1 ;
   unsigned char __aer_firmware_first : 1 ;
   unsigned char broken_intx_masking : 1 ;
   unsigned char io_window_1k : 1 ;
   pci_dev_flags_t dev_flags ;
   atomic_t enable_cnt ;
   u32 saved_config_space[16U] ;
   struct hlist_head saved_cap_space ;
   struct bin_attribute *rom_attr ;
   int rom_attr_enabled ;
   struct bin_attribute *res_attr[17U] ;
   struct bin_attribute *res_attr_wc[17U] ;
   struct list_head msi_list ;
   struct kset *msi_kset ;
   struct pci_vpd *vpd ;
   union __anonunion_ldv_15725_137 ldv_15725 ;
   struct pci_ats *ats ;
   phys_addr_t rom ;
   size_t romlen ;
};
struct pci_ops;
struct pci_bus {
   struct list_head node ;
   struct pci_bus *parent ;
   struct list_head children ;
   struct list_head devices ;
   struct pci_dev *self ;
   struct list_head slots ;
   struct resource *resource[4U] ;
   struct list_head resources ;
   struct resource busn_res ;
   struct pci_ops *ops ;
   void *sysdata ;
   struct proc_dir_entry *procdir ;
   unsigned char number ;
   unsigned char primary ;
   unsigned char max_bus_speed ;
   unsigned char cur_bus_speed ;
   char name[48U] ;
   unsigned short bridge_ctl ;
   pci_bus_flags_t bus_flags ;
   struct device *bridge ;
   struct device dev ;
   struct bin_attribute *legacy_io ;
   struct bin_attribute *legacy_mem ;
   unsigned char is_added : 1 ;
};
struct pci_ops {
   int (*read)(struct pci_bus * , unsigned int , int , int , u32 * ) ;
   int (*write)(struct pci_bus * , unsigned int , int , int , u32 ) ;
};
struct pci_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
typedef unsigned int pci_ers_result_t;
struct pci_error_handlers {
   pci_ers_result_t (*error_detected)(struct pci_dev * , enum pci_channel_state ) ;
   pci_ers_result_t (*mmio_enabled)(struct pci_dev * ) ;
   pci_ers_result_t (*link_reset)(struct pci_dev * ) ;
   pci_ers_result_t (*slot_reset)(struct pci_dev * ) ;
   void (*resume)(struct pci_dev * ) ;
};
struct pci_driver {
   struct list_head node ;
   char const *name ;
   struct pci_device_id const *id_table ;
   int (*probe)(struct pci_dev * , struct pci_device_id const * ) ;
   void (*remove)(struct pci_dev * ) ;
   int (*suspend)(struct pci_dev * , pm_message_t ) ;
   int (*suspend_late)(struct pci_dev * , pm_message_t ) ;
   int (*resume_early)(struct pci_dev * ) ;
   int (*resume)(struct pci_dev * ) ;
   void (*shutdown)(struct pci_dev * ) ;
   int (*sriov_configure)(struct pci_dev * , int ) ;
   struct pci_error_handlers const *err_handler ;
   struct device_driver driver ;
   struct pci_dynids dynids ;
};
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct arch_uprobe_task {
   unsigned long saved_scratch_register ;
   unsigned int saved_trap_nr ;
   unsigned int saved_tf ;
};
enum uprobe_task_state {
    UTASK_RUNNING = 0,
    UTASK_SSTEP = 1,
    UTASK_SSTEP_ACK = 2,
    UTASK_SSTEP_TRAPPED = 3
} ;
struct uprobe;
struct uprobe_task {
   enum uprobe_task_state state ;
   struct arch_uprobe_task autask ;
   struct uprobe *active_uprobe ;
   unsigned long xol_vaddr ;
   unsigned long vaddr ;
};
struct xol_area {
   wait_queue_head_t wq ;
   atomic_t slot_count ;
   unsigned long *bitmap ;
   struct page *page ;
   unsigned long vaddr ;
};
struct uprobes_state {
   struct xol_area *xol_area ;
};
struct address_space;
union __anonunion_ldv_16756_139 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_16766_143 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_16768_142 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_16766_143 ldv_16766 ;
   int units ;
};
struct __anonstruct_ldv_16770_141 {
   union __anonunion_ldv_16768_142 ldv_16768 ;
   atomic_t _count ;
};
union __anonunion_ldv_16771_140 {
   unsigned long counters ;
   struct __anonstruct_ldv_16770_141 ldv_16770 ;
};
struct __anonstruct_ldv_16772_138 {
   union __anonunion_ldv_16756_139 ldv_16756 ;
   union __anonunion_ldv_16771_140 ldv_16771 ;
};
struct __anonstruct_ldv_16779_145 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_16783_144 {
   struct list_head lru ;
   struct __anonstruct_ldv_16779_145 ldv_16779 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_16788_146 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_16772_138 ldv_16772 ;
   union __anonunion_ldv_16783_144 ldv_16783 ;
   union __anonunion_ldv_16788_146 ldv_16788 ;
   unsigned long debug_flags ;
   int _last_nid ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_148 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_147 {
   struct __anonstruct_linear_148 linear ;
   struct list_head nonlinear ;
};
struct anon_vma;
struct vm_operations_struct;
struct mempolicy;
struct vm_area_struct {
   unsigned long vm_start ;
   unsigned long vm_end ;
   struct vm_area_struct *vm_next ;
   struct vm_area_struct *vm_prev ;
   struct rb_node vm_rb ;
   unsigned long rb_subtree_gap ;
   struct mm_struct *vm_mm ;
   pgprot_t vm_page_prot ;
   unsigned long vm_flags ;
   union __anonunion_shared_147 shared ;
   struct list_head anon_vma_chain ;
   struct anon_vma *anon_vma ;
   struct vm_operations_struct const *vm_ops ;
   unsigned long vm_pgoff ;
   struct file *vm_file ;
   void *vm_private_data ;
   struct mempolicy *vm_policy ;
};
struct core_thread {
   struct task_struct *task ;
   struct core_thread *next ;
};
struct core_state {
   atomic_t nr_threads ;
   struct core_thread dumper ;
   struct completion startup ;
};
struct mm_rss_stat {
   atomic_long_t count[3U] ;
};
struct linux_binfmt;
struct mmu_notifier_mm;
struct mm_struct {
   struct vm_area_struct *mmap ;
   struct rb_root mm_rb ;
   struct vm_area_struct *mmap_cache ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   void (*unmap_area)(struct mm_struct * , unsigned long ) ;
   unsigned long mmap_base ;
   unsigned long task_size ;
   unsigned long cached_hole_size ;
   unsigned long free_area_cache ;
   unsigned long highest_vm_end ;
   pgd_t *pgd ;
   atomic_t mm_users ;
   atomic_t mm_count ;
   int map_count ;
   spinlock_t page_table_lock ;
   struct rw_semaphore mmap_sem ;
   struct list_head mmlist ;
   unsigned long hiwater_rss ;
   unsigned long hiwater_vm ;
   unsigned long total_vm ;
   unsigned long locked_vm ;
   unsigned long pinned_vm ;
   unsigned long shared_vm ;
   unsigned long exec_vm ;
   unsigned long stack_vm ;
   unsigned long def_flags ;
   unsigned long nr_ptes ;
   unsigned long start_code ;
   unsigned long end_code ;
   unsigned long start_data ;
   unsigned long end_data ;
   unsigned long start_brk ;
   unsigned long brk ;
   unsigned long start_stack ;
   unsigned long arg_start ;
   unsigned long arg_end ;
   unsigned long env_start ;
   unsigned long env_end ;
   unsigned long saved_auxv[44U] ;
   struct mm_rss_stat rss_stat ;
   struct linux_binfmt *binfmt ;
   cpumask_var_t cpu_vm_mask_var ;
   mm_context_t context ;
   unsigned long flags ;
   struct core_state *core_state ;
   spinlock_t ioctx_lock ;
   struct hlist_head ioctx_list ;
   struct task_struct *owner ;
   struct file *exe_file ;
   struct mmu_notifier_mm *mmu_notifier_mm ;
   pgtable_t pmd_huge_pte ;
   struct cpumask cpumask_allocation ;
   unsigned long numa_next_scan ;
   unsigned long numa_next_reset ;
   unsigned long numa_scan_offset ;
   int numa_scan_seq ;
   int first_nid ;
   struct uprobes_state uprobes_state ;
};
struct user_struct;
struct vm_fault {
   unsigned int flags ;
   unsigned long pgoff ;
   void *virtual_address ;
   struct page *page ;
};
struct vm_operations_struct {
   void (*open)(struct vm_area_struct * ) ;
   void (*close)(struct vm_area_struct * ) ;
   int (*fault)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*page_mkwrite)(struct vm_area_struct * , struct vm_fault * ) ;
   int (*access)(struct vm_area_struct * , unsigned long , void * , int , int ) ;
   int (*set_policy)(struct vm_area_struct * , struct mempolicy * ) ;
   struct mempolicy *(*get_policy)(struct vm_area_struct * , unsigned long ) ;
   int (*migrate)(struct vm_area_struct * , nodemask_t const * , nodemask_t const * ,
                  unsigned long ) ;
   int (*remap_pages)(struct vm_area_struct * , unsigned long , unsigned long ,
                      unsigned long ) ;
};
struct mem_cgroup;
struct __anonstruct_ldv_19547_150 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_19548_149 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_19547_150 ldv_19547 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_19548_149 ldv_19548 ;
};
struct kmem_cache_cpu {
   void **freelist ;
   unsigned long tid ;
   struct page *page ;
   struct page *partial ;
   unsigned int stat[26U] ;
};
struct kmem_cache_node {
   spinlock_t list_lock ;
   unsigned long nr_partial ;
   struct list_head partial ;
   atomic_long_t nr_slabs ;
   atomic_long_t total_objects ;
   struct list_head full ;
};
struct kmem_cache_order_objects {
   unsigned long x ;
};
struct kmem_cache {
   struct kmem_cache_cpu *cpu_slab ;
   unsigned long flags ;
   unsigned long min_partial ;
   int size ;
   int object_size ;
   int offset ;
   int cpu_partial ;
   struct kmem_cache_order_objects oo ;
   struct kmem_cache_order_objects max ;
   struct kmem_cache_order_objects min ;
   gfp_t allocflags ;
   int refcount ;
   void (*ctor)(void * ) ;
   int inuse ;
   int align ;
   int reserved ;
   char const *name ;
   struct list_head list ;
   struct kobject kobj ;
   struct memcg_cache_params *memcg_params ;
   int max_attr_size ;
   int remote_node_defrag_ratio ;
   struct kmem_cache_node *node[1024U] ;
};
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
struct dma_map_ops {
   void *(*alloc)(struct device * , size_t , dma_addr_t * , gfp_t , struct dma_attrs * ) ;
   void (*free)(struct device * , size_t , void * , dma_addr_t , struct dma_attrs * ) ;
   int (*mmap)(struct device * , struct vm_area_struct * , void * , dma_addr_t ,
               size_t , struct dma_attrs * ) ;
   int (*get_sgtable)(struct device * , struct sg_table * , void * , dma_addr_t ,
                      size_t , struct dma_attrs * ) ;
   dma_addr_t (*map_page)(struct device * , struct page * , unsigned long , size_t ,
                          enum dma_data_direction , struct dma_attrs * ) ;
   void (*unmap_page)(struct device * , dma_addr_t , size_t , enum dma_data_direction ,
                      struct dma_attrs * ) ;
   int (*map_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                 struct dma_attrs * ) ;
   void (*unmap_sg)(struct device * , struct scatterlist * , int , enum dma_data_direction ,
                    struct dma_attrs * ) ;
   void (*sync_single_for_cpu)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_single_for_device)(struct device * , dma_addr_t , size_t , enum dma_data_direction ) ;
   void (*sync_sg_for_cpu)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   void (*sync_sg_for_device)(struct device * , struct scatterlist * , int , enum dma_data_direction ) ;
   int (*mapping_error)(struct device * , dma_addr_t ) ;
   int (*dma_supported)(struct device * , u64 ) ;
   int (*set_dma_mask)(struct device * , u64 ) ;
   int is_phys ;
};
typedef void *mempool_alloc_t(gfp_t , void * );
typedef void mempool_free_t(void * , void * );
struct mempool_s {
   spinlock_t lock ;
   int min_nr ;
   int curr_nr ;
   void **elements ;
   void *pool_data ;
   mempool_alloc_t *alloc ;
   mempool_free_t *free ;
   wait_queue_head_t wait ;
};
typedef struct mempool_s mempool_t;
struct semaphore {
   raw_spinlock_t lock ;
   unsigned int count ;
   struct list_head wait_list ;
};
struct __anonstruct_s_152 {
   u8 version_offset ;
   u8 flags ;
   u16 size ;
   unsigned short target_tid : 12 ;
   unsigned short init_tid : 12 ;
   unsigned char function ;
   u32 icntxt ;
   u32 tcntxt ;
};
union __anonunion_u_151 {
   struct __anonstruct_s_152 s ;
   u32 head[4U] ;
};
struct i2o_message {
   union __anonunion_u_151 u ;
   u32 body[0U] ;
};
struct i2o_msg_mfa {
   u32 mfa ;
   struct i2o_message msg ;
};
struct i2o_controller;
struct i2o_device {
   i2o_lct_entry lct_data ;
   struct i2o_controller *iop ;
   struct list_head list ;
   struct device device ;
   struct mutex lock ;
};
struct i2o_class_id {
   unsigned short class_id : 12 ;
};
struct i2o_driver {
   char *name ;
   int context ;
   struct i2o_class_id *classes ;
   int (*reply)(struct i2o_controller * , u32 , struct i2o_message * ) ;
   void (*event)(struct work_struct * ) ;
   struct workqueue_struct *event_queue ;
   struct device_driver driver ;
   void (*notify_controller_add)(struct i2o_controller * ) ;
   void (*notify_controller_remove)(struct i2o_controller * ) ;
   void (*notify_device_add)(struct i2o_device * ) ;
   void (*notify_device_remove)(struct i2o_device * ) ;
   struct semaphore lock ;
};
struct i2o_dma {
   void *virt ;
   dma_addr_t phys ;
   size_t len ;
};
struct i2o_pool {
   char *name ;
   struct kmem_cache *slab ;
   mempool_t *mempool ;
};
struct i2o_io {
   void *virt ;
   unsigned long phys ;
   unsigned long len ;
};
struct i2o_context_list_element {
   struct list_head list ;
   u32 context ;
   void *ptr ;
   unsigned long timestamp ;
};
struct i2o_controller {
   char name[16U] ;
   int unit ;
   int type ;
   struct pci_dev *pdev ;
   unsigned char promise : 1 ;
   unsigned char adaptec : 1 ;
   unsigned char raptor : 1 ;
   unsigned char no_quiesce : 1 ;
   unsigned char short_req : 1 ;
   unsigned char limit_sectors : 1 ;
   unsigned char pae_support : 1 ;
   struct list_head devices ;
   struct list_head list ;
   void *in_port ;
   void *out_port ;
   void *irq_status ;
   void *irq_mask ;
   struct i2o_dma status ;
   struct i2o_dma hrt ;
   i2o_lct *lct ;
   struct i2o_dma dlct ;
   struct mutex lct_lock ;
   struct i2o_dma status_block ;
   struct i2o_io base ;
   struct i2o_io in_queue ;
   struct i2o_dma out_queue ;
   struct i2o_pool in_msg ;
   unsigned char battery : 1 ;
   unsigned char io_alloc : 1 ;
   unsigned char mem_alloc : 1 ;
   struct resource io_resource ;
   struct resource mem_resource ;
   struct device device ;
   struct i2o_device *exec ;
   spinlock_t context_list_lock ;
   atomic_t context_list_counter ;
   struct list_head context_list ;
   spinlock_t lock ;
   void *driver_data[8U] ;
};
struct i2o_sys_tbl_entry {
   u16 org_id ;
   u16 reserved1 ;
   unsigned short iop_id : 12 ;
   unsigned int reserved2 : 20 ;
   unsigned short seg_num : 12 ;
   unsigned char i2o_version : 4 ;
   u8 iop_state ;
   u8 msg_type ;
   u16 frame_size ;
   u16 reserved3 ;
   u32 last_changed ;
   u32 iop_capabilities ;
   u32 inbound_low ;
   u32 inbound_high ;
};
struct i2o_sys_tbl {
   u8 num_entries ;
   u8 version ;
   u16 reserved1 ;
   u32 change_ind ;
   u32 reserved2 ;
   u32 reserved3 ;
   struct i2o_sys_tbl_entry iops[0U] ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_154 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_154 sigset_t;
struct siginfo;
typedef void __signalfn_t(int );
typedef __signalfn_t *__sighandler_t;
typedef void __restorefn_t(void);
typedef __restorefn_t *__sigrestore_t;
struct sigaction {
   __sighandler_t sa_handler ;
   unsigned long sa_flags ;
   __sigrestore_t sa_restorer ;
   sigset_t sa_mask ;
};
struct k_sigaction {
   struct sigaction sa ;
};
union sigval {
   int sival_int ;
   void *sival_ptr ;
};
typedef union sigval sigval_t;
struct __anonstruct__kill_156 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_157 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_158 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_159 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_160 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_161 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_162 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_155 {
   int _pad[28U] ;
   struct __anonstruct__kill_156 _kill ;
   struct __anonstruct__timer_157 _timer ;
   struct __anonstruct__rt_158 _rt ;
   struct __anonstruct__sigchld_159 _sigchld ;
   struct __anonstruct__sigfault_160 _sigfault ;
   struct __anonstruct__sigpoll_161 _sigpoll ;
   struct __anonstruct__sigsys_162 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_155 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct pid_namespace;
struct upid {
   int nr ;
   struct pid_namespace *ns ;
   struct hlist_node pid_chain ;
};
struct pid {
   atomic_t count ;
   unsigned int level ;
   struct hlist_head tasks[3U] ;
   struct callback_head rcu ;
   struct upid numbers[1U] ;
};
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct rt_mutex_waiter;
struct rlimit {
   unsigned long rlim_cur ;
   unsigned long rlim_max ;
};
struct timerqueue_node {
   struct rb_node node ;
   ktime_t expires ;
};
struct timerqueue_head {
   struct rb_root head ;
   struct timerqueue_node *next ;
};
struct hrtimer_clock_base;
struct hrtimer_cpu_base;
enum hrtimer_restart {
    HRTIMER_NORESTART = 0,
    HRTIMER_RESTART = 1
} ;
struct hrtimer {
   struct timerqueue_node node ;
   ktime_t _softexpires ;
   enum hrtimer_restart (*function)(struct hrtimer * ) ;
   struct hrtimer_clock_base *base ;
   unsigned long state ;
   int start_pid ;
   void *start_site ;
   char start_comm[16U] ;
};
struct hrtimer_clock_base {
   struct hrtimer_cpu_base *cpu_base ;
   int index ;
   clockid_t clockid ;
   struct timerqueue_head active ;
   ktime_t resolution ;
   ktime_t (*get_time)(void) ;
   ktime_t softirq_time ;
   ktime_t offset ;
};
struct hrtimer_cpu_base {
   raw_spinlock_t lock ;
   unsigned int active_bases ;
   unsigned int clock_was_set ;
   ktime_t expires_next ;
   int hres_active ;
   int hang_detected ;
   unsigned long nr_events ;
   unsigned long nr_retries ;
   unsigned long nr_hangs ;
   ktime_t max_hang_time ;
   struct hrtimer_clock_base clock_base[3U] ;
};
struct task_io_accounting {
   u64 rchar ;
   u64 wchar ;
   u64 syscr ;
   u64 syscw ;
   u64 read_bytes ;
   u64 write_bytes ;
   u64 cancelled_write_bytes ;
};
struct latency_record {
   unsigned long backtrace[12U] ;
   unsigned int count ;
   unsigned long time ;
   unsigned long max ;
};
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_list;
union __anonunion_ldv_22684_165 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_22693_166 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_167 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_168 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_22684_165 ldv_22684 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_22693_166 ldv_22693 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_167 type_data ;
   union __anonunion_payload_168 payload ;
};
struct audit_context;
struct group_info {
   atomic_t usage ;
   int ngroups ;
   int nblocks ;
   kgid_t small_block[32U] ;
   kgid_t *blocks[0U] ;
};
struct thread_group_cred;
struct cred {
   atomic_t usage ;
   atomic_t subscribers ;
   void *put_addr ;
   unsigned int magic ;
   kuid_t uid ;
   kgid_t gid ;
   kuid_t suid ;
   kgid_t sgid ;
   kuid_t euid ;
   kgid_t egid ;
   kuid_t fsuid ;
   kgid_t fsgid ;
   unsigned int securebits ;
   kernel_cap_t cap_inheritable ;
   kernel_cap_t cap_permitted ;
   kernel_cap_t cap_effective ;
   kernel_cap_t cap_bset ;
   unsigned char jit_keyring ;
   struct key *session_keyring ;
   struct key *process_keyring ;
   struct key *thread_keyring ;
   struct key *request_key_auth ;
   struct thread_group_cred *tgcred ;
   void *security ;
   struct user_struct *user ;
   struct user_namespace *user_ns ;
   struct group_info *group_info ;
   struct callback_head rcu ;
};
struct llist_node;
struct llist_node {
   struct llist_node *next ;
};
struct futex_pi_state;
struct robust_list_head;
struct bio_list;
struct fs_struct;
struct perf_event_context;
struct blk_plug;
struct cfs_rq;
struct task_group;
struct sighand_struct {
   atomic_t count ;
   struct k_sigaction action[64U] ;
   spinlock_t siglock ;
   wait_queue_head_t signalfd_wqh ;
};
struct pacct_struct {
   int ac_flag ;
   long ac_exitcode ;
   unsigned long ac_mem ;
   cputime_t ac_utime ;
   cputime_t ac_stime ;
   unsigned long ac_minflt ;
   unsigned long ac_majflt ;
};
struct cpu_itimer {
   cputime_t expires ;
   cputime_t incr ;
   u32 error ;
   u32 incr_error ;
};
struct cputime {
   cputime_t utime ;
   cputime_t stime ;
};
struct task_cputime {
   cputime_t utime ;
   cputime_t stime ;
   unsigned long long sum_exec_runtime ;
};
struct thread_group_cputimer {
   struct task_cputime cputime ;
   int running ;
   raw_spinlock_t lock ;
};
struct autogroup;
struct tty_struct;
struct taskstats;
struct tty_audit_buf;
struct signal_struct {
   atomic_t sigcnt ;
   atomic_t live ;
   int nr_threads ;
   wait_queue_head_t wait_chldexit ;
   struct task_struct *curr_target ;
   struct sigpending shared_pending ;
   int group_exit_code ;
   int notify_count ;
   struct task_struct *group_exit_task ;
   int group_stop_count ;
   unsigned int flags ;
   unsigned char is_child_subreaper : 1 ;
   unsigned char has_child_subreaper : 1 ;
   struct list_head posix_timers ;
   struct hrtimer real_timer ;
   struct pid *leader_pid ;
   ktime_t it_real_incr ;
   struct cpu_itimer it[2U] ;
   struct thread_group_cputimer cputimer ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct pid *tty_old_pgrp ;
   int leader ;
   struct tty_struct *tty ;
   struct autogroup *autogroup ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t cutime ;
   cputime_t cstime ;
   cputime_t gtime ;
   cputime_t cgtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   unsigned long cnvcsw ;
   unsigned long cnivcsw ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   unsigned long cmin_flt ;
   unsigned long cmaj_flt ;
   unsigned long inblock ;
   unsigned long oublock ;
   unsigned long cinblock ;
   unsigned long coublock ;
   unsigned long maxrss ;
   unsigned long cmaxrss ;
   struct task_io_accounting ioac ;
   unsigned long long sum_sched_runtime ;
   struct rlimit rlim[16U] ;
   struct pacct_struct pacct ;
   struct taskstats *stats ;
   unsigned int audit_tty ;
   struct tty_audit_buf *tty_audit_buf ;
   struct rw_semaphore group_rwsem ;
   oom_flags_t oom_flags ;
   short oom_score_adj ;
   short oom_score_adj_min ;
   struct mutex cred_guard_mutex ;
};
struct user_struct {
   atomic_t __count ;
   atomic_t processes ;
   atomic_t files ;
   atomic_t sigpending ;
   atomic_t inotify_watches ;
   atomic_t inotify_devs ;
   atomic_t fanotify_listeners ;
   atomic_long_t epoll_watches ;
   unsigned long mq_bytes ;
   unsigned long locked_shm ;
   struct key *uid_keyring ;
   struct key *session_keyring ;
   struct hlist_node uidhash_node ;
   kuid_t uid ;
   atomic_long_t locked_vm ;
};
struct backing_dev_info;
struct reclaim_state;
struct sched_info {
   unsigned long pcount ;
   unsigned long long run_delay ;
   unsigned long long last_arrival ;
   unsigned long long last_queued ;
};
struct task_delay_info {
   spinlock_t lock ;
   unsigned int flags ;
   struct timespec blkio_start ;
   struct timespec blkio_end ;
   u64 blkio_delay ;
   u64 swapin_delay ;
   u32 blkio_count ;
   u32 swapin_count ;
   struct timespec freepages_start ;
   struct timespec freepages_end ;
   u64 freepages_delay ;
   u32 freepages_count ;
};
struct io_context;
struct pipe_inode_info;
struct rq;
struct sched_class {
   struct sched_class const *next ;
   void (*enqueue_task)(struct rq * , struct task_struct * , int ) ;
   void (*dequeue_task)(struct rq * , struct task_struct * , int ) ;
   void (*yield_task)(struct rq * ) ;
   bool (*yield_to_task)(struct rq * , struct task_struct * , bool ) ;
   void (*check_preempt_curr)(struct rq * , struct task_struct * , int ) ;
   struct task_struct *(*pick_next_task)(struct rq * ) ;
   void (*put_prev_task)(struct rq * , struct task_struct * ) ;
   int (*select_task_rq)(struct task_struct * , int , int ) ;
   void (*migrate_task_rq)(struct task_struct * , int ) ;
   void (*pre_schedule)(struct rq * , struct task_struct * ) ;
   void (*post_schedule)(struct rq * ) ;
   void (*task_waking)(struct task_struct * ) ;
   void (*task_woken)(struct rq * , struct task_struct * ) ;
   void (*set_cpus_allowed)(struct task_struct * , struct cpumask const * ) ;
   void (*rq_online)(struct rq * ) ;
   void (*rq_offline)(struct rq * ) ;
   void (*set_curr_task)(struct rq * ) ;
   void (*task_tick)(struct rq * , struct task_struct * , int ) ;
   void (*task_fork)(struct task_struct * ) ;
   void (*switched_from)(struct rq * , struct task_struct * ) ;
   void (*switched_to)(struct rq * , struct task_struct * ) ;
   void (*prio_changed)(struct rq * , struct task_struct * , int ) ;
   unsigned int (*get_rr_interval)(struct rq * , struct task_struct * ) ;
   void (*task_move_group)(struct task_struct * , int ) ;
};
struct load_weight {
   unsigned long weight ;
   unsigned long inv_weight ;
};
struct sched_avg {
   u32 runnable_avg_sum ;
   u32 runnable_avg_period ;
   u64 last_runnable_update ;
   s64 decay_count ;
   unsigned long load_avg_contrib ;
};
struct sched_statistics {
   u64 wait_start ;
   u64 wait_max ;
   u64 wait_count ;
   u64 wait_sum ;
   u64 iowait_count ;
   u64 iowait_sum ;
   u64 sleep_start ;
   u64 sleep_max ;
   s64 sum_sleep_runtime ;
   u64 block_start ;
   u64 block_max ;
   u64 exec_max ;
   u64 slice_max ;
   u64 nr_migrations_cold ;
   u64 nr_failed_migrations_affine ;
   u64 nr_failed_migrations_running ;
   u64 nr_failed_migrations_hot ;
   u64 nr_forced_migrations ;
   u64 nr_wakeups ;
   u64 nr_wakeups_sync ;
   u64 nr_wakeups_migrate ;
   u64 nr_wakeups_local ;
   u64 nr_wakeups_remote ;
   u64 nr_wakeups_affine ;
   u64 nr_wakeups_affine_attempts ;
   u64 nr_wakeups_passive ;
   u64 nr_wakeups_idle ;
};
struct sched_entity {
   struct load_weight load ;
   struct rb_node run_node ;
   struct list_head group_node ;
   unsigned int on_rq ;
   u64 exec_start ;
   u64 sum_exec_runtime ;
   u64 vruntime ;
   u64 prev_sum_exec_runtime ;
   u64 nr_migrations ;
   struct sched_statistics statistics ;
   struct sched_entity *parent ;
   struct cfs_rq *cfs_rq ;
   struct cfs_rq *my_q ;
   struct sched_avg avg ;
};
struct rt_rq;
struct sched_rt_entity {
   struct list_head run_list ;
   unsigned long timeout ;
   unsigned int time_slice ;
   struct sched_rt_entity *back ;
   struct sched_rt_entity *parent ;
   struct rt_rq *rt_rq ;
   struct rt_rq *my_q ;
};
struct memcg_batch_info {
   int do_batch ;
   struct mem_cgroup *memcg ;
   unsigned long nr_pages ;
   unsigned long memsw_nr_pages ;
};
struct files_struct;
struct css_set;
struct compat_robust_list_head;
struct task_struct {
   long volatile state ;
   void *stack ;
   atomic_t usage ;
   unsigned int flags ;
   unsigned int ptrace ;
   struct llist_node wake_entry ;
   int on_cpu ;
   int on_rq ;
   int prio ;
   int static_prio ;
   int normal_prio ;
   unsigned int rt_priority ;
   struct sched_class const *sched_class ;
   struct sched_entity se ;
   struct sched_rt_entity rt ;
   struct task_group *sched_task_group ;
   struct hlist_head preempt_notifiers ;
   unsigned char fpu_counter ;
   unsigned int policy ;
   int nr_cpus_allowed ;
   cpumask_t cpus_allowed ;
   struct sched_info sched_info ;
   struct list_head tasks ;
   struct plist_node pushable_tasks ;
   struct mm_struct *mm ;
   struct mm_struct *active_mm ;
   unsigned char brk_randomized : 1 ;
   int exit_state ;
   int exit_code ;
   int exit_signal ;
   int pdeath_signal ;
   unsigned int jobctl ;
   unsigned int personality ;
   unsigned char did_exec : 1 ;
   unsigned char in_execve : 1 ;
   unsigned char in_iowait : 1 ;
   unsigned char no_new_privs : 1 ;
   unsigned char sched_reset_on_fork : 1 ;
   unsigned char sched_contributes_to_load : 1 ;
   pid_t pid ;
   pid_t tgid ;
   unsigned long stack_canary ;
   struct task_struct *real_parent ;
   struct task_struct *parent ;
   struct list_head children ;
   struct list_head sibling ;
   struct task_struct *group_leader ;
   struct list_head ptraced ;
   struct list_head ptrace_entry ;
   struct pid_link pids[3U] ;
   struct list_head thread_group ;
   struct completion *vfork_done ;
   int *set_child_tid ;
   int *clear_child_tid ;
   cputime_t utime ;
   cputime_t stime ;
   cputime_t utimescaled ;
   cputime_t stimescaled ;
   cputime_t gtime ;
   struct cputime prev_cputime ;
   unsigned long nvcsw ;
   unsigned long nivcsw ;
   struct timespec start_time ;
   struct timespec real_start_time ;
   unsigned long min_flt ;
   unsigned long maj_flt ;
   struct task_cputime cputime_expires ;
   struct list_head cpu_timers[3U] ;
   struct cred const *real_cred ;
   struct cred const *cred ;
   char comm[16U] ;
   int link_count ;
   int total_link_count ;
   struct sysv_sem sysvsem ;
   unsigned long last_switch_count ;
   struct thread_struct thread ;
   struct fs_struct *fs ;
   struct files_struct *files ;
   struct nsproxy *nsproxy ;
   struct signal_struct *signal ;
   struct sighand_struct *sighand ;
   sigset_t blocked ;
   sigset_t real_blocked ;
   sigset_t saved_sigmask ;
   struct sigpending pending ;
   unsigned long sas_ss_sp ;
   size_t sas_ss_size ;
   int (*notifier)(void * ) ;
   void *notifier_data ;
   sigset_t *notifier_mask ;
   struct callback_head *task_works ;
   struct audit_context *audit_context ;
   kuid_t loginuid ;
   unsigned int sessionid ;
   struct seccomp seccomp ;
   u32 parent_exec_id ;
   u32 self_exec_id ;
   spinlock_t alloc_lock ;
   raw_spinlock_t pi_lock ;
   struct plist_head pi_waiters ;
   struct rt_mutex_waiter *pi_blocked_on ;
   struct mutex_waiter *blocked_on ;
   unsigned int irq_events ;
   unsigned long hardirq_enable_ip ;
   unsigned long hardirq_disable_ip ;
   unsigned int hardirq_enable_event ;
   unsigned int hardirq_disable_event ;
   int hardirqs_enabled ;
   int hardirq_context ;
   unsigned long softirq_disable_ip ;
   unsigned long softirq_enable_ip ;
   unsigned int softirq_disable_event ;
   unsigned int softirq_enable_event ;
   int softirqs_enabled ;
   int softirq_context ;
   u64 curr_chain_key ;
   int lockdep_depth ;
   unsigned int lockdep_recursion ;
   struct held_lock held_locks[48U] ;
   gfp_t lockdep_reclaim_gfp ;
   void *journal_info ;
   struct bio_list *bio_list ;
   struct blk_plug *plug ;
   struct reclaim_state *reclaim_state ;
   struct backing_dev_info *backing_dev_info ;
   struct io_context *io_context ;
   unsigned long ptrace_message ;
   siginfo_t *last_siginfo ;
   struct task_io_accounting ioac ;
   u64 acct_rss_mem1 ;
   u64 acct_vm_mem1 ;
   cputime_t acct_timexpd ;
   nodemask_t mems_allowed ;
   seqcount_t mems_allowed_seq ;
   int cpuset_mem_spread_rotor ;
   int cpuset_slab_spread_rotor ;
   struct css_set *cgroups ;
   struct list_head cg_list ;
   struct robust_list_head *robust_list ;
   struct compat_robust_list_head *compat_robust_list ;
   struct list_head pi_state_list ;
   struct futex_pi_state *pi_state_cache ;
   struct perf_event_context *perf_event_ctxp[2U] ;
   struct mutex perf_event_mutex ;
   struct list_head perf_event_list ;
   struct mempolicy *mempolicy ;
   short il_next ;
   short pref_node_fork ;
   int numa_scan_seq ;
   int numa_migrate_seq ;
   unsigned int numa_scan_period ;
   u64 node_stamp ;
   struct callback_head numa_work ;
   struct callback_head rcu ;
   struct pipe_inode_info *splice_pipe ;
   struct page_frag task_frag ;
   struct task_delay_info *delays ;
   int make_it_fail ;
   int nr_dirtied ;
   int nr_dirtied_pause ;
   unsigned long dirty_paused_when ;
   int latency_record_count ;
   struct latency_record latency_record[32U] ;
   unsigned long timer_slack_ns ;
   unsigned long default_timer_slack_ns ;
   unsigned long trace ;
   unsigned long trace_recursion ;
   struct memcg_batch_info memcg_batch ;
   unsigned int memcg_kmem_skip_account ;
   atomic_t ptrace_bp_refcnt ;
   struct uprobe_task *utask ;
};
typedef int ldv_func_ret_type___2;
struct i2o_event {
   struct work_struct work ;
   struct i2o_device *i2o_dev ;
   u16 size ;
   u32 tcntxt ;
   u32 event_indicator ;
   u32 data[0U] ;
};
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct exec_domain;
struct map_segment;
struct exec_domain {
   char const *name ;
   void (*handler)(int , struct pt_regs * ) ;
   unsigned char pers_low ;
   unsigned char pers_high ;
   unsigned long *signal_map ;
   unsigned long *signal_invmap ;
   struct map_segment *err_map ;
   struct map_segment *socktype_map ;
   struct map_segment *sockopt_map ;
   struct map_segment *af_map ;
   struct module *module ;
   struct exec_domain *next ;
};
struct __anonstruct_mm_segment_t_27 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_27 mm_segment_t;
struct compat_timespec;
struct __anonstruct_futex_32 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_33 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_34 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_6209_31 {
   struct __anonstruct_futex_32 futex ;
   struct __anonstruct_nanosleep_33 nanosleep ;
   struct __anonstruct_poll_34 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_6209_31 ldv_6209 ;
};
struct thread_info {
   struct task_struct *task ;
   struct exec_domain *exec_domain ;
   __u32 flags ;
   __u32 status ;
   __u32 cpu ;
   int preempt_count ;
   mm_segment_t addr_limit ;
   struct restart_block restart_block ;
   void *sysenter_return ;
   unsigned char sig_on_uaccess_error : 1 ;
   unsigned char uaccess_err : 1 ;
};
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
enum hrtimer_restart;
struct i2o_exec_wait {
   wait_queue_head_t *wq ;
   struct i2o_dma dma ;
   u32 tcntxt ;
   int complete ;
   u32 m ;
   struct i2o_message *msg ;
   struct list_head list ;
   spinlock_t lock ;
};
struct i2o_exec_lct_notify_work {
   struct work_struct work ;
   struct i2o_controller *c ;
};
struct paravirt_callee_save {
   void *func ;
};
struct pv_irq_ops {
   struct paravirt_callee_save save_fl ;
   struct paravirt_callee_save restore_fl ;
   struct paravirt_callee_save irq_disable ;
   struct paravirt_callee_save irq_enable ;
   void (*safe_halt)(void) ;
   void (*halt)(void) ;
   void (*adjust_exception_frame)(void) ;
};
long ldv__builtin_expect(long exp , long c ) ;
extern int printk(char const * , ...) ;
extern int sprintf(char * , char const * , ...) ;
extern int snprintf(char * , size_t , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
extern void list_del(struct list_head * ) ;
extern unsigned long __phys_addr(unsigned long ) ;
extern void *memset(void * , int , size_t ) ;
__inline static void *ERR_PTR(long error )
{
  {
  return ((void *)error);
}
}
__inline static long PTR_ERR(void const *ptr )
{
  {
  return ((long )ptr);
}
}
__inline static long IS_ERR(void const *ptr )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  return (tmp);
}
}
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
__inline static int atomic_inc_and_test(atomic_t *v )
{
  unsigned char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0; sete %1": "+m" (v->counter),
                       "=qm" (c): : "memory");
  return ((unsigned int )c != 0U);
}
}
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 ) ;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex(struct mutex *lock ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_5961.rlock);
}
}
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_5961.rlock, flags);
  return;
}
}
extern unsigned long volatile jiffies ;
extern int allocate_resource(struct resource * , struct resource * , resource_size_t ,
                             resource_size_t , resource_size_t , resource_size_t ,
                             resource_size_t (*)(void * , struct resource const * ,
                                                 resource_size_t , resource_size_t ) ,
                             void * ) ;
__inline static resource_size_t resource_size(struct resource const *res )
{
  {
  return (((unsigned long long )res->end - (unsigned long long )res->start) + 1ULL);
}
}
__inline static unsigned int readl(void const volatile *addr )
{
  unsigned int ret ;
  {
  __asm__ volatile ("movl %1,%0": "=r" (ret): "m" (*((unsigned int volatile *)addr)): "memory");
  return (ret);
}
}
__inline static void writel(unsigned int val , void volatile *addr )
{
  {
  __asm__ volatile ("movl %0,%1": : "r" (val), "m" (*((unsigned int volatile *)addr)): "memory");
  return;
}
}
__inline static void memcpy_toio(void volatile *dst , void const *src , size_t count )
{
  size_t __len ;
  void *__ret ;
  {
  __len = count;
  __ret = __builtin_memcpy((void *)dst, src, __len);
  return;
}
}
extern int dev_set_name(struct device * , char const * , ...) ;
extern void device_initialize(struct device * ) ;
extern int device_add(struct device * ) ;
extern void device_del(struct device * ) ;
extern struct resource *pci_find_parent_resource(struct pci_dev const * , struct resource * ) ;
extern void kfree(void const * ) ;
extern int __VERIFIER_nondet_int(void);
extern void __VERIFIER_assume(int);
extern void *malloc(size_t size);
long ldv_is_err(const void *ptr)
{
  return ((unsigned long)ptr > ((unsigned long)-4095));
}
void *ldv_malloc(size_t size)
{
 if (__VERIFIER_nondet_int()) {
  void *res = malloc(size);
  __VERIFIER_assume(!ldv_is_err(res));
  return res;
 } else {
  return ((void *)0);
 }
}
void *__kmalloc(size_t size, gfp_t t)
{
 return ldv_malloc(size);
}
__inline static void *kmalloc(size_t size , gfp_t flags )
{
  void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc(size, flags | 32768U);
  return (tmp);
}
}
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((dma_direction == 0 || dma_direction == 1) || dma_direction == 2);
}
}
__inline static void kmemcheck_mark_initialized(void *address , unsigned int n )
{
  {
  return;
}
}
extern void debug_dma_map_page(struct device * , struct page * , size_t , size_t ,
                               int , dma_addr_t , bool ) ;
extern void debug_dma_unmap_page(struct device * , dma_addr_t , size_t , int ,
                                 bool ) ;
extern struct dma_map_ops *dma_ops ;
__inline static struct dma_map_ops *get_dma_ops(struct device *dev )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )dev == (unsigned long )((struct device *)0),
                         0L);
  if (tmp != 0L || (unsigned long )dev->archdata.dma_ops == (unsigned long )((struct dma_map_ops *)0)) {
    return (dma_ops);
  } else {
    return (dev->archdata.dma_ops);
  }
}
}
__inline static dma_addr_t dma_map_single_attrs(struct device *dev , void *ptr , size_t size ,
                                                enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  int tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  kmemcheck_mark_initialized(ptr, (unsigned int )size);
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (19), "i" (12UL));
    ldv_20414: ;
    goto ldv_20414;
  } else {
  }
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, 0xffffea0000000000UL + (tmp___2 >> 12), (unsigned long )ptr & 4095UL,
                            size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, 0xffffea0000000000UL + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
                     size, (int )dir, addr, 1);
  return (addr);
}
}
__inline static void dma_unmap_single_attrs(struct device *dev , dma_addr_t addr ,
                                            size_t size , enum dma_data_direction dir ,
                                            struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (36), "i" (12UL));
    ldv_20423: ;
    goto ldv_20423;
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    (*(ops->unmap_page))(dev, addr, size, dir, attrs);
  } else {
  }
  debug_dma_unmap_page(dev, addr, size, (int )dir, 1);
  return;
}
}
extern void *mempool_alloc(mempool_t * , gfp_t ) ;
extern void mempool_free(void * , mempool_t * ) ;
struct list_head i2o_controllers ;
struct i2o_message *i2o_msg_get_wait(struct i2o_controller *c , int wait ) ;
int i2o_msg_post_wait_mem(struct i2o_controller *c , struct i2o_message *msg , unsigned long timeout ,
                          struct i2o_dma *dma ) ;
int i2o_status_get(struct i2o_controller *c ) ;
int i2o_event_register(struct i2o_device *dev , struct i2o_driver *drv , int tcntxt ,
                       u32 evt_mask ) ;
struct i2o_device *i2o_iop_find_device(struct i2o_controller *c , u16 tid ) ;
struct i2o_controller *i2o_find_iop(int unit ) ;
u32 i2o_cntxt_list_add(struct i2o_controller *c , void *ptr ) ;
void *i2o_cntxt_list_get(struct i2o_controller *c , u32 context ) ;
u32 i2o_cntxt_list_remove(struct i2o_controller *c , void *ptr ) ;
u32 i2o_cntxt_list_get_ptr(struct i2o_controller *c , void *ptr ) ;
__inline static u32 i2o_dma_low(dma_addr_t dma_addr )
{
  {
  return ((u32 )dma_addr);
}
}
__inline static u32 i2o_dma_high(dma_addr_t dma_addr )
{
  {
  return ((u32 )(dma_addr >> 32));
}
}
int i2o_dma_realloc(struct device *dev , struct i2o_dma *addr , size_t len ) ;
int i2o_pool_alloc(struct i2o_pool *pool , char const *name , size_t size , int min_nr ) ;
void i2o_pool_free(struct i2o_pool *pool ) ;
void i2o_driver_notify_controller_add_all(struct i2o_controller *c ) ;
void i2o_driver_notify_controller_remove_all(struct i2o_controller *c ) ;
int i2o_exec_lct_get(struct i2o_controller *c ) ;
__inline static struct i2o_message *i2o_msg_in_to_virt(struct i2o_controller *c ,
                                                       u32 m )
{
  {
  return ((struct i2o_message *)c->in_queue.virt + (unsigned long )m);
}
}
__inline static struct i2o_message *i2o_msg_get(struct i2o_controller *c )
{
  struct i2o_msg_mfa *mmsg ;
  void *tmp ;
  void *tmp___0 ;
  u32 mfa ;
  void *tmp___1 ;
  void *tmp___2 ;
  long tmp___3 ;
  {
  tmp = mempool_alloc(c->in_msg.mempool, 32U);
  mmsg = (struct i2o_msg_mfa *)tmp;
  if ((unsigned long )mmsg == (unsigned long )((struct i2o_msg_mfa *)0)) {
    tmp___0 = ERR_PTR(-12L);
    return ((struct i2o_message *)tmp___0);
  } else {
  }
  mmsg->mfa = readl((void const volatile *)c->in_port);
  tmp___3 = ldv__builtin_expect((unsigned long )mmsg->mfa >= c->in_queue.len, 0L);
  if (tmp___3 != 0L) {
    mfa = mmsg->mfa;
    mempool_free((void *)mmsg, c->in_msg.mempool);
    if (mfa == 4294967295U) {
      tmp___1 = ERR_PTR(-16L);
      return ((struct i2o_message *)tmp___1);
    } else {
    }
    tmp___2 = ERR_PTR(-14L);
    return ((struct i2o_message *)tmp___2);
  } else {
  }
  return (& mmsg->msg);
}
}
__inline static void i2o_msg_post(struct i2o_controller *c , struct i2o_message *msg )
{
  struct i2o_msg_mfa *mmsg ;
  struct i2o_message const *__mptr ;
  struct i2o_message *tmp ;
  {
  __mptr = (struct i2o_message const *)msg;
  mmsg = (struct i2o_msg_mfa *)__mptr + 0xfffffffffffffffcUL;
  tmp = i2o_msg_in_to_virt(c, mmsg->mfa);
  memcpy_toio((void volatile *)tmp, (void const *)msg, (size_t )((msg->u.head[0] >> 16) << 2));
  writel(mmsg->mfa, (void volatile *)c->in_port);
  mempool_free((void *)mmsg, c->in_msg.mempool);
  return;
}
}
__inline static int i2o_msg_post_wait(struct i2o_controller *c , struct i2o_message *msg ,
                                      unsigned long timeout )
{
  int tmp ;
  {
  tmp = i2o_msg_post_wait_mem(c, msg, timeout, 0);
  return (tmp);
}
}
__inline static void i2o_msg_nop_mfa(struct i2o_controller *c , u32 mfa )
{
  struct i2o_message *msg ;
  u32 nop[3U] ;
  {
  nop[0] = 196609U;
  nop[1] = 4096U;
  nop[2] = 0U;
  msg = i2o_msg_in_to_virt(c, mfa);
  memcpy_toio((void volatile *)msg, (void const *)(& nop), 12UL);
  writel(mfa, (void volatile *)c->in_port);
  return;
}
}
__inline static void i2o_msg_nop(struct i2o_controller *c , struct i2o_message *msg )
{
  struct i2o_msg_mfa *mmsg ;
  struct i2o_message const *__mptr ;
  {
  __mptr = (struct i2o_message const *)msg;
  mmsg = (struct i2o_msg_mfa *)__mptr + 0xfffffffffffffffcUL;
  i2o_msg_nop_mfa(c, mmsg->mfa);
  mempool_free((void *)mmsg, c->in_msg.mempool);
  return;
}
}
__inline static void i2o_flush_reply(struct i2o_controller *c , u32 m )
{
  {
  writel(m, (void volatile *)c->out_port);
  return;
}
}
void i2o_dump_hrt(struct i2o_controller *c ) ;
extern void __const_udelay(unsigned long ) ;
extern long schedule_timeout_uninterruptible(long ) ;
struct i2o_driver i2o_exec_driver ;
int i2o_exec_init(void) ;
void i2o_exec_exit(void) ;
int i2o_driver_init(void) ;
void i2o_driver_exit(void) ;
int i2o_pci_init(void) ;
void i2o_pci_exit(void) ;
void i2o_device_remove(struct i2o_device *i2o_dev ) ;
struct i2o_controller *i2o_iop_alloc(void) ;
__inline static void i2o_iop_free(struct i2o_controller *c )
{
  {
  i2o_pool_free(& c->in_msg);
  kfree((void const *)c);
  return;
}
}
int i2o_iop_add(struct i2o_controller *c ) ;
void i2o_iop_remove(struct i2o_controller *c ) ;
struct list_head i2o_controllers = {& i2o_controllers, & i2o_controllers};
static struct i2o_dma i2o_systab ;
static int i2o_hrt_get(struct i2o_controller *c ) ;
struct i2o_message *i2o_msg_get_wait(struct i2o_controller *c , int wait )
{
  unsigned long timeout ;
  struct i2o_message *msg ;
  void *tmp ;
  long tmp___0 ;
  {
  timeout = (unsigned long )(wait * 250) + (unsigned long )jiffies;
  goto ldv_24642;
  ldv_24641: ;
  if ((long )timeout - (long )jiffies < 0L) {
    tmp = ERR_PTR(-110L);
    return ((struct i2o_message *)tmp);
  } else {
  }
  schedule_timeout_uninterruptible(1L);
  ldv_24642:
  msg = i2o_msg_get(c);
  tmp___0 = IS_ERR((void const *)msg);
  if (tmp___0 != 0L) {
    goto ldv_24641;
  } else {
  }
  return (msg);
}
}
u32 i2o_cntxt_list_add(struct i2o_controller *c , void *ptr )
{
  struct i2o_context_list_element *entry ;
  unsigned long flags ;
  void *tmp ;
  raw_spinlock_t *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  {
  if ((unsigned long )ptr == (unsigned long )((void *)0)) {
    printk("\v%s: %s: couldn\'t add NULL pointer to context list!\n", (char *)"i2o",
           (char *)(& c->name));
  } else {
  }
  tmp = kmalloc(40UL, 32U);
  entry = (struct i2o_context_list_element *)tmp;
  if ((unsigned long )entry == (unsigned long )((struct i2o_context_list_element *)0)) {
    printk("\v%s: %s: Could not allocate memory for context list element\n", (char *)"i2o",
           (char *)(& c->name));
    return (0U);
  } else {
  }
  entry->ptr = ptr;
  entry->timestamp = jiffies;
  INIT_LIST_HEAD(& entry->list);
  tmp___0 = spinlock_check(& c->context_list_lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  tmp___1 = atomic_inc_and_test(& c->context_list_counter);
  tmp___2 = ldv__builtin_expect(tmp___1 != 0, 0L);
  if (tmp___2 != 0L) {
    atomic_inc(& c->context_list_counter);
  } else {
  }
  tmp___3 = atomic_read((atomic_t const *)(& c->context_list_counter));
  entry->context = (u32 )tmp___3;
  list_add(& entry->list, & c->context_list);
  spin_unlock_irqrestore(& c->context_list_lock, flags);
  return (entry->context);
}
}
u32 i2o_cntxt_list_remove(struct i2o_controller *c , void *ptr )
{
  struct i2o_context_list_element *entry ;
  u32 context ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  context = 0U;
  tmp = spinlock_check(& c->context_list_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  __mptr = (struct list_head const *)c->context_list.next;
  entry = (struct i2o_context_list_element *)__mptr;
  goto ldv_24669;
  ldv_24668: ;
  if ((unsigned long )entry->ptr == (unsigned long )ptr) {
    list_del(& entry->list);
    context = entry->context;
    kfree((void const *)entry);
    goto ldv_24667;
  } else {
  }
  __mptr___0 = (struct list_head const *)entry->list.next;
  entry = (struct i2o_context_list_element *)__mptr___0;
  ldv_24669: ;
  if ((unsigned long )(& entry->list) != (unsigned long )(& c->context_list)) {
    goto ldv_24668;
  } else {
  }
  ldv_24667:
  spin_unlock_irqrestore(& c->context_list_lock, flags);
  if (context == 0U) {
    printk("\f%s: %s: Could not remove nonexistent ptr %p\n", (char *)"i2o", (char *)(& c->name),
           ptr);
  } else {
  }
  return (context);
}
}
void *i2o_cntxt_list_get(struct i2o_controller *c , u32 context )
{
  struct i2o_context_list_element *entry ;
  unsigned long flags ;
  void *ptr ;
  raw_spinlock_t *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  ptr = 0;
  tmp = spinlock_check(& c->context_list_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  __mptr = (struct list_head const *)c->context_list.next;
  entry = (struct i2o_context_list_element *)__mptr;
  goto ldv_24686;
  ldv_24685: ;
  if (entry->context == context) {
    list_del(& entry->list);
    ptr = entry->ptr;
    kfree((void const *)entry);
    goto ldv_24684;
  } else {
  }
  __mptr___0 = (struct list_head const *)entry->list.next;
  entry = (struct i2o_context_list_element *)__mptr___0;
  ldv_24686: ;
  if ((unsigned long )(& entry->list) != (unsigned long )(& c->context_list)) {
    goto ldv_24685;
  } else {
  }
  ldv_24684:
  spin_unlock_irqrestore(& c->context_list_lock, flags);
  if ((unsigned long )ptr == (unsigned long )((void *)0)) {
    printk("\f%s: %s: context id %d not found\n", (char *)"i2o", (char *)(& c->name),
           context);
  } else {
  }
  return (ptr);
}
}
u32 i2o_cntxt_list_get_ptr(struct i2o_controller *c , void *ptr )
{
  struct i2o_context_list_element *entry ;
  u32 context ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  context = 0U;
  tmp = spinlock_check(& c->context_list_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  __mptr = (struct list_head const *)c->context_list.next;
  entry = (struct i2o_context_list_element *)__mptr;
  goto ldv_24703;
  ldv_24702: ;
  if ((unsigned long )entry->ptr == (unsigned long )ptr) {
    context = entry->context;
    goto ldv_24701;
  } else {
  }
  __mptr___0 = (struct list_head const *)entry->list.next;
  entry = (struct i2o_context_list_element *)__mptr___0;
  ldv_24703: ;
  if ((unsigned long )(& entry->list) != (unsigned long )(& c->context_list)) {
    goto ldv_24702;
  } else {
  }
  ldv_24701:
  spin_unlock_irqrestore(& c->context_list_lock, flags);
  if (context == 0U) {
    printk("\f%s: %s: Could not find nonexistent ptr %p\n", (char *)"i2o", (char *)(& c->name),
           ptr);
  } else {
  }
  return (context);
}
}
struct i2o_controller *i2o_find_iop(int unit )
{
  struct i2o_controller *c ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)i2o_controllers.next;
  c = (struct i2o_controller *)__mptr + 0xffffffffffffffc8UL;
  goto ldv_24713;
  ldv_24712: ;
  if (c->unit == unit) {
    return (c);
  } else {
  }
  __mptr___0 = (struct list_head const *)c->list.next;
  c = (struct i2o_controller *)__mptr___0 + 0xffffffffffffffc8UL;
  ldv_24713: ;
  if ((unsigned long )(& c->list) != (unsigned long )(& i2o_controllers)) {
    goto ldv_24712;
  } else {
  }
  return (0);
}
}
struct i2o_device *i2o_iop_find_device(struct i2o_controller *c , u16 tid )
{
  struct i2o_device *dev ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  __mptr = (struct list_head const *)c->devices.next;
  dev = (struct i2o_device *)__mptr + 0xffffffffffffffd0UL;
  goto ldv_24725;
  ldv_24724: ;
  if ((int )dev->lct_data.tid == (int )tid) {
    return (dev);
  } else {
  }
  __mptr___0 = (struct list_head const *)dev->list.next;
  dev = (struct i2o_device *)__mptr___0 + 0xffffffffffffffd0UL;
  ldv_24725: ;
  if ((unsigned long )(& dev->list) != (unsigned long )(& c->devices)) {
    goto ldv_24724;
  } else {
  }
  return (0);
}
}
static int i2o_iop_quiesce(struct i2o_controller *c )
{
  struct i2o_message *msg ;
  i2o_status_block *sb ;
  int rc ;
  long tmp ;
  long tmp___0 ;
  {
  sb = (i2o_status_block *)c->status_block.virt;
  i2o_status_get(c);
  if ((unsigned int )sb->iop_state != 5U && (unsigned int )sb->iop_state != 8U) {
    return (0);
  } else {
  }
  msg = i2o_msg_get_wait(c, 5);
  tmp___0 = IS_ERR((void const *)msg);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)msg);
    return ((int )tmp);
  } else {
  }
  msg->u.head[0] = 262145U;
  msg->u.head[1] = 3271561216U;
  rc = i2o_msg_post_wait(c, msg, 240UL);
  if (rc != 0) {
    printk("\016%s: %s: Unable to quiesce (status=%#x).\n", (char *)"i2o", (char *)(& c->name),
           - rc);
  } else {
  }
  i2o_status_get(c);
  return (rc);
}
}
static int i2o_iop_enable(struct i2o_controller *c )
{
  struct i2o_message *msg ;
  i2o_status_block *sb ;
  int rc ;
  long tmp ;
  long tmp___0 ;
  {
  sb = (i2o_status_block *)c->status_block.virt;
  i2o_status_get(c);
  if ((unsigned int )sb->iop_state != 5U) {
    return (-22);
  } else {
  }
  msg = i2o_msg_get_wait(c, 5);
  tmp___0 = IS_ERR((void const *)msg);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)msg);
    return ((int )tmp);
  } else {
  }
  msg->u.head[0] = 262145U;
  msg->u.head[1] = 3506442240U;
  rc = i2o_msg_post_wait(c, msg, 240UL);
  if (rc != 0) {
    printk("\v%s: %s: Could not enable (status=%#x).\n", (char *)"i2o", (char *)(& c->name),
           - rc);
  } else {
  }
  i2o_status_get(c);
  return (rc);
}
}
__inline static void i2o_iop_quiesce_all(void)
{
  struct i2o_controller *c ;
  struct i2o_controller *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)i2o_controllers.next;
  c = (struct i2o_controller *)__mptr + 0xffffffffffffffc8UL;
  __mptr___0 = (struct list_head const *)c->list.next;
  tmp = (struct i2o_controller *)__mptr___0 + 0xffffffffffffffc8UL;
  goto ldv_24751;
  ldv_24750: ;
  if ((unsigned int )*((unsigned char *)c + 32UL) == 0U) {
    i2o_iop_quiesce(c);
  } else {
  }
  c = tmp;
  __mptr___1 = (struct list_head const *)tmp->list.next;
  tmp = (struct i2o_controller *)__mptr___1 + 0xffffffffffffffc8UL;
  ldv_24751: ;
  if ((unsigned long )(& c->list) != (unsigned long )(& i2o_controllers)) {
    goto ldv_24750;
  } else {
  }
  return;
}
}
__inline static void i2o_iop_enable_all(void)
{
  struct i2o_controller *c ;
  struct i2o_controller *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)i2o_controllers.next;
  c = (struct i2o_controller *)__mptr + 0xffffffffffffffc8UL;
  __mptr___0 = (struct list_head const *)c->list.next;
  tmp = (struct i2o_controller *)__mptr___0 + 0xffffffffffffffc8UL;
  goto ldv_24765;
  ldv_24764:
  i2o_iop_enable(c);
  c = tmp;
  __mptr___1 = (struct list_head const *)tmp->list.next;
  tmp = (struct i2o_controller *)__mptr___1 + 0xffffffffffffffc8UL;
  ldv_24765: ;
  if ((unsigned long )(& c->list) != (unsigned long )(& i2o_controllers)) {
    goto ldv_24764;
  } else {
  }
  return;
}
}
static int i2o_iop_clear(struct i2o_controller *c )
{
  struct i2o_message *msg ;
  int rc ;
  long tmp ;
  long tmp___0 ;
  {
  msg = i2o_msg_get_wait(c, 5);
  tmp___0 = IS_ERR((void const *)msg);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)msg);
    return ((int )tmp);
  } else {
  }
  i2o_iop_quiesce_all();
  msg->u.head[0] = 262145U;
  msg->u.head[1] = 3187675136U;
  rc = i2o_msg_post_wait(c, msg, 30UL);
  if (rc != 0) {
    printk("\016%s: %s: Unable to clear (status=%#x).\n", (char *)"i2o", (char *)(& c->name),
           - rc);
  } else {
  }
  i2o_iop_enable_all();
  return (rc);
}
}
static int i2o_iop_init_outbound_queue(struct i2o_controller *c )
{
  u32 m ;
  u8 volatile *status ;
  struct i2o_message *msg ;
  ulong timeout ;
  int i ;
  long tmp ;
  long tmp___0 ;
  {
  status = (u8 volatile *)c->status.virt;
  memset(c->status.virt, 0, 4UL);
  msg = i2o_msg_get_wait(c, 5);
  tmp___0 = IS_ERR((void const *)msg);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)msg);
    return ((int )tmp);
  } else {
  }
  msg->u.head[0] = 524385U;
  msg->u.head[1] = 2701135872U;
  msg->u.s.icntxt = (unsigned int )i2o_exec_driver.context;
  msg->u.s.tcntxt = 0U;
  msg->body[0] = 4096U;
  msg->body[1] = 8388736U;
  msg->body[2] = 3489660932U;
  msg->body[3] = i2o_dma_low(c->status.phys);
  msg->body[4] = i2o_dma_high(c->status.phys);
  i2o_msg_post(c, msg);
  timeout = (unsigned long )jiffies + 3750UL;
  goto ldv_24787;
  ldv_24786: ;
  if ((long )timeout - (long )jiffies < 0L) {
    printk("\f%s: %s: Timeout Initializing\n", (char *)"i2o", (char *)(& c->name));
    return (-110);
  } else {
  }
  schedule_timeout_uninterruptible(1L);
  ldv_24787: ;
  if ((unsigned int )((unsigned char )*status) <= 1U) {
    goto ldv_24786;
  } else {
  }
  m = (u32 )c->out_queue.phys;
  i = 0;
  goto ldv_24790;
  ldv_24789:
  i2o_flush_reply(c, m);
  __const_udelay(4295UL);
  m = m + 512U;
  i = i + 1;
  ldv_24790: ;
  if (i <= 127) {
    goto ldv_24789;
  } else {
  }
  return (0);
}
}
static int i2o_iop_reset(struct i2o_controller *c )
{
  u8 volatile *status ;
  struct i2o_message *msg ;
  unsigned long timeout ;
  i2o_status_block *sb ;
  int rc ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  status = (u8 volatile *)c->status.virt;
  sb = (i2o_status_block *)c->status_block.virt;
  rc = 0;
  msg = i2o_msg_get_wait(c, 5);
  tmp___0 = IS_ERR((void const *)msg);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)msg);
    return ((int )tmp);
  } else {
  }
  memset(c->status_block.virt, 0, 8UL);
  i2o_iop_quiesce_all();
  msg->u.head[0] = 524289U;
  msg->u.head[1] = 3170897920U;
  msg->u.s.icntxt = (unsigned int )i2o_exec_driver.context;
  msg->u.s.tcntxt = 0U;
  msg->body[0] = 0U;
  msg->body[1] = 0U;
  msg->body[2] = i2o_dma_low(c->status.phys);
  msg->body[3] = i2o_dma_high(c->status.phys);
  i2o_msg_post(c, msg);
  timeout = (unsigned long )jiffies + 7500UL;
  goto ldv_24808;
  ldv_24807: ;
  if ((long )timeout - (long )jiffies < 0L) {
    goto ldv_24806;
  } else {
  }
  schedule_timeout_uninterruptible(1L);
  ldv_24808: ;
  if ((unsigned int )((unsigned char )*status) == 0U) {
    goto ldv_24807;
  } else {
  }
  ldv_24806: ;
  switch ((int )*status) {
  case 2:
  printk("\f%s: %s: IOP reset rejected\n", (char *)"i2o", (char *)(& c->name));
  rc = -1;
  goto ldv_24810;
  case 1: ;
  goto ldv_24820;
  ldv_24819: ;
  if ((long )timeout - (long )jiffies < 0L) {
    printk("\v%s: %s: IOP reset timeout.\n", (char *)"i2o", (char *)(& c->name));
    tmp___1 = PTR_ERR((void const *)msg);
    rc = (int )tmp___1;
    goto exit;
  } else {
  }
  schedule_timeout_uninterruptible(1L);
  ldv_24820:
  msg = i2o_msg_get_wait(c, 30);
  tmp___2 = IS_ERR((void const *)msg);
  if (tmp___2 != 0L) {
    goto ldv_24819;
  } else {
  }
  i2o_msg_nop(c, msg);
  c->no_quiesce = 0U;
  i2o_status_get(c);
  if ((unsigned int )*((unsigned char *)c + 32UL) == 0U && (unsigned int )sb->iop_state != 2U) {
    printk("\f%s: %s: reset completed, but adapter not in RESET state.\n", (char *)"i2o",
           (char *)(& c->name));
  } else {
  }
  goto ldv_24810;
  default:
  printk("\v%s: %s: IOP reset timeout.\n", (char *)"i2o", (char *)(& c->name));
  rc = -110;
  goto ldv_24810;
  }
  ldv_24810: ;
  exit:
  i2o_iop_enable_all();
  return (rc);
}
}
static int i2o_iop_activate(struct i2o_controller *c )
{
  i2o_status_block *sb ;
  int rc ;
  int state ;
  int tmp ;
  {
  sb = (i2o_status_block *)c->status_block.virt;
  rc = i2o_status_get(c);
  if (rc != 0) {
    printk("\016%s: %s: Unable to obtain status, attempting a reset.\n", (char *)"i2o",
           (char *)(& c->name));
    rc = i2o_iop_reset(c);
    if (rc != 0) {
      return (rc);
    } else {
    }
  } else {
  }
  if ((int )sb->i2o_version > 1) {
    printk("\v%s: %s: Not running version 1.5 of the I2O Specification.\n", (char *)"i2o",
           (char *)(& c->name));
    return (-19);
  } else {
  }
  switch ((int )sb->iop_state) {
  case 17:
  printk("\v%s: %s: hardware fault\n", (char *)"i2o", (char *)(& c->name));
  return (-14);
  case 5: ;
  case 8: ;
  case 4: ;
  case 16:
  rc = i2o_iop_reset(c);
  if (rc != 0) {
    return (rc);
  } else {
  }
  }
  state = (int )sb->iop_state;
  rc = i2o_iop_init_outbound_queue(c);
  if (rc != 0) {
    return (rc);
  } else {
  }
  if (state != 2) {
    i2o_iop_clear(c);
  } else {
  }
  i2o_status_get(c);
  if ((unsigned int )sb->iop_state != 4U) {
    printk("\v%s: %s: failed to bring IOP into HOLD state\n", (char *)"i2o", (char *)(& c->name));
    return (-5);
  } else {
  }
  tmp = i2o_hrt_get(c);
  return (tmp);
}
}
static int i2o_iop_systab_set(struct i2o_controller *c )
{
  struct i2o_message *msg ;
  i2o_status_block *sb ;
  struct device *dev ;
  struct resource *root ;
  int rc ;
  struct resource *res ;
  resource_size_t tmp ;
  resource_size_t tmp___0 ;
  int tmp___1 ;
  struct resource *res___0 ;
  resource_size_t tmp___2 ;
  resource_size_t tmp___3 ;
  int tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  sb = (i2o_status_block *)c->status_block.virt;
  dev = & (c->pdev)->dev;
  if (sb->current_mem_size < sb->desired_mem_size) {
    res = & c->mem_resource;
    res->name = (char const *)(& ((c->pdev)->bus)->name);
    res->flags = 512UL;
    res->start = 0ULL;
    res->end = 0ULL;
    printk("\016%s: %s: requires private memory resources.\n", (char *)"i2o", (char *)(& c->name));
    root = pci_find_parent_resource((struct pci_dev const *)c->pdev, res);
    if ((unsigned long )root == (unsigned long )((struct resource *)0)) {
      printk("\f%s: %s: Can\'t find parent resource!\n", (char *)"i2o", (char *)(& c->name));
    } else {
    }
    if ((unsigned long )root != (unsigned long )((struct resource *)0)) {
      tmp___1 = allocate_resource(root, res, (resource_size_t )sb->desired_mem_size,
                                  (resource_size_t )sb->desired_mem_size, (resource_size_t )sb->desired_mem_size,
                                  1048576ULL, 0, 0);
      if (tmp___1 >= 0) {
        c->mem_alloc = 1U;
        tmp = resource_size((struct resource const *)res);
        sb->current_mem_size = (__u32 )tmp;
        sb->current_mem_base = (__u32 )res->start;
        tmp___0 = resource_size((struct resource const *)res);
        printk("\016%s: %s: allocated %llu bytes of PCI memory at 0x%016llX.\n", (char *)"i2o",
               (char *)(& c->name), tmp___0, res->start);
      } else {
      }
    } else {
    }
  } else {
  }
  if (sb->current_io_size < sb->desired_io_size) {
    res___0 = & c->io_resource;
    res___0->name = (char const *)(& ((c->pdev)->bus)->name);
    res___0->flags = 256UL;
    res___0->start = 0ULL;
    res___0->end = 0ULL;
    printk("\016%s: %s: requires private memory resources.\n", (char *)"i2o", (char *)(& c->name));
    root = pci_find_parent_resource((struct pci_dev const *)c->pdev, res___0);
    if ((unsigned long )root == (unsigned long )((struct resource *)0)) {
      printk("\f%s: %s: Can\'t find parent resource!\n", (char *)"i2o", (char *)(& c->name));
    } else {
    }
    if ((unsigned long )root != (unsigned long )((struct resource *)0)) {
      tmp___4 = allocate_resource(root, res___0, (resource_size_t )sb->desired_io_size,
                                  (resource_size_t )sb->desired_io_size, (resource_size_t )sb->desired_io_size,
                                  1048576ULL, 0, 0);
      if (tmp___4 >= 0) {
        c->io_alloc = 1U;
        tmp___2 = resource_size((struct resource const *)res___0);
        sb->current_io_size = (__u32 )tmp___2;
        sb->current_mem_base = (__u32 )res___0->start;
        tmp___3 = resource_size((struct resource const *)res___0);
        printk("\016%s: %s: allocated %llu bytes of PCI I/O at 0x%016llX.\n", (char *)"i2o",
               (char *)(& c->name), tmp___3, res___0->start);
      } else {
      }
    } else {
    }
  } else {
  }
  msg = i2o_msg_get_wait(c, 5);
  tmp___6 = IS_ERR((void const *)msg);
  if (tmp___6 != 0L) {
    tmp___5 = PTR_ERR((void const *)msg);
    return ((int )tmp___5);
  } else {
  }
  i2o_systab.phys = dma_map_single_attrs(dev, i2o_systab.virt, i2o_systab.len, 1,
                                         0);
  if (i2o_systab.phys == 0ULL) {
    i2o_msg_nop(c, msg);
    return (-12);
  } else {
  }
  msg->u.head[0] = 786529U;
  msg->u.head[1] = 2734690304U;
  msg->body[0] = (unsigned int )(c->unit + 2);
  msg->body[1] = 0U;
  msg->body[2] = (unsigned int )i2o_systab.len | 1409286144U;
  msg->body[3] = (unsigned int )i2o_systab.phys;
  msg->body[4] = sb->current_mem_size | 1409286144U;
  msg->body[5] = sb->current_mem_base;
  msg->body[6] = sb->current_io_size | 3556769792U;
  msg->body[6] = sb->current_io_base;
  rc = i2o_msg_post_wait(c, msg, 120UL);
  dma_unmap_single_attrs(dev, i2o_systab.phys, i2o_systab.len, 1, 0);
  if (rc < 0) {
    printk("\v%s: %s: Unable to set SysTab (status=%#x).\n", (char *)"i2o", (char *)(& c->name),
           - rc);
  } else {
  }
  return (rc);
}
}
static int i2o_iop_online(struct i2o_controller *c )
{
  int rc ;
  {
  rc = i2o_iop_systab_set(c);
  if (rc != 0) {
    return (rc);
  } else {
  }
  rc = i2o_iop_enable(c);
  if (rc != 0) {
    return (rc);
  } else {
  }
  return (0);
}
}
void i2o_iop_remove(struct i2o_controller *c )
{
  struct i2o_device *dev ;
  struct i2o_device *tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  i2o_driver_notify_controller_remove_all(c);
  list_del(& c->list);
  __mptr = (struct list_head const *)c->devices.next;
  dev = (struct i2o_device *)__mptr + 0xffffffffffffffd0UL;
  __mptr___0 = (struct list_head const *)dev->list.next;
  tmp = (struct i2o_device *)__mptr___0 + 0xffffffffffffffd0UL;
  goto ldv_24860;
  ldv_24859:
  i2o_device_remove(dev);
  dev = tmp;
  __mptr___1 = (struct list_head const *)tmp->list.next;
  tmp = (struct i2o_device *)__mptr___1 + 0xffffffffffffffd0UL;
  ldv_24860: ;
  if ((unsigned long )(& dev->list) != (unsigned long )(& c->devices)) {
    goto ldv_24859;
  } else {
  }
  device_del(& c->device);
  i2o_iop_reset(c);
  return;
}
}
static int i2o_systab_build(void)
{
  struct i2o_controller *c ;
  struct i2o_controller *tmp ;
  int num_controllers ;
  u32 change_ind ;
  int count ;
  struct i2o_sys_tbl *systab ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  i2o_status_block *sb ;
  int tmp___0 ;
  long tmp___1 ;
  struct list_head const *__mptr___4 ;
  {
  num_controllers = 0;
  change_ind = 0U;
  count = 0;
  systab = (struct i2o_sys_tbl *)i2o_systab.virt;
  __mptr = (struct list_head const *)i2o_controllers.next;
  c = (struct i2o_controller *)__mptr + 0xffffffffffffffc8UL;
  __mptr___0 = (struct list_head const *)c->list.next;
  tmp = (struct i2o_controller *)__mptr___0 + 0xffffffffffffffc8UL;
  goto ldv_24878;
  ldv_24877:
  num_controllers = num_controllers + 1;
  c = tmp;
  __mptr___1 = (struct list_head const *)tmp->list.next;
  tmp = (struct i2o_controller *)__mptr___1 + 0xffffffffffffffc8UL;
  ldv_24878: ;
  if ((unsigned long )(& c->list) != (unsigned long )(& i2o_controllers)) {
    goto ldv_24877;
  } else {
  }
  if ((unsigned long )systab != (unsigned long )((struct i2o_sys_tbl *)0)) {
    change_ind = systab->change_ind;
    kfree((void const *)i2o_systab.virt);
  } else {
  }
  i2o_systab.len = (unsigned long )num_controllers * 32UL + 16UL;
  i2o_systab.virt = kzalloc(i2o_systab.len, 208U);
  systab = (struct i2o_sys_tbl *)i2o_systab.virt;
  if ((unsigned long )systab == (unsigned long )((struct i2o_sys_tbl *)0)) {
    printk("\v%s: unable to allocate memory for System Table\n", (char *)"i2o");
    return (-12);
  } else {
  }
  systab->version = 1U;
  systab->change_ind = change_ind + 1U;
  __mptr___2 = (struct list_head const *)i2o_controllers.next;
  c = (struct i2o_controller *)__mptr___2 + 0xffffffffffffffc8UL;
  __mptr___3 = (struct list_head const *)c->list.next;
  tmp = (struct i2o_controller *)__mptr___3 + 0xffffffffffffffc8UL;
  goto ldv_24890;
  ldv_24889: ;
  if (count >= num_controllers) {
    printk("\v%s: controller added while building system table\n", (char *)"i2o");
    goto ldv_24887;
  } else {
  }
  sb = (i2o_status_block *)c->status_block.virt;
  tmp___0 = i2o_status_get(c);
  tmp___1 = ldv__builtin_expect(tmp___0 != 0, 0L);
  if (tmp___1 != 0L) {
    printk("\v%s: %s: Deleting b/c could not get status while attempting to build system table\n",
           (char *)"i2o", (char *)(& c->name));
    i2o_iop_remove(c);
    goto ldv_24888;
  } else {
  }
  systab->iops[count].org_id = sb->org_id;
  systab->iops[count].iop_id = (unsigned short )((unsigned int )((unsigned short )c->unit) + 2U);
  systab->iops[count].seg_num = 0U;
  systab->iops[count].i2o_version = sb->i2o_version;
  systab->iops[count].iop_state = sb->iop_state;
  systab->iops[count].msg_type = sb->msg_type;
  systab->iops[count].frame_size = sb->inbound_frame_size;
  systab->iops[count].last_changed = change_ind;
  systab->iops[count].iop_capabilities = sb->iop_capabilities;
  systab->iops[count].inbound_low = i2o_dma_low((dma_addr_t )(c->base.phys + 64UL));
  systab->iops[count].inbound_high = i2o_dma_high((dma_addr_t )(c->base.phys + 64UL));
  count = count + 1;
  ldv_24888:
  c = tmp;
  __mptr___4 = (struct list_head const *)tmp->list.next;
  tmp = (struct i2o_controller *)__mptr___4 + 0xffffffffffffffc8UL;
  ldv_24890: ;
  if ((unsigned long )(& c->list) != (unsigned long )(& i2o_controllers)) {
    goto ldv_24889;
  } else {
  }
  ldv_24887:
  systab->num_entries = (u8 )count;
  return (0);
}
}
static int i2o_parse_hrt(struct i2o_controller *c )
{
  {
  i2o_dump_hrt(c);
  return (0);
}
}
int i2o_status_get(struct i2o_controller *c )
{
  struct i2o_message *msg ;
  u8 volatile *status_block ;
  unsigned long timeout ;
  long tmp ;
  long tmp___0 ;
  {
  status_block = (u8 volatile *)c->status_block.virt;
  memset(c->status_block.virt, 0, 88UL);
  msg = i2o_msg_get_wait(c, 5);
  tmp___0 = IS_ERR((void const *)msg);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)msg);
    return ((int )tmp);
  } else {
  }
  msg->u.head[0] = 589825U;
  msg->u.head[1] = 2684358656U;
  msg->u.s.icntxt = (unsigned int )i2o_exec_driver.context;
  msg->u.s.tcntxt = 0U;
  msg->body[0] = 0U;
  msg->body[1] = 0U;
  msg->body[2] = i2o_dma_low(c->status_block.phys);
  msg->body[3] = i2o_dma_high(c->status_block.phys);
  msg->body[4] = 88U;
  i2o_msg_post(c, msg);
  timeout = (unsigned long )jiffies + 1250UL;
  goto ldv_24907;
  ldv_24906: ;
  if ((long )timeout - (long )jiffies < 0L) {
    printk("\v%s: %s: Get status timeout.\n", (char *)"i2o", (char *)(& c->name));
    return (-110);
  } else {
  }
  schedule_timeout_uninterruptible(1L);
  ldv_24907: ;
  if ((unsigned int )((unsigned char )*(status_block + 87UL)) != 255U) {
    goto ldv_24906;
  } else {
  }
  return (0);
}
}
static int i2o_hrt_get(struct i2o_controller *c )
{
  int rc ;
  int i ;
  i2o_hrt *hrt ;
  u32 size ;
  struct device *dev ;
  struct i2o_message *msg ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  hrt = (i2o_hrt *)c->hrt.virt;
  size = 24U;
  dev = & (c->pdev)->dev;
  i = 0;
  goto ldv_24919;
  ldv_24918:
  msg = i2o_msg_get_wait(c, 5);
  tmp___0 = IS_ERR((void const *)msg);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)msg);
    return ((int )tmp);
  } else {
  }
  msg->u.head[0] = 393281U;
  msg->u.head[1] = 2818576384U;
  msg->body[0] = (unsigned int )c->hrt.len | 3489660928U;
  msg->body[1] = (unsigned int )c->hrt.phys;
  rc = i2o_msg_post_wait_mem(c, msg, 20UL, & c->hrt);
  if (rc < 0) {
    printk("\v%s: %s: Unable to get HRT (status=%#x)\n", (char *)"i2o", (char *)(& c->name),
           - rc);
    return (rc);
  } else {
  }
  size = (u32 )((int )hrt->num_entries * (int )hrt->entry_len << 2);
  if ((size_t )size > c->hrt.len) {
    tmp___1 = i2o_dma_realloc(dev, & c->hrt, (size_t )size);
    if (tmp___1 != 0) {
      return (-12);
    } else {
      hrt = (i2o_hrt *)c->hrt.virt;
    }
  } else {
    tmp___2 = i2o_parse_hrt(c);
    return (tmp___2);
  }
  i = i + 1;
  ldv_24919: ;
  if (i <= 2) {
    goto ldv_24918;
  } else {
  }
  printk("\v%s: %s: Unable to get HRT after %d tries, giving up\n", (char *)"i2o",
         (char *)(& c->name), 3);
  return (-16);
}
}
static void i2o_iop_release(struct device *dev )
{
  struct i2o_controller *c ;
  struct device const *__mptr ;
  {
  __mptr = (struct device const *)dev;
  c = (struct i2o_controller *)__mptr + 0xfffffffffffffdb0UL;
  i2o_iop_free(c);
  return;
}
}
struct i2o_controller *i2o_iop_alloc(void)
{
  int unit ;
  struct i2o_controller *c ;
  char poolname[32U] ;
  void *tmp ;
  void *tmp___0 ;
  int tmp___1 ;
  void *tmp___2 ;
  int tmp___3 ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  {
  unit = 0;
  tmp = kzalloc(1968UL, 208U);
  c = (struct i2o_controller *)tmp;
  if ((unsigned long )c == (unsigned long )((struct i2o_controller *)0)) {
    printk("\v%s: i2o: Insufficient memory to allocate a I2O controller.\n", (char *)"i2o");
    tmp___0 = ERR_PTR(-12L);
    return ((struct i2o_controller *)tmp___0);
  } else {
  }
  tmp___1 = unit;
  unit = unit + 1;
  c->unit = tmp___1;
  sprintf((char *)(& c->name), "iop%d", c->unit);
  snprintf((char *)(& poolname), 32UL, "i2o_%s_msg_inpool", (char *)(& c->name));
  tmp___3 = i2o_pool_alloc(& c->in_msg, (char const *)(& poolname), 516UL, 32);
  if (tmp___3 != 0) {
    kfree((void const *)c);
    tmp___2 = ERR_PTR(-12L);
    return ((struct i2o_controller *)tmp___2);
  } else {
  }
  INIT_LIST_HEAD(& c->devices);
  spinlock_check(& c->lock);
  __raw_spin_lock_init(& c->lock.ldv_5961.rlock, "&(&c->lock)->rlock", & __key);
  __mutex_init(& c->lct_lock, "&c->lct_lock", & __key___0);
  device_initialize(& c->device);
  c->device.release = & i2o_iop_release;
  dev_set_name(& c->device, "iop%d", c->unit);
  spinlock_check(& c->context_list_lock);
  __raw_spin_lock_init(& c->context_list_lock.ldv_5961.rlock, "&(&c->context_list_lock)->rlock",
                       & __key___1);
  atomic_set(& c->context_list_counter, 0);
  INIT_LIST_HEAD(& c->context_list);
  return (c);
}
}
int i2o_iop_add(struct i2o_controller *c )
{
  int rc ;
  {
  rc = device_add(& c->device);
  if (rc != 0) {
    printk("\v%s: %s: could not add controller\n", (char *)"i2o", (char *)(& c->name));
    goto iop_reset;
  } else {
  }
  printk("\016%s: %s: Activating I2O controller...\n", (char *)"i2o", (char *)(& c->name));
  printk("\016%s: %s: This may take a few minutes if there are many devices\n", (char *)"i2o",
         (char *)(& c->name));
  rc = i2o_iop_activate(c);
  if (rc != 0) {
    printk("\v%s: %s: could not activate controller\n", (char *)"i2o", (char *)(& c->name));
    goto device_del;
  } else {
  }
  rc = i2o_systab_build();
  if (rc != 0) {
    goto device_del;
  } else {
  }
  rc = i2o_iop_online(c);
  if (rc != 0) {
    goto device_del;
  } else {
  }
  rc = i2o_exec_lct_get(c);
  if (rc != 0) {
    goto device_del;
  } else {
  }
  list_add(& c->list, & i2o_controllers);
  i2o_driver_notify_controller_add_all(c);
  printk("\016%s: %s: Controller added\n", (char *)"i2o", (char *)(& c->name));
  return (0);
  device_del:
  device_del(& c->device);
  iop_reset:
  i2o_iop_reset(c);
  return (rc);
}
}
int i2o_event_register(struct i2o_device *dev , struct i2o_driver *drv , int tcntxt ,
                       u32 evt_mask )
{
  struct i2o_controller *c ;
  struct i2o_message *msg ;
  long tmp ;
  long tmp___0 ;
  {
  c = dev->iop;
  msg = i2o_msg_get_wait(c, 5);
  tmp___0 = IS_ERR((void const *)msg);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)msg);
    return ((int )tmp);
  } else {
  }
  msg->u.head[0] = 327681U;
  msg->u.head[1] = (unsigned int )((int )dev->lct_data.tid | 318771200);
  msg->u.s.icntxt = (unsigned int )drv->context;
  msg->u.s.tcntxt = (unsigned int )tcntxt;
  msg->body[0] = evt_mask;
  i2o_msg_post(c, msg);
  return (0);
}
}
static int i2o_iop_init(void)
{
  int rc ;
  {
  rc = 0;
  printk("\016I2O subsystem v1.325\n");
  rc = i2o_driver_init();
  if (rc != 0) {
    goto exit;
  } else {
  }
  rc = i2o_exec_init();
  if (rc != 0) {
    goto driver_exit;
  } else {
  }
  rc = i2o_pci_init();
  if (rc != 0) {
    goto exec_exit;
  } else {
  }
  return (0);
  exec_exit:
  i2o_exec_exit();
  driver_exit:
  i2o_driver_exit();
  exit: ;
  return (rc);
}
}
static void i2o_iop_exit(void)
{
  {
  i2o_pci_exit();
  i2o_exec_exit();
  i2o_driver_exit();
  return;
}
}
void ldv_check_final_state(void) ;
void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void ldv_main0_sequence_infinite_withcheck_stateful(void)
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = i2o_iop_init();
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_25062;
  ldv_25061:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  default: ;
  goto ldv_25060;
  }
  ldv_25060: ;
  ldv_25062:
  tmp___1 = __VERIFIER_nondet_int();
  if (tmp___1 != 0) {
    goto ldv_25061;
  } else {
  }
  ldv_handler_precall();
  i2o_iop_exit();
  ldv_final:
  ldv_check_final_state();
  return;
}
}
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
int ldv_mutex_trylock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *__alloc_workqueue_key(char const * , unsigned int ,
                                                      int , struct lock_class_key * ,
                                                      char const * , ...) ;
extern void destroy_workqueue(struct workqueue_struct * ) ;
extern bool queue_work(struct workqueue_struct * , struct work_struct * ) ;
extern int __bus_register(struct bus_type * , struct lock_class_key * ) ;
extern void bus_unregister(struct bus_type * ) ;
extern int driver_register(struct device_driver * ) ;
extern void driver_unregister(struct device_driver * ) ;
__inline static void *kmalloc_array(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  if (size != 0UL && 0xffffffffffffffffUL / size < n) {
    return (0);
  } else {
  }
  tmp = __kmalloc(n * size, flags);
  return (tmp);
}
}
__inline static void *kcalloc(size_t n , size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc_array(n, size, flags | 32768U);
  return (tmp);
}
}
int i2o_driver_register(struct i2o_driver *drv ) ;
void i2o_driver_unregister(struct i2o_driver *drv ) ;
__inline static void i2o_driver_notify_controller_add(struct i2o_driver *drv , struct i2o_controller *c )
{
  {
  if ((unsigned long )drv->notify_controller_add != (unsigned long )((void (*)(struct i2o_controller * ))0)) {
    (*(drv->notify_controller_add))(c);
  } else {
  }
  return;
}
}
__inline static void i2o_driver_notify_controller_remove(struct i2o_driver *drv ,
                                                         struct i2o_controller *c )
{
  {
  if ((unsigned long )drv->notify_controller_remove != (unsigned long )((void (*)(struct i2o_controller * ))0)) {
    (*(drv->notify_controller_remove))(c);
  } else {
  }
  return;
}
}
__inline static void i2o_driver_notify_device_add(struct i2o_driver *drv , struct i2o_device *i2o_dev )
{
  {
  if ((unsigned long )drv->notify_device_add != (unsigned long )((void (*)(struct i2o_device * ))0)) {
    (*(drv->notify_device_add))(i2o_dev);
  } else {
  }
  return;
}
}
__inline static void i2o_driver_notify_device_remove(struct i2o_driver *drv , struct i2o_device *i2o_dev )
{
  {
  if ((unsigned long )drv->notify_device_remove != (unsigned long )((void (*)(struct i2o_device * ))0)) {
    (*(drv->notify_device_remove))(i2o_dev);
  } else {
  }
  return;
}
}
void i2o_driver_notify_device_add_all(struct i2o_device *i2o_dev ) ;
void i2o_driver_notify_device_remove_all(struct i2o_device *i2o_dev ) ;
__inline static struct i2o_message *i2o_msg_out_to_virt(struct i2o_controller *c ,
                                                        u32 m )
{
  long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect((dma_addr_t )m < c->out_queue.phys, 0L);
  if (tmp != 0L) {
    goto _L;
  } else {
    tmp___0 = ldv__builtin_expect((unsigned long long )m >= c->out_queue.phys + (unsigned long long )c->out_queue.len,
                               0L);
    if (tmp___0 != 0L) {
      _L:
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/i2o.h"),
                           "i" (802), "i" (12UL));
      ldv_21320: ;
      goto ldv_21320;
    } else {
    }
  }
  return ((struct i2o_message *)(c->out_queue.virt + ((dma_addr_t )m - c->out_queue.phys)));
}
}
struct bus_type i2o_bus_type ;
int i2o_driver_dispatch(struct i2o_controller *c , u32 m ) ;
struct device_attribute i2o_device_attrs[3U] ;
static unsigned int i2o_max_drivers = 8U;
static spinlock_t i2o_drivers_lock ;
static struct i2o_driver **i2o_drivers ;
static int i2o_bus_match(struct device *dev , struct device_driver *drv )
{
  struct i2o_device *i2o_dev ;
  struct device const *__mptr ;
  struct i2o_driver *i2o_drv ;
  struct device_driver const *__mptr___0 ;
  struct i2o_class_id *ids ;
  {
  __mptr = (struct device const *)dev;
  i2o_dev = (struct i2o_device *)__mptr + 0xffffffffffffffc0UL;
  __mptr___0 = (struct device_driver const *)drv;
  i2o_drv = (struct i2o_driver *)__mptr___0 + 0xffffffffffffffd0UL;
  ids = i2o_drv->classes;
  if ((unsigned long )ids != (unsigned long )((struct i2o_class_id *)0)) {
    goto ldv_21451;
    ldv_21450: ;
    if ((int )ids->class_id == (int )i2o_dev->lct_data.class_id) {
      return (1);
    } else {
    }
    ids = ids + 1;
    ldv_21451: ;
    if ((unsigned int )*((unsigned short *)ids + 0UL) != 4095U) {
      goto ldv_21450;
    } else {
    }
  } else {
  }
  return (0);
}
}
struct bus_type i2o_bus_type =
     {"i2o", 0, 0, 0, (struct device_attribute *)(& i2o_device_attrs), 0, & i2o_bus_match,
    0, 0, 0, 0, 0, 0, 0, 0, 0};
int i2o_driver_register(struct i2o_driver *drv )
{
  struct i2o_controller *c ;
  int i ;
  int rc ;
  unsigned long flags ;
  struct lock_class_key __key ;
  char const *__lock_name ;
  struct workqueue_struct *tmp ;
  raw_spinlock_t *tmp___0 ;
  struct list_head const *__mptr ;
  struct i2o_device *i2o_dev ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  {
  rc = 0;
  if ((unsigned long )drv->event != (unsigned long )((void (*)(struct work_struct * ))0)) {
    __lock_name = "drv->name";
    tmp = __alloc_workqueue_key((char const *)drv->name, 8U, 1, & __key, __lock_name);
    drv->event_queue = tmp;
    if ((unsigned long )drv->event_queue == (unsigned long )((struct workqueue_struct *)0)) {
      printk("\v%s: Could not initialize event queue for driver %s\n", (char *)"i2o",
             drv->name);
      return (-14);
    } else {
    }
  } else {
    drv->event_queue = 0;
  }
  drv->driver.name = (char const *)drv->name;
  drv->driver.bus = & i2o_bus_type;
  tmp___0 = spinlock_check(& i2o_drivers_lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  i = 0;
  goto ldv_21468;
  ldv_21467: ;
  if ((unsigned int )i >= i2o_max_drivers) {
    printk("\v%s: too many drivers registered, increase max_drivers\n", (char *)"i2o");
    spin_unlock_irqrestore(& i2o_drivers_lock, flags);
    return (-14);
  } else {
  }
  i = i + 1;
  ldv_21468: ;
  if ((unsigned long )*(i2o_drivers + (unsigned long )i) != (unsigned long )((struct i2o_driver *)0)) {
    goto ldv_21467;
  } else {
  }
  drv->context = i;
  *(i2o_drivers + (unsigned long )i) = drv;
  spin_unlock_irqrestore(& i2o_drivers_lock, flags);
  __mptr = (struct list_head const *)i2o_controllers.next;
  c = (struct i2o_controller *)__mptr + 0xffffffffffffffc8UL;
  goto ldv_21483;
  ldv_21482:
  i2o_driver_notify_controller_add(drv, c);
  __mptr___0 = (struct list_head const *)c->devices.next;
  i2o_dev = (struct i2o_device *)__mptr___0 + 0xffffffffffffffd0UL;
  goto ldv_21480;
  ldv_21479:
  i2o_driver_notify_device_add(drv, i2o_dev);
  __mptr___1 = (struct list_head const *)i2o_dev->list.next;
  i2o_dev = (struct i2o_device *)__mptr___1 + 0xffffffffffffffd0UL;
  ldv_21480: ;
  if ((unsigned long )(& i2o_dev->list) != (unsigned long )(& c->devices)) {
    goto ldv_21479;
  } else {
  }
  __mptr___2 = (struct list_head const *)c->list.next;
  c = (struct i2o_controller *)__mptr___2 + 0xffffffffffffffc8UL;
  ldv_21483: ;
  if ((unsigned long )(& c->list) != (unsigned long )(& i2o_controllers)) {
    goto ldv_21482;
  } else {
  }
  rc = driver_register(& drv->driver);
  if (rc != 0) {
    if ((unsigned long )drv->event != (unsigned long )((void (*)(struct work_struct * ))0)) {
      destroy_workqueue(drv->event_queue);
      drv->event_queue = 0;
    } else {
    }
  } else {
  }
  return (rc);
}
}
void i2o_driver_unregister(struct i2o_driver *drv )
{
  struct i2o_controller *c ;
  unsigned long flags ;
  struct list_head const *__mptr ;
  struct i2o_device *i2o_dev ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  raw_spinlock_t *tmp ;
  {
  driver_unregister(& drv->driver);
  __mptr = (struct list_head const *)i2o_controllers.next;
  c = (struct i2o_controller *)__mptr + 0xffffffffffffffc8UL;
  goto ldv_21503;
  ldv_21502:
  __mptr___0 = (struct list_head const *)c->devices.next;
  i2o_dev = (struct i2o_device *)__mptr___0 + 0xffffffffffffffd0UL;
  goto ldv_21500;
  ldv_21499:
  i2o_driver_notify_device_remove(drv, i2o_dev);
  __mptr___1 = (struct list_head const *)i2o_dev->list.next;
  i2o_dev = (struct i2o_device *)__mptr___1 + 0xffffffffffffffd0UL;
  ldv_21500: ;
  if ((unsigned long )(& i2o_dev->list) != (unsigned long )(& c->devices)) {
    goto ldv_21499;
  } else {
  }
  i2o_driver_notify_controller_remove(drv, c);
  __mptr___2 = (struct list_head const *)c->list.next;
  c = (struct i2o_controller *)__mptr___2 + 0xffffffffffffffc8UL;
  ldv_21503: ;
  if ((unsigned long )(& c->list) != (unsigned long )(& i2o_controllers)) {
    goto ldv_21502;
  } else {
  }
  tmp = spinlock_check(& i2o_drivers_lock);
  flags = _raw_spin_lock_irqsave(tmp);
  *(i2o_drivers + (unsigned long )drv->context) = 0;
  spin_unlock_irqrestore(& i2o_drivers_lock, flags);
  if ((unsigned long )drv->event_queue != (unsigned long )((struct workqueue_struct *)0)) {
    destroy_workqueue(drv->event_queue);
    drv->event_queue = 0;
  } else {
  }
  return;
}
}
int i2o_driver_dispatch(struct i2o_controller *c , u32 m )
{
  struct i2o_driver *drv ;
  struct i2o_message *msg ;
  struct i2o_message *tmp ;
  u32 context ;
  unsigned long flags ;
  long tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  long tmp___2 ;
  struct i2o_device *dev ;
  struct i2o_device *tmp___3 ;
  struct i2o_event *evt ;
  u16 size ;
  u16 tid ;
  void *tmp___4 ;
  size_t __len ;
  void *__ret ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  long tmp___5 ;
  int tmp___6 ;
  {
  tmp = i2o_msg_out_to_virt(c, m);
  msg = tmp;
  context = msg->u.s.icntxt;
  tmp___0 = ldv__builtin_expect(context >= i2o_max_drivers, 0L);
  if (tmp___0 != 0L) {
    printk("\f%s: %s: Spurious reply to unknown driver %d\n", (char *)"i2o", (char *)(& c->name),
           context);
    return (-5);
  } else {
  }
  tmp___1 = spinlock_check(& i2o_drivers_lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  drv = *(i2o_drivers + (unsigned long )context);
  spin_unlock_irqrestore(& i2o_drivers_lock, flags);
  tmp___2 = ldv__builtin_expect((unsigned long )drv == (unsigned long )((struct i2o_driver *)0),
                             0L);
  if (tmp___2 != 0L) {
    printk("\f%s: %s: Spurious reply to unknown driver %d\n", (char *)"i2o", (char *)(& c->name),
           context);
    return (-5);
  } else {
  }
  if (msg->u.head[1] >> 24 == 19U) {
    tid = (unsigned int )((u16 )msg->u.head[1]) & 4095U;
    if ((unsigned long )drv->event == (unsigned long )((void (*)(struct work_struct * ))0)) {
      return (-5);
    } else {
    }
    size = (unsigned int )((u16 )(msg->u.head[0] >> 16)) - 5U;
    tmp___4 = kzalloc((unsigned long )((int )size * 4) + 104UL, 32U);
    evt = (struct i2o_event *)tmp___4;
    if ((unsigned long )evt == (unsigned long )((struct i2o_event *)0)) {
      return (-12);
    } else {
    }
    evt->size = size;
    evt->tcntxt = msg->u.s.tcntxt;
    evt->event_indicator = msg->body[0];
    __len = (size_t )((int )size * 4);
    __ret = __builtin_memcpy((void *)(& evt->data), (void const *)(& msg->body) + 1U,
                             __len);
    __mptr = (struct list_head const *)c->devices.next;
    dev = (struct i2o_device *)__mptr + 0xffffffffffffffd0UL;
    __mptr___0 = (struct list_head const *)dev->list.next;
    tmp___3 = (struct i2o_device *)__mptr___0 + 0xffffffffffffffd0UL;
    goto ldv_21535;
    ldv_21534: ;
    if ((int )dev->lct_data.tid == (int )tid) {
      evt->i2o_dev = dev;
      goto ldv_21533;
    } else {
    }
    dev = tmp___3;
    __mptr___1 = (struct list_head const *)tmp___3->list.next;
    tmp___3 = (struct i2o_device *)__mptr___1 + 0xffffffffffffffd0UL;
    ldv_21535: ;
    if ((unsigned long )(& dev->list) != (unsigned long )(& c->devices)) {
      goto ldv_21534;
    } else {
    }
    ldv_21533:
    __init_work(& evt->work, 0);
    __constr_expr_0.counter = 4195328L;
    evt->work.data = __constr_expr_0;
    lockdep_init_map(& evt->work.lockdep_map, "(&evt->work)", & __key, 0);
    INIT_LIST_HEAD(& evt->work.entry);
    evt->work.func = drv->event;
    queue_work(drv->event_queue, & evt->work);
    return (1);
  } else {
  }
  tmp___5 = ldv__builtin_expect((unsigned long )drv->reply == (unsigned long )((int (*)(struct i2o_controller * ,
                                                                                     u32 ,
                                                                                     struct i2o_message * ))0),
                             0L);
  if (tmp___5 != 0L) {
    return (-5);
  } else {
  }
  tmp___6 = (*(drv->reply))(c, m, msg);
  return (tmp___6);
}
}
void i2o_driver_notify_controller_add_all(struct i2o_controller *c )
{
  int i ;
  struct i2o_driver *drv ;
  {
  i = 0;
  goto ldv_21544;
  ldv_21543:
  drv = *(i2o_drivers + (unsigned long )i);
  if ((unsigned long )drv != (unsigned long )((struct i2o_driver *)0)) {
    i2o_driver_notify_controller_add(drv, c);
  } else {
  }
  i = i + 1;
  ldv_21544: ;
  if ((unsigned int )i < i2o_max_drivers) {
    goto ldv_21543;
  } else {
  }
  return;
}
}
void i2o_driver_notify_controller_remove_all(struct i2o_controller *c )
{
  int i ;
  struct i2o_driver *drv ;
  {
  i = 0;
  goto ldv_21552;
  ldv_21551:
  drv = *(i2o_drivers + (unsigned long )i);
  if ((unsigned long )drv != (unsigned long )((struct i2o_driver *)0)) {
    i2o_driver_notify_controller_remove(drv, c);
  } else {
  }
  i = i + 1;
  ldv_21552: ;
  if ((unsigned int )i < i2o_max_drivers) {
    goto ldv_21551;
  } else {
  }
  return;
}
}
void i2o_driver_notify_device_add_all(struct i2o_device *i2o_dev )
{
  int i ;
  struct i2o_driver *drv ;
  {
  i = 0;
  goto ldv_21560;
  ldv_21559:
  drv = *(i2o_drivers + (unsigned long )i);
  if ((unsigned long )drv != (unsigned long )((struct i2o_driver *)0)) {
    i2o_driver_notify_device_add(drv, i2o_dev);
  } else {
  }
  i = i + 1;
  ldv_21560: ;
  if ((unsigned int )i < i2o_max_drivers) {
    goto ldv_21559;
  } else {
  }
  return;
}
}
void i2o_driver_notify_device_remove_all(struct i2o_device *i2o_dev )
{
  int i ;
  struct i2o_driver *drv ;
  {
  i = 0;
  goto ldv_21568;
  ldv_21567:
  drv = *(i2o_drivers + (unsigned long )i);
  if ((unsigned long )drv != (unsigned long )((struct i2o_driver *)0)) {
    i2o_driver_notify_device_remove(drv, i2o_dev);
  } else {
  }
  i = i + 1;
  ldv_21568: ;
  if ((unsigned int )i < i2o_max_drivers) {
    goto ldv_21567;
  } else {
  }
  return;
}
}
int i2o_driver_init(void)
{
  int rc ;
  struct lock_class_key __key ;
  void *tmp ;
  struct lock_class_key __key___0 ;
  int tmp___0 ;
  {
  rc = 0;
  spinlock_check(& i2o_drivers_lock);
  __raw_spin_lock_init(& i2o_drivers_lock.ldv_5961.rlock, "&(&i2o_drivers_lock)->rlock",
                       & __key);
  if (i2o_max_drivers <= 1U || i2o_max_drivers > 64U) {
    printk("\f%s: max_drivers set to %d, but must be >=2 and <= 64\n", (char *)"i2o",
           i2o_max_drivers);
    i2o_max_drivers = 8U;
  } else {
  }
  printk("\016%s: max drivers = %d\n", (char *)"i2o", i2o_max_drivers);
  tmp = kcalloc((size_t )i2o_max_drivers, 8UL, 208U);
  i2o_drivers = (struct i2o_driver **)tmp;
  if ((unsigned long )i2o_drivers == (unsigned long )((struct i2o_driver **)0)) {
    return (-12);
  } else {
  }
  tmp___0 = __bus_register(& i2o_bus_type, & __key___0);
  rc = tmp___0;
  if (rc < 0) {
    kfree((void const *)i2o_drivers);
  } else {
  }
  return (rc);
}
}
void i2o_driver_exit(void)
{
  {
  bus_unregister(& i2o_bus_type);
  kfree((void const *)i2o_drivers);
  return;
}
}
void ldv_main1_sequence_infinite_withcheck_stateful(void)
{
  struct device *var_group1 ;
  struct device_driver *var_group2 ;
  int tmp ;
  int tmp___0 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_21638;
  ldv_21637:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_handler_precall();
  i2o_bus_match(var_group1, var_group2);
  goto ldv_21635;
  default: ;
  goto ldv_21635;
  }
  ldv_21635: ;
  ldv_21638:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    goto ldv_21637;
  } else {
  }
  ldv_check_final_state();
  return;
}
}
void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_18(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern int __dynamic_pr_debug(struct _ddebug * , char const * , ...) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
}
}
extern void *memcpy(void * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
int ldv_mutex_trylock_28(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_26(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_36(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_25(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_27(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_30(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_34(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_lct_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lct_lock(struct mutex *lock ) ;
extern int sysfs_create_link(struct kobject * , struct kobject * , char const * ) ;
extern void sysfs_remove_link(struct kobject * , char const * ) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
__inline static char const *dev_name(struct device const *dev )
{
  char const *tmp ;
  {
  if ((unsigned long )dev->init_name != (unsigned long )((char const * )0)) {
    return ((char const *)dev->init_name);
  } else {
  }
  tmp = kobject_name(& dev->kobj);
  return (tmp);
}
}
extern int device_register(struct device * ) ;
extern void device_unregister(struct device * ) ;
int i2o_dma_alloc(struct device *dev , struct i2o_dma *addr , size_t len ) ;
void i2o_dma_free(struct device *dev , struct i2o_dma *addr ) ;
int i2o_device_claim(struct i2o_device *dev ) ;
int i2o_device_claim_release(struct i2o_device *dev ) ;
int i2o_parm_field_get(struct i2o_device *i2o_dev , int group , int field , void *buf ,
                       int buflen ) ;
int i2o_parm_table_get(struct i2o_device *dev , int oper , int group , int fieldcount ,
                       void *ibuf , int ibuflen , void *resblk , int reslen ) ;
extern void msleep(unsigned int ) ;
__inline static void ssleep(unsigned int seconds )
{
  {
  msleep(seconds * 1000U);
  return;
}
}
int i2o_device_parse_lct(struct i2o_controller *c ) ;
int i2o_parm_issue(struct i2o_device *i2o_dev , int cmd , void *oplist , int oplen ,
                   void *reslist , int reslen ) ;
__inline static int i2o_device_issue_claim(struct i2o_device *dev , u32 cmd , u32 type )
{
  struct i2o_message *msg ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  {
  msg = i2o_msg_get_wait(dev->iop, 5);
  tmp___0 = IS_ERR((void const *)msg);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)msg);
    return ((int )tmp);
  } else {
  }
  msg->u.head[0] = 327681U;
  msg->u.head[1] = ((cmd << 24) | (u32 )dev->lct_data.tid) | 4096U;
  msg->body[0] = type;
  tmp___1 = i2o_msg_post_wait(dev->iop, msg, 60UL);
  return (tmp___1);
}
}
int i2o_device_claim(struct i2o_device *dev )
{
  int rc ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  rc = 0;
  ldv_mutex_lock_30(& dev->lock);
  rc = i2o_device_issue_claim(dev, 9U, 16777216U);
  if (rc == 0) {
    descriptor.modname = "i2o_core";
    descriptor.function = "i2o_device_claim";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/message/i2o/i2o_core.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/message/i2o/device.c.prepared";
    descriptor.format = "i2o: claim of device %d succeeded\n";
    descriptor.lineno = 116U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "i2o: claim of device %d succeeded\n", (int )dev->lct_data.tid);
    } else {
    }
  } else {
    descriptor___0.modname = "i2o_core";
    descriptor___0.function = "i2o_device_claim";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/message/i2o/i2o_core.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/message/i2o/device.c.prepared";
    descriptor___0.format = "i2o: claim of device %d failed %d\n";
    descriptor___0.lineno = 119U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "i2o: claim of device %d failed %d\n",
                         (int )dev->lct_data.tid, rc);
    } else {
    }
  }
  ldv_mutex_unlock_31(& dev->lock);
  return (rc);
}
}
int i2o_device_claim_release(struct i2o_device *dev )
{
  int tries ;
  int rc ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  rc = 0;
  ldv_mutex_lock_32(& dev->lock);
  tries = 0;
  goto ldv_21500;
  ldv_21499:
  rc = i2o_device_issue_claim(dev, 11U, 16777216U);
  if (rc == 0) {
    goto ldv_21498;
  } else {
  }
  ssleep(1U);
  tries = tries + 1;
  ldv_21500: ;
  if (tries <= 9) {
    goto ldv_21499;
  } else {
  }
  ldv_21498: ;
  if (rc == 0) {
    descriptor.modname = "i2o_core";
    descriptor.function = "i2o_device_claim_release";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/message/i2o/i2o_core.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/message/i2o/device.c.prepared";
    descriptor.format = "i2o: claim release of device %d succeeded\n";
    descriptor.lineno = 161U;
    descriptor.flags = 0U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_pr_debug(& descriptor, "i2o: claim release of device %d succeeded\n",
                         (int )dev->lct_data.tid);
    } else {
    }
  } else {
    descriptor___0.modname = "i2o_core";
    descriptor___0.function = "i2o_device_claim_release";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/message/i2o/i2o_core.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/message/i2o/device.c.prepared";
    descriptor___0.format = "i2o: claim release of device %d failed %d\n";
    descriptor___0.lineno = 164U;
    descriptor___0.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor___0, "i2o: claim release of device %d failed %d\n",
                         (int )dev->lct_data.tid, rc);
    } else {
    }
  }
  ldv_mutex_unlock_33(& dev->lock);
  return (rc);
}
}
static void i2o_device_release(struct device *dev )
{
  struct i2o_device *i2o_dev ;
  struct device const *__mptr ;
  struct _ddebug descriptor ;
  char const *tmp ;
  long tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  i2o_dev = (struct i2o_device *)__mptr + 0xffffffffffffffc0UL;
  descriptor.modname = "i2o_core";
  descriptor.function = "i2o_device_release";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/message/i2o/i2o_core.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/message/i2o/device.c.prepared";
  descriptor.format = "i2o: device %s released\n";
  descriptor.lineno = 182U;
  descriptor.flags = 0U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = dev_name((struct device const *)dev);
    __dynamic_pr_debug(& descriptor, "i2o: device %s released\n", tmp);
  } else {
  }
  kfree((void const *)i2o_dev);
  return;
}
}
static ssize_t i2o_device_show_class_id(struct device *dev , struct device_attribute *attr ,
                                        char *buf )
{
  struct i2o_device *i2o_dev ;
  struct device const *__mptr ;
  size_t tmp ;
  {
  __mptr = (struct device const *)dev;
  i2o_dev = (struct i2o_device *)__mptr + 0xffffffffffffffc0UL;
  sprintf(buf, "0x%03x\n", (int )i2o_dev->lct_data.class_id);
  tmp = strlen((char const *)buf);
  return ((ssize_t )(tmp + 1UL));
}
}
static ssize_t i2o_device_show_tid(struct device *dev , struct device_attribute *attr ,
                                   char *buf )
{
  struct i2o_device *i2o_dev ;
  struct device const *__mptr ;
  size_t tmp ;
  {
  __mptr = (struct device const *)dev;
  i2o_dev = (struct i2o_device *)__mptr + 0xffffffffffffffc0UL;
  sprintf(buf, "0x%03x\n", (int )i2o_dev->lct_data.tid);
  tmp = strlen((char const *)buf);
  return ((ssize_t )(tmp + 1UL));
}
}
struct device_attribute i2o_device_attrs[3U] = { {{"class_id", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
      & i2o_device_show_class_id, 0},
        {{"tid", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                   {(char)0}, {(char)0}, {(char)0}}}}, & i2o_device_show_tid,
      0},
        {{0, (unsigned short)0, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                            {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
      0, 0}};
static struct i2o_device *i2o_device_alloc(void)
{
  struct i2o_device *dev ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  {
  tmp = kzalloc(1368UL, 208U);
  dev = (struct i2o_device *)tmp;
  if ((unsigned long )dev == (unsigned long )((struct i2o_device *)0)) {
    tmp___0 = ERR_PTR(-12L);
    return ((struct i2o_device *)tmp___0);
  } else {
  }
  INIT_LIST_HEAD(& dev->list);
  __mutex_init(& dev->lock, "&dev->lock", & __key);
  dev->device.bus = & i2o_bus_type;
  dev->device.release = & i2o_device_release;
  return (dev);
}
}
static int i2o_device_add(struct i2o_controller *c , i2o_lct_entry *entry )
{
  struct i2o_device *i2o_dev ;
  struct i2o_device *tmp ;
  int rc ;
  long tmp___0 ;
  long tmp___1 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct _ddebug descriptor ;
  char const *tmp___2 ;
  long tmp___3 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  struct list_head const *__mptr___5 ;
  struct list_head const *__mptr___6 ;
  {
  i2o_dev = i2o_device_alloc();
  tmp___1 = IS_ERR((void const *)i2o_dev);
  if (tmp___1 != 0L) {
    printk("\vi2o: unable to allocate i2o device\n");
    tmp___0 = PTR_ERR((void const *)i2o_dev);
    return ((int )tmp___0);
  } else {
  }
  i2o_dev->lct_data = *entry;
  dev_set_name(& i2o_dev->device, "%d:%03x", c->unit, (int )i2o_dev->lct_data.tid);
  i2o_dev->iop = c;
  i2o_dev->device.parent = & c->device;
  rc = device_register(& i2o_dev->device);
  if (rc != 0) {
    goto err;
  } else {
  }
  list_add_tail(& i2o_dev->list, & c->devices);
  tmp = i2o_iop_find_device(i2o_dev->iop, (int )i2o_dev->lct_data.user_tid);
  if ((unsigned long )tmp != (unsigned long )((struct i2o_device *)0) && (unsigned long )tmp != (unsigned long )i2o_dev) {
    rc = sysfs_create_link(& i2o_dev->device.kobj, & tmp->device.kobj, "user");
    if (rc != 0) {
      goto unreg_dev;
    } else {
    }
  } else {
  }
  __mptr = (struct list_head const *)c->devices.next;
  tmp = (struct i2o_device *)__mptr + 0xffffffffffffffd0UL;
  goto ldv_21549;
  ldv_21548: ;
  if ((int )tmp->lct_data.user_tid == (int )i2o_dev->lct_data.tid && (unsigned long )tmp != (unsigned long )i2o_dev) {
    rc = sysfs_create_link(& tmp->device.kobj, & i2o_dev->device.kobj, "user");
    if (rc != 0) {
      goto rmlink1;
    } else {
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)tmp->list.next;
  tmp = (struct i2o_device *)__mptr___0 + 0xffffffffffffffd0UL;
  ldv_21549: ;
  if ((unsigned long )(& tmp->list) != (unsigned long )(& c->devices)) {
    goto ldv_21548;
  } else {
  }
  tmp = i2o_iop_find_device(i2o_dev->iop, (int )i2o_dev->lct_data.parent_tid);
  if ((unsigned long )tmp != (unsigned long )((struct i2o_device *)0) && (unsigned long )tmp != (unsigned long )i2o_dev) {
    rc = sysfs_create_link(& i2o_dev->device.kobj, & tmp->device.kobj, "parent");
    if (rc != 0) {
      goto rmlink1;
    } else {
    }
  } else {
  }
  __mptr___1 = (struct list_head const *)c->devices.next;
  tmp = (struct i2o_device *)__mptr___1 + 0xffffffffffffffd0UL;
  goto ldv_21557;
  ldv_21556: ;
  if ((int )tmp->lct_data.parent_tid == (int )i2o_dev->lct_data.tid && (unsigned long )tmp != (unsigned long )i2o_dev) {
    rc = sysfs_create_link(& tmp->device.kobj, & i2o_dev->device.kobj, "parent");
    if (rc != 0) {
      goto rmlink2;
    } else {
    }
  } else {
  }
  __mptr___2 = (struct list_head const *)tmp->list.next;
  tmp = (struct i2o_device *)__mptr___2 + 0xffffffffffffffd0UL;
  ldv_21557: ;
  if ((unsigned long )(& tmp->list) != (unsigned long )(& c->devices)) {
    goto ldv_21556;
  } else {
  }
  i2o_driver_notify_device_add_all(i2o_dev);
  descriptor.modname = "i2o_core";
  descriptor.function = "i2o_device_add";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/message/i2o/i2o_core.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/message/i2o/device.c.prepared";
  descriptor.format = "i2o: device %s added\n";
  descriptor.lineno = 329U;
  descriptor.flags = 0U;
  tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = dev_name((struct device const *)(& i2o_dev->device));
    __dynamic_pr_debug(& descriptor, "i2o: device %s added\n", tmp___2);
  } else {
  }
  return (0);
  rmlink2:
  __mptr___3 = (struct list_head const *)c->devices.next;
  tmp = (struct i2o_device *)__mptr___3 + 0xffffffffffffffd0UL;
  goto ldv_21566;
  ldv_21565: ;
  if ((int )tmp->lct_data.parent_tid == (int )i2o_dev->lct_data.tid) {
    sysfs_remove_link(& tmp->device.kobj, "parent");
  } else {
  }
  __mptr___4 = (struct list_head const *)tmp->list.next;
  tmp = (struct i2o_device *)__mptr___4 + 0xffffffffffffffd0UL;
  ldv_21566: ;
  if ((unsigned long )(& tmp->list) != (unsigned long )(& c->devices)) {
    goto ldv_21565;
  } else {
  }
  sysfs_remove_link(& i2o_dev->device.kobj, "parent");
  rmlink1:
  __mptr___5 = (struct list_head const *)c->devices.next;
  tmp = (struct i2o_device *)__mptr___5 + 0xffffffffffffffd0UL;
  goto ldv_21573;
  ldv_21572: ;
  if ((int )tmp->lct_data.user_tid == (int )i2o_dev->lct_data.tid) {
    sysfs_remove_link(& tmp->device.kobj, "user");
  } else {
  }
  __mptr___6 = (struct list_head const *)tmp->list.next;
  tmp = (struct i2o_device *)__mptr___6 + 0xffffffffffffffd0UL;
  ldv_21573: ;
  if ((unsigned long )(& tmp->list) != (unsigned long )(& c->devices)) {
    goto ldv_21572;
  } else {
  }
  sysfs_remove_link(& i2o_dev->device.kobj, "user");
  unreg_dev:
  list_del(& i2o_dev->list);
  device_unregister(& i2o_dev->device);
  err:
  kfree((void const *)i2o_dev);
  return (rc);
}
}
void i2o_device_remove(struct i2o_device *i2o_dev )
{
  struct i2o_device *tmp ;
  struct i2o_controller *c ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  c = i2o_dev->iop;
  i2o_driver_notify_device_remove_all(i2o_dev);
  sysfs_remove_link(& i2o_dev->device.kobj, "parent");
  sysfs_remove_link(& i2o_dev->device.kobj, "user");
  __mptr = (struct list_head const *)c->devices.next;
  tmp = (struct i2o_device *)__mptr + 0xffffffffffffffd0UL;
  goto ldv_21585;
  ldv_21584: ;
  if ((int )tmp->lct_data.parent_tid == (int )i2o_dev->lct_data.tid) {
    sysfs_remove_link(& tmp->device.kobj, "parent");
  } else {
  }
  if ((int )tmp->lct_data.user_tid == (int )i2o_dev->lct_data.tid) {
    sysfs_remove_link(& tmp->device.kobj, "user");
  } else {
  }
  __mptr___0 = (struct list_head const *)tmp->list.next;
  tmp = (struct i2o_device *)__mptr___0 + 0xffffffffffffffd0UL;
  ldv_21585: ;
  if ((unsigned long )(& tmp->list) != (unsigned long )(& c->devices)) {
    goto ldv_21584;
  } else {
  }
  list_del(& i2o_dev->list);
  device_unregister(& i2o_dev->device);
  return;
}
}
int i2o_device_parse_lct(struct i2o_controller *c )
{
  struct i2o_device *dev ;
  struct i2o_device *tmp ;
  i2o_lct *lct ;
  u32 *dlct ;
  int max ;
  int i ;
  u16 table_size ;
  u32 buf ;
  u32 *tmp___0 ;
  i2o_lct *tmp___1 ;
  void *tmp___2 ;
  u32 *tmp___3 ;
  u32 *tmp___4 ;
  struct _ddebug descriptor ;
  long tmp___5 ;
  i2o_lct_entry *entry ;
  int found ;
  u32 *tmp___6 ;
  u32 *tmp___7 ;
  u32 *tmp___8 ;
  u32 *tmp___9 ;
  u32 *tmp___10 ;
  u32 *tmp___11 ;
  size_t __len ;
  void *__ret ;
  u32 *tmp___12 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  int found___0 ;
  struct list_head const *__mptr___4 ;
  {
  dlct = (u32 *)c->dlct.virt;
  max = 0;
  i = 0;
  ldv_mutex_lock_34(& c->lct_lock);
  kfree((void const *)c->lct);
  tmp___0 = dlct;
  dlct = dlct + 1;
  buf = *tmp___0;
  table_size = (u16 )buf;
  tmp___2 = kmalloc((size_t )((int )table_size * 4), 208U);
  tmp___1 = (i2o_lct *)tmp___2;
  c->lct = tmp___1;
  lct = tmp___1;
  if ((unsigned long )lct == (unsigned long )((i2o_lct *)0)) {
    ldv_mutex_unlock_35(& c->lct_lock);
    return (-12);
  } else {
  }
  lct->lct_ver = (unsigned char )(buf >> 28);
  lct->boot_tid = (unsigned int )((unsigned short )(buf >> 16)) & 4095U;
  lct->table_size = table_size;
  tmp___3 = dlct;
  dlct = dlct + 1;
  lct->change_ind = *tmp___3;
  tmp___4 = dlct;
  dlct = dlct + 1;
  lct->iop_flags = *tmp___4;
  table_size = (unsigned int )table_size + 65533U;
  descriptor.modname = "i2o_core";
  descriptor.function = "i2o_device_parse_lct";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/message/i2o/i2o_core.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/message/i2o/device.c.prepared";
  descriptor.format = "%s: LCT has %d entries (LCT size: %d)\n";
  descriptor.lineno = 426U;
  descriptor.flags = 0U;
  tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    __dynamic_pr_debug(& descriptor, "%s: LCT has %d entries (LCT size: %d)\n", (char *)(& c->name),
                       max, (int )lct->table_size);
  } else {
  }
  goto ldv_21615;
  ldv_21614:
  entry = (i2o_lct_entry *)(& lct->lct_entry) + (unsigned long )max;
  found = 0;
  tmp___6 = dlct;
  dlct = dlct + 1;
  buf = *tmp___6;
  entry->entry_size = (unsigned short )buf;
  entry->tid = (unsigned int )((unsigned short )(buf >> 16)) & 4095U;
  tmp___7 = dlct;
  dlct = dlct + 1;
  entry->change_ind = *tmp___7;
  tmp___8 = dlct;
  dlct = dlct + 1;
  entry->device_flags = *tmp___8;
  tmp___9 = dlct;
  dlct = dlct + 1;
  buf = *tmp___9;
  entry->class_id = (unsigned int )((unsigned short )buf) & 4095U;
  entry->version = (unsigned int )((unsigned char )(buf >> 12)) & 15U;
  entry->vendor_id = (unsigned short )(buf >> 16);
  tmp___10 = dlct;
  dlct = dlct + 1;
  entry->sub_class = *tmp___10;
  tmp___11 = dlct;
  dlct = dlct + 1;
  buf = *tmp___11;
  entry->user_tid = (unsigned int )((unsigned short )buf) & 4095U;
  entry->parent_tid = (unsigned int )((unsigned short )(buf >> 12)) & 4095U;
  entry->bios_info = (unsigned char )(buf >> 24);
  __len = 8UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& entry->identity_tag), (void const *)dlct, __len);
  } else {
    __ret = __builtin_memcpy((void *)(& entry->identity_tag), (void const *)dlct,
                             __len);
  }
  dlct = dlct + 2UL;
  tmp___12 = dlct;
  dlct = dlct + 1;
  entry->event_capabilities = *tmp___12;
  __mptr = (struct list_head const *)c->devices.next;
  dev = (struct i2o_device *)__mptr + 0xffffffffffffffd0UL;
  __mptr___0 = (struct list_head const *)dev->list.next;
  tmp = (struct i2o_device *)__mptr___0 + 0xffffffffffffffd0UL;
  goto ldv_21613;
  ldv_21612: ;
  if ((int )entry->tid == (int )dev->lct_data.tid) {
    found = 1;
    goto ldv_21611;
  } else {
  }
  dev = tmp;
  __mptr___1 = (struct list_head const *)tmp->list.next;
  tmp = (struct i2o_device *)__mptr___1 + 0xffffffffffffffd0UL;
  ldv_21613: ;
  if ((unsigned long )(& dev->list) != (unsigned long )(& c->devices)) {
    goto ldv_21612;
  } else {
  }
  ldv_21611: ;
  if (found == 0) {
    i2o_device_add(c, entry);
  } else {
  }
  table_size = (unsigned int )table_size + 65527U;
  max = max + 1;
  ldv_21615: ;
  if ((unsigned int )table_size != 0U) {
    goto ldv_21614;
  } else {
  }
  __mptr___2 = (struct list_head const *)c->devices.next;
  dev = (struct i2o_device *)__mptr___2 + 0xffffffffffffffd0UL;
  __mptr___3 = (struct list_head const *)dev->list.next;
  tmp = (struct i2o_device *)__mptr___3 + 0xffffffffffffffd0UL;
  goto ldv_21628;
  ldv_21627:
  found___0 = 0;
  i = 0;
  goto ldv_21626;
  ldv_21625: ;
  if ((int )lct->lct_entry[i].tid == (int )dev->lct_data.tid) {
    found___0 = 1;
    goto ldv_21624;
  } else {
  }
  i = i + 1;
  ldv_21626: ;
  if (i < max) {
    goto ldv_21625;
  } else {
  }
  ldv_21624: ;
  if (found___0 == 0) {
    i2o_device_remove(dev);
  } else {
  }
  dev = tmp;
  __mptr___4 = (struct list_head const *)tmp->list.next;
  tmp = (struct i2o_device *)__mptr___4 + 0xffffffffffffffd0UL;
  ldv_21628: ;
  if ((unsigned long )(& dev->list) != (unsigned long )(& c->devices)) {
    goto ldv_21627;
  } else {
  }
  ldv_mutex_unlock_36(& c->lct_lock);
  return (0);
}
}
int i2o_parm_issue(struct i2o_device *i2o_dev , int cmd , void *oplist , int oplen ,
                   void *reslist , int reslen )
{
  struct i2o_message *msg ;
  int i ;
  int rc ;
  struct i2o_dma res ;
  struct i2o_controller *c ;
  struct device *dev ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  size_t __len ;
  void *__ret ;
  int tmp___4 ;
  int tmp___5 ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  i = 0;
  c = i2o_dev->iop;
  dev = & (c->pdev)->dev;
  res.virt = 0;
  tmp = i2o_dma_alloc(dev, & res, (size_t )reslen);
  if (tmp != 0) {
    return (-12);
  } else {
  }
  msg = i2o_msg_get_wait(c, 5);
  tmp___1 = IS_ERR((void const *)msg);
  if (tmp___1 != 0L) {
    i2o_dma_free(dev, & res);
    tmp___0 = PTR_ERR((void const *)msg);
    return ((int )tmp___0);
  } else {
  }
  i = 0;
  msg->u.head[1] = (unsigned int )(((cmd << 24) | 4096) | (int )i2o_dev->lct_data.tid);
  tmp___2 = i;
  i = i + 1;
  msg->body[tmp___2] = 0U;
  tmp___3 = i;
  i = i + 1;
  msg->body[tmp___3] = (unsigned int )(oplen | 1275068416);
  __len = (size_t )oplen;
  __ret = __builtin_memcpy((void *)(& msg->body) + (unsigned long )i, (void const *)oplist,
                           __len);
  i = (oplen / 4 + (((unsigned int )oplen & 3U) != 0U)) + i;
  tmp___4 = i;
  i = i + 1;
  msg->body[tmp___4] = (unsigned int )res.len | 3489660928U;
  tmp___5 = i;
  i = i + 1;
  msg->body[tmp___5] = (unsigned int )res.phys;
  msg->u.head[0] = (((unsigned int )i + 4U) << 16U) | 81U;
  rc = i2o_msg_post_wait_mem(c, msg, 10UL, & res);
  if (rc == -110) {
    return (rc);
  } else {
  }
  __len___0 = res.len;
  __ret___0 = __builtin_memcpy(reslist, (void const *)res.virt, __len___0);
  i2o_dma_free(dev, & res);
  return (rc);
}
}
int i2o_parm_field_get(struct i2o_device *i2o_dev , int group , int field , void *buf ,
                       int buflen )
{
  u32 opblk[3U] ;
  u8 *resblk ;
  int rc ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  {
  opblk[0] = 1U;
  opblk[1] = (unsigned int )(((int )((unsigned short )group) << 16) | 1);
  opblk[2] = (unsigned int )(((int )((short )field) << 16) | 1);
  tmp = kmalloc((size_t )(buflen + 8), 208U);
  resblk = (u8 *)tmp;
  if ((unsigned long )resblk == (unsigned long )((u8 *)0)) {
    return (-12);
  } else {
  }
  rc = i2o_parm_issue(i2o_dev, 6, (void *)(& opblk), 12, (void *)resblk, buflen + 8);
  __len = (size_t )buflen;
  __ret = __builtin_memcpy(buf, (void const *)resblk + 8U, __len);
  kfree((void const *)resblk);
  return (rc);
}
}
int i2o_parm_table_get(struct i2o_device *dev , int oper , int group , int fieldcount ,
                       void *ibuf , int ibuflen , void *resblk , int reslen )
{
  u16 *opblk ;
  int size ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  {
  size = ibuflen + 10;
  if (((unsigned int )size & 3U) != 0U) {
    size = (4 - size % 4) + size;
  } else {
  }
  tmp = kmalloc((size_t )size, 208U);
  opblk = (u16 *)tmp;
  if ((unsigned long )opblk == (unsigned long )((u16 *)0)) {
    printk("\vi2o: no memory for query buffer.\n");
    return (-12);
  } else {
  }
  *opblk = 1U;
  *(opblk + 1UL) = 0U;
  *(opblk + 2UL) = (u16 )oper;
  *(opblk + 3UL) = (u16 )group;
  *(opblk + 4UL) = (u16 )fieldcount;
  __len = (size_t )ibuflen;
  __ret = __builtin_memcpy((void *)opblk + 5U, (void const *)ibuf, __len);
  size = i2o_parm_issue(dev, 6, (void *)opblk, size, resblk, reslen);
  kfree((void const *)opblk);
  if (size > reslen) {
    return (reslen);
  } else {
  }
  return (size);
}
}
void ldv_mutex_lock_25(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_26(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_27(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_28(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_30(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_31(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_32(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_34(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lct_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lct_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_36(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lct_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_52(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_50(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_53(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_49(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_51(struct mutex *ldv_func_arg1 ) ;
void i2o_report_status(char const *severity , char const *str , struct i2o_message *m ) ;
void i2o_dump_message(struct i2o_message *m ) ;
void i2o_debug_state(struct i2o_controller *c ) ;
static void i2o_report_util_cmd(u8 cmd ) ;
static void i2o_report_exec_cmd(u8 cmd ) ;
static void i2o_report_fail_status(u8 req_status , u32 *msg ) ;
static void i2o_report_common_status(u8 req_status ) ;
static void i2o_report_common_dsc(u16 detailed_status ) ;
void i2o_report_status(char const *severity , char const *str , struct i2o_message *m )
{
  u32 *msg ;
  u8 cmd ;
  u8 req_status ;
  u16 detailed_status ;
  {
  msg = (u32 *)m;
  cmd = (u8 )(*(msg + 1UL) >> 24);
  req_status = (u8 )(*(msg + 4UL) >> 24);
  detailed_status = (u16 )*(msg + 4UL);
  if ((unsigned int )cmd == 19U) {
    return;
  } else {
  }
  printk("%s%s: ", severity, str);
  if ((unsigned int )cmd <= 30U) {
    i2o_report_util_cmd((int )cmd);
  } else
  if ((unsigned int )cmd > 159U && (unsigned int )cmd <= 239U) {
    i2o_report_exec_cmd((int )cmd);
  } else {
    printk("Cmd = %0#2x, ", (int )cmd);
  }
  if ((*msg & 8192U) != 0U) {
    i2o_report_fail_status((int )req_status, msg);
    return;
  } else {
  }
  i2o_report_common_status((int )req_status);
  if ((unsigned int )cmd <= 30U || ((unsigned int )cmd > 159U && (unsigned int )cmd <= 239U)) {
    i2o_report_common_dsc((int )detailed_status);
  } else {
    printk(" / DetailedStatus = %0#4x.\n", (int )detailed_status);
  }
  return;
}
}
void i2o_dump_message(struct i2o_message *m )
{
  {
  return;
}
}
static void i2o_report_fail_status(u8 req_status , u32 *msg )
{
  char *FAIL_STATUS[17U] ;
  {
  FAIL_STATUS[0] = (char *)"0x80";
  FAIL_STATUS[1] = (char *)"SERVICE_SUSPENDED";
  FAIL_STATUS[2] = (char *)"SERVICE_TERMINATED";
  FAIL_STATUS[3] = (char *)"CONGESTION";
  FAIL_STATUS[4] = (char *)"FAILURE";
  FAIL_STATUS[5] = (char *)"STATE_ERROR";
  FAIL_STATUS[6] = (char *)"TIME_OUT";
  FAIL_STATUS[7] = (char *)"ROUTING_FAILURE";
  FAIL_STATUS[8] = (char *)"INVALID_VERSION";
  FAIL_STATUS[9] = (char *)"INVALID_OFFSET";
  FAIL_STATUS[10] = (char *)"INVALID_MSG_FLAGS";
  FAIL_STATUS[11] = (char *)"FRAME_TOO_SMALL";
  FAIL_STATUS[12] = (char *)"FRAME_TOO_LARGE";
  FAIL_STATUS[13] = (char *)"INVALID_TARGET_ID";
  FAIL_STATUS[14] = (char *)"INVALID_INITIATOR_ID";
  FAIL_STATUS[15] = (char *)"INVALID_INITIATOR_CONTEX";
  FAIL_STATUS[16] = (char *)"UNKNOWN_FAILURE";
  if ((unsigned int )req_status == 255U) {
    printk("TRANSPORT_UNKNOWN_FAILURE (%0#2x).\n", (int )req_status);
  } else {
    printk("TRANSPORT_%s.\n", FAIL_STATUS[(int )req_status & 15]);
  }
  printk("\v  InitiatorId = %d, TargetId = %d\n", (*(msg + 1UL) >> 12) & 4095U, *(msg + 1UL) & 4095U);
  printk("\v  LowestVersion = 0x%02X, HighestVersion = 0x%02X\n", (*(msg + 4UL) >> 8) & 255U,
         *(msg + 4UL) & 255U);
  printk("\v  FailingHostUnit = 0x%04X,  FailingIOP = 0x%03X\n", *(msg + 5UL) >> 16,
         *(msg + 5UL) & 4095U);
  printk("\v  Severity:  0x%02X\n", (*(msg + 4UL) >> 16) & 255U);
  if ((*(msg + 4UL) & 65536U) != 0U) {
    printk("\017(FormatError), this msg can never be delivered/processed.\n");
  } else {
  }
  if ((*(msg + 4UL) & 131072U) != 0U) {
    printk("\017(PathError), this msg can no longer be delivered/processed.\n");
  } else {
  }
  if ((*(msg + 4UL) & 262144U) != 0U) {
    printk("\017(PathState), the system state does not allow delivery.\n");
  } else {
  }
  if ((*(msg + 4UL) & 524288U) != 0U) {
    printk("\017(Congestion), resources temporarily not available;do not retry immediately.\n");
  } else {
  }
  return;
}
}
static void i2o_report_common_status(u8 req_status )
{
  char *REPLY_STATUS[12U] ;
  {
  REPLY_STATUS[0] = (char *)"SUCCESS";
  REPLY_STATUS[1] = (char *)"ABORT_DIRTY";
  REPLY_STATUS[2] = (char *)"ABORT_NO_DATA_TRANSFER";
  REPLY_STATUS[3] = (char *)"ABORT_PARTIAL_TRANSFER";
  REPLY_STATUS[4] = (char *)"ERROR_DIRTY";
  REPLY_STATUS[5] = (char *)"ERROR_NO_DATA_TRANSFER";
  REPLY_STATUS[6] = (char *)"ERROR_PARTIAL_TRANSFER";
  REPLY_STATUS[7] = (char *)"PROCESS_ABORT_DIRTY";
  REPLY_STATUS[8] = (char *)"PROCESS_ABORT_NO_DATA_TRANSFER";
  REPLY_STATUS[9] = (char *)"PROCESS_ABORT_PARTIAL_TRANSFER";
  REPLY_STATUS[10] = (char *)"TRANSACTION_ERROR";
  REPLY_STATUS[11] = (char *)"PROGRESS_REPORT";
  if ((unsigned int )req_status > 11U) {
    printk("RequestStatus = %0#2x", (int )req_status);
  } else {
    printk("%s", REPLY_STATUS[(int )req_status]);
  }
  return;
}
}
static void i2o_report_common_dsc(u16 detailed_status )
{
  char *COMMON_DSC[29U] ;
  {
  COMMON_DSC[0] = (char *)"SUCCESS";
  COMMON_DSC[1] = (char *)"0x01";
  COMMON_DSC[2] = (char *)"BAD_KEY";
  COMMON_DSC[3] = (char *)"TCL_ERROR";
  COMMON_DSC[4] = (char *)"REPLY_BUFFER_FULL";
  COMMON_DSC[5] = (char *)"NO_SUCH_PAGE";
  COMMON_DSC[6] = (char *)"INSUFFICIENT_RESOURCE_SOFT";
  COMMON_DSC[7] = (char *)"INSUFFICIENT_RESOURCE_HARD";
  COMMON_DSC[8] = (char *)"0x08";
  COMMON_DSC[9] = (char *)"CHAIN_BUFFER_TOO_LARGE";
  COMMON_DSC[10] = (char *)"UNSUPPORTED_FUNCTION";
  COMMON_DSC[11] = (char *)"DEVICE_LOCKED";
  COMMON_DSC[12] = (char *)"DEVICE_RESET";
  COMMON_DSC[13] = (char *)"INAPPROPRIATE_FUNCTION";
  COMMON_DSC[14] = (char *)"INVALID_INITIATOR_ADDRESS";
  COMMON_DSC[15] = (char *)"INVALID_MESSAGE_FLAGS";
  COMMON_DSC[16] = (char *)"INVALID_OFFSET";
  COMMON_DSC[17] = (char *)"INVALID_PARAMETER";
  COMMON_DSC[18] = (char *)"INVALID_REQUEST";
  COMMON_DSC[19] = (char *)"INVALID_TARGET_ADDRESS";
  COMMON_DSC[20] = (char *)"MESSAGE_TOO_LARGE";
  COMMON_DSC[21] = (char *)"MESSAGE_TOO_SMALL";
  COMMON_DSC[22] = (char *)"MISSING_PARAMETER";
  COMMON_DSC[23] = (char *)"TIMEOUT";
  COMMON_DSC[24] = (char *)"UNKNOWN_ERROR";
  COMMON_DSC[25] = (char *)"UNKNOWN_FUNCTION";
  COMMON_DSC[26] = (char *)"UNSUPPORTED_VERSION";
  COMMON_DSC[27] = (char *)"DEVICE_BUSY";
  COMMON_DSC[28] = (char *)"DEVICE_NOT_AVAILABLE";
  if ((unsigned int )detailed_status > 28U) {
    printk(" / DetailedStatus = %0#4x.\n", (int )detailed_status);
  } else {
    printk(" / %s.\n", COMMON_DSC[(int )detailed_status]);
  }
  return;
}
}
static void i2o_report_util_cmd(u8 cmd )
{
  {
  switch ((int )cmd) {
  case 0:
  printk("UTIL_NOP, ");
  goto ldv_21426;
  case 1:
  printk("UTIL_ABORT, ");
  goto ldv_21426;
  case 9:
  printk("UTIL_CLAIM, ");
  goto ldv_21426;
  case 11:
  printk("UTIL_CLAIM_RELEASE, ");
  goto ldv_21426;
  case 16:
  printk("UTIL_CONFIG_DIALOG, ");
  goto ldv_21426;
  case 13:
  printk("UTIL_DEVICE_RESERVE, ");
  goto ldv_21426;
  case 15:
  printk("UTIL_DEVICE_RELEASE, ");
  goto ldv_21426;
  case 20:
  printk("UTIL_EVENT_ACKNOWLEDGE, ");
  goto ldv_21426;
  case 19:
  printk("UTIL_EVENT_REGISTER, ");
  goto ldv_21426;
  case 23:
  printk("UTIL_LOCK, ");
  goto ldv_21426;
  case 25:
  printk("UTIL_LOCK_RELEASE, ");
  goto ldv_21426;
  case 6:
  printk("UTIL_PARAMS_GET, ");
  goto ldv_21426;
  case 5:
  printk("UTIL_PARAMS_SET, ");
  goto ldv_21426;
  case 21:
  printk("UTIL_REPLY_FAULT_NOTIFY, ");
  goto ldv_21426;
  default:
  printk("Cmd = %0#2x, ", (int )cmd);
  }
  ldv_21426: ;
  return;
}
}
static void i2o_report_exec_cmd(u8 cmd )
{
  {
  switch ((int )cmd) {
  case 179:
  printk("EXEC_ADAPTER_ASSIGN, ");
  goto ldv_21445;
  case 178:
  printk("EXEC_ADAPTER_READ, ");
  goto ldv_21445;
  case 181:
  printk("EXEC_ADAPTER_RELEASE, ");
  goto ldv_21445;
  case 165:
  printk("EXEC_BIOS_INFO_SET, ");
  goto ldv_21445;
  case 167:
  printk("EXEC_BOOT_DEVICE_SET, ");
  goto ldv_21445;
  case 187:
  printk("EXEC_CONFIG_VALIDATE, ");
  goto ldv_21445;
  case 202:
  printk("EXEC_CONN_SETUP, ");
  goto ldv_21445;
  case 177:
  printk("EXEC_DDM_DESTROY, ");
  goto ldv_21445;
  case 213:
  printk("EXEC_DDM_ENABLE, ");
  goto ldv_21445;
  case 199:
  printk("EXEC_DDM_QUIESCE, ");
  goto ldv_21445;
  case 217:
  printk("EXEC_DDM_RESET, ");
  goto ldv_21445;
  case 175:
  printk("EXEC_DDM_SUSPEND, ");
  goto ldv_21445;
  case 183:
  printk("EXEC_DEVICE_ASSIGN, ");
  goto ldv_21445;
  case 185:
  printk("EXEC_DEVICE_RELEASE, ");
  goto ldv_21445;
  case 168:
  printk("EXEC_HRT_GET, ");
  goto ldv_21445;
  case 190:
  printk("EXEC_IOP_CLEAR, ");
  goto ldv_21445;
  case 201:
  printk("EXEC_IOP_CONNECT, ");
  goto ldv_21445;
  case 189:
  printk("EXEC_IOP_RESET, ");
  goto ldv_21445;
  case 162:
  printk("EXEC_LCT_NOTIFY, ");
  goto ldv_21445;
  case 161:
  printk("EXEC_OUTBOUND_INIT, ");
  goto ldv_21445;
  case 211:
  printk("EXEC_PATH_ENABLE, ");
  goto ldv_21445;
  case 197:
  printk("EXEC_PATH_QUIESCE, ");
  goto ldv_21445;
  case 215:
  printk("EXEC_PATH_RESET, ");
  goto ldv_21445;
  case 221:
  printk("EXEC_STATIC_MF_CREATE, ");
  goto ldv_21445;
  case 223:
  printk("EXEC_STATIC_MF_RELEASE, ");
  goto ldv_21445;
  case 160:
  printk("EXEC_STATUS_GET, ");
  goto ldv_21445;
  case 169:
  printk("EXEC_SW_DOWNLOAD, ");
  goto ldv_21445;
  case 171:
  printk("EXEC_SW_UPLOAD, ");
  goto ldv_21445;
  case 173:
  printk("EXEC_SW_REMOVE, ");
  goto ldv_21445;
  case 209:
  printk("EXEC_SYS_ENABLE, ");
  goto ldv_21445;
  case 193:
  printk("EXEC_SYS_MODIFY, ");
  goto ldv_21445;
  case 195:
  printk("EXEC_SYS_QUIESCE, ");
  goto ldv_21445;
  case 163:
  printk("EXEC_SYS_TAB_SET, ");
  goto ldv_21445;
  default:
  printk("Cmd = %#02x, ", (int )cmd);
  }
  ldv_21445: ;
  return;
}
}
void i2o_debug_state(struct i2o_controller *c )
{
  {
  printk("\016%s: State = ", (char *)(& c->name));
  switch ((int )((i2o_status_block *)c->status_block.virt)->iop_state) {
  case 1:
  printk("INIT\n");
  goto ldv_21483;
  case 2:
  printk("RESET\n");
  goto ldv_21483;
  case 4:
  printk("HOLD\n");
  goto ldv_21483;
  case 5:
  printk("READY\n");
  goto ldv_21483;
  case 8:
  printk("OPERATIONAL\n");
  goto ldv_21483;
  case 16:
  printk("FAILED\n");
  goto ldv_21483;
  case 17:
  printk("FAULTED\n");
  goto ldv_21483;
  default:
  printk("%x (unknown !!)\n", (int )((i2o_status_block *)c->status_block.virt)->iop_state);
  }
  ldv_21483: ;
  return;
}
}
void i2o_dump_hrt(struct i2o_controller *c )
{
  u32 *rows ;
  u8 *p ;
  u8 *d ;
  int count ;
  int length ;
  int i ;
  int state ;
  {
  rows = (u32 *)c->hrt.virt;
  p = (u8 *)c->hrt.virt;
  if ((unsigned int )*(p + 3UL) != 0U) {
    printk("\v%s: HRT table for controller is too new a version.\n", (char *)(& c->name));
    return;
  } else {
  }
  count = (int )*p | ((int )*(p + 1UL) << 8);
  length = (int )*(p + 2UL);
  printk("\016%s: HRT has %d entries of %d bytes each.\n", (char *)(& c->name), count,
         length << 2);
  rows = rows + 2UL;
  i = 0;
  goto ldv_21510;
  ldv_21509:
  printk("\016Adapter %08X: ", *rows);
  p = (u8 *)rows + 1U;
  d = (u8 *)rows + 2U;
  state = ((int )*(p + 1UL) << 8) | (int )*p;
  printk("TID %04X:[", state & 4095);
  state = state >> 12;
  if (state & 1) {
    printk("H");
  } else {
  }
  if ((state & 4) != 0) {
    printk("P");
    if ((state & 2) != 0) {
      printk("C");
    } else {
    }
  } else {
  }
  if (state > 9) {
    printk("*");
  } else {
  }
  printk("]:");
  switch ((int )*(p + 3UL)) {
  case 0:
  printk("Local bus %d: I/O at 0x%04X Mem 0x%08X", (int )*(p + 2UL), ((int )*(d + 1UL) << 8) | (int )*d,
         *((u32 *)d + 4U));
  goto ldv_21502;
  case 1:
  printk("ISA %d: CSN %d I/O at 0x%04X Mem 0x%08X", (int )*(p + 2UL), (int )*(d + 2UL),
         ((int )*(d + 1UL) << 8) | (int )*d, *((u32 *)d + 4U));
  goto ldv_21502;
  case 2:
  printk("EISA %d: Slot %d I/O at 0x%04X Mem 0x%08X", (int )*(p + 2UL), (int )*(d + 3UL),
         ((int )*(d + 1UL) << 8) | (int )*d, *((u32 *)d + 4U));
  goto ldv_21502;
  case 3:
  printk("MCA %d: Slot %d I/O at 0x%04X Mem 0x%08X", (int )*(p + 2UL), (int )*(d + 3UL),
         ((int )*(d + 1UL) << 8) | (int )*d, *((u32 *)d + 4U));
  goto ldv_21502;
  case 4:
  printk("PCI %d: Bus %d Device %d Function %d", (int )*(p + 2UL), (int )*(d + 2UL),
         (int )*(d + 1UL), (int )*d);
  goto ldv_21502;
  case 128: ;
  default:
  printk("Unsupported bus type.");
  goto ldv_21502;
  }
  ldv_21502:
  printk("\n");
  rows = rows + (unsigned long )length;
  i = i + 1;
  ldv_21510: ;
  if (i < count) {
    goto ldv_21509;
  } else {
  }
  return;
}
}
void ldv_mutex_lock_49(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_50(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_51(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_52(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_53(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static __u32 __arch_swab32(__u32 val )
{
  {
  __asm__ ("bswapl %0": "=r" (val): "0" (val));
  return (val);
}
}
__inline static __u32 __fswab32(__u32 val )
{
  __u32 tmp ;
  {
  tmp = __arch_swab32(val);
  return (tmp);
}
}
int ldv_mutex_trylock_62(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_60(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_63(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_59(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_61(struct mutex *ldv_func_arg1 ) ;
extern void *dev_get_drvdata(struct device const * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
extern void put_device(struct device * ) ;
extern void *ioremap_nocache(resource_size_t , unsigned long ) ;
extern void iounmap(void volatile * ) ;
extern void pci_dev_put(struct pci_dev * ) ;
extern struct pci_dev *pci_get_slot(struct pci_bus * , unsigned int ) ;
extern int pci_bus_write_config_word(struct pci_bus * , unsigned int , int , u16 ) ;
__inline static int pci_write_config_word(struct pci_dev const *dev , int where ,
                                          u16 val )
{
  int tmp ;
  {
  tmp = pci_bus_write_config_word(dev->bus, dev->devfn, where, (int )val);
  return (tmp);
}
}
extern int pci_enable_device(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
extern int dma_set_mask(struct device * , u64 ) ;
__inline static int pci_set_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_set_mask(& dev->dev, mask);
  return (tmp);
}
}
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  return (tmp);
}
}
__inline static void pci_set_drvdata(struct pci_dev *pdev , void *data )
{
  {
  dev_set_drvdata(& pdev->dev, data);
  return;
}
}
__inline static char const *pci_name(struct pci_dev const *pdev )
{
  char const *tmp ;
  {
  tmp = dev_name(& pdev->dev);
  return (tmp);
}
}
extern int request_threaded_irq(unsigned int , irqreturn_t (*)(int , void * ) ,
                                irqreturn_t (*)(int , void * ) , unsigned long ,
                                char const * , void * ) ;
__inline static int request_irq(unsigned int irq , irqreturn_t (*handler)(int , void * ) ,
                                unsigned long flags , char const *name , void *dev )
{
  int tmp ;
  {
  tmp = request_threaded_irq(irq, handler, 0, flags, name, dev);
  return (tmp);
}
}
extern void free_irq(unsigned int , void * ) ;
extern struct module __this_module ;
static struct pci_device_id i2o_pci_ids[4U] = { {4294967295U, 4294967295U, 4294967295U, 4294967295U, 917504U, 16776960U, 0UL},
        {4164U,
      42257U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {32902U, 6498U, 4186U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
static void i2o_pci_free(struct i2o_controller *c )
{
  struct device *dev ;
  {
  dev = & (c->pdev)->dev;
  i2o_dma_free(dev, & c->out_queue);
  i2o_dma_free(dev, & c->status_block);
  kfree((void const *)c->lct);
  i2o_dma_free(dev, & c->dlct);
  i2o_dma_free(dev, & c->hrt);
  i2o_dma_free(dev, & c->status);
  if ((unsigned int )*((unsigned char *)c + 32UL) != 0U && (unsigned long )c->in_queue.virt != (unsigned long )((void *)0)) {
    iounmap((void volatile *)c->in_queue.virt);
  } else {
  }
  if ((unsigned long )c->base.virt != (unsigned long )((void *)0)) {
    iounmap((void volatile *)c->base.virt);
  } else {
  }
  pci_release_regions(c->pdev);
  return;
}
}
static int i2o_pci_alloc(struct i2o_controller *c )
{
  struct pci_dev *pdev ;
  struct device *dev ;
  int i ;
  int tmp ;
  unsigned int tmp___0 ;
  __u32 tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  pdev = c->pdev;
  dev = & pdev->dev;
  tmp = pci_request_regions(pdev, "I2O-subsystem");
  if (tmp != 0) {
    printk("\v%s: device already claimed\n", (char *)(& c->name));
    return (-19);
  } else {
  }
  i = 0;
  goto ldv_23131;
  ldv_23130: ;
  if ((pdev->resource[i].flags & 256UL) == 0UL) {
    if (c->base.phys == 0UL) {
      c->base.phys = (unsigned long )pdev->resource[i].start;
      c->base.len = pdev->resource[i].start != 0ULL || pdev->resource[i].end != pdev->resource[i].start ? (unsigned long )((pdev->resource[i].end - pdev->resource[i].start) + 1ULL) : 0UL;
      if ((unsigned int )pdev->device == 42241U) {
        if ((unsigned int )pdev->subsystem_device > 49201U && (unsigned int )pdev->subsystem_device <= 49211U) {
          if (c->base.len > 4194304UL) {
            c->base.len = 4194304UL;
          } else
          if (c->base.len > 1048576UL) {
            c->base.len = 1048576UL;
          } else {
          }
        } else {
        }
      } else {
      }
      if ((unsigned int )*((unsigned char *)c + 32UL) == 0U) {
        goto ldv_23129;
      } else {
      }
    } else {
      c->in_queue.phys = (unsigned long )pdev->resource[i].start;
      c->in_queue.len = pdev->resource[i].start != 0ULL || pdev->resource[i].end != pdev->resource[i].start ? (unsigned long )((pdev->resource[i].end - pdev->resource[i].start) + 1ULL) : 0UL;
      goto ldv_23129;
    }
  } else {
  }
  i = i + 1;
  ldv_23131: ;
  if (i <= 5) {
    goto ldv_23130;
  } else {
  }
  ldv_23129: ;
  if (i == 6) {
    printk("\v%s: I2O controller has no memory regions defined.\n", (char *)(& c->name));
    i2o_pci_free(c);
    return (-22);
  } else {
  }
  if ((unsigned int )*((unsigned char *)c + 32UL) != 0U) {
    printk("\016%s: PCI I2O controller\n", (char *)(& c->name));
    printk("\016     BAR0 at 0x%08lX size=%ld\n", c->base.phys, c->base.len);
    printk("\016     BAR1 at 0x%08lX size=%ld\n", c->in_queue.phys, c->in_queue.len);
  } else {
    printk("\016%s: PCI I2O controller at %08lX size=%ld\n", (char *)(& c->name),
           c->base.phys, c->base.len);
  }
  c->base.virt = ioremap_nocache((resource_size_t )c->base.phys, c->base.len);
  if ((unsigned long )c->base.virt == (unsigned long )((void *)0)) {
    printk("\v%s: Unable to map controller.\n", (char *)(& c->name));
    i2o_pci_free(c);
    return (-12);
  } else {
  }
  if ((unsigned int )*((unsigned char *)c + 32UL) != 0U) {
    c->in_queue.virt = ioremap_nocache((resource_size_t )c->in_queue.phys, c->in_queue.len);
    if ((unsigned long )c->in_queue.virt == (unsigned long )((void *)0)) {
      printk("\v%s: Unable to map controller.\n", (char *)(& c->name));
      i2o_pci_free(c);
      return (-12);
    } else {
    }
  } else {
    c->in_queue = c->base;
  }
  c->irq_status = c->base.virt + 48UL;
  c->irq_mask = c->base.virt + 52UL;
  c->in_port = c->base.virt + 64UL;
  c->out_port = c->base.virt + 68UL;
  if ((unsigned int )pdev->vendor == 4183U && (unsigned int )pdev->device == 6336U) {
    tmp___0 = readl((void const volatile *)c->base.virt + 65536U);
    tmp___1 = __fswab32(tmp___0);
    if ((tmp___1 & 268435456U) != 0U) {
      printk("\016%s: MPC82XX needs CPU running to service I2O.\n", (char *)(& c->name));
      i2o_pci_free(c);
      return (-19);
    } else {
      c->irq_status = c->irq_status + 66560UL;
      c->irq_mask = c->irq_mask + 66560UL;
      c->in_port = c->in_port + 66560UL;
      c->out_port = c->out_port + 66560UL;
      printk("\016%s: MPC82XX workarounds activated.\n", (char *)(& c->name));
    }
  } else {
  }
  tmp___2 = i2o_dma_alloc(dev, & c->status, 8UL);
  if (tmp___2 != 0) {
    i2o_pci_free(c);
    return (-12);
  } else {
  }
  tmp___3 = i2o_dma_alloc(dev, & c->hrt, 24UL);
  if (tmp___3 != 0) {
    i2o_pci_free(c);
    return (-12);
  } else {
  }
  tmp___4 = i2o_dma_alloc(dev, & c->dlct, 8192UL);
  if (tmp___4 != 0) {
    i2o_pci_free(c);
    return (-12);
  } else {
  }
  tmp___5 = i2o_dma_alloc(dev, & c->status_block, 88UL);
  if (tmp___5 != 0) {
    i2o_pci_free(c);
    return (-12);
  } else {
  }
  tmp___6 = i2o_dma_alloc(dev, & c->out_queue, 65536UL);
  if (tmp___6 != 0) {
    i2o_pci_free(c);
    return (-12);
  } else {
  }
  pci_set_drvdata(pdev, (void *)c);
  return (0);
}
}
static irqreturn_t i2o_pci_interrupt(int irq , void *dev_id )
{
  struct i2o_controller *c ;
  u32 m ;
  irqreturn_t rc ;
  long tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  {
  c = (struct i2o_controller *)dev_id;
  rc = 0;
  goto ldv_23141;
  ldv_23140:
  m = readl((void const volatile *)c->out_port);
  if (m == 4294967295U) {
    m = readl((void const volatile *)c->out_port);
    tmp = ldv__builtin_expect(m == 4294967295U, 0L);
    if (tmp != 0L) {
      goto ldv_23139;
    } else {
    }
  } else {
  }
  tmp___0 = i2o_driver_dispatch(c, m);
  if (tmp___0 != 0) {
    i2o_flush_reply(c, m);
  } else {
  }
  rc = 1;
  ldv_23141:
  tmp___1 = readl((void const volatile *)c->irq_status);
  if ((tmp___1 & 8U) != 0U) {
    goto ldv_23140;
  } else {
  }
  ldv_23139: ;
  return (rc);
}
}
static int i2o_pci_irq_enable(struct i2o_controller *c )
{
  struct pci_dev *pdev ;
  int rc ;
  {
  pdev = c->pdev;
  writel(4294967295U, (void volatile *)c->irq_mask);
  if (pdev->irq != 0U) {
    rc = request_irq(pdev->irq, & i2o_pci_interrupt, 128UL, (char const *)(& c->name),
                     (void *)c);
    if (rc < 0) {
      printk("\v%s: unable to allocate interrupt %d.\n", (char *)(& c->name), pdev->irq);
      return (rc);
    } else {
    }
  } else {
  }
  writel(0U, (void volatile *)c->irq_mask);
  printk("\016%s: Installed at IRQ %d\n", (char *)(& c->name), pdev->irq);
  return (0);
}
}
static void i2o_pci_irq_disable(struct i2o_controller *c )
{
  {
  writel(4294967295U, (void volatile *)c->irq_mask);
  if ((c->pdev)->irq != 0U) {
    free_irq((c->pdev)->irq, (void *)c);
  } else {
  }
  return;
}
}
static int i2o_pci_probe(struct pci_dev *pdev , struct pci_device_id const *id )
{
  struct i2o_controller *c ;
  int rc ;
  struct pci_dev *i960 ;
  char const *tmp ;
  char const *tmp___0 ;
  char const *tmp___1 ;
  int tmp___2 ;
  char const *tmp___3 ;
  long tmp___4 ;
  char const *tmp___5 ;
  long tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  {
  i960 = 0;
  printk("\016i2o: Checking for PCI I2O controllers...\n");
  if ((pdev->class & 255U) > 1U) {
    tmp = pci_name((struct pci_dev const *)pdev);
    printk("\fi2o: %s does not support I2O 1.5 (skipping).\n", tmp);
    return (-19);
  } else {
  }
  rc = pci_enable_device(pdev);
  if (rc != 0) {
    tmp___0 = pci_name((struct pci_dev const *)pdev);
    printk("\fi2o: couldn\'t enable device %s\n", tmp___0);
    return (rc);
  } else {
  }
  tmp___2 = pci_set_dma_mask(pdev, 4294967295ULL);
  if (tmp___2 != 0) {
    tmp___1 = pci_name((struct pci_dev const *)pdev);
    printk("\fi2o: no suitable DMA found for %s\n", tmp___1);
    rc = -19;
    goto disable;
  } else {
  }
  pci_set_master(pdev);
  c = i2o_iop_alloc();
  tmp___6 = IS_ERR((void const *)c);
  if (tmp___6 != 0L) {
    tmp___3 = pci_name((struct pci_dev const *)pdev);
    printk("\vi2o: couldn\'t allocate memory for %s\n", tmp___3);
    tmp___4 = PTR_ERR((void const *)c);
    rc = (int )tmp___4;
    goto disable;
  } else {
    tmp___5 = pci_name((struct pci_dev const *)pdev);
    printk("\016%s: controller found (%s)\n", (char *)(& c->name), tmp___5);
  }
  c->pdev = pdev;
  c->device.parent = & pdev->dev;
  if ((unsigned int )pdev->vendor == 4096U && (unsigned int )pdev->device == 1584U) {
    c->short_req = 1U;
    printk("\016%s: Symbios FC920 workarounds activated.\n", (char *)(& c->name));
  } else {
  }
  if ((unsigned int )pdev->subsystem_vendor == 4186U) {
    i960 = pci_get_slot((c->pdev)->bus, (c->pdev)->devfn & 248U);
    if ((unsigned long )i960 != (unsigned long )((struct pci_dev *)0)) {
      pci_write_config_word((struct pci_dev const *)i960, 66, 0);
      pci_dev_put(i960);
    } else {
    }
    c->promise = 1U;
    c->limit_sectors = 1U;
  } else {
  }
  if ((unsigned int )pdev->subsystem_vendor == 4164U) {
    c->adaptec = 1U;
  } else {
  }
  if ((unsigned int )pdev->vendor == 4164U) {
    c->no_quiesce = 1U;
    if ((unsigned int )pdev->device == 42257U) {
      c->raptor = 1U;
    } else {
    }
    if ((unsigned int )pdev->subsystem_device == 49242U) {
      c->limit_sectors = 1U;
      printk("\016%s: limit sectors per request to %d\n", (char *)(& c->name), 128);
    } else {
    }
    tmp___7 = pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
    if (tmp___7 != 0) {
      printk("\016%s: 64-bit DMA unavailable\n", (char *)(& c->name));
    } else {
      c->pae_support = 1U;
      printk("\016%s: using 64-bit DMA\n", (char *)(& c->name));
    }
  } else {
  }
  rc = i2o_pci_alloc(c);
  if (rc != 0) {
    printk("\v%s: DMA / IO allocation for I2O controller failed\n", (char *)(& c->name));
    goto free_controller;
  } else {
  }
  tmp___8 = i2o_pci_irq_enable(c);
  if (tmp___8 != 0) {
    printk("\v%s: unable to enable interrupts for I2O controller\n", (char *)(& c->name));
    goto free_pci;
  } else {
  }
  rc = i2o_iop_add(c);
  if (rc != 0) {
    goto uninstall;
  } else {
  }
  if ((unsigned long )i960 != (unsigned long )((struct pci_dev *)0)) {
    pci_write_config_word((struct pci_dev const *)i960, 66, 1023);
  } else {
  }
  return (0);
  uninstall:
  i2o_pci_irq_disable(c);
  free_pci:
  i2o_pci_free(c);
  free_controller:
  i2o_iop_free(c);
  disable:
  pci_disable_device(pdev);
  return (rc);
}
}
static void i2o_pci_remove(struct pci_dev *pdev )
{
  struct i2o_controller *c ;
  void *tmp ;
  {
  tmp = pci_get_drvdata(pdev);
  c = (struct i2o_controller *)tmp;
  i2o_iop_remove(c);
  i2o_pci_irq_disable(c);
  i2o_pci_free(c);
  pci_disable_device(pdev);
  printk("\016%s: Controller removed.\n", (char *)(& c->name));
  put_device(& c->device);
  return;
}
}
static struct pci_driver i2o_pci_driver =
     {{0, 0}, "PCI_I2O", (struct pci_device_id const *)(& i2o_pci_ids), & i2o_pci_probe,
    & i2o_pci_remove, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0,
                                            0, 0, 0, 0}, {{{{{{0U}}, 0U, 0U, 0, {0,
                                                                                 {0,
                                                                                  0},
                                                                                 0,
                                                                                 0,
                                                                                 0UL}}}},
                                                          {0, 0}}};
int i2o_pci_init(void)
{
  int tmp ;
  {
  tmp = __pci_register_driver(& i2o_pci_driver, & __this_module, "i2o_core");
  return (tmp);
}
}
void i2o_pci_exit(void)
{
  {
  pci_unregister_driver(& i2o_pci_driver);
  return;
}
}
struct pci_device_id const __mod_pci_device_table ;
extern void ldv_check_return_value(int ) ;
extern void ldv_check_return_value_probe(int ) ;
int main(void)
{
  struct pci_dev *var_group1 ;
  struct pci_device_id const *var_i2o_pci_probe_5_p1 ;
  int res_i2o_pci_probe_5 ;
  int var_i2o_pci_interrupt_2_p0 ;
  void *var_i2o_pci_interrupt_2_p1 ;
  int ldv_s_i2o_pci_driver_pci_driver ;
  int tmp ;
  int tmp___0 ;
  {
  ldv_s_i2o_pci_driver_pci_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_23202;
  ldv_23201:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_s_i2o_pci_driver_pci_driver == 0) {
    res_i2o_pci_probe_5 = i2o_pci_probe(var_group1, var_i2o_pci_probe_5_p1);
    ldv_check_return_value(res_i2o_pci_probe_5);
    ldv_check_return_value_probe(res_i2o_pci_probe_5);
    if (res_i2o_pci_probe_5 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_i2o_pci_driver_pci_driver = ldv_s_i2o_pci_driver_pci_driver + 1;
  } else {
  }
  goto ldv_23197;
  case 1: ;
  if (ldv_s_i2o_pci_driver_pci_driver == 1) {
    ldv_handler_precall();
    i2o_pci_remove(var_group1);
    ldv_s_i2o_pci_driver_pci_driver = 0;
  } else {
  }
  goto ldv_23197;
  case 2:
  LDV_IN_INTERRUPT = 2;
  ldv_handler_precall();
  i2o_pci_interrupt(var_i2o_pci_interrupt_2_p0, var_i2o_pci_interrupt_2_p1);
  LDV_IN_INTERRUPT = 1;
  goto ldv_23197;
  default: ;
  goto ldv_23197;
  }
  ldv_23197: ;
  ldv_23202:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0 || ldv_s_i2o_pci_driver_pci_driver != 0) {
    goto ldv_23201;
  } else {
  }
  ldv_module_exit: ;
  ldv_check_final_state();
  return 0;
}
}
void ldv_mutex_lock_59(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_60(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_61(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_62(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_63(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static int variable_test_bit(int nr , unsigned long const volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{
  struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  default:
  __bad_percpu_size();
  }
  ldv_2861: ;
  return (pfo_ret__);
}
}
int ldv_mutex_trylock_72(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_70(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_73(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_75(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_77(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_78(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_79(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_69(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_71(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_74(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_76(struct mutex *ldv_func_arg1 ) ;
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{
  int tmp ;
  {
  tmp = variable_test_bit(flag, (unsigned long const volatile *)(& ti->flags));
  return (tmp);
}
}
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void prepare_to_wait(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int autoremove_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern int device_create_file(struct device * , struct device_attribute const * ) ;
extern void device_remove_file(struct device * , struct device_attribute const * ) ;
extern long schedule_timeout(long ) ;
__inline static int test_tsk_thread_flag(struct task_struct *tsk , int flag )
{
  int tmp ;
  {
  tmp = test_ti_thread_flag((struct thread_info *)tsk->stack, flag);
  return (tmp);
}
}
__inline static int signal_pending(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = test_tsk_thread_flag(p, 2);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  return ((int )tmp___0);
}
}
static struct list_head i2o_exec_wait_list = {& i2o_exec_wait_list, & i2o_exec_wait_list};
static struct i2o_class_id i2o_exec_class_id[2U] = { {0U},
        {4095U}};
static struct i2o_exec_wait *i2o_exec_wait_alloc(void)
{
  struct i2o_exec_wait *wait ;
  void *tmp ;
  struct lock_class_key __key ;
  {
  tmp = kzalloc(144UL, 208U);
  wait = (struct i2o_exec_wait *)tmp;
  if ((unsigned long )wait == (unsigned long )((struct i2o_exec_wait *)0)) {
    return (0);
  } else {
  }
  INIT_LIST_HEAD(& wait->list);
  spinlock_check(& wait->lock);
  __raw_spin_lock_init(& wait->lock.ldv_5961.rlock, "&(&wait->lock)->rlock", & __key);
  return (wait);
}
}
static void i2o_exec_wait_free(struct i2o_exec_wait *wait )
{
  {
  kfree((void const *)wait);
  return;
}
}
int i2o_msg_post_wait_mem(struct i2o_controller *c , struct i2o_message *msg , unsigned long timeout ,
                          struct i2o_dma *dma )
{
  wait_queue_head_t wq ;
  struct lock_class_key __key ;
  struct i2o_exec_wait *wait ;
  u32 tcntxt ;
  unsigned long flags ;
  int rc ;
  u32 tmp ;
  long __ret ;
  wait_queue_t __wait ;
  struct task_struct *tmp___0 ;
  struct task_struct *tmp___1 ;
  int tmp___2 ;
  raw_spinlock_t *tmp___3 ;
  {
  __init_waitqueue_head(& wq, "&wq", & __key);
  wq = wq;
  tcntxt = 2147483648U;
  rc = 0;
  wait = i2o_exec_wait_alloc();
  if ((unsigned long )wait == (unsigned long )((struct i2o_exec_wait *)0)) {
    i2o_msg_nop(c, msg);
    return (-12);
  } else {
  }
  if (tcntxt == 4294967295U) {
    tcntxt = 2147483648U;
  } else {
  }
  if ((unsigned long )dma != (unsigned long )((struct i2o_dma *)0)) {
    wait->dma = *dma;
  } else {
  }
  msg->u.s.icntxt = (unsigned int )i2o_exec_driver.context;
  tmp = tcntxt;
  tcntxt = tcntxt + 1U;
  wait->tcntxt = tmp;
  msg->u.s.tcntxt = wait->tcntxt;
  wait->wq = & wq;
  list_add(& wait->list, & i2o_exec_wait_list);
  i2o_msg_post(c, msg);
  __ret = (long )(timeout * 250UL);
  if (wait->complete == 0) {
    tmp___0 = get_current();
    __wait.flags = 0U;
    __wait.private = (void *)tmp___0;
    __wait.func = & autoremove_wake_function;
    __wait.task_list.next = & __wait.task_list;
    __wait.task_list.prev = & __wait.task_list;
    ldv_24681:
    prepare_to_wait(& wq, & __wait, 1);
    if (wait->complete != 0) {
      goto ldv_24679;
    } else {
    }
    tmp___1 = get_current();
    tmp___2 = signal_pending(tmp___1);
    if (tmp___2 == 0) {
      __ret = schedule_timeout(__ret);
      if (__ret == 0L) {
        goto ldv_24679;
      } else {
      }
      goto ldv_24680;
    } else {
    }
    __ret = -512L;
    goto ldv_24679;
    ldv_24680: ;
    goto ldv_24681;
    ldv_24679:
    finish_wait(& wq, & __wait);
  } else {
  }
  tmp___3 = spinlock_check(& wait->lock);
  flags = _raw_spin_lock_irqsave(tmp___3);
  wait->wq = 0;
  if (wait->complete != 0) {
    rc = (int )((wait->msg)->body[0] >> 24);
  } else {
    if ((unsigned long )dma != (unsigned long )((struct i2o_dma *)0)) {
      dma->virt = 0;
    } else {
    }
    rc = -110;
  }
  spin_unlock_irqrestore(& wait->lock, flags);
  if (rc != -110) {
    i2o_flush_reply(c, wait->m);
    i2o_exec_wait_free(wait);
  } else {
  }
  return (rc);
}
}
static int i2o_msg_post_wait_complete(struct i2o_controller *c , u32 m , struct i2o_message *msg ,
                                      u32 context )
{
  struct i2o_exec_wait *wait ;
  struct i2o_exec_wait *tmp ;
  unsigned long flags ;
  int rc ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  raw_spinlock_t *tmp___0 ;
  struct device *dev ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  struct list_head const *__mptr___1 ;
  {
  rc = 1;
  __mptr = (struct list_head const *)i2o_exec_wait_list.next;
  wait = (struct i2o_exec_wait *)__mptr + 0xffffffffffffffc8UL;
  __mptr___0 = (struct list_head const *)wait->list.next;
  tmp = (struct i2o_exec_wait *)__mptr___0 + 0xffffffffffffffc8UL;
  goto ldv_24709;
  ldv_24708: ;
  if (wait->tcntxt == context) {
    tmp___0 = spinlock_check(& wait->lock);
    flags = _raw_spin_lock_irqsave(tmp___0);
    list_del(& wait->list);
    wait->m = m;
    wait->msg = msg;
    wait->complete = 1;
    if ((unsigned long )wait->wq != (unsigned long )((wait_queue_head_t *)0)) {
      rc = 0;
    } else {
      rc = -1;
    }
    spin_unlock_irqrestore(& wait->lock, flags);
    if (rc != 0) {
      dev = & (c->pdev)->dev;
      descriptor.modname = "i2o_core";
      descriptor.function = "i2o_msg_post_wait_complete";
      descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/message/i2o/i2o_core.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/message/i2o/exec-osm.c.prepared";
      descriptor.format = "%s: timedout reply received!\n";
      descriptor.lineno = 301U;
      descriptor.flags = 0U;
      tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___1 != 0L) {
        __dynamic_pr_debug(& descriptor, "%s: timedout reply received!\n", (char *)(& c->name));
      } else {
      }
      i2o_dma_free(dev, & wait->dma);
      i2o_exec_wait_free(wait);
    } else {
      __wake_up(wait->wq, 1U, 1, 0);
    }
    return (rc);
  } else {
  }
  wait = tmp;
  __mptr___1 = (struct list_head const *)tmp->list.next;
  tmp = (struct i2o_exec_wait *)__mptr___1 + 0xffffffffffffffc8UL;
  ldv_24709: ;
  if ((unsigned long )(& wait->list) != (unsigned long )(& i2o_exec_wait_list)) {
    goto ldv_24708;
  } else {
  }
  printk("\f%s: %s: Bogus reply in POST WAIT (tr-context: %08x)!\n", (char *)"exec-osm",
         (char *)(& c->name), context);
  return (-1);
}
}
static ssize_t i2o_exec_show_vendor_id(struct device *d , struct device_attribute *attr ,
                                       char *buf )
{
  struct i2o_device *dev ;
  struct device const *__mptr ;
  u16 id ;
  size_t tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)d;
  dev = (struct i2o_device *)__mptr + 0xffffffffffffffc0UL;
  tmp___0 = i2o_parm_field_get(dev, 0, 0, (void *)(& id), 2);
  if (tmp___0 == 0) {
    sprintf(buf, "0x%04x", (int )id);
    tmp = strlen((char const *)buf);
    return ((ssize_t )(tmp + 1UL));
  } else {
  }
  return (0L);
}
}
static ssize_t i2o_exec_show_product_id(struct device *d , struct device_attribute *attr ,
                                        char *buf )
{
  struct i2o_device *dev ;
  struct device const *__mptr ;
  u16 id ;
  size_t tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)d;
  dev = (struct i2o_device *)__mptr + 0xffffffffffffffc0UL;
  tmp___0 = i2o_parm_field_get(dev, 0, 1, (void *)(& id), 2);
  if (tmp___0 == 0) {
    sprintf(buf, "0x%04x", (int )id);
    tmp = strlen((char const *)buf);
    return ((ssize_t )(tmp + 1UL));
  } else {
  }
  return (0L);
}
}
static struct device_attribute dev_attr_vendor_id = {{"vendor_id", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                       {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & i2o_exec_show_vendor_id, 0};
static struct device_attribute dev_attr_product_id = {{"product_id", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                        {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    & i2o_exec_show_product_id, 0};
static int i2o_exec_probe(struct device *dev )
{
  struct i2o_device *i2o_dev ;
  struct device const *__mptr ;
  int rc ;
  struct device const *__mptr___0 ;
  {
  __mptr = (struct device const *)dev;
  i2o_dev = (struct i2o_device *)__mptr + 0xffffffffffffffc0UL;
  rc = i2o_event_register(i2o_dev, & i2o_exec_driver, 0, 4294967295U);
  if (rc != 0) {
    goto err_out;
  } else {
  }
  rc = device_create_file(dev, (struct device_attribute const *)(& dev_attr_vendor_id));
  if (rc != 0) {
    goto err_evtreg;
  } else {
  }
  rc = device_create_file(dev, (struct device_attribute const *)(& dev_attr_product_id));
  if (rc != 0) {
    goto err_vid;
  } else {
  }
  (i2o_dev->iop)->exec = i2o_dev;
  return (0);
  err_vid:
  device_remove_file(dev, (struct device_attribute const *)(& dev_attr_vendor_id));
  err_evtreg:
  __mptr___0 = (struct device const *)dev;
  i2o_event_register((struct i2o_device *)__mptr___0 + 0xffffffffffffffc0UL, & i2o_exec_driver,
                     0, 0U);
  err_out: ;
  return (rc);
}
}
static int i2o_exec_remove(struct device *dev )
{
  struct device const *__mptr ;
  {
  device_remove_file(dev, (struct device_attribute const *)(& dev_attr_product_id));
  device_remove_file(dev, (struct device_attribute const *)(& dev_attr_vendor_id));
  __mptr = (struct device const *)dev;
  i2o_event_register((struct i2o_device *)__mptr + 0xffffffffffffffc0UL, & i2o_exec_driver,
                     0, 0U);
  return (0);
}
}
static int i2o_exec_lct_notify(struct i2o_controller *c , u32 change_ind )
{
  i2o_status_block *sb ;
  struct device *dev ;
  struct i2o_message *msg ;
  int tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  sb = (i2o_status_block *)c->status_block.virt;
  ldv_mutex_lock_76(& c->lct_lock);
  dev = & (c->pdev)->dev;
  tmp = i2o_dma_realloc(dev, & c->dlct, (size_t )sb->expected_lct_size);
  if (tmp != 0) {
    ldv_mutex_unlock_77(& c->lct_lock);
    return (-12);
  } else {
  }
  msg = i2o_msg_get_wait(c, 5);
  tmp___1 = IS_ERR((void const *)msg);
  if (tmp___1 != 0L) {
    ldv_mutex_unlock_78(& c->lct_lock);
    tmp___0 = PTR_ERR((void const *)msg);
    return ((int )tmp___0);
  } else {
  }
  msg->u.head[0] = 524385U;
  msg->u.head[1] = 2717913088U;
  msg->u.s.icntxt = (unsigned int )i2o_exec_driver.context;
  msg->u.s.tcntxt = 0U;
  msg->body[0] = 4294967295U;
  msg->body[1] = change_ind;
  msg->body[2] = (unsigned int )c->dlct.len | 3489660928U;
  msg->body[3] = (unsigned int )c->dlct.phys;
  i2o_msg_post(c, msg);
  ldv_mutex_unlock_79(& c->lct_lock);
  return (0);
}
}
static void i2o_exec_lct_modified(struct work_struct *_work )
{
  struct i2o_exec_lct_notify_work *work ;
  struct work_struct const *__mptr ;
  u32 change_ind ;
  struct i2o_controller *c ;
  int tmp ;
  {
  __mptr = (struct work_struct const *)_work;
  work = (struct i2o_exec_lct_notify_work *)__mptr;
  change_ind = 0U;
  c = work->c;
  kfree((void const *)work);
  tmp = i2o_device_parse_lct(c);
  if (tmp != -11) {
    change_ind = (c->lct)->change_ind + 1U;
  } else {
  }
  i2o_exec_lct_notify(c, change_ind);
  return;
}
}
static int i2o_exec_reply(struct i2o_controller *c , u32 m , struct i2o_message *msg )
{
  u32 context ;
  struct i2o_message *pmsg ;
  u32 pm ;
  int tmp ;
  struct i2o_exec_lct_notify_work *work ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  void *tmp___1 ;
  struct lock_class_key __key ;
  atomic_long_t __constr_expr_0 ;
  {
  if ((msg->u.head[0] & 8192U) != 0U) {
    pm = msg->body[3];
    pmsg = i2o_msg_in_to_virt(c, pm);
    context = readl((void const volatile *)(& pmsg->u.s.tcntxt));
    i2o_report_status("\016", "i2o_core", msg);
    i2o_msg_nop_mfa(c, pm);
  } else {
    context = msg->u.s.tcntxt;
  }
  if ((int )context < 0) {
    tmp = i2o_msg_post_wait_complete(c, m, msg, context);
    return (tmp);
  } else {
  }
  if (msg->u.head[1] >> 24 == 162U) {
    descriptor.modname = "i2o_core";
    descriptor.function = "i2o_exec_reply";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/message/i2o/i2o_core.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/message/i2o/exec-osm.c.prepared";
    descriptor.format = "%s: LCT notify received\n";
    descriptor.lineno = 539U;
    descriptor.flags = 0U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_pr_debug(& descriptor, "%s: LCT notify received\n", (char *)(& c->name));
    } else {
    }
    tmp___1 = kmalloc(88UL, 32U);
    work = (struct i2o_exec_lct_notify_work *)tmp___1;
    if ((unsigned long )work == (unsigned long )((struct i2o_exec_lct_notify_work *)0)) {
      return (-12);
    } else {
    }
    work->c = c;
    __init_work(& work->work, 0);
    __constr_expr_0.counter = 4195328L;
    work->work.data = __constr_expr_0;
    lockdep_init_map(& work->work.lockdep_map, "(&work->work)", & __key, 0);
    INIT_LIST_HEAD(& work->work.entry);
    work->work.func = & i2o_exec_lct_modified;
    queue_work(i2o_exec_driver.event_queue, & work->work);
    return (1);
  } else {
  }
  printk("\f%s: Unsolicited message reply sent to core!Message dumped to syslog\n",
         (char *)(& c->name));
  i2o_dump_message(msg);
  return (-14);
}
}
static void i2o_exec_event(struct work_struct *work )
{
  struct i2o_event *evt ;
  struct work_struct const *__mptr ;
  long tmp ;
  {
  __mptr = (struct work_struct const *)work;
  evt = (struct i2o_event *)__mptr;
  tmp = ldv__builtin_expect((unsigned long )evt->i2o_dev != (unsigned long )((struct i2o_device *)0),
                         1L);
  kfree((void const *)evt);
  return;
}
}
int i2o_exec_lct_get(struct i2o_controller *c )
{
  struct i2o_message *msg ;
  int i ;
  int rc ;
  long tmp ;
  long tmp___0 ;
  {
  i = 0;
  rc = -11;
  i = 1;
  goto ldv_24790;
  ldv_24789:
  msg = i2o_msg_get_wait(c, 5);
  tmp___0 = IS_ERR((void const *)msg);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)msg);
    return ((int )tmp);
  } else {
  }
  msg->u.head[0] = 524385U;
  msg->u.head[1] = 2717913088U;
  msg->body[0] = 4294967295U;
  msg->body[1] = 0U;
  msg->body[2] = (unsigned int )c->dlct.len | 3489660928U;
  msg->body[3] = (unsigned int )c->dlct.phys;
  rc = i2o_msg_post_wait(c, msg, 360UL);
  if (rc < 0) {
    goto ldv_24788;
  } else {
  }
  rc = i2o_device_parse_lct(c);
  if (rc != -11) {
    goto ldv_24788;
  } else {
  }
  i = i + 1;
  ldv_24790: ;
  if (i <= 3) {
    goto ldv_24789;
  } else {
  }
  ldv_24788: ;
  return (rc);
}
}
struct i2o_driver i2o_exec_driver =
     {(char *)"exec-osm", 0, (struct i2o_class_id *)(& i2o_exec_class_id), & i2o_exec_reply,
    & i2o_exec_event, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, & i2o_exec_probe, & i2o_exec_remove,
                          0, 0, 0, 0, 0, 0}, 0, 0, 0, 0, {{{{0U}}, 0U, 0U, 0, {0,
                                                                               {0,
                                                                                0},
                                                                               0,
                                                                               0,
                                                                               0UL}},
                                                          0U, {0, 0}}};
int i2o_exec_init(void)
{
  int tmp ;
  {
  tmp = i2o_driver_register(& i2o_exec_driver);
  return (tmp);
}
}
void i2o_exec_exit(void)
{
  {
  i2o_driver_unregister(& i2o_exec_driver);
  return;
}
}
void ldv_main5_sequence_infinite_withcheck_stateful(void)
{
  struct i2o_controller *var_group1 ;
  u32 var_i2o_exec_reply_10_p1 ;
  struct i2o_message *var_i2o_exec_reply_10_p2 ;
  struct work_struct *var_group2 ;
  struct device *var_group3 ;
  int res_i2o_exec_probe_6 ;
  int ldv_s_i2o_exec_driver_i2o_driver ;
  int tmp ;
  int tmp___0 ;
  {
  ldv_s_i2o_exec_driver_i2o_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_24844;
  ldv_24843:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_s_i2o_exec_driver_i2o_driver == 0) {
    res_i2o_exec_probe_6 = i2o_exec_probe(var_group3);
    ldv_check_return_value(res_i2o_exec_probe_6);
    ldv_check_return_value_probe(res_i2o_exec_probe_6);
    if (res_i2o_exec_probe_6 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_i2o_exec_driver_i2o_driver = ldv_s_i2o_exec_driver_i2o_driver + 1;
  } else {
  }
  goto ldv_24838;
  case 1: ;
  if (ldv_s_i2o_exec_driver_i2o_driver == 1) {
    ldv_handler_precall();
    i2o_exec_remove(var_group3);
    ldv_s_i2o_exec_driver_i2o_driver = 0;
  } else {
  }
  goto ldv_24838;
  case 2:
  ldv_handler_precall();
  i2o_exec_reply(var_group1, var_i2o_exec_reply_10_p1, var_i2o_exec_reply_10_p2);
  goto ldv_24838;
  case 3:
  ldv_handler_precall();
  i2o_exec_event(var_group2);
  goto ldv_24838;
  default: ;
  goto ldv_24838;
  }
  ldv_24838: ;
  ldv_24844:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0 || ldv_s_i2o_exec_driver_i2o_driver != 0) {
    goto ldv_24843;
  } else {
  }
  ldv_module_exit: ;
  ldv_check_final_state();
  return;
}
}
void ldv_mutex_lock_69(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_70(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_71(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_72(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_73(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_74(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_75(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_76(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lct_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_77(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lct_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_78(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lct_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_79(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lct_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern struct pv_irq_ops pv_irq_ops ;
extern char *strcpy(char * , char const * ) ;
extern void warn_slowpath_null(char const * , int const ) ;
__inline static unsigned long arch_local_save_flags(void)
{
  unsigned long __ret ;
  unsigned long __edi ;
  unsigned long __esi ;
  unsigned long __edx ;
  unsigned long __ecx ;
  unsigned long __eax ;
  long tmp ;
  {
  __edi = __edi;
  __esi = __esi;
  __edx = __edx;
  __ecx = __ecx;
  __eax = __eax;
  tmp = ldv__builtin_expect((unsigned long )pv_irq_ops.save_fl.func == (unsigned long )((void *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/arch/x86/include/asm/paravirt.h"),
                         "i" (825), "i" (12UL));
    ldv_4725: ;
    goto ldv_4725;
  } else {
  }
  __asm__ volatile ("771:\n\tcall *%c2;\n772:\n.pushsection .parainstructions,\"a\"\n .balign 8 \n .quad  771b\n  .byte %c1\n  .byte 772b-771b\n  .short %c3\n.popsection\n": "=a" (__eax): [paravirt_typenum] "i" (45UL),
                       [paravirt_opptr] "i" (& pv_irq_ops.save_fl.func), [paravirt_clobber] "i" (1): "memory",
                       "cc");
  __ret = __eax;
  return (__ret);
}
}
__inline static int arch_irqs_disabled_flags(unsigned long flags )
{
  {
  return ((flags & 512UL) == 0UL);
}
}
int ldv_mutex_trylock_94(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_92(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_95(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_97(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_98(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_91(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_93(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_96(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_mem_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_mem_lock(struct mutex *lock ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 80L) << 12) + 0xffff880000000000UL));
}
}
extern struct kmem_cache *kmem_cache_create(char const * , size_t , size_t , unsigned long ,
                                            void (*)(void * ) ) ;
extern void kmem_cache_destroy(struct kmem_cache * ) ;
__inline static struct page *sg_page(struct scatterlist *sg )
{
  long tmp ;
  long tmp___0 ;
  {
  tmp = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (98), "i" (12UL));
    ldv_19943: ;
    goto ldv_19943;
  } else {
  }
  tmp___0 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (99), "i" (12UL));
    ldv_19944: ;
    goto ldv_19944;
  } else {
  }
  return ((struct page *)(sg->page_link & 0xfffffffffffffffcUL));
}
}
__inline static void *sg_virt(struct scatterlist *sg )
{
  struct page *tmp ;
  void *tmp___0 ;
  {
  tmp = sg_page(sg);
  tmp___0 = lowmem_page_address((struct page const *)tmp);
  return (tmp___0 + (unsigned long )sg->offset);
}
}
extern struct scatterlist *sg_next(struct scatterlist * ) ;
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0) && *(dev->dma_mask) != 0ULL);
}
}
extern void debug_dma_mapping_error(struct device * , dma_addr_t ) ;
extern void debug_dma_map_sg(struct device * , struct scatterlist * , int , int ,
                             int ) ;
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern struct device x86_dma_fallback_dev ;
__inline static dma_addr_t dma_map_single_attrs___0(struct device *dev , void *ptr ,
                                                    size_t size , enum dma_data_direction dir ,
                                                    struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  int tmp___0 ;
  long tmp___1 ;
  unsigned long tmp___2 ;
  unsigned long tmp___3 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  kmemcheck_mark_initialized(ptr, (unsigned int )size);
  tmp___0 = valid_dma_direction((int )dir);
  tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (19), "i" (12UL));
    ldv_20418: ;
    goto ldv_20418;
  } else {
  }
  tmp___2 = __phys_addr((unsigned long )ptr);
  addr = (*(ops->map_page))(dev, 0xffffea0000000000UL + (tmp___2 >> 12), (unsigned long )ptr & 4095UL,
                            size, dir, attrs);
  tmp___3 = __phys_addr((unsigned long )ptr);
  debug_dma_map_page(dev, 0xffffea0000000000UL + (tmp___3 >> 12), (unsigned long )ptr & 4095UL,
                     size, (int )dir, addr, 1);
  return (addr);
}
}
__inline static int dma_map_sg_attrs(struct device *dev , struct scatterlist *sg ,
                                     int nents , enum dma_data_direction dir , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int i ;
  int ents ;
  struct scatterlist *s ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  i = 0;
  s = sg;
  goto ldv_20440;
  ldv_20439:
  tmp___0 = sg_virt(s);
  kmemcheck_mark_initialized(tmp___0, s->length);
  i = i + 1;
  s = sg_next(s);
  ldv_20440: ;
  if (i < nents) {
    goto ldv_20439;
  } else {
  }
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (52), "i" (12UL));
    ldv_20442: ;
    goto ldv_20442;
  } else {
  }
  ents = (*(ops->map_sg))(dev, sg, nents, dir, attrs);
  debug_dma_map_sg(dev, sg, nents, ents, (int )dir);
  return (ents);
}
}
__inline static int dma_mapping_error(struct device *dev , dma_addr_t dma_addr )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int tmp___0 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  debug_dma_mapping_error(dev, dma_addr);
  if ((unsigned long )ops->mapping_error != (unsigned long )((int (*)(struct device * ,
                                                                      dma_addr_t ))0)) {
    tmp___0 = (*(ops->mapping_error))(dev, dma_addr);
    return (tmp___0);
  } else {
  }
  return (dma_addr == 0ULL);
}
}
__inline static unsigned long dma_alloc_coherent_mask(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  {
  dma_mask = 0UL;
  dma_mask = (unsigned long )dev->coherent_dma_mask;
  if (dma_mask == 0UL) {
    dma_mask = (int )gfp & 1 ? 16777215UL : 4294967295UL;
  } else {
  }
  return (dma_mask);
}
}
__inline static gfp_t dma_alloc_coherent_gfp_flags(struct device *dev , gfp_t gfp )
{
  unsigned long dma_mask ;
  unsigned long tmp ;
  {
  tmp = dma_alloc_coherent_mask(dev, gfp);
  dma_mask = tmp;
  if ((unsigned long long )dma_mask <= 16777215ULL) {
    gfp = gfp | 1U;
  } else {
  }
  if ((unsigned long long )dma_mask <= 4294967295ULL && (gfp & 1U) == 0U) {
    gfp = gfp | 4U;
  } else {
  }
  return (gfp);
}
}
__inline static void *dma_alloc_attrs(struct device *dev , size_t size , dma_addr_t *dma_handle ,
                                      gfp_t gfp , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  void *memory ;
  int tmp___0 ;
  gfp_t tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  gfp = gfp & 4294967288U;
  if ((unsigned long )dev == (unsigned long )((struct device *)0)) {
    dev = & x86_dma_fallback_dev;
  } else {
  }
  tmp___0 = is_device_dma_capable(dev);
  if (tmp___0 == 0) {
    return (0);
  } else {
  }
  if ((unsigned long )ops->alloc == (unsigned long )((void *(*)(struct device * ,
                                                                size_t , dma_addr_t * ,
                                                                gfp_t , struct dma_attrs * ))0)) {
    return (0);
  } else {
  }
  tmp___1 = dma_alloc_coherent_gfp_flags(dev, gfp);
  memory = (*(ops->alloc))(dev, size, dma_handle, tmp___1, attrs);
  debug_dma_alloc_coherent(dev, size, *dma_handle, memory);
  return (memory);
}
}
__inline static void dma_free_attrs(struct device *dev , size_t size , void *vaddr ,
                                    dma_addr_t bus , struct dma_attrs *attrs )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  int __ret_warn_on ;
  unsigned long _flags ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  _flags = arch_local_save_flags();
  tmp___0 = arch_irqs_disabled_flags(_flags);
  __ret_warn_on = tmp___0 != 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___1 != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/arch/x86/include/asm/dma-mapping.h",
                       166);
  } else {
  }
  ldv__builtin_expect(__ret_warn_on != 0, 0L);
  debug_dma_free_coherent(dev, size, vaddr, bus);
  if ((unsigned long )ops->free != (unsigned long )((void (*)(struct device * , size_t ,
                                                              void * , dma_addr_t ,
                                                              struct dma_attrs * ))0)) {
    (*(ops->free))(dev, size, vaddr, bus, attrs);
  } else {
  }
  return;
}
}
extern mempool_t *mempool_create(int , mempool_alloc_t * , mempool_free_t * , void * ) ;
extern void mempool_destroy(mempool_t * ) ;
extern void *mempool_alloc_slab(gfp_t , void * ) ;
extern void mempool_free_slab(void * , void * ) ;
__inline static mempool_t *mempool_create_slab_pool(int min_nr , struct kmem_cache *kc )
{
  mempool_t *tmp ;
  {
  tmp = mempool_create(min_nr, & mempool_alloc_slab, & mempool_free_slab, (void *)kc);
  return (tmp);
}
}
u16 i2o_sg_tablesize(struct i2o_controller *c , u16 body_size ) ;
dma_addr_t i2o_dma_map_single(struct i2o_controller *c , void *ptr , size_t size ,
                              enum dma_data_direction direction , u32 **sg_ptr ) ;
int i2o_dma_map_sg(struct i2o_controller *c , struct scatterlist *sg , int sg_count ,
                   enum dma_data_direction direction , u32 **sg_ptr ) ;
static struct mutex mem_lock = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "mem_lock.wait_lock",
                                                                     0, 0UL}}}}, {& mem_lock.wait_list,
                                                                                  & mem_lock.wait_list},
    0, 0, (void *)(& mem_lock), {0, {0, 0}, "mem_lock", 0, 0UL}};
u16 i2o_sg_tablesize(struct i2o_controller *c , u16 body_size )
{
  i2o_status_block *sb ;
  u16 sg_count ;
  {
  sb = (i2o_status_block *)c->status_block.virt;
  sg_count = (unsigned int )((int )sb->inbound_frame_size - (int )body_size) - 4U;
  if ((unsigned int )*((unsigned char *)c + 32UL) != 0U) {
    sg_count = (unsigned int )sg_count + 65534U;
    sg_count = (u16 )((unsigned int )sg_count / 3U);
  } else {
    sg_count = (u16 )((unsigned int )sg_count / 2U);
  }
  if ((unsigned int )*((unsigned char *)c + 32UL) != 0U && (unsigned int )sg_count > 8U) {
    sg_count = 8U;
  } else {
  }
  return (sg_count);
}
}
dma_addr_t i2o_dma_map_single(struct i2o_controller *c , void *ptr , size_t size ,
                              enum dma_data_direction direction , u32 **sg_ptr )
{
  u32 sg_flags ;
  u32 *mptr ;
  dma_addr_t dma_addr ;
  u32 *tmp ;
  u32 *tmp___0 ;
  u32 *tmp___1 ;
  u32 *tmp___2 ;
  u32 *tmp___3 ;
  int tmp___4 ;
  {
  mptr = *sg_ptr;
  switch ((unsigned int )direction) {
  case 1U:
  sg_flags = 3556769792U;
  goto ldv_21490;
  case 2U:
  sg_flags = 3489660928U;
  goto ldv_21490;
  default: ;
  return (0ULL);
  }
  ldv_21490:
  dma_addr = dma_map_single_attrs___0(& (c->pdev)->dev, ptr, size, direction, 0);
  tmp___4 = dma_mapping_error(& (c->pdev)->dev, dma_addr);
  if (tmp___4 == 0) {
    if ((unsigned int )*((unsigned char *)c + 32UL) != 0U) {
      tmp = mptr;
      mptr = mptr + 1;
      *tmp = 2080505858U;
      tmp___0 = mptr;
      mptr = mptr + 1;
      *tmp___0 = 4096U;
    } else {
    }
    tmp___1 = mptr;
    mptr = mptr + 1;
    *tmp___1 = (unsigned int )size | sg_flags;
    tmp___2 = mptr;
    mptr = mptr + 1;
    *tmp___2 = i2o_dma_low(dma_addr);
    if ((unsigned int )*((unsigned char *)c + 32UL) != 0U) {
      tmp___3 = mptr;
      mptr = mptr + 1;
      *tmp___3 = i2o_dma_high(dma_addr);
    } else {
    }
    *sg_ptr = mptr;
  } else {
  }
  return (dma_addr);
}
}
int i2o_dma_map_sg(struct i2o_controller *c , struct scatterlist *sg , int sg_count ,
                   enum dma_data_direction direction , u32 **sg_ptr )
{
  u32 sg_flags ;
  u32 *mptr ;
  u32 *tmp ;
  u32 *tmp___0 ;
  u32 *tmp___1 ;
  u32 *tmp___2 ;
  u32 *tmp___3 ;
  int tmp___4 ;
  {
  mptr = *sg_ptr;
  switch ((unsigned int )direction) {
  case 1U:
  sg_flags = 335544320U;
  goto ldv_21513;
  case 2U:
  sg_flags = 268435456U;
  goto ldv_21513;
  default: ;
  return (0);
  }
  ldv_21513:
  sg_count = dma_map_sg_attrs(& (c->pdev)->dev, sg, sg_count, direction, 0);
  if (sg_count == 0) {
    return (0);
  } else {
  }
  if ((unsigned int )*((unsigned char *)c + 32UL) != 0U) {
    tmp = mptr;
    mptr = mptr + 1;
    *tmp = 2080505858U;
    tmp___0 = mptr;
    mptr = mptr + 1;
    *tmp___0 = 4096U;
  } else {
  }
  goto ldv_21517;
  ldv_21516: ;
  if (sg_count == 0) {
    sg_flags = sg_flags | 3221225472U;
  } else {
  }
  tmp___1 = mptr;
  mptr = mptr + 1;
  *tmp___1 = sg->dma_length | sg_flags;
  tmp___2 = mptr;
  mptr = mptr + 1;
  *tmp___2 = i2o_dma_low(sg->dma_address);
  if ((unsigned int )*((unsigned char *)c + 32UL) != 0U) {
    tmp___3 = mptr;
    mptr = mptr + 1;
    *tmp___3 = i2o_dma_high(sg->dma_address);
  } else {
  }
  sg = sg_next(sg);
  ldv_21517:
  tmp___4 = sg_count;
  sg_count = sg_count - 1;
  if (tmp___4 > 0) {
    goto ldv_21516;
  } else {
  }
  *sg_ptr = mptr;
  return (1);
}
}
int i2o_dma_alloc(struct device *dev , struct i2o_dma *addr , size_t len )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  int dma_64 ;
  int tmp ;
  int tmp___0 ;
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  dma_64 = 0;
  ldv_mutex_lock_96(& mem_lock);
  if (pdev->dma_mask == 0xffffffffffffffffULL) {
    dma_64 = 1;
    tmp = pci_set_dma_mask(pdev, 4294967295ULL);
    if (tmp != 0) {
      ldv_mutex_unlock_97(& mem_lock);
      return (-12);
    } else {
    }
  } else {
  }
  addr->virt = dma_alloc_attrs(dev, len, & addr->phys, 208U, 0);
  if (dma_64 != 0) {
    tmp___0 = pci_set_dma_mask(pdev, 0xffffffffffffffffULL);
    if (tmp___0 != 0) {
      printk("\fi2o: unable to set 64-bit DMA");
    } else {
    }
  } else {
  }
  ldv_mutex_unlock_98(& mem_lock);
  if ((unsigned long )addr->virt == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  memset(addr->virt, 0, len);
  addr->len = len;
  return (0);
}
}
void i2o_dma_free(struct device *dev , struct i2o_dma *addr )
{
  {
  if ((unsigned long )addr->virt != (unsigned long )((void *)0)) {
    if (addr->phys != 0ULL) {
      dma_free_attrs(dev, addr->len, addr->virt, addr->phys, 0);
    } else {
      kfree((void const *)addr->virt);
    }
    addr->virt = 0;
  } else {
  }
  return;
}
}
int i2o_dma_realloc(struct device *dev , struct i2o_dma *addr , size_t len )
{
  int tmp ;
  {
  i2o_dma_free(dev, addr);
  if (len != 0UL) {
    tmp = i2o_dma_alloc(dev, addr, len);
    return (tmp);
  } else {
  }
  return (0);
}
}
int i2o_pool_alloc(struct i2o_pool *pool , char const *name , size_t size , int min_nr )
{
  size_t tmp ;
  void *tmp___0 ;
  {
  tmp = strlen(name);
  tmp___0 = kmalloc(tmp + 1UL, 208U);
  pool->name = (char *)tmp___0;
  if ((unsigned long )pool->name == (unsigned long )((char *)0)) {
    goto exit;
  } else {
  }
  strcpy(pool->name, name);
  pool->slab = kmem_cache_create((char const *)pool->name, size, 0UL, 8192UL, 0);
  if ((unsigned long )pool->slab == (unsigned long )((struct kmem_cache *)0)) {
    goto free_name;
  } else {
  }
  pool->mempool = mempool_create_slab_pool(min_nr, pool->slab);
  if ((unsigned long )pool->mempool == (unsigned long )((mempool_t *)0)) {
    goto free_slab;
  } else {
  }
  return (0);
  free_slab:
  kmem_cache_destroy(pool->slab);
  free_name:
  kfree((void const *)pool->name);
  exit: ;
  return (-12);
}
}
void i2o_pool_free(struct i2o_pool *pool )
{
  {
  mempool_destroy(pool->mempool);
  kmem_cache_destroy(pool->slab);
  kfree((void const *)pool->name);
  return;
}
}
void ldv_mutex_lock_91(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_92(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_93(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_94(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_95(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_96(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mem_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_97(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mem_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_98(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mem_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static void ldv_error(void) __attribute__((__no_instrument_function__)) ;
__inline static void ldv_error(void)
{
  {
  ERROR: __VERIFIER_error();
}
}
extern int __VERIFIER_nondet_int(void) ;
long ldv__builtin_expect(long exp , long c )
{
  {
  return (exp);
}
}
static int ldv_mutex_cred_guard_mutex ;
int ldv_mutex_lock_interruptible_cred_guard_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_cred_guard_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_cred_guard_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_cred_guard_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_cred_guard_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_cred_guard_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_cred_guard_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_cred_guard_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_cred_guard_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex = 1;
  return;
}
}
static int ldv_mutex_lct_lock ;
int ldv_mutex_lock_interruptible_lct_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lct_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lct_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lct_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lct_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lct_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lct_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_lct_lock == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_lct_lock = 2;
  return;
}
}
int ldv_mutex_trylock_lct_lock(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lct_lock == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_lct_lock = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lct_lock(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_lct_lock == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lct_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lct_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lct_lock == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_lct_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_lct_lock == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_lct_lock = 1;
  return;
}
}
static int ldv_mutex_lock ;
int ldv_mutex_lock_interruptible_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock = 2;
  return;
}
}
int ldv_mutex_trylock_lock(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_lock = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lock(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lock == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_lock == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_lock = 1;
  return;
}
}
static int ldv_mutex_mem_lock ;
int ldv_mutex_lock_interruptible_mem_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mem_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mem_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mem_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mem_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mem_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mem_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_mem_lock == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mem_lock = 2;
  return;
}
}
int ldv_mutex_trylock_mem_lock(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mem_lock == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mem_lock = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mem_lock(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mem_lock == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mem_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mem_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mem_lock == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_mem_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_mem_lock == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mem_lock = 1;
  return;
}
}
static int ldv_mutex_mutex ;
int ldv_mutex_lock_interruptible_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mutex == 1) {
    nondetermined = __VERIFIER_nondet_int();
    if (nondetermined) {
      return (0);
    } else {
      return (1);
    }
  } else {
    return (1);
  }
}
}
void ldv_mutex_unlock_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_cred_guard_mutex = 1;
  ldv_mutex_lct_lock = 1;
  ldv_mutex_lock = 1;
  ldv_mutex_mem_lock = 1;
  ldv_mutex_mutex = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lct_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mem_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
void *external_alloc(void);
struct workqueue_struct *__alloc_workqueue_key(const char *arg0, unsigned int arg1, int arg2, struct lock_class_key *arg3, const char *arg4, ...) {
  return (struct workqueue_struct *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int __bus_register(struct bus_type *arg0, struct lock_class_key *arg1) {
  return __VERIFIER_nondet_int();
}
void __const_udelay(unsigned long arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __dynamic_pr_debug(struct _ddebug *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int allocate_resource(struct resource *arg0, struct resource *arg1, resource_size_t arg2, resource_size_t arg3, resource_size_t arg4, resource_size_t arg5, resource_size_t (*arg6)(void *, const struct resource *, resource_size_t , resource_size_t ), void *arg7) {
  return __VERIFIER_nondet_int();
}
void bus_unregister(struct bus_type *arg0) {
  return;
}
void debug_dma_alloc_coherent(struct device *arg0, size_t arg1, dma_addr_t arg2, void *arg3) {
  return;
}
void debug_dma_free_coherent(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
void debug_dma_map_page(struct device *arg0, struct page *arg1, size_t arg2, size_t arg3, int arg4, dma_addr_t arg5, bool arg6) {
  return;
}
void debug_dma_map_sg(struct device *arg0, struct scatterlist *arg1, int arg2, int arg3, int arg4) {
  return;
}
void debug_dma_mapping_error(struct device *arg0, dma_addr_t arg1) {
  return;
}
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
void destroy_workqueue(struct workqueue_struct *arg0) {
  return;
}
void *external_alloc(void);
void *dev_get_drvdata(const struct device *arg0) {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_set_name(struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_add(struct device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int device_create_file(struct device *arg0, const struct device_attribute *arg1) {
  return __VERIFIER_nondet_int();
}
void device_del(struct device *arg0) {
  return;
}
void device_initialize(struct device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int device_register(struct device *arg0) {
  return __VERIFIER_nondet_int();
}
void device_remove_file(struct device *arg0, const struct device_attribute *arg1) {
  return;
}
void device_unregister(struct device *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int driver_register(struct device_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void driver_unregister(struct device_driver *arg0) {
  return;
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void *external_alloc(void);
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return (void *)external_alloc();
}
void iounmap(volatile void *arg0) {
  return;
}
void *external_alloc(void);
struct kmem_cache *kmem_cache_create(const char *arg0, size_t arg1, size_t arg2, unsigned long arg3, void (*arg4)(void *)) {
  return (struct kmem_cache *)external_alloc();
}
void kmem_cache_destroy(struct kmem_cache *arg0) {
  return;
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_check_return_value_probe(int arg0) {
  return;
}
void ldv_handler_precall() {
  return;
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void *external_alloc(void);
void *mempool_alloc(mempool_t *arg0, gfp_t arg1) {
  return (void *)external_alloc();
}
void *external_alloc(void);
mempool_t *mempool_create(int arg0, mempool_alloc_t *arg1, mempool_free_t *arg2, void *arg3) {
  return (mempool_t *)external_alloc();
}
void mempool_destroy(mempool_t *arg0) {
  return;
}
void mempool_free(void *arg0, mempool_t *arg1) {
  return;
}
void msleep(unsigned int arg0) {
  return;
}
void mutex_lock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mutex_trylock(struct mutex *arg0) {
  return __VERIFIER_nondet_int();
}
void mutex_unlock(struct mutex *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_bus_write_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 arg3) {
  return __VERIFIER_nondet_int();
}
void pci_dev_put(struct pci_dev *arg0) {
  return;
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct resource *pci_find_parent_resource(const struct pci_dev *arg0, struct resource *arg1) {
  return (struct resource *)external_alloc();
}
void *external_alloc(void);
struct pci_dev *pci_get_slot(struct pci_bus *arg0, unsigned int arg1) {
  return (struct pci_dev *)external_alloc();
}
void pci_release_regions(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_request_regions(struct pci_dev *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
void pci_set_master(struct pci_dev *arg0) {
  return;
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
void prepare_to_wait(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void put_device(struct device *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool queue_work(struct workqueue_struct *arg0, struct work_struct *arg1) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout_uninterruptible(long arg0) {
  return __VERIFIER_nondet_long();
}
void *external_alloc(void);
struct scatterlist *sg_next(struct scatterlist *arg0) {
  return (struct scatterlist *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int sysfs_create_link(struct kobject *arg0, struct kobject *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
void sysfs_remove_link(struct kobject *arg0, const char *arg1) {
  return;
}
void warn_slowpath_null(const char *arg0, const int arg1) {
  return;
}
void *__VERIFIER_external_alloc(void);
void *external_alloc(void) {
  return __VERIFIER_external_alloc();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
