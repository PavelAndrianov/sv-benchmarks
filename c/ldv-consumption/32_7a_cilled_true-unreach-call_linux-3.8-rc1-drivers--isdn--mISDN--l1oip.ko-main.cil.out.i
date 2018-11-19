extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
typedef unsigned long long __u64;
typedef signed char s8;
typedef unsigned char u8;
typedef short s16;
typedef unsigned short u16;
typedef int s32;
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
typedef __kernel_long_t __kernel_off_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u32 __wsum;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef __u32 nlink_t;
typedef __kernel_off_t off_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef unsigned char u_char;
typedef unsigned int u_int;
typedef unsigned long u_long;
typedef __s32 int32_t;
typedef __u8 uint8_t;
typedef __u32 uint32_t;
typedef __u64 uint64_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef u64 dma_addr_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
typedef unsigned int oom_flags_t;
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
struct file_operations;
struct device;
struct net_device;
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
struct __anonstruct_ldv_2031_10 {
   u32 read ;
   s32 write ;
};
union __anonunion_arch_rwlock_t_9 {
   s64 lock ;
   struct __anonstruct_ldv_2031_10 ldv_2031 ;
};
typedef union __anonunion_arch_rwlock_t_9 arch_rwlock_t;
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
struct seq_file;
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
struct seq_operations;
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
struct __anonstruct_mm_segment_t_27 {
   unsigned long seg ;
};
typedef struct __anonstruct_mm_segment_t_27 mm_segment_t;
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
struct __anonstruct_rwlock_t_30 {
   arch_rwlock_t raw_lock ;
   unsigned int magic ;
   unsigned int owner_cpu ;
   void *owner ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_rwlock_t_30 rwlock_t;
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
union __anonunion_ldv_6161_31 {
   struct __anonstruct_futex_32 futex ;
   struct __anonstruct_nanosleep_33 nanosleep ;
   struct __anonstruct_poll_34 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_6161_31 ldv_6161 ;
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
struct __anonstruct_seqlock_t_35 {
   unsigned int sequence ;
   spinlock_t lock ;
};
typedef struct __anonstruct_seqlock_t_35 seqlock_t;
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
struct kstat {
   u64 ino ;
   dev_t dev ;
   umode_t mode ;
   unsigned int nlink ;
   kuid_t uid ;
   kgid_t gid ;
   dev_t rdev ;
   loff_t size ;
   struct timespec atime ;
   struct timespec mtime ;
   struct timespec ctime ;
   unsigned long blksize ;
   unsigned long long blocks ;
};
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
struct notifier_block;
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
struct work_struct;
struct work_struct {
   atomic_long_t data ;
   struct list_head entry ;
   void (*func)(struct work_struct * ) ;
   struct lockdep_map lockdep_map ;
};
struct delayed_work {
   struct work_struct work ;
   struct timer_list timer ;
   int cpu ;
};
struct notifier_block {
   int (*notifier_call)(struct notifier_block * , unsigned long , void * ) ;
   struct notifier_block *next ;
   int priority ;
};
struct blocking_notifier_head {
   struct rw_semaphore rwsem ;
   struct notifier_block *head ;
};
struct ctl_table;
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
struct ctl_table_root;
struct ctl_table_header;
struct ctl_dir;
typedef int proc_handler(struct ctl_table * , int , void * , size_t * , loff_t * );
struct ctl_table_poll {
   atomic_t event ;
   wait_queue_head_t wait ;
};
struct ctl_table {
   char const *procname ;
   void *data ;
   int maxlen ;
   umode_t mode ;
   struct ctl_table *child ;
   proc_handler *proc_handler ;
   struct ctl_table_poll *poll ;
   void *extra1 ;
   void *extra2 ;
};
struct ctl_node {
   struct rb_node node ;
   struct ctl_table_header *header ;
};
struct __anonstruct_ldv_13044_129 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_13046_128 {
   struct __anonstruct_ldv_13044_129 ldv_13044 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_13046_128 ldv_13046 ;
   struct completion *unregistering ;
   struct ctl_table *ctl_table_arg ;
   struct ctl_table_root *root ;
   struct ctl_table_set *set ;
   struct ctl_dir *parent ;
   struct ctl_node *node ;
};
struct ctl_dir {
   struct ctl_table_header header ;
   struct rb_root root ;
};
struct ctl_table_set {
   int (*is_seen)(struct ctl_table_set * ) ;
   struct ctl_dir dir ;
};
struct ctl_table_root {
   struct ctl_table_set default_set ;
   struct ctl_table_set *(*lookup)(struct ctl_table_root * , struct nsproxy * ) ;
   int (*permissions)(struct ctl_table_header * , struct ctl_table * ) ;
};
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
union __anonunion_ldv_13824_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_13824_134 ldv_13824 ;
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
   bool sig_ok ;
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
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kvec {
   void *iov_base ;
   size_t iov_len ;
};
typedef unsigned short __kernel_sa_family_t;
typedef __kernel_sa_family_t sa_family_t;
struct sockaddr {
   sa_family_t sa_family ;
   char sa_data[14U] ;
};
struct msghdr {
   void *msg_name ;
   int msg_namelen ;
   struct iovec *msg_iov ;
   __kernel_size_t msg_iovlen ;
   void *msg_control ;
   __kernel_size_t msg_controllen ;
   unsigned int msg_flags ;
};
struct mISDNhead {
   unsigned int prim ;
   unsigned int id ;
};
struct sockaddr_mISDN {
   sa_family_t family ;
   unsigned char dev ;
   unsigned char channel ;
   unsigned char sapi ;
   unsigned char tei ;
};
struct mISDN_ctrl_req {
   int op ;
   int channel ;
   int p1 ;
   int p2 ;
};
struct inode;
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
union __anonunion_ldv_14616_136 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_14626_140 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_14628_139 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14626_140 ldv_14626 ;
   int units ;
};
struct __anonstruct_ldv_14630_138 {
   union __anonunion_ldv_14628_139 ldv_14628 ;
   atomic_t _count ;
};
union __anonunion_ldv_14631_137 {
   unsigned long counters ;
   struct __anonstruct_ldv_14630_138 ldv_14630 ;
};
struct __anonstruct_ldv_14632_135 {
   union __anonunion_ldv_14616_136 ldv_14616 ;
   union __anonunion_ldv_14631_137 ldv_14631 ;
};
struct __anonstruct_ldv_14639_142 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_14643_141 {
   struct list_head lru ;
   struct __anonstruct_ldv_14639_142 ldv_14639 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_14648_143 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_14632_135 ldv_14632 ;
   union __anonunion_ldv_14643_141 ldv_14643 ;
   union __anonunion_ldv_14648_143 ldv_14648 ;
   unsigned long debug_flags ;
   int _last_nid ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_145 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_144 {
   struct __anonstruct_linear_145 linear ;
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
   union __anonunion_shared_144 shared ;
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
enum ldv_14127 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_14127 socket_state;
struct poll_table_struct;
struct pipe_inode_info;
struct net;
struct fasync_struct;
struct socket_wq {
   wait_queue_head_t wait ;
   struct fasync_struct *fasync_list ;
   struct callback_head rcu ;
};
struct proto_ops;
struct socket {
   socket_state state ;
   short type ;
   unsigned long flags ;
   struct socket_wq *wq ;
   struct file *file ;
   struct sock *sk ;
   struct proto_ops const *ops ;
};
struct kiocb;
struct proto_ops {
   int family ;
   struct module *owner ;
   int (*release)(struct socket * ) ;
   int (*bind)(struct socket * , struct sockaddr * , int ) ;
   int (*connect)(struct socket * , struct sockaddr * , int , int ) ;
   int (*socketpair)(struct socket * , struct socket * ) ;
   int (*accept)(struct socket * , struct socket * , int ) ;
   int (*getname)(struct socket * , struct sockaddr * , int * , int ) ;
   unsigned int (*poll)(struct file * , struct socket * , struct poll_table_struct * ) ;
   int (*ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct socket * , unsigned int , unsigned long ) ;
   int (*listen)(struct socket * , int ) ;
   int (*shutdown)(struct socket * , int ) ;
   int (*setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct socket * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct socket * , int , int , char * , int * ) ;
   int (*sendmsg)(struct kiocb * , struct socket * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct kiocb * , struct socket * , struct msghdr * , size_t , int ) ;
   int (*mmap)(struct file * , struct socket * , struct vm_area_struct * ) ;
   ssize_t (*sendpage)(struct socket * , struct page * , int , size_t , int ) ;
   ssize_t (*splice_read)(struct socket * , loff_t * , struct pipe_inode_info * ,
                          size_t , unsigned int ) ;
   void (*set_peek_off)(struct sock * , int ) ;
};
struct mem_cgroup;
struct __anonstruct_ldv_15220_147 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_15221_146 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_15220_147 ldv_15220 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_15221_146 ldv_15221 ;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct sk_buff;
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
struct of_device_id;
struct acpi_device_id;
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
struct shrink_control {
   gfp_t gfp_mask ;
   unsigned long nr_to_scan ;
};
struct shrinker {
   int (*shrink)(struct shrinker * , struct shrink_control * ) ;
   int seeks ;
   long batch ;
   struct list_head list ;
   atomic_long_t nr_in_batch ;
};
struct file_ra_state;
struct user_struct;
struct writeback_control;
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
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
};
typedef s32 dma_cookie_t;
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
struct dma_attrs {
   unsigned long flags[1U] ;
};
enum dma_data_direction {
    DMA_BIDIRECTIONAL = 0,
    DMA_TO_DEVICE = 1,
    DMA_FROM_DEVICE = 2,
    DMA_NONE = 3
} ;
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
typedef u64 netdev_features_t;
struct nf_conntrack {
   atomic_t use ;
};
struct nf_bridge_info {
   atomic_t use ;
   unsigned int mask ;
   struct net_device *physindev ;
   struct net_device *physoutdev ;
   unsigned long data[4U] ;
};
struct sk_buff_head {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   __u32 qlen ;
   spinlock_t lock ;
};
typedef unsigned int sk_buff_data_t;
struct sec_path;
struct __anonstruct_ldv_20858_151 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_20859_150 {
   __wsum csum ;
   struct __anonstruct_ldv_20858_151 ldv_20858 ;
};
union __anonunion_ldv_20898_152 {
   __u32 mark ;
   __u32 dropcount ;
   __u32 avail_size ;
};
struct sk_buff {
   struct sk_buff *next ;
   struct sk_buff *prev ;
   ktime_t tstamp ;
   struct sock *sk ;
   struct net_device *dev ;
   char cb[48U] ;
   unsigned long _skb_refdst ;
   struct sec_path *sp ;
   unsigned int len ;
   unsigned int data_len ;
   __u16 mac_len ;
   __u16 hdr_len ;
   union __anonunion_ldv_20859_150 ldv_20859 ;
   __u32 priority ;
   unsigned char local_df : 1 ;
   unsigned char cloned : 1 ;
   unsigned char ip_summed : 2 ;
   unsigned char nohdr : 1 ;
   unsigned char nfctinfo : 3 ;
   unsigned char pkt_type : 3 ;
   unsigned char fclone : 2 ;
   unsigned char ipvs_property : 1 ;
   unsigned char peeked : 1 ;
   unsigned char nf_trace : 1 ;
   __be16 protocol ;
   void (*destructor)(struct sk_buff * ) ;
   struct nf_conntrack *nfct ;
   struct sk_buff *nfct_reasm ;
   struct nf_bridge_info *nf_bridge ;
   int skb_iif ;
   __u32 rxhash ;
   __u16 vlan_tci ;
   __u16 tc_index ;
   __u16 tc_verd ;
   __u16 queue_mapping ;
   unsigned char ndisc_nodetype : 2 ;
   unsigned char pfmemalloc : 1 ;
   unsigned char ooo_okay : 1 ;
   unsigned char l4_rxhash : 1 ;
   unsigned char wifi_acked_valid : 1 ;
   unsigned char wifi_acked : 1 ;
   unsigned char no_fcs : 1 ;
   unsigned char head_frag : 1 ;
   unsigned char encapsulation : 1 ;
   dma_cookie_t dma_cookie ;
   __u32 secmark ;
   union __anonunion_ldv_20898_152 ldv_20898 ;
   sk_buff_data_t inner_transport_header ;
   sk_buff_data_t inner_network_header ;
   sk_buff_data_t transport_header ;
   sk_buff_data_t network_header ;
   sk_buff_data_t mac_header ;
   sk_buff_data_t tail ;
   sk_buff_data_t end ;
   unsigned char *head ;
   unsigned char *data ;
   unsigned int truesize ;
   atomic_t users ;
};
struct dst_entry;
struct rtable;
struct proc_dir_entry;
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
};
struct plist_head {
   struct list_head node_list ;
};
struct plist_node {
   int prio ;
   struct list_head prio_list ;
   struct list_head node_list ;
};
struct pm_qos_request {
   struct plist_node node ;
   int pm_qos_class ;
   struct delayed_work work ;
};
struct pm_qos_flags_request {
   struct list_head node ;
   s32 flags ;
};
enum dev_pm_qos_req_type {
    DEV_PM_QOS_LATENCY = 1,
    DEV_PM_QOS_FLAGS = 2
} ;
union __anonunion_data_154 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_154 data ;
   struct device *dev ;
};
enum pm_qos_type {
    PM_QOS_UNITIALIZED = 0,
    PM_QOS_MAX = 1,
    PM_QOS_MIN = 2
} ;
struct pm_qos_constraints {
   struct plist_head list ;
   s32 target_value ;
   s32 default_value ;
   enum pm_qos_type type ;
   struct blocking_notifier_head *notifiers ;
};
struct pm_qos_flags {
   struct list_head list ;
   s32 effective_flags ;
};
struct dev_pm_qos {
   struct pm_qos_constraints latency ;
   struct pm_qos_flags flags ;
   struct dev_pm_qos_request *latency_req ;
   struct dev_pm_qos_request *flags_req ;
};
struct dql {
   unsigned int num_queued ;
   unsigned int adj_limit ;
   unsigned int last_obj_cnt ;
   unsigned int limit ;
   unsigned int num_completed ;
   unsigned int prev_ovlimit ;
   unsigned int prev_num_queued ;
   unsigned int prev_last_obj_cnt ;
   unsigned int lowest_slack ;
   unsigned long slack_start_time ;
   unsigned int max_limit ;
   unsigned int min_limit ;
   unsigned int slack_hold_time ;
};
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sync_serial_settings_155 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_155 sync_serial_settings;
struct __anonstruct_te1_settings_156 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_156 te1_settings;
struct __anonstruct_raw_hdlc_proto_157 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_157 raw_hdlc_proto;
struct __anonstruct_fr_proto_158 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_158 fr_proto;
struct __anonstruct_fr_proto_pvc_159 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_159 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_160 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_160 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_161 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_161 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_162 {
   raw_hdlc_proto *raw_hdlc ;
   cisco_proto *cisco ;
   fr_proto *fr ;
   fr_proto_pvc *fr_pvc ;
   fr_proto_pvc_info *fr_pvc_info ;
   sync_serial_settings *sync ;
   te1_settings *te1 ;
};
struct if_settings {
   unsigned int type ;
   unsigned int size ;
   union __anonunion_ifs_ifsu_162 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_163 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_164 {
   struct sockaddr ifru_addr ;
   struct sockaddr ifru_dstaddr ;
   struct sockaddr ifru_broadaddr ;
   struct sockaddr ifru_netmask ;
   struct sockaddr ifru_hwaddr ;
   short ifru_flags ;
   int ifru_ivalue ;
   int ifru_mtu ;
   struct ifmap ifru_map ;
   char ifru_slave[16U] ;
   char ifru_newname[16U] ;
   void *ifru_data ;
   struct if_settings ifru_settings ;
};
struct ifreq {
   union __anonunion_ifr_ifrn_163 ifr_ifrn ;
   union __anonunion_ifr_ifru_164 ifr_ifru ;
};
struct hlist_bl_node;
struct hlist_bl_head {
   struct hlist_bl_node *first ;
};
struct hlist_bl_node {
   struct hlist_bl_node *next ;
   struct hlist_bl_node **pprev ;
};
struct nameidata;
struct path;
struct vfsmount;
struct __anonstruct_ldv_23429_167 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_23431_166 {
   struct __anonstruct_ldv_23429_167 ldv_23429 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_23431_166 ldv_23431 ;
   unsigned char const *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_168 {
   struct list_head d_child ;
   struct callback_head d_rcu ;
};
struct dentry {
   unsigned int d_flags ;
   seqcount_t d_seq ;
   struct hlist_bl_node d_hash ;
   struct dentry *d_parent ;
   struct qstr d_name ;
   struct inode *d_inode ;
   unsigned char d_iname[32U] ;
   unsigned int d_count ;
   spinlock_t d_lock ;
   struct dentry_operations const *d_op ;
   struct super_block *d_sb ;
   unsigned long d_time ;
   void *d_fsdata ;
   struct list_head d_lru ;
   union __anonunion_d_u_168 d_u ;
   struct list_head d_subdirs ;
   struct hlist_node d_alias ;
};
struct dentry_operations {
   int (*d_revalidate)(struct dentry * , unsigned int ) ;
   int (*d_hash)(struct dentry const * , struct inode const * , struct qstr * ) ;
   int (*d_compare)(struct dentry const * , struct inode const * , struct dentry const * ,
                    struct inode const * , unsigned int , char const * , struct qstr const * ) ;
   int (*d_delete)(struct dentry const * ) ;
   void (*d_release)(struct dentry * ) ;
   void (*d_prune)(struct dentry * ) ;
   void (*d_iput)(struct dentry * , struct inode * ) ;
   char *(*d_dname)(struct dentry * , char * , int ) ;
   struct vfsmount *(*d_automount)(struct path * ) ;
   int (*d_manage)(struct dentry * , bool ) ;
};
struct path {
   struct vfsmount *mnt ;
   struct dentry *dentry ;
};
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
enum pid_type {
    PIDTYPE_PID = 0,
    PIDTYPE_PGID = 1,
    PIDTYPE_SID = 2,
    PIDTYPE_MAX = 3
} ;
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
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
};
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct io_context;
struct cgroup_subsys_state;
struct export_operations;
struct kstatfs;
struct swap_info_struct;
struct iattr {
   unsigned int ia_valid ;
   umode_t ia_mode ;
   kuid_t ia_uid ;
   kgid_t ia_gid ;
   loff_t ia_size ;
   struct timespec ia_atime ;
   struct timespec ia_mtime ;
   struct timespec ia_ctime ;
   struct file *ia_file ;
};
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
};
struct fs_disk_quota {
   __s8 d_version ;
   __s8 d_flags ;
   __u16 d_fieldmask ;
   __u32 d_id ;
   __u64 d_blk_hardlimit ;
   __u64 d_blk_softlimit ;
   __u64 d_ino_hardlimit ;
   __u64 d_ino_softlimit ;
   __u64 d_bcount ;
   __u64 d_icount ;
   __s32 d_itimer ;
   __s32 d_btimer ;
   __u16 d_iwarns ;
   __u16 d_bwarns ;
   __s32 d_padding2 ;
   __u64 d_rtb_hardlimit ;
   __u64 d_rtb_softlimit ;
   __u64 d_rtbcount ;
   __s32 d_rtbtimer ;
   __u16 d_rtbwarns ;
   __s16 d_padding3 ;
   char d_padding4[8U] ;
};
struct fs_qfilestat {
   __u64 qfs_ino ;
   __u64 qfs_nblks ;
   __u32 qfs_nextents ;
};
typedef struct fs_qfilestat fs_qfilestat_t;
struct fs_quota_stat {
   __s8 qs_version ;
   __u16 qs_flags ;
   __s8 qs_pad ;
   fs_qfilestat_t qs_uquota ;
   fs_qfilestat_t qs_gquota ;
   __u32 qs_incoredqs ;
   __s32 qs_btimelimit ;
   __s32 qs_itimelimit ;
   __s32 qs_rtbtimelimit ;
   __u16 qs_bwarnlimit ;
   __u16 qs_iwarnlimit ;
};
struct dquot;
typedef __kernel_uid32_t projid_t;
typedef projid_t kprojid_t;
struct if_dqinfo {
   __u64 dqi_bgrace ;
   __u64 dqi_igrace ;
   __u32 dqi_flags ;
   __u32 dqi_valid ;
};
enum quota_type {
    USRQUOTA = 0,
    GRPQUOTA = 1,
    PRJQUOTA = 2
} ;
typedef long long qsize_t;
union __anonunion_ldv_24431_170 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_24431_170 ldv_24431 ;
   enum quota_type type ;
};
struct mem_dqblk {
   qsize_t dqb_bhardlimit ;
   qsize_t dqb_bsoftlimit ;
   qsize_t dqb_curspace ;
   qsize_t dqb_rsvspace ;
   qsize_t dqb_ihardlimit ;
   qsize_t dqb_isoftlimit ;
   qsize_t dqb_curinodes ;
   time_t dqb_btime ;
   time_t dqb_itime ;
};
struct quota_format_type;
struct mem_dqinfo {
   struct quota_format_type *dqi_format ;
   int dqi_fmt_id ;
   struct list_head dqi_dirty_list ;
   unsigned long dqi_flags ;
   unsigned int dqi_bgrace ;
   unsigned int dqi_igrace ;
   qsize_t dqi_maxblimit ;
   qsize_t dqi_maxilimit ;
   void *dqi_priv ;
};
struct dquot {
   struct hlist_node dq_hash ;
   struct list_head dq_inuse ;
   struct list_head dq_free ;
   struct list_head dq_dirty ;
   struct mutex dq_lock ;
   atomic_t dq_count ;
   wait_queue_head_t dq_wait_unused ;
   struct super_block *dq_sb ;
   struct kqid dq_id ;
   loff_t dq_off ;
   unsigned long dq_flags ;
   struct mem_dqblk dq_dqb ;
};
struct quota_format_ops {
   int (*check_quota_file)(struct super_block * , int ) ;
   int (*read_file_info)(struct super_block * , int ) ;
   int (*write_file_info)(struct super_block * , int ) ;
   int (*free_file_info)(struct super_block * , int ) ;
   int (*read_dqblk)(struct dquot * ) ;
   int (*commit_dqblk)(struct dquot * ) ;
   int (*release_dqblk)(struct dquot * ) ;
};
struct dquot_operations {
   int (*write_dquot)(struct dquot * ) ;
   struct dquot *(*alloc_dquot)(struct super_block * , int ) ;
   void (*destroy_dquot)(struct dquot * ) ;
   int (*acquire_dquot)(struct dquot * ) ;
   int (*release_dquot)(struct dquot * ) ;
   int (*mark_dirty)(struct dquot * ) ;
   int (*write_info)(struct super_block * , int ) ;
   qsize_t *(*get_reserved_space)(struct inode * ) ;
};
struct quotactl_ops {
   int (*quota_on)(struct super_block * , int , int , struct path * ) ;
   int (*quota_on_meta)(struct super_block * , int , int ) ;
   int (*quota_off)(struct super_block * , int ) ;
   int (*quota_sync)(struct super_block * , int ) ;
   int (*get_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*set_info)(struct super_block * , int , struct if_dqinfo * ) ;
   int (*get_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*set_dqblk)(struct super_block * , struct kqid , struct fs_disk_quota * ) ;
   int (*get_xstate)(struct super_block * , struct fs_quota_stat * ) ;
   int (*set_xstate)(struct super_block * , unsigned int , int ) ;
};
struct quota_format_type {
   int qf_fmt_id ;
   struct quota_format_ops const *qf_ops ;
   struct module *qf_owner ;
   struct quota_format_type *qf_next ;
};
struct quota_info {
   unsigned int flags ;
   struct mutex dqio_mutex ;
   struct mutex dqonoff_mutex ;
   struct rw_semaphore dqptr_sem ;
   struct inode *files[2U] ;
   struct mem_dqinfo info[2U] ;
   struct quota_format_ops const *ops[2U] ;
};
union __anonunion_arg_172 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_171 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_172 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_171 read_descriptor_t;
struct address_space_operations {
   int (*writepage)(struct page * , struct writeback_control * ) ;
   int (*readpage)(struct file * , struct page * ) ;
   int (*writepages)(struct address_space * , struct writeback_control * ) ;
   int (*set_page_dirty)(struct page * ) ;
   int (*readpages)(struct file * , struct address_space * , struct list_head * ,
                    unsigned int ) ;
   int (*write_begin)(struct file * , struct address_space * , loff_t , unsigned int ,
                      unsigned int , struct page ** , void ** ) ;
   int (*write_end)(struct file * , struct address_space * , loff_t , unsigned int ,
                    unsigned int , struct page * , void * ) ;
   sector_t (*bmap)(struct address_space * , sector_t ) ;
   void (*invalidatepage)(struct page * , unsigned long ) ;
   int (*releasepage)(struct page * , gfp_t ) ;
   void (*freepage)(struct page * ) ;
   ssize_t (*direct_IO)(int , struct kiocb * , struct iovec const * , loff_t ,
                        unsigned long ) ;
   int (*get_xip_mem)(struct address_space * , unsigned long , int , void ** , unsigned long * ) ;
   int (*migratepage)(struct address_space * , struct page * , struct page * , enum migrate_mode ) ;
   int (*launder_page)(struct page * ) ;
   int (*is_partially_uptodate)(struct page * , read_descriptor_t * , unsigned long ) ;
   int (*error_remove_page)(struct address_space * , struct page * ) ;
   int (*swap_activate)(struct swap_info_struct * , struct file * , sector_t * ) ;
   void (*swap_deactivate)(struct file * ) ;
};
struct backing_dev_info;
struct address_space {
   struct inode *host ;
   struct radix_tree_root page_tree ;
   spinlock_t tree_lock ;
   unsigned int i_mmap_writable ;
   struct rb_root i_mmap ;
   struct list_head i_mmap_nonlinear ;
   struct mutex i_mmap_mutex ;
   unsigned long nrpages ;
   unsigned long writeback_index ;
   struct address_space_operations const *a_ops ;
   unsigned long flags ;
   struct backing_dev_info *backing_dev_info ;
   spinlock_t private_lock ;
   struct list_head private_list ;
   void *private_data ;
};
struct request_queue;
struct hd_struct;
struct gendisk;
struct block_device {
   dev_t bd_dev ;
   int bd_openers ;
   struct inode *bd_inode ;
   struct super_block *bd_super ;
   struct mutex bd_mutex ;
   struct list_head bd_inodes ;
   void *bd_claiming ;
   void *bd_holder ;
   int bd_holders ;
   bool bd_write_holder ;
   struct list_head bd_holder_disks ;
   struct block_device *bd_contains ;
   unsigned int bd_block_size ;
   struct hd_struct *bd_part ;
   unsigned int bd_part_count ;
   int bd_invalidated ;
   struct gendisk *bd_disk ;
   struct request_queue *bd_queue ;
   struct list_head bd_list ;
   unsigned long bd_private ;
   int bd_fsfreeze_count ;
   struct mutex bd_fsfreeze_mutex ;
};
struct posix_acl;
struct inode_operations;
union __anonunion_ldv_24865_173 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_24885_174 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_24901_175 {
   struct pipe_inode_info *i_pipe ;
   struct block_device *i_bdev ;
   struct cdev *i_cdev ;
};
struct inode {
   umode_t i_mode ;
   unsigned short i_opflags ;
   kuid_t i_uid ;
   kgid_t i_gid ;
   unsigned int i_flags ;
   struct posix_acl *i_acl ;
   struct posix_acl *i_default_acl ;
   struct inode_operations const *i_op ;
   struct super_block *i_sb ;
   struct address_space *i_mapping ;
   void *i_security ;
   unsigned long i_ino ;
   union __anonunion_ldv_24865_173 ldv_24865 ;
   dev_t i_rdev ;
   loff_t i_size ;
   struct timespec i_atime ;
   struct timespec i_mtime ;
   struct timespec i_ctime ;
   spinlock_t i_lock ;
   unsigned short i_bytes ;
   unsigned int i_blkbits ;
   blkcnt_t i_blocks ;
   unsigned long i_state ;
   struct mutex i_mutex ;
   unsigned long dirtied_when ;
   struct hlist_node i_hash ;
   struct list_head i_wb_list ;
   struct list_head i_lru ;
   struct list_head i_sb_list ;
   union __anonunion_ldv_24885_174 ldv_24885 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_24901_175 ldv_24901 ;
   __u32 i_generation ;
   __u32 i_fsnotify_mask ;
   struct hlist_head i_fsnotify_marks ;
   atomic_t i_readcount ;
   void *i_private ;
};
struct fown_struct {
   rwlock_t lock ;
   struct pid *pid ;
   enum pid_type pid_type ;
   kuid_t uid ;
   kuid_t euid ;
   int signum ;
};
struct file_ra_state {
   unsigned long start ;
   unsigned int size ;
   unsigned int async_size ;
   unsigned int ra_pages ;
   unsigned int mmap_miss ;
   loff_t prev_pos ;
};
union __anonunion_f_u_176 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_176 f_u ;
   struct path f_path ;
   struct file_operations const *f_op ;
   spinlock_t f_lock ;
   int f_sb_list_cpu ;
   atomic_long_t f_count ;
   unsigned int f_flags ;
   fmode_t f_mode ;
   loff_t f_pos ;
   struct fown_struct f_owner ;
   struct cred const *f_cred ;
   struct file_ra_state f_ra ;
   u64 f_version ;
   void *f_security ;
   void *private_data ;
   struct list_head f_ep_links ;
   struct list_head f_tfile_llink ;
   struct address_space *f_mapping ;
   unsigned long f_mnt_write_state ;
};
struct files_struct;
typedef struct files_struct *fl_owner_t;
struct file_lock_operations {
   void (*fl_copy_lock)(struct file_lock * , struct file_lock * ) ;
   void (*fl_release_private)(struct file_lock * ) ;
};
struct lock_manager_operations {
   int (*lm_compare_owner)(struct file_lock * , struct file_lock * ) ;
   void (*lm_notify)(struct file_lock * ) ;
   int (*lm_grant)(struct file_lock * , struct file_lock * , int ) ;
   void (*lm_break)(struct file_lock * ) ;
   int (*lm_change)(struct file_lock ** , int ) ;
};
struct nlm_lockowner;
struct nfs_lock_info {
   u32 state ;
   struct nlm_lockowner *owner ;
   struct list_head list ;
};
struct nfs4_lock_state;
struct nfs4_lock_info {
   struct nfs4_lock_state *owner ;
};
struct __anonstruct_afs_178 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_177 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_178 afs ;
};
struct file_lock {
   struct file_lock *fl_next ;
   struct list_head fl_link ;
   struct list_head fl_block ;
   fl_owner_t fl_owner ;
   unsigned int fl_flags ;
   unsigned char fl_type ;
   unsigned int fl_pid ;
   struct pid *fl_nspid ;
   wait_queue_head_t fl_wait ;
   struct file *fl_file ;
   loff_t fl_start ;
   loff_t fl_end ;
   struct fasync_struct *fl_fasync ;
   unsigned long fl_break_time ;
   unsigned long fl_downgrade_time ;
   struct file_lock_operations const *fl_ops ;
   struct lock_manager_operations const *fl_lmops ;
   union __anonunion_fl_u_177 fl_u ;
};
struct fasync_struct {
   spinlock_t fa_lock ;
   int magic ;
   int fa_fd ;
   struct fasync_struct *fa_next ;
   struct file *fa_file ;
   struct callback_head fa_rcu ;
};
struct sb_writers {
   struct percpu_counter counter[3U] ;
   wait_queue_head_t wait ;
   int frozen ;
   wait_queue_head_t wait_unfrozen ;
   struct lockdep_map lock_map[3U] ;
};
struct file_system_type;
struct super_operations;
struct xattr_handler;
struct mtd_info;
struct super_block {
   struct list_head s_list ;
   dev_t s_dev ;
   unsigned char s_blocksize_bits ;
   unsigned long s_blocksize ;
   loff_t s_maxbytes ;
   struct file_system_type *s_type ;
   struct super_operations const *s_op ;
   struct dquot_operations const *dq_op ;
   struct quotactl_ops const *s_qcop ;
   struct export_operations const *s_export_op ;
   unsigned long s_flags ;
   unsigned long s_magic ;
   struct dentry *s_root ;
   struct rw_semaphore s_umount ;
   int s_count ;
   atomic_t s_active ;
   void *s_security ;
   struct xattr_handler const **s_xattr ;
   struct list_head s_inodes ;
   struct hlist_bl_head s_anon ;
   struct list_head *s_files ;
   struct list_head s_mounts ;
   struct list_head s_dentry_lru ;
   int s_nr_dentry_unused ;
   spinlock_t s_inode_lru_lock ;
   struct list_head s_inode_lru ;
   int s_nr_inodes_unused ;
   struct block_device *s_bdev ;
   struct backing_dev_info *s_bdi ;
   struct mtd_info *s_mtd ;
   struct hlist_node s_instances ;
   struct quota_info s_dquot ;
   struct sb_writers s_writers ;
   char s_id[32U] ;
   u8 s_uuid[16U] ;
   void *s_fs_info ;
   unsigned int s_max_links ;
   fmode_t s_mode ;
   u32 s_time_gran ;
   struct mutex s_vfs_rename_mutex ;
   char *s_subtype ;
   char *s_options ;
   struct dentry_operations const *s_d_op ;
   int cleancache_poolid ;
   struct shrinker s_shrink ;
   atomic_long_t s_remove_count ;
   int s_readonly_remount ;
};
struct fiemap_extent_info {
   unsigned int fi_flags ;
   unsigned int fi_extents_mapped ;
   unsigned int fi_extents_max ;
   struct fiemap_extent *fi_extents_start ;
};
struct file_operations {
   struct module *owner ;
   loff_t (*llseek)(struct file * , loff_t , int ) ;
   ssize_t (*read)(struct file * , char * , size_t , loff_t * ) ;
   ssize_t (*write)(struct file * , char const * , size_t , loff_t * ) ;
   ssize_t (*aio_read)(struct kiocb * , struct iovec const * , unsigned long ,
                       loff_t ) ;
   ssize_t (*aio_write)(struct kiocb * , struct iovec const * , unsigned long ,
                        loff_t ) ;
   int (*readdir)(struct file * , void * , int (*)(void * , char const * , int ,
                                                   loff_t , u64 , unsigned int ) ) ;
   unsigned int (*poll)(struct file * , struct poll_table_struct * ) ;
   long (*unlocked_ioctl)(struct file * , unsigned int , unsigned long ) ;
   long (*compat_ioctl)(struct file * , unsigned int , unsigned long ) ;
   int (*mmap)(struct file * , struct vm_area_struct * ) ;
   int (*open)(struct inode * , struct file * ) ;
   int (*flush)(struct file * , fl_owner_t ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*fsync)(struct file * , loff_t , loff_t , int ) ;
   int (*aio_fsync)(struct kiocb * , int ) ;
   int (*fasync)(int , struct file * , int ) ;
   int (*lock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*sendpage)(struct file * , struct page * , int , size_t , loff_t * ,
                       int ) ;
   unsigned long (*get_unmapped_area)(struct file * , unsigned long , unsigned long ,
                                      unsigned long , unsigned long ) ;
   int (*check_flags)(int ) ;
   int (*flock)(struct file * , int , struct file_lock * ) ;
   ssize_t (*splice_write)(struct pipe_inode_info * , struct file * , loff_t * , size_t ,
                           unsigned int ) ;
   ssize_t (*splice_read)(struct file * , loff_t * , struct pipe_inode_info * , size_t ,
                          unsigned int ) ;
   int (*setlease)(struct file * , long , struct file_lock ** ) ;
   long (*fallocate)(struct file * , int , loff_t , loff_t ) ;
   int (*show_fdinfo)(struct seq_file * , struct file * ) ;
};
struct inode_operations {
   struct dentry *(*lookup)(struct inode * , struct dentry * , unsigned int ) ;
   void *(*follow_link)(struct dentry * , struct nameidata * ) ;
   int (*permission)(struct inode * , int ) ;
   struct posix_acl *(*get_acl)(struct inode * , int ) ;
   int (*readlink)(struct dentry * , char * , int ) ;
   void (*put_link)(struct dentry * , struct nameidata * , void * ) ;
   int (*create)(struct inode * , struct dentry * , umode_t , bool ) ;
   int (*link)(struct dentry * , struct inode * , struct dentry * ) ;
   int (*unlink)(struct inode * , struct dentry * ) ;
   int (*symlink)(struct inode * , struct dentry * , char const * ) ;
   int (*mkdir)(struct inode * , struct dentry * , umode_t ) ;
   int (*rmdir)(struct inode * , struct dentry * ) ;
   int (*mknod)(struct inode * , struct dentry * , umode_t , dev_t ) ;
   int (*rename)(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
   int (*setattr)(struct dentry * , struct iattr * ) ;
   int (*getattr)(struct vfsmount * , struct dentry * , struct kstat * ) ;
   int (*setxattr)(struct dentry * , char const * , void const * , size_t , int ) ;
   ssize_t (*getxattr)(struct dentry * , char const * , void * , size_t ) ;
   ssize_t (*listxattr)(struct dentry * , char * , size_t ) ;
   int (*removexattr)(struct dentry * , char const * ) ;
   int (*fiemap)(struct inode * , struct fiemap_extent_info * , u64 , u64 ) ;
   int (*update_time)(struct inode * , struct timespec * , int ) ;
   int (*atomic_open)(struct inode * , struct dentry * , struct file * , unsigned int ,
                      umode_t , int * ) ;
};
struct super_operations {
   struct inode *(*alloc_inode)(struct super_block * ) ;
   void (*destroy_inode)(struct inode * ) ;
   void (*dirty_inode)(struct inode * , int ) ;
   int (*write_inode)(struct inode * , struct writeback_control * ) ;
   int (*drop_inode)(struct inode * ) ;
   void (*evict_inode)(struct inode * ) ;
   void (*put_super)(struct super_block * ) ;
   int (*sync_fs)(struct super_block * , int ) ;
   int (*freeze_fs)(struct super_block * ) ;
   int (*unfreeze_fs)(struct super_block * ) ;
   int (*statfs)(struct dentry * , struct kstatfs * ) ;
   int (*remount_fs)(struct super_block * , int * , char * ) ;
   void (*umount_begin)(struct super_block * ) ;
   int (*show_options)(struct seq_file * , struct dentry * ) ;
   int (*show_devname)(struct seq_file * , struct dentry * ) ;
   int (*show_path)(struct seq_file * , struct dentry * ) ;
   int (*show_stats)(struct seq_file * , struct dentry * ) ;
   ssize_t (*quota_read)(struct super_block * , int , char * , size_t , loff_t ) ;
   ssize_t (*quota_write)(struct super_block * , int , char const * , size_t ,
                          loff_t ) ;
   int (*bdev_try_to_free_page)(struct super_block * , struct page * , gfp_t ) ;
   int (*nr_cached_objects)(struct super_block * ) ;
   void (*free_cached_objects)(struct super_block * , int ) ;
};
struct file_system_type {
   char const *name ;
   int fs_flags ;
   struct dentry *(*mount)(struct file_system_type * , int , char const * , void * ) ;
   void (*kill_sb)(struct super_block * ) ;
   struct module *owner ;
   struct file_system_type *next ;
   struct hlist_head fs_supers ;
   struct lock_class_key s_lock_key ;
   struct lock_class_key s_umount_key ;
   struct lock_class_key s_vfs_rename_key ;
   struct lock_class_key s_writers_key[3U] ;
   struct lock_class_key i_lock_key ;
   struct lock_class_key i_mutex_key ;
   struct lock_class_key i_mutex_dir_key ;
};
struct io_event {
   __u64 data ;
   __u64 obj ;
   __s64 res ;
   __s64 res2 ;
};
typedef unsigned long cputime_t;
struct __anonstruct_sigset_t_179 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_179 sigset_t;
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
struct __anonstruct__kill_181 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_182 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_183 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_184 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_185 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_186 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_187 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_180 {
   int _pad[28U] ;
   struct __anonstruct__kill_181 _kill ;
   struct __anonstruct__timer_182 _timer ;
   struct __anonstruct__rt_183 _rt ;
   struct __anonstruct__sigchld_184 _sigchld ;
   struct __anonstruct__sigfault_185 _sigfault ;
   struct __anonstruct__sigpoll_186 _sigpoll ;
   struct __anonstruct__sigsys_187 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_180 _sifields ;
};
typedef struct siginfo siginfo_t;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
};
struct seccomp_filter;
struct seccomp {
   int mode ;
   struct seccomp_filter *filter ;
};
struct rt_mutex_waiter;
struct rlimit {
   unsigned long rlim_cur ;
   unsigned long rlim_max ;
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
union __anonunion_ldv_27459_190 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_27468_191 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_192 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_193 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_27459_190 ldv_27459 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_27468_191 ldv_27468 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_192 type_data ;
   union __anonunion_payload_193 payload ;
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
struct kioctx;
union __anonunion_ki_obj_194 {
   void *user ;
   struct task_struct *tsk ;
};
struct eventfd_ctx;
struct kiocb {
   struct list_head ki_run_list ;
   unsigned long ki_flags ;
   int ki_users ;
   unsigned int ki_key ;
   struct file *ki_filp ;
   struct kioctx *ki_ctx ;
   int (*ki_cancel)(struct kiocb * , struct io_event * ) ;
   ssize_t (*ki_retry)(struct kiocb * ) ;
   void (*ki_dtor)(struct kiocb * ) ;
   union __anonunion_ki_obj_194 ki_obj ;
   __u64 ki_user_data ;
   loff_t ki_pos ;
   void *private ;
   unsigned short ki_opcode ;
   size_t ki_nbytes ;
   char *ki_buf ;
   size_t ki_left ;
   struct iovec ki_inline_vec ;
   struct iovec *ki_iovec ;
   unsigned long ki_nr_segs ;
   unsigned long ki_cur_seg ;
   struct list_head ki_list ;
   struct list_head ki_batch ;
   struct eventfd_ctx *ki_eventfd ;
};
struct aio_ring_info {
   unsigned long mmap_base ;
   unsigned long mmap_size ;
   struct page **ring_pages ;
   spinlock_t ring_lock ;
   long nr_pages ;
   unsigned int nr ;
   unsigned int tail ;
   struct page *internal_pages[8U] ;
};
struct kioctx {
   atomic_t users ;
   int dead ;
   struct mm_struct *mm ;
   unsigned long user_id ;
   struct hlist_node list ;
   wait_queue_head_t wait ;
   spinlock_t ctx_lock ;
   int reqs_active ;
   struct list_head active_reqs ;
   struct list_head run_list ;
   unsigned int max_reqs ;
   struct aio_ring_info ring_info ;
   struct delayed_work wq ;
   struct callback_head callback_head ;
};
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
struct uts_namespace;
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
typedef s32 compat_time_t;
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_timespec {
   compat_time_t tv_sec ;
   s32 tv_nsec ;
};
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
struct ethhdr {
   unsigned char h_dest[6U] ;
   unsigned char h_source[6U] ;
   __be16 h_proto ;
};
struct ethtool_cmd {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertising ;
   __u16 speed ;
   __u8 duplex ;
   __u8 port ;
   __u8 phy_address ;
   __u8 transceiver ;
   __u8 autoneg ;
   __u8 mdio_support ;
   __u32 maxtxpkt ;
   __u32 maxrxpkt ;
   __u16 speed_hi ;
   __u8 eth_tp_mdix ;
   __u8 eth_tp_mdix_ctrl ;
   __u32 lp_advertising ;
   __u32 reserved[2U] ;
};
struct ethtool_drvinfo {
   __u32 cmd ;
   char driver[32U] ;
   char version[32U] ;
   char fw_version[32U] ;
   char bus_info[32U] ;
   char reserved1[32U] ;
   char reserved2[12U] ;
   __u32 n_priv_flags ;
   __u32 n_stats ;
   __u32 testinfo_len ;
   __u32 eedump_len ;
   __u32 regdump_len ;
};
struct ethtool_wolinfo {
   __u32 cmd ;
   __u32 supported ;
   __u32 wolopts ;
   __u8 sopass[6U] ;
};
struct ethtool_regs {
   __u32 cmd ;
   __u32 version ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eeprom {
   __u32 cmd ;
   __u32 magic ;
   __u32 offset ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_eee {
   __u32 cmd ;
   __u32 supported ;
   __u32 advertised ;
   __u32 lp_advertised ;
   __u32 eee_active ;
   __u32 eee_enabled ;
   __u32 tx_lpi_enabled ;
   __u32 tx_lpi_timer ;
   __u32 reserved[2U] ;
};
struct ethtool_modinfo {
   __u32 cmd ;
   __u32 type ;
   __u32 eeprom_len ;
   __u32 reserved[8U] ;
};
struct ethtool_coalesce {
   __u32 cmd ;
   __u32 rx_coalesce_usecs ;
   __u32 rx_max_coalesced_frames ;
   __u32 rx_coalesce_usecs_irq ;
   __u32 rx_max_coalesced_frames_irq ;
   __u32 tx_coalesce_usecs ;
   __u32 tx_max_coalesced_frames ;
   __u32 tx_coalesce_usecs_irq ;
   __u32 tx_max_coalesced_frames_irq ;
   __u32 stats_block_coalesce_usecs ;
   __u32 use_adaptive_rx_coalesce ;
   __u32 use_adaptive_tx_coalesce ;
   __u32 pkt_rate_low ;
   __u32 rx_coalesce_usecs_low ;
   __u32 rx_max_coalesced_frames_low ;
   __u32 tx_coalesce_usecs_low ;
   __u32 tx_max_coalesced_frames_low ;
   __u32 pkt_rate_high ;
   __u32 rx_coalesce_usecs_high ;
   __u32 rx_max_coalesced_frames_high ;
   __u32 tx_coalesce_usecs_high ;
   __u32 tx_max_coalesced_frames_high ;
   __u32 rate_sample_interval ;
};
struct ethtool_ringparam {
   __u32 cmd ;
   __u32 rx_max_pending ;
   __u32 rx_mini_max_pending ;
   __u32 rx_jumbo_max_pending ;
   __u32 tx_max_pending ;
   __u32 rx_pending ;
   __u32 rx_mini_pending ;
   __u32 rx_jumbo_pending ;
   __u32 tx_pending ;
};
struct ethtool_channels {
   __u32 cmd ;
   __u32 max_rx ;
   __u32 max_tx ;
   __u32 max_other ;
   __u32 max_combined ;
   __u32 rx_count ;
   __u32 tx_count ;
   __u32 other_count ;
   __u32 combined_count ;
};
struct ethtool_pauseparam {
   __u32 cmd ;
   __u32 autoneg ;
   __u32 rx_pause ;
   __u32 tx_pause ;
};
struct ethtool_test {
   __u32 cmd ;
   __u32 flags ;
   __u32 reserved ;
   __u32 len ;
   __u64 data[0U] ;
};
struct ethtool_stats {
   __u32 cmd ;
   __u32 n_stats ;
   __u64 data[0U] ;
};
struct ethtool_tcpip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be16 psrc ;
   __be16 pdst ;
   __u8 tos ;
};
struct ethtool_ah_espip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 spi ;
   __u8 tos ;
};
struct ethtool_usrip4_spec {
   __be32 ip4src ;
   __be32 ip4dst ;
   __be32 l4_4_bytes ;
   __u8 tos ;
   __u8 ip_ver ;
   __u8 proto ;
};
union ethtool_flow_union {
   struct ethtool_tcpip4_spec tcp_ip4_spec ;
   struct ethtool_tcpip4_spec udp_ip4_spec ;
   struct ethtool_tcpip4_spec sctp_ip4_spec ;
   struct ethtool_ah_espip4_spec ah_ip4_spec ;
   struct ethtool_ah_espip4_spec esp_ip4_spec ;
   struct ethtool_usrip4_spec usr_ip4_spec ;
   struct ethhdr ether_spec ;
   __u8 hdata[52U] ;
};
struct ethtool_flow_ext {
   __u8 padding[2U] ;
   unsigned char h_dest[6U] ;
   __be16 vlan_etype ;
   __be16 vlan_tci ;
   __be32 data[2U] ;
};
struct ethtool_rx_flow_spec {
   __u32 flow_type ;
   union ethtool_flow_union h_u ;
   struct ethtool_flow_ext h_ext ;
   union ethtool_flow_union m_u ;
   struct ethtool_flow_ext m_ext ;
   __u64 ring_cookie ;
   __u32 location ;
};
struct ethtool_rxnfc {
   __u32 cmd ;
   __u32 flow_type ;
   __u64 data ;
   struct ethtool_rx_flow_spec fs ;
   __u32 rule_cnt ;
   __u32 rule_locs[0U] ;
};
struct ethtool_flash {
   __u32 cmd ;
   __u32 region ;
   char data[128U] ;
};
struct ethtool_dump {
   __u32 cmd ;
   __u32 version ;
   __u32 flag ;
   __u32 len ;
   __u8 data[0U] ;
};
struct ethtool_ts_info {
   __u32 cmd ;
   __u32 so_timestamping ;
   __s32 phc_index ;
   __u32 tx_types ;
   __u32 tx_reserved[3U] ;
   __u32 rx_filters ;
   __u32 rx_reserved[3U] ;
};
enum ethtool_phys_id_state {
    ETHTOOL_ID_INACTIVE = 0,
    ETHTOOL_ID_ACTIVE = 1,
    ETHTOOL_ID_ON = 2,
    ETHTOOL_ID_OFF = 3
} ;
struct ethtool_ops {
   int (*get_settings)(struct net_device * , struct ethtool_cmd * ) ;
   int (*set_settings)(struct net_device * , struct ethtool_cmd * ) ;
   void (*get_drvinfo)(struct net_device * , struct ethtool_drvinfo * ) ;
   int (*get_regs_len)(struct net_device * ) ;
   void (*get_regs)(struct net_device * , struct ethtool_regs * , void * ) ;
   void (*get_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   int (*set_wol)(struct net_device * , struct ethtool_wolinfo * ) ;
   u32 (*get_msglevel)(struct net_device * ) ;
   void (*set_msglevel)(struct net_device * , u32 ) ;
   int (*nway_reset)(struct net_device * ) ;
   u32 (*get_link)(struct net_device * ) ;
   int (*get_eeprom_len)(struct net_device * ) ;
   int (*get_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*set_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   int (*set_coalesce)(struct net_device * , struct ethtool_coalesce * ) ;
   void (*get_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   int (*set_ringparam)(struct net_device * , struct ethtool_ringparam * ) ;
   void (*get_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   int (*set_pauseparam)(struct net_device * , struct ethtool_pauseparam * ) ;
   void (*self_test)(struct net_device * , struct ethtool_test * , u64 * ) ;
   void (*get_strings)(struct net_device * , u32 , u8 * ) ;
   int (*set_phys_id)(struct net_device * , enum ethtool_phys_id_state ) ;
   void (*get_ethtool_stats)(struct net_device * , struct ethtool_stats * , u64 * ) ;
   int (*begin)(struct net_device * ) ;
   void (*complete)(struct net_device * ) ;
   u32 (*get_priv_flags)(struct net_device * ) ;
   int (*set_priv_flags)(struct net_device * , u32 ) ;
   int (*get_sset_count)(struct net_device * , int ) ;
   int (*get_rxnfc)(struct net_device * , struct ethtool_rxnfc * , u32 * ) ;
   int (*set_rxnfc)(struct net_device * , struct ethtool_rxnfc * ) ;
   int (*flash_device)(struct net_device * , struct ethtool_flash * ) ;
   int (*reset)(struct net_device * , u32 * ) ;
   u32 (*get_rxfh_indir_size)(struct net_device * ) ;
   int (*get_rxfh_indir)(struct net_device * , u32 * ) ;
   int (*set_rxfh_indir)(struct net_device * , u32 const * ) ;
   void (*get_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*set_channels)(struct net_device * , struct ethtool_channels * ) ;
   int (*get_dump_flag)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_dump_data)(struct net_device * , struct ethtool_dump * , void * ) ;
   int (*set_dump)(struct net_device * , struct ethtool_dump * ) ;
   int (*get_ts_info)(struct net_device * , struct ethtool_ts_info * ) ;
   int (*get_module_info)(struct net_device * , struct ethtool_modinfo * ) ;
   int (*get_module_eeprom)(struct net_device * , struct ethtool_eeprom * , u8 * ) ;
   int (*get_eee)(struct net_device * , struct ethtool_eee * ) ;
   int (*set_eee)(struct net_device * , struct ethtool_eee * ) ;
};
struct prot_inuse;
struct netns_core {
   struct ctl_table_header *sysctl_hdr ;
   int sysctl_somaxconn ;
   struct prot_inuse *inuse ;
};
struct u64_stats_sync {
};
struct ipstats_mib {
   u64 mibs[31U] ;
   struct u64_stats_sync syncp ;
};
struct icmp_mib {
   unsigned long mibs[27U] ;
};
struct icmpmsg_mib {
   atomic_long_t mibs[512U] ;
};
struct icmpv6_mib {
   unsigned long mibs[5U] ;
};
struct icmpv6msg_mib {
   atomic_long_t mibs[512U] ;
};
struct tcp_mib {
   unsigned long mibs[15U] ;
};
struct udp_mib {
   unsigned long mibs[7U] ;
};
struct linux_mib {
   unsigned long mibs[92U] ;
};
struct linux_xfrm_mib {
   unsigned long mibs[27U] ;
};
struct netns_mib {
   struct tcp_mib *tcp_statistics[1U] ;
   struct ipstats_mib *ip_statistics[1U] ;
   struct linux_mib *net_statistics[1U] ;
   struct udp_mib *udp_statistics[1U] ;
   struct udp_mib *udplite_statistics[1U] ;
   struct icmp_mib *icmp_statistics[1U] ;
   struct icmpmsg_mib *icmpmsg_statistics ;
   struct proc_dir_entry *proc_net_devsnmp6 ;
   struct udp_mib *udp_stats_in6[1U] ;
   struct udp_mib *udplite_stats_in6[1U] ;
   struct ipstats_mib *ipv6_statistics[1U] ;
   struct icmpv6_mib *icmpv6_statistics[1U] ;
   struct icmpv6msg_mib *icmpv6msg_statistics ;
   struct linux_xfrm_mib *xfrm_statistics[1U] ;
};
struct netns_unix {
   int sysctl_max_dgram_qlen ;
   struct ctl_table_header *ctl ;
};
struct netns_packet {
   struct mutex sklist_lock ;
   struct hlist_head sklist ;
};
struct netns_frags {
   int nqueues ;
   atomic_t mem ;
   struct list_head lru_list ;
   int timeout ;
   int high_thresh ;
   int low_thresh ;
};
struct tcpm_hash_bucket;
struct ipv4_devconf;
struct fib_rules_ops;
struct fib_table;
struct inet_peer_base;
struct xt_table;
struct netns_ipv4 {
   struct ctl_table_header *forw_hdr ;
   struct ctl_table_header *frags_hdr ;
   struct ctl_table_header *ipv4_hdr ;
   struct ctl_table_header *route_hdr ;
   struct ipv4_devconf *devconf_all ;
   struct ipv4_devconf *devconf_dflt ;
   struct fib_rules_ops *rules_ops ;
   bool fib_has_custom_rules ;
   struct fib_table *fib_local ;
   struct fib_table *fib_main ;
   struct fib_table *fib_default ;
   int fib_num_tclassid_users ;
   struct hlist_head *fib_table_hash ;
   struct sock *fibnl ;
   struct sock **icmp_sk ;
   struct inet_peer_base *peers ;
   struct tcpm_hash_bucket *tcp_metrics_hash ;
   unsigned int tcp_metrics_hash_log ;
   struct netns_frags frags ;
   struct xt_table *iptable_filter ;
   struct xt_table *iptable_mangle ;
   struct xt_table *iptable_raw ;
   struct xt_table *arptable_filter ;
   struct xt_table *iptable_security ;
   struct xt_table *nat_table ;
   int sysctl_icmp_echo_ignore_all ;
   int sysctl_icmp_echo_ignore_broadcasts ;
   int sysctl_icmp_ignore_bogus_error_responses ;
   int sysctl_icmp_ratelimit ;
   int sysctl_icmp_ratemask ;
   int sysctl_icmp_errors_use_inbound_ifaddr ;
   kgid_t sysctl_ping_group_range[2U] ;
   long sysctl_tcp_mem[3U] ;
   atomic_t dev_addr_genid ;
   struct list_head mr_tables ;
   struct fib_rules_ops *mr_rules_ops ;
};
struct neighbour;
struct dst_ops {
   unsigned short family ;
   __be16 protocol ;
   unsigned int gc_thresh ;
   int (*gc)(struct dst_ops * ) ;
   struct dst_entry *(*check)(struct dst_entry * , __u32 ) ;
   unsigned int (*default_advmss)(struct dst_entry const * ) ;
   unsigned int (*mtu)(struct dst_entry const * ) ;
   u32 *(*cow_metrics)(struct dst_entry * , unsigned long ) ;
   void (*destroy)(struct dst_entry * ) ;
   void (*ifdown)(struct dst_entry * , struct net_device * , int ) ;
   struct dst_entry *(*negative_advice)(struct dst_entry * ) ;
   void (*link_failure)(struct sk_buff * ) ;
   void (*update_pmtu)(struct dst_entry * , struct sock * , struct sk_buff * , u32 ) ;
   void (*redirect)(struct dst_entry * , struct sock * , struct sk_buff * ) ;
   int (*local_out)(struct sk_buff * ) ;
   struct neighbour *(*neigh_lookup)(struct dst_entry const * , struct sk_buff * ,
                                     void const * ) ;
   struct kmem_cache *kmem_cachep ;
   struct percpu_counter pcpuc_entries ;
};
struct netns_sysctl_ipv6 {
   struct ctl_table_header *hdr ;
   struct ctl_table_header *route_hdr ;
   struct ctl_table_header *icmp_hdr ;
   struct ctl_table_header *frags_hdr ;
   int bindv6only ;
   int flush_delay ;
   int ip6_rt_max_size ;
   int ip6_rt_gc_min_interval ;
   int ip6_rt_gc_timeout ;
   int ip6_rt_gc_interval ;
   int ip6_rt_gc_elasticity ;
   int ip6_rt_mtu_expires ;
   int ip6_rt_min_advmss ;
   int icmpv6_time ;
};
struct ipv6_devconf;
struct rt6_info;
struct rt6_statistics;
struct fib6_table;
struct netns_ipv6 {
   struct netns_sysctl_ipv6 sysctl ;
   struct ipv6_devconf *devconf_all ;
   struct ipv6_devconf *devconf_dflt ;
   struct inet_peer_base *peers ;
   struct netns_frags frags ;
   struct xt_table *ip6table_filter ;
   struct xt_table *ip6table_mangle ;
   struct xt_table *ip6table_raw ;
   struct xt_table *ip6table_security ;
   struct xt_table *ip6table_nat ;
   struct rt6_info *ip6_null_entry ;
   struct rt6_statistics *rt6_stats ;
   struct timer_list ip6_fib_timer ;
   struct hlist_head *fib_table_hash ;
   struct fib6_table *fib6_main_tbl ;
   struct dst_ops ip6_dst_ops ;
   unsigned int ip6_rt_gc_expire ;
   unsigned long ip6_rt_last_gc ;
   struct rt6_info *ip6_prohibit_entry ;
   struct rt6_info *ip6_blk_hole_entry ;
   struct fib6_table *fib6_local_tbl ;
   struct fib_rules_ops *fib6_rules_ops ;
   struct sock **icmp_sk ;
   struct sock *ndisc_sk ;
   struct sock *tcp_sk ;
   struct sock *igmp_sk ;
   struct list_head mr6_tables ;
   struct fib_rules_ops *mr6_rules_ops ;
};
struct netns_nf_frag {
   struct netns_sysctl_ipv6 sysctl ;
   struct netns_frags frags ;
};
struct sctp_mib;
struct netns_sctp {
   struct sctp_mib *sctp_statistics[1U] ;
   struct proc_dir_entry *proc_net_sctp ;
   struct ctl_table_header *sysctl_header ;
   struct sock *ctl_sock ;
   struct list_head local_addr_list ;
   struct list_head addr_waitq ;
   struct timer_list addr_wq_timer ;
   struct list_head auto_asconf_splist ;
   spinlock_t addr_wq_lock ;
   spinlock_t local_addr_lock ;
   unsigned int rto_initial ;
   unsigned int rto_min ;
   unsigned int rto_max ;
   int rto_alpha ;
   int rto_beta ;
   int max_burst ;
   int cookie_preserve_enable ;
   char *sctp_hmac_alg ;
   unsigned int valid_cookie_life ;
   unsigned int sack_timeout ;
   unsigned int hb_interval ;
   int max_retrans_association ;
   int max_retrans_path ;
   int max_retrans_init ;
   int pf_retrans ;
   int sndbuf_policy ;
   int rcvbuf_policy ;
   int default_auto_asconf ;
   int addip_enable ;
   int addip_noauth ;
   int prsctp_enable ;
   int auth_enable ;
   int scope_policy ;
   int rwnd_upd_shift ;
   unsigned long max_autoclose ;
};
struct netns_dccp {
   struct sock *v4_ctl_sk ;
   struct sock *v6_ctl_sk ;
};
struct in_addr {
   __be32 s_addr ;
};
struct sockaddr_in {
   __kernel_sa_family_t sin_family ;
   __be16 sin_port ;
   struct in_addr sin_addr ;
   unsigned char __pad[8U] ;
};
typedef int read_proc_t(char * , char ** , off_t , int , int * , void * );
typedef int write_proc_t(struct file * , char const * , unsigned long , void * );
struct proc_dir_entry {
   unsigned int low_ino ;
   umode_t mode ;
   nlink_t nlink ;
   kuid_t uid ;
   kgid_t gid ;
   loff_t size ;
   struct inode_operations const *proc_iops ;
   struct file_operations const *proc_fops ;
   struct proc_dir_entry *next ;
   struct proc_dir_entry *parent ;
   struct proc_dir_entry *subdir ;
   void *data ;
   read_proc_t *read_proc ;
   write_proc_t *write_proc ;
   atomic_t count ;
   int pde_users ;
   struct completion *pde_unload_completion ;
   struct list_head pde_openers ;
   spinlock_t pde_unload_lock ;
   u8 namelen ;
   char name[] ;
};
struct nlattr;
struct ebt_table;
struct netns_xt {
   struct list_head tables[13U] ;
   struct ebt_table *broute_table ;
   struct ebt_table *frame_filter ;
   struct ebt_table *frame_nat ;
};
struct nf_proto_net {
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
   struct ctl_table_header *ctl_compat_header ;
   struct ctl_table *ctl_compat_table ;
   unsigned int users ;
};
struct nf_generic_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_tcp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[14U] ;
   unsigned int tcp_loose ;
   unsigned int tcp_be_liberal ;
   unsigned int tcp_max_retrans ;
};
struct nf_udp_net {
   struct nf_proto_net pn ;
   unsigned int timeouts[2U] ;
};
struct nf_icmp_net {
   struct nf_proto_net pn ;
   unsigned int timeout ;
};
struct nf_ip_net {
   struct nf_generic_net generic ;
   struct nf_tcp_net tcp ;
   struct nf_udp_net udp ;
   struct nf_icmp_net icmp ;
   struct nf_icmp_net icmpv6 ;
   struct ctl_table_header *ctl_table_header ;
   struct ctl_table *ctl_table ;
};
struct ip_conntrack_stat;
struct nf_ct_event_notifier;
struct nf_exp_event_notifier;
struct netns_ct {
   atomic_t count ;
   unsigned int expect_count ;
   unsigned int htable_size ;
   struct kmem_cache *nf_conntrack_cachep ;
   struct hlist_nulls_head *hash ;
   struct hlist_head *expect_hash ;
   struct hlist_nulls_head unconfirmed ;
   struct hlist_nulls_head dying ;
   struct ip_conntrack_stat *stat ;
   struct nf_ct_event_notifier *nf_conntrack_event_cb ;
   struct nf_exp_event_notifier *nf_expect_event_cb ;
   int sysctl_events ;
   unsigned int sysctl_events_retry_timeout ;
   int sysctl_acct ;
   int sysctl_tstamp ;
   int sysctl_checksum ;
   unsigned int sysctl_log_invalid ;
   int sysctl_auto_assign_helper ;
   bool auto_assign_helper_warned ;
   struct nf_ip_net nf_ct_proto ;
   struct hlist_head *nat_bysource ;
   unsigned int nat_htable_size ;
   struct ctl_table_header *sysctl_header ;
   struct ctl_table_header *acct_sysctl_header ;
   struct ctl_table_header *tstamp_sysctl_header ;
   struct ctl_table_header *event_sysctl_header ;
   struct ctl_table_header *helper_sysctl_header ;
   char *slabname ;
};
struct xfrm_policy_hash {
   struct hlist_head *table ;
   unsigned int hmask ;
};
struct netns_xfrm {
   struct list_head state_all ;
   struct hlist_head *state_bydst ;
   struct hlist_head *state_bysrc ;
   struct hlist_head *state_byspi ;
   unsigned int state_hmask ;
   unsigned int state_num ;
   struct work_struct state_hash_work ;
   struct hlist_head state_gc_list ;
   struct work_struct state_gc_work ;
   wait_queue_head_t km_waitq ;
   struct list_head policy_all ;
   struct hlist_head *policy_byidx ;
   unsigned int policy_idx_hmask ;
   struct hlist_head policy_inexact[6U] ;
   struct xfrm_policy_hash policy_bydst[6U] ;
   unsigned int policy_count[6U] ;
   struct work_struct policy_hash_work ;
   struct sock *nlsk ;
   struct sock *nlsk_stash ;
   u32 sysctl_aevent_etime ;
   u32 sysctl_aevent_rseqth ;
   int sysctl_larval_drop ;
   u32 sysctl_acq_expires ;
   struct ctl_table_header *sysctl_hdr ;
   struct dst_ops xfrm4_dst_ops ;
   struct dst_ops xfrm6_dst_ops ;
};
struct net_generic;
struct netns_ipvs;
struct net {
   atomic_t passive ;
   atomic_t count ;
   spinlock_t rules_mod_lock ;
   struct list_head list ;
   struct list_head cleanup_list ;
   struct list_head exit_list ;
   struct user_namespace *user_ns ;
   unsigned int proc_inum ;
   struct proc_dir_entry *proc_net ;
   struct proc_dir_entry *proc_net_stat ;
   struct ctl_table_set sysctls ;
   struct sock *rtnl ;
   struct sock *genl_sock ;
   struct list_head dev_base_head ;
   struct hlist_head *dev_name_head ;
   struct hlist_head *dev_index_head ;
   unsigned int dev_base_seq ;
   int ifindex ;
   struct list_head rules_ops ;
   struct net_device *loopback_dev ;
   struct netns_core core ;
   struct netns_mib mib ;
   struct netns_packet packet ;
   struct netns_unix unx ;
   struct netns_ipv4 ipv4 ;
   struct netns_ipv6 ipv6 ;
   struct netns_sctp sctp ;
   struct netns_dccp dccp ;
   struct netns_xt xt ;
   struct netns_ct ct ;
   struct netns_nf_frag nf_frag ;
   struct sock *nfnl ;
   struct sock *nfnl_stash ;
   struct sk_buff_head wext_nlevents ;
   struct net_generic *gen ;
   struct netns_xfrm xfrm ;
   struct netns_ipvs *ipvs ;
   struct sock *diag_nlsk ;
   atomic_t rt_genid ;
};
struct seq_file {
   char *buf ;
   size_t size ;
   size_t from ;
   size_t count ;
   loff_t index ;
   loff_t read_pos ;
   u64 version ;
   struct mutex lock ;
   struct seq_operations const *op ;
   int poll_event ;
   void *private ;
};
struct seq_operations {
   void *(*start)(struct seq_file * , loff_t * ) ;
   void (*stop)(struct seq_file * , void * ) ;
   void *(*next)(struct seq_file * , void * , loff_t * ) ;
   int (*show)(struct seq_file * , void * ) ;
};
struct dsa_chip_data {
   struct device *mii_bus ;
   int sw_addr ;
   char *port_names[12U] ;
   s8 *rtable ;
};
struct dsa_platform_data {
   struct device *netdev ;
   int nr_chips ;
   struct dsa_chip_data *chip ;
};
struct dsa_switch;
struct dsa_switch_tree {
   struct dsa_platform_data *pd ;
   struct net_device *master_netdev ;
   __be16 tag_protocol ;
   s8 cpu_switch ;
   s8 cpu_port ;
   int link_poll_needed ;
   struct work_struct link_poll_work ;
   struct timer_list link_poll_timer ;
   struct dsa_switch *ds[4U] ;
};
struct dsa_switch_driver;
struct mii_bus;
struct dsa_switch {
   struct dsa_switch_tree *dst ;
   int index ;
   struct dsa_chip_data *pd ;
   struct dsa_switch_driver *drv ;
   struct mii_bus *master_mii_bus ;
   u32 dsa_port_mask ;
   u32 phys_port_mask ;
   struct mii_bus *slave_mii_bus ;
   struct net_device *ports[12U] ;
};
struct dsa_switch_driver {
   struct list_head list ;
   __be16 tag_protocol ;
   int priv_size ;
   char *(*probe)(struct mii_bus * , int ) ;
   int (*setup)(struct dsa_switch * ) ;
   int (*set_addr)(struct dsa_switch * , u8 * ) ;
   int (*phy_read)(struct dsa_switch * , int , int ) ;
   int (*phy_write)(struct dsa_switch * , int , int , u16 ) ;
   void (*poll_link)(struct dsa_switch * ) ;
   void (*get_strings)(struct dsa_switch * , int , uint8_t * ) ;
   void (*get_ethtool_stats)(struct dsa_switch * , int , uint64_t * ) ;
   int (*get_sset_count)(struct dsa_switch * ) ;
};
struct ieee_ets {
   __u8 willing ;
   __u8 ets_cap ;
   __u8 cbs ;
   __u8 tc_tx_bw[8U] ;
   __u8 tc_rx_bw[8U] ;
   __u8 tc_tsa[8U] ;
   __u8 prio_tc[8U] ;
   __u8 tc_reco_bw[8U] ;
   __u8 tc_reco_tsa[8U] ;
   __u8 reco_prio_tc[8U] ;
};
struct ieee_maxrate {
   __u64 tc_maxrate[8U] ;
};
struct ieee_pfc {
   __u8 pfc_cap ;
   __u8 pfc_en ;
   __u8 mbc ;
   __u16 delay ;
   __u64 requests[8U] ;
   __u64 indications[8U] ;
};
struct cee_pg {
   __u8 willing ;
   __u8 error ;
   __u8 pg_en ;
   __u8 tcs_supported ;
   __u8 pg_bw[8U] ;
   __u8 prio_pg[8U] ;
};
struct cee_pfc {
   __u8 willing ;
   __u8 error ;
   __u8 pfc_en ;
   __u8 tcs_supported ;
};
struct dcb_app {
   __u8 selector ;
   __u8 priority ;
   __u16 protocol ;
};
struct dcb_peer_app_info {
   __u8 willing ;
   __u8 error ;
};
struct dcbnl_rtnl_ops {
   int (*ieee_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_setets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_getmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_setmaxrate)(struct net_device * , struct ieee_maxrate * ) ;
   int (*ieee_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_setpfc)(struct net_device * , struct ieee_pfc * ) ;
   int (*ieee_getapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_setapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_delapp)(struct net_device * , struct dcb_app * ) ;
   int (*ieee_peer_getets)(struct net_device * , struct ieee_ets * ) ;
   int (*ieee_peer_getpfc)(struct net_device * , struct ieee_pfc * ) ;
   u8 (*getstate)(struct net_device * ) ;
   u8 (*setstate)(struct net_device * , u8 ) ;
   void (*getpermhwaddr)(struct net_device * , u8 * ) ;
   void (*setpgtccfgtx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgtx)(struct net_device * , int , u8 ) ;
   void (*setpgtccfgrx)(struct net_device * , int , u8 , u8 , u8 , u8 ) ;
   void (*setpgbwgcfgrx)(struct net_device * , int , u8 ) ;
   void (*getpgtccfgtx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgtx)(struct net_device * , int , u8 * ) ;
   void (*getpgtccfgrx)(struct net_device * , int , u8 * , u8 * , u8 * , u8 * ) ;
   void (*getpgbwgcfgrx)(struct net_device * , int , u8 * ) ;
   void (*setpfccfg)(struct net_device * , int , u8 ) ;
   void (*getpfccfg)(struct net_device * , int , u8 * ) ;
   u8 (*setall)(struct net_device * ) ;
   u8 (*getcap)(struct net_device * , int , u8 * ) ;
   int (*getnumtcs)(struct net_device * , int , u8 * ) ;
   int (*setnumtcs)(struct net_device * , int , u8 ) ;
   u8 (*getpfcstate)(struct net_device * ) ;
   void (*setpfcstate)(struct net_device * , u8 ) ;
   void (*getbcncfg)(struct net_device * , int , u32 * ) ;
   void (*setbcncfg)(struct net_device * , int , u32 ) ;
   void (*getbcnrp)(struct net_device * , int , u8 * ) ;
   void (*setbcnrp)(struct net_device * , int , u8 ) ;
   u8 (*setapp)(struct net_device * , u8 , u16 , u8 ) ;
   u8 (*getapp)(struct net_device * , u8 , u16 ) ;
   u8 (*getfeatcfg)(struct net_device * , int , u8 * ) ;
   u8 (*setfeatcfg)(struct net_device * , int , u8 ) ;
   u8 (*getdcbx)(struct net_device * ) ;
   u8 (*setdcbx)(struct net_device * , u8 ) ;
   int (*peer_getappinfo)(struct net_device * , struct dcb_peer_app_info * , u16 * ) ;
   int (*peer_getapptable)(struct net_device * , struct dcb_app * ) ;
   int (*cee_peer_getpg)(struct net_device * , struct cee_pg * ) ;
   int (*cee_peer_getpfc)(struct net_device * , struct cee_pfc * ) ;
};
struct taskstats {
   __u16 version ;
   __u32 ac_exitcode ;
   __u8 ac_flag ;
   __u8 ac_nice ;
   __u64 cpu_count ;
   __u64 cpu_delay_total ;
   __u64 blkio_count ;
   __u64 blkio_delay_total ;
   __u64 swapin_count ;
   __u64 swapin_delay_total ;
   __u64 cpu_run_real_total ;
   __u64 cpu_run_virtual_total ;
   char ac_comm[32U] ;
   __u8 ac_sched ;
   __u8 ac_pad[3U] ;
   __u32 ac_uid ;
   __u32 ac_gid ;
   __u32 ac_pid ;
   __u32 ac_ppid ;
   __u32 ac_btime ;
   __u64 ac_etime ;
   __u64 ac_utime ;
   __u64 ac_stime ;
   __u64 ac_minflt ;
   __u64 ac_majflt ;
   __u64 coremem ;
   __u64 virtmem ;
   __u64 hiwater_rss ;
   __u64 hiwater_vm ;
   __u64 read_char ;
   __u64 write_char ;
   __u64 read_syscalls ;
   __u64 write_syscalls ;
   __u64 read_bytes ;
   __u64 write_bytes ;
   __u64 cancelled_write_bytes ;
   __u64 nvcsw ;
   __u64 nivcsw ;
   __u64 ac_utimescaled ;
   __u64 ac_stimescaled ;
   __u64 cpu_scaled_run_real_total ;
   __u64 freepages_count ;
   __u64 freepages_delay_total ;
};
struct idr_layer {
   unsigned long bitmap ;
   struct idr_layer *ary[64U] ;
   int count ;
   int layer ;
   struct callback_head callback_head ;
};
struct idr {
   struct idr_layer *top ;
   struct idr_layer *id_free ;
   int layers ;
   int id_free_cnt ;
   spinlock_t lock ;
};
struct xattr_handler {
   char const *prefix ;
   int flags ;
   size_t (*list)(struct dentry * , char * , size_t , char const * , size_t ,
                  int ) ;
   int (*get)(struct dentry * , char const * , void * , size_t , int ) ;
   int (*set)(struct dentry * , char const * , void const * , size_t , int ,
              int ) ;
};
struct simple_xattrs {
   struct list_head head ;
   spinlock_t lock ;
};
struct cgroupfs_root;
struct cgroup_subsys;
struct cgroup;
struct css_id;
struct cgroup_subsys_state {
   struct cgroup *cgroup ;
   atomic_t refcnt ;
   unsigned long flags ;
   struct css_id *id ;
   struct work_struct dput_work ;
};
struct cgroup {
   unsigned long flags ;
   atomic_t count ;
   int id ;
   struct list_head sibling ;
   struct list_head children ;
   struct list_head files ;
   struct cgroup *parent ;
   struct dentry *dentry ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct cgroupfs_root *root ;
   struct cgroup *top_cgroup ;
   struct list_head css_sets ;
   struct list_head allcg_node ;
   struct list_head cft_q_node ;
   struct list_head release_list ;
   struct list_head pidlists ;
   struct mutex pidlist_mutex ;
   struct callback_head callback_head ;
   struct list_head event_list ;
   spinlock_t event_list_lock ;
   struct simple_xattrs xattrs ;
};
struct css_set {
   atomic_t refcount ;
   struct hlist_node hlist ;
   struct list_head tasks ;
   struct list_head cg_links ;
   struct cgroup_subsys_state *subsys[12U] ;
   struct callback_head callback_head ;
};
struct cgroup_map_cb {
   int (*fill)(struct cgroup_map_cb * , char const * , u64 ) ;
   void *state ;
};
struct cftype {
   char name[64U] ;
   int private ;
   umode_t mode ;
   size_t max_write_len ;
   unsigned int flags ;
   struct simple_xattrs xattrs ;
   int (*open)(struct inode * , struct file * ) ;
   ssize_t (*read)(struct cgroup * , struct cftype * , struct file * , char * , size_t ,
                   loff_t * ) ;
   u64 (*read_u64)(struct cgroup * , struct cftype * ) ;
   s64 (*read_s64)(struct cgroup * , struct cftype * ) ;
   int (*read_map)(struct cgroup * , struct cftype * , struct cgroup_map_cb * ) ;
   int (*read_seq_string)(struct cgroup * , struct cftype * , struct seq_file * ) ;
   ssize_t (*write)(struct cgroup * , struct cftype * , struct file * , char const * ,
                    size_t , loff_t * ) ;
   int (*write_u64)(struct cgroup * , struct cftype * , u64 ) ;
   int (*write_s64)(struct cgroup * , struct cftype * , s64 ) ;
   int (*write_string)(struct cgroup * , struct cftype * , char const * ) ;
   int (*trigger)(struct cgroup * , unsigned int ) ;
   int (*release)(struct inode * , struct file * ) ;
   int (*register_event)(struct cgroup * , struct cftype * , struct eventfd_ctx * ,
                         char const * ) ;
   void (*unregister_event)(struct cgroup * , struct cftype * , struct eventfd_ctx * ) ;
};
struct cftype_set {
   struct list_head node ;
   struct cftype *cfts ;
};
struct cgroup_taskset;
struct cgroup_subsys {
   struct cgroup_subsys_state *(*css_alloc)(struct cgroup * ) ;
   int (*css_online)(struct cgroup * ) ;
   void (*css_offline)(struct cgroup * ) ;
   void (*css_free)(struct cgroup * ) ;
   int (*can_attach)(struct cgroup * , struct cgroup_taskset * ) ;
   void (*cancel_attach)(struct cgroup * , struct cgroup_taskset * ) ;
   void (*attach)(struct cgroup * , struct cgroup_taskset * ) ;
   void (*fork)(struct task_struct * ) ;
   void (*exit)(struct cgroup * , struct cgroup * , struct task_struct * ) ;
   void (*bind)(struct cgroup * ) ;
   int subsys_id ;
   int active ;
   int disabled ;
   int early_init ;
   bool use_id ;
   bool broken_hierarchy ;
   bool warned_broken_hierarchy ;
   char const *name ;
   struct cgroupfs_root *root ;
   struct list_head sibling ;
   struct idr idr ;
   spinlock_t id_lock ;
   struct list_head cftsets ;
   struct cftype *base_cftypes ;
   struct cftype_set base_cftset ;
   struct module *module ;
};
struct netprio_map {
   struct callback_head rcu ;
   u32 priomap_len ;
   u32 priomap[] ;
};
struct xfrm_policy;
struct xfrm_state;
struct mnt_namespace;
struct ipc_namespace;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns ;
   struct net *net_ns ;
};
struct nlmsghdr {
   __u32 nlmsg_len ;
   __u16 nlmsg_type ;
   __u16 nlmsg_flags ;
   __u32 nlmsg_seq ;
   __u32 nlmsg_pid ;
};
struct nlattr {
   __u16 nla_len ;
   __u16 nla_type ;
};
struct netlink_callback {
   struct sk_buff *skb ;
   struct nlmsghdr const *nlh ;
   int (*dump)(struct sk_buff * , struct netlink_callback * ) ;
   int (*done)(struct netlink_callback * ) ;
   void *data ;
   struct module *module ;
   u16 family ;
   u16 min_dump_alloc ;
   unsigned int prev_seq ;
   unsigned int seq ;
   long args[6U] ;
};
struct ndmsg {
   __u8 ndm_family ;
   __u8 ndm_pad1 ;
   __u16 ndm_pad2 ;
   __s32 ndm_ifindex ;
   __u16 ndm_state ;
   __u8 ndm_flags ;
   __u8 ndm_type ;
};
struct rtnl_link_stats64 {
   __u64 rx_packets ;
   __u64 tx_packets ;
   __u64 rx_bytes ;
   __u64 tx_bytes ;
   __u64 rx_errors ;
   __u64 tx_errors ;
   __u64 rx_dropped ;
   __u64 tx_dropped ;
   __u64 multicast ;
   __u64 collisions ;
   __u64 rx_length_errors ;
   __u64 rx_over_errors ;
   __u64 rx_crc_errors ;
   __u64 rx_frame_errors ;
   __u64 rx_fifo_errors ;
   __u64 rx_missed_errors ;
   __u64 tx_aborted_errors ;
   __u64 tx_carrier_errors ;
   __u64 tx_fifo_errors ;
   __u64 tx_heartbeat_errors ;
   __u64 tx_window_errors ;
   __u64 rx_compressed ;
   __u64 tx_compressed ;
};
struct ifla_vf_info {
   __u32 vf ;
   __u8 mac[32U] ;
   __u32 vlan ;
   __u32 qos ;
   __u32 tx_rate ;
   __u32 spoofchk ;
};
struct netpoll_info;
struct phy_device;
struct wireless_dev;
enum netdev_tx {
    __NETDEV_TX_MIN = (-0x7FFFFFFF-1),
    NETDEV_TX_OK = 0,
    NETDEV_TX_BUSY = 16,
    NETDEV_TX_LOCKED = 32
} ;
typedef enum netdev_tx netdev_tx_t;
struct net_device_stats {
   unsigned long rx_packets ;
   unsigned long tx_packets ;
   unsigned long rx_bytes ;
   unsigned long tx_bytes ;
   unsigned long rx_errors ;
   unsigned long tx_errors ;
   unsigned long rx_dropped ;
   unsigned long tx_dropped ;
   unsigned long multicast ;
   unsigned long collisions ;
   unsigned long rx_length_errors ;
   unsigned long rx_over_errors ;
   unsigned long rx_crc_errors ;
   unsigned long rx_frame_errors ;
   unsigned long rx_fifo_errors ;
   unsigned long rx_missed_errors ;
   unsigned long tx_aborted_errors ;
   unsigned long tx_carrier_errors ;
   unsigned long tx_fifo_errors ;
   unsigned long tx_heartbeat_errors ;
   unsigned long tx_window_errors ;
   unsigned long rx_compressed ;
   unsigned long tx_compressed ;
};
struct neigh_parms;
struct netdev_hw_addr_list {
   struct list_head list ;
   int count ;
};
struct hh_cache {
   u16 hh_len ;
   u16 __pad ;
   seqlock_t hh_lock ;
   unsigned long hh_data[16U] ;
};
struct header_ops {
   int (*create)(struct sk_buff * , struct net_device * , unsigned short , void const * ,
                 void const * , unsigned int ) ;
   int (*parse)(struct sk_buff const * , unsigned char * ) ;
   int (*rebuild)(struct sk_buff * ) ;
   int (*cache)(struct neighbour const * , struct hh_cache * , __be16 ) ;
   void (*cache_update)(struct hh_cache * , struct net_device const * , unsigned char const * ) ;
};
enum rx_handler_result {
    RX_HANDLER_CONSUMED = 0,
    RX_HANDLER_ANOTHER = 1,
    RX_HANDLER_EXACT = 2,
    RX_HANDLER_PASS = 3
} ;
typedef enum rx_handler_result rx_handler_result_t;
typedef rx_handler_result_t rx_handler_func_t(struct sk_buff ** );
struct Qdisc;
struct netdev_queue {
   struct net_device *dev ;
   struct Qdisc *qdisc ;
   struct Qdisc *qdisc_sleeping ;
   struct kobject kobj ;
   int numa_node ;
   spinlock_t _xmit_lock ;
   int xmit_lock_owner ;
   unsigned long trans_start ;
   unsigned long trans_timeout ;
   unsigned long state ;
   struct dql dql ;
};
struct rps_map {
   unsigned int len ;
   struct callback_head rcu ;
   u16 cpus[0U] ;
};
struct rps_dev_flow {
   u16 cpu ;
   u16 filter ;
   unsigned int last_qtail ;
};
struct rps_dev_flow_table {
   unsigned int mask ;
   struct callback_head rcu ;
   struct work_struct free_work ;
   struct rps_dev_flow flows[0U] ;
};
struct netdev_rx_queue {
   struct rps_map *rps_map ;
   struct rps_dev_flow_table *rps_flow_table ;
   struct kobject kobj ;
   struct net_device *dev ;
};
struct xps_map {
   unsigned int len ;
   unsigned int alloc_len ;
   struct callback_head rcu ;
   u16 queues[0U] ;
};
struct xps_dev_maps {
   struct callback_head rcu ;
   struct xps_map *cpu_map[0U] ;
};
struct netdev_tc_txq {
   u16 count ;
   u16 offset ;
};
struct netdev_fcoe_hbainfo {
   char manufacturer[64U] ;
   char serial_number[64U] ;
   char hardware_version[64U] ;
   char driver_version[64U] ;
   char optionrom_version[64U] ;
   char firmware_version[64U] ;
   char model[256U] ;
   char model_description[256U] ;
};
struct net_device_ops {
   int (*ndo_init)(struct net_device * ) ;
   void (*ndo_uninit)(struct net_device * ) ;
   int (*ndo_open)(struct net_device * ) ;
   int (*ndo_stop)(struct net_device * ) ;
   netdev_tx_t (*ndo_start_xmit)(struct sk_buff * , struct net_device * ) ;
   u16 (*ndo_select_queue)(struct net_device * , struct sk_buff * ) ;
   void (*ndo_change_rx_flags)(struct net_device * , int ) ;
   void (*ndo_set_rx_mode)(struct net_device * ) ;
   int (*ndo_set_mac_address)(struct net_device * , void * ) ;
   int (*ndo_validate_addr)(struct net_device * ) ;
   int (*ndo_do_ioctl)(struct net_device * , struct ifreq * , int ) ;
   int (*ndo_set_config)(struct net_device * , struct ifmap * ) ;
   int (*ndo_change_mtu)(struct net_device * , int ) ;
   int (*ndo_neigh_setup)(struct net_device * , struct neigh_parms * ) ;
   void (*ndo_tx_timeout)(struct net_device * ) ;
   struct rtnl_link_stats64 *(*ndo_get_stats64)(struct net_device * , struct rtnl_link_stats64 * ) ;
   struct net_device_stats *(*ndo_get_stats)(struct net_device * ) ;
   int (*ndo_vlan_rx_add_vid)(struct net_device * , unsigned short ) ;
   int (*ndo_vlan_rx_kill_vid)(struct net_device * , unsigned short ) ;
   void (*ndo_poll_controller)(struct net_device * ) ;
   int (*ndo_netpoll_setup)(struct net_device * , struct netpoll_info * , gfp_t ) ;
   void (*ndo_netpoll_cleanup)(struct net_device * ) ;
   int (*ndo_set_vf_mac)(struct net_device * , int , u8 * ) ;
   int (*ndo_set_vf_vlan)(struct net_device * , int , u16 , u8 ) ;
   int (*ndo_set_vf_tx_rate)(struct net_device * , int , int ) ;
   int (*ndo_set_vf_spoofchk)(struct net_device * , int , bool ) ;
   int (*ndo_get_vf_config)(struct net_device * , int , struct ifla_vf_info * ) ;
   int (*ndo_set_vf_port)(struct net_device * , int , struct nlattr ** ) ;
   int (*ndo_get_vf_port)(struct net_device * , int , struct sk_buff * ) ;
   int (*ndo_setup_tc)(struct net_device * , u8 ) ;
   int (*ndo_fcoe_enable)(struct net_device * ) ;
   int (*ndo_fcoe_disable)(struct net_device * ) ;
   int (*ndo_fcoe_ddp_setup)(struct net_device * , u16 , struct scatterlist * , unsigned int ) ;
   int (*ndo_fcoe_ddp_done)(struct net_device * , u16 ) ;
   int (*ndo_fcoe_ddp_target)(struct net_device * , u16 , struct scatterlist * ,
                              unsigned int ) ;
   int (*ndo_fcoe_get_hbainfo)(struct net_device * , struct netdev_fcoe_hbainfo * ) ;
   int (*ndo_fcoe_get_wwn)(struct net_device * , u64 * , int ) ;
   int (*ndo_rx_flow_steer)(struct net_device * , struct sk_buff const * , u16 ,
                            u32 ) ;
   int (*ndo_add_slave)(struct net_device * , struct net_device * ) ;
   int (*ndo_del_slave)(struct net_device * , struct net_device * ) ;
   netdev_features_t (*ndo_fix_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_set_features)(struct net_device * , netdev_features_t ) ;
   int (*ndo_neigh_construct)(struct neighbour * ) ;
   void (*ndo_neigh_destroy)(struct neighbour * ) ;
   int (*ndo_fdb_add)(struct ndmsg * , struct nlattr ** , struct net_device * , unsigned char const * ,
                      u16 ) ;
   int (*ndo_fdb_del)(struct ndmsg * , struct net_device * , unsigned char const * ) ;
   int (*ndo_fdb_dump)(struct sk_buff * , struct netlink_callback * , struct net_device * ,
                       int ) ;
   int (*ndo_bridge_setlink)(struct net_device * , struct nlmsghdr * ) ;
   int (*ndo_bridge_getlink)(struct sk_buff * , u32 , u32 , struct net_device * ) ;
};
struct iw_handler_def;
struct iw_public_data;
struct vlan_info;
struct in_device;
struct dn_dev;
struct inet6_dev;
struct cpu_rmap;
struct pcpu_lstats;
struct pcpu_tstats;
struct pcpu_dstats;
union __anonunion_ldv_36627_221 {
   void *ml_priv ;
   struct pcpu_lstats *lstats ;
   struct pcpu_tstats *tstats ;
   struct pcpu_dstats *dstats ;
};
struct garp_port;
struct rtnl_link_ops;
struct net_device {
   char name[16U] ;
   struct hlist_node name_hlist ;
   char *ifalias ;
   unsigned long mem_end ;
   unsigned long mem_start ;
   unsigned long base_addr ;
   unsigned int irq ;
   unsigned long state ;
   struct list_head dev_list ;
   struct list_head napi_list ;
   struct list_head unreg_list ;
   netdev_features_t features ;
   netdev_features_t hw_features ;
   netdev_features_t wanted_features ;
   netdev_features_t vlan_features ;
   netdev_features_t hw_enc_features ;
   int ifindex ;
   int iflink ;
   struct net_device_stats stats ;
   atomic_long_t rx_dropped ;
   struct iw_handler_def const *wireless_handlers ;
   struct iw_public_data *wireless_data ;
   struct net_device_ops const *netdev_ops ;
   struct ethtool_ops const *ethtool_ops ;
   struct header_ops const *header_ops ;
   unsigned int flags ;
   unsigned int priv_flags ;
   unsigned short gflags ;
   unsigned short padded ;
   unsigned char operstate ;
   unsigned char link_mode ;
   unsigned char if_port ;
   unsigned char dma ;
   unsigned int mtu ;
   unsigned short type ;
   unsigned short hard_header_len ;
   unsigned short needed_headroom ;
   unsigned short needed_tailroom ;
   unsigned char perm_addr[32U] ;
   unsigned char addr_assign_type ;
   unsigned char addr_len ;
   unsigned char neigh_priv_len ;
   unsigned short dev_id ;
   spinlock_t addr_list_lock ;
   struct netdev_hw_addr_list uc ;
   struct netdev_hw_addr_list mc ;
   bool uc_promisc ;
   unsigned int promiscuity ;
   unsigned int allmulti ;
   struct vlan_info *vlan_info ;
   struct dsa_switch_tree *dsa_ptr ;
   void *atalk_ptr ;
   struct in_device *ip_ptr ;
   struct dn_dev *dn_ptr ;
   struct inet6_dev *ip6_ptr ;
   void *ax25_ptr ;
   struct wireless_dev *ieee80211_ptr ;
   unsigned long last_rx ;
   struct net_device *master ;
   unsigned char *dev_addr ;
   struct netdev_hw_addr_list dev_addrs ;
   unsigned char broadcast[32U] ;
   struct kset *queues_kset ;
   struct netdev_rx_queue *_rx ;
   unsigned int num_rx_queues ;
   unsigned int real_num_rx_queues ;
   struct cpu_rmap *rx_cpu_rmap ;
   rx_handler_func_t *rx_handler ;
   void *rx_handler_data ;
   struct netdev_queue *ingress_queue ;
   struct netdev_queue *_tx ;
   unsigned int num_tx_queues ;
   unsigned int real_num_tx_queues ;
   struct Qdisc *qdisc ;
   unsigned long tx_queue_len ;
   spinlock_t tx_global_lock ;
   struct xps_dev_maps *xps_maps ;
   unsigned long trans_start ;
   int watchdog_timeo ;
   struct timer_list watchdog_timer ;
   int *pcpu_refcnt ;
   struct list_head todo_list ;
   struct hlist_node index_hlist ;
   struct list_head link_watch_list ;
   unsigned char reg_state ;
   bool dismantle ;
   unsigned short rtnl_link_state ;
   void (*destructor)(struct net_device * ) ;
   struct netpoll_info *npinfo ;
   struct net *nd_net ;
   union __anonunion_ldv_36627_221 ldv_36627 ;
   struct garp_port *garp_port ;
   struct device dev ;
   struct attribute_group const *sysfs_groups[4U] ;
   struct rtnl_link_ops const *rtnl_link_ops ;
   unsigned int gso_max_size ;
   u16 gso_max_segs ;
   struct dcbnl_rtnl_ops const *dcbnl_ops ;
   u8 num_tc ;
   struct netdev_tc_txq tc_to_txq[16U] ;
   u8 prio_tc_map[16U] ;
   unsigned int fcoe_ddp_xid ;
   struct netprio_map *priomap ;
   struct phy_device *phydev ;
   struct lock_class_key *qdisc_tx_busylock ;
   int group ;
   struct pm_qos_request pm_qos_req ;
};
struct res_counter {
   unsigned long long usage ;
   unsigned long long max_usage ;
   unsigned long long limit ;
   unsigned long long soft_limit ;
   unsigned long long failcnt ;
   spinlock_t lock ;
   struct res_counter *parent ;
};
struct sock_filter {
   __u16 code ;
   __u8 jt ;
   __u8 jf ;
   __u32 k ;
};
struct sk_filter {
   atomic_t refcnt ;
   unsigned int len ;
   unsigned int (*bpf_func)(struct sk_buff const * , struct sock_filter const * ) ;
   struct callback_head rcu ;
   struct sock_filter insns[0U] ;
};
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct nla_policy {
   u16 type ;
   u16 len ;
};
struct rtnl_link_ops {
   struct list_head list ;
   char const *kind ;
   size_t priv_size ;
   void (*setup)(struct net_device * ) ;
   int maxtype ;
   struct nla_policy const *policy ;
   int (*validate)(struct nlattr ** , struct nlattr ** ) ;
   int (*newlink)(struct net * , struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   int (*changelink)(struct net_device * , struct nlattr ** , struct nlattr ** ) ;
   void (*dellink)(struct net_device * , struct list_head * ) ;
   size_t (*get_size)(struct net_device const * ) ;
   int (*fill_info)(struct sk_buff * , struct net_device const * ) ;
   size_t (*get_xstats_size)(struct net_device const * ) ;
   int (*fill_xstats)(struct sk_buff * , struct net_device const * ) ;
   unsigned int (*get_num_tx_queues)(void) ;
   unsigned int (*get_num_rx_queues)(void) ;
};
struct neigh_table;
struct neigh_parms {
   struct net *net ;
   struct net_device *dev ;
   struct neigh_parms *next ;
   int (*neigh_setup)(struct neighbour * ) ;
   void (*neigh_cleanup)(struct neighbour * ) ;
   struct neigh_table *tbl ;
   void *sysctl_table ;
   int dead ;
   atomic_t refcnt ;
   struct callback_head callback_head ;
   int base_reachable_time ;
   int retrans_time ;
   int gc_staletime ;
   int reachable_time ;
   int delay_probe_time ;
   int queue_len_bytes ;
   int ucast_probes ;
   int app_probes ;
   int mcast_probes ;
   int anycast_delay ;
   int proxy_delay ;
   int proxy_qlen ;
   int locktime ;
};
struct neigh_statistics {
   unsigned long allocs ;
   unsigned long destroys ;
   unsigned long hash_grows ;
   unsigned long res_failed ;
   unsigned long lookups ;
   unsigned long hits ;
   unsigned long rcv_probes_mcast ;
   unsigned long rcv_probes_ucast ;
   unsigned long periodic_gc_runs ;
   unsigned long forced_gc_runs ;
   unsigned long unres_discards ;
};
struct neigh_ops;
struct neighbour {
   struct neighbour *next ;
   struct neigh_table *tbl ;
   struct neigh_parms *parms ;
   unsigned long confirmed ;
   unsigned long updated ;
   rwlock_t lock ;
   atomic_t refcnt ;
   struct sk_buff_head arp_queue ;
   unsigned int arp_queue_len_bytes ;
   struct timer_list timer ;
   unsigned long used ;
   atomic_t probes ;
   __u8 flags ;
   __u8 nud_state ;
   __u8 type ;
   __u8 dead ;
   seqlock_t ha_lock ;
   unsigned char ha[32U] ;
   struct hh_cache hh ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   struct neigh_ops const *ops ;
   struct callback_head rcu ;
   struct net_device *dev ;
   u8 primary_key[0U] ;
};
struct neigh_ops {
   int family ;
   void (*solicit)(struct neighbour * , struct sk_buff * ) ;
   void (*error_report)(struct neighbour * , struct sk_buff * ) ;
   int (*output)(struct neighbour * , struct sk_buff * ) ;
   int (*connected_output)(struct neighbour * , struct sk_buff * ) ;
};
struct pneigh_entry {
   struct pneigh_entry *next ;
   struct net *net ;
   struct net_device *dev ;
   u8 flags ;
   u8 key[0U] ;
};
struct neigh_hash_table {
   struct neighbour **hash_buckets ;
   unsigned int hash_shift ;
   __u32 hash_rnd[4U] ;
   struct callback_head rcu ;
};
struct neigh_table {
   struct neigh_table *next ;
   int family ;
   int entry_size ;
   int key_len ;
   __u32 (*hash)(void const * , struct net_device const * , __u32 * ) ;
   int (*constructor)(struct neighbour * ) ;
   int (*pconstructor)(struct pneigh_entry * ) ;
   void (*pdestructor)(struct pneigh_entry * ) ;
   void (*proxy_redo)(struct sk_buff * ) ;
   char *id ;
   struct neigh_parms parms ;
   int gc_interval ;
   int gc_thresh1 ;
   int gc_thresh2 ;
   int gc_thresh3 ;
   unsigned long last_flush ;
   struct delayed_work gc_work ;
   struct timer_list proxy_timer ;
   struct sk_buff_head proxy_queue ;
   atomic_t entries ;
   rwlock_t lock ;
   unsigned long last_rand ;
   struct neigh_statistics *stats ;
   struct neigh_hash_table *nht ;
   struct pneigh_entry **phash_buckets ;
};
union __anonunion_ldv_39552_226 {
   unsigned long expires ;
   struct dst_entry *from ;
};
struct dn_route;
union __anonunion_ldv_39577_227 {
   struct dst_entry *next ;
   struct rtable *rt_next ;
   struct rt6_info *rt6_next ;
   struct dn_route *dn_next ;
};
struct dst_entry {
   struct callback_head callback_head ;
   struct dst_entry *child ;
   struct net_device *dev ;
   struct dst_ops *ops ;
   unsigned long _metrics ;
   union __anonunion_ldv_39552_226 ldv_39552 ;
   struct dst_entry *path ;
   void *__pad0 ;
   struct xfrm_state *xfrm ;
   int (*input)(struct sk_buff * ) ;
   int (*output)(struct sk_buff * ) ;
   unsigned short flags ;
   unsigned short pending_confirm ;
   short error ;
   short obsolete ;
   unsigned short header_len ;
   unsigned short trailer_len ;
   __u32 tclassid ;
   long __pad_to_align_refcnt[2U] ;
   atomic_t __refcnt ;
   int __use ;
   unsigned long lastuse ;
   union __anonunion_ldv_39577_227 ldv_39577 ;
};
struct __anonstruct_socket_lock_t_228 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_228 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct_ldv_39794_230 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion_ldv_39795_229 {
   __addrpair skc_addrpair ;
   struct __anonstruct_ldv_39794_230 ldv_39794 ;
};
union __anonunion_ldv_39799_231 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct_ldv_39805_233 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion_ldv_39806_232 {
   __portpair skc_portpair ;
   struct __anonstruct_ldv_39805_233 ldv_39805 ;
};
union __anonunion_ldv_39814_234 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion_ldv_39821_235 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion_ldv_39795_229 ldv_39795 ;
   union __anonunion_ldv_39799_231 ldv_39799 ;
   union __anonunion_ldv_39806_232 ldv_39806 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse ;
   int skc_bound_dev_if ;
   union __anonunion_ldv_39814_234 ldv_39814 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion_ldv_39821_235 ldv_39821 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_236 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_236 sk_backlog ;
   int sk_forward_alloc ;
   __u32 sk_rxhash ;
   atomic_t sk_drops ;
   int sk_rcvbuf ;
   struct sk_filter *sk_filter ;
   struct socket_wq *sk_wq ;
   struct sk_buff_head sk_async_wait_queue ;
   struct xfrm_policy *sk_policy[2U] ;
   unsigned long sk_flags ;
   struct dst_entry *sk_rx_dst ;
   struct dst_entry *sk_dst_cache ;
   spinlock_t sk_dst_lock ;
   atomic_t sk_wmem_alloc ;
   atomic_t sk_omem_alloc ;
   int sk_sndbuf ;
   struct sk_buff_head sk_write_queue ;
   unsigned char sk_shutdown : 2 ;
   unsigned char sk_no_check : 2 ;
   unsigned char sk_userlocks : 4 ;
   unsigned char sk_protocol ;
   unsigned short sk_type ;
   int sk_wmem_queued ;
   gfp_t sk_allocation ;
   netdev_features_t sk_route_caps ;
   netdev_features_t sk_route_nocaps ;
   int sk_gso_type ;
   unsigned int sk_gso_max_size ;
   u16 sk_gso_max_segs ;
   int sk_rcvlowat ;
   unsigned long sk_lingertime ;
   struct sk_buff_head sk_error_queue ;
   struct proto *sk_prot_creator ;
   rwlock_t sk_callback_lock ;
   int sk_err ;
   int sk_err_soft ;
   unsigned short sk_ack_backlog ;
   unsigned short sk_max_ack_backlog ;
   __u32 sk_priority ;
   __u32 sk_cgrp_prioidx ;
   struct pid *sk_peer_pid ;
   struct cred const *sk_peer_cred ;
   long sk_rcvtimeo ;
   long sk_sndtimeo ;
   void *sk_protinfo ;
   struct timer_list sk_timer ;
   ktime_t sk_stamp ;
   struct socket *sk_socket ;
   void *sk_user_data ;
   struct page_frag sk_frag ;
   struct sk_buff *sk_send_head ;
   __s32 sk_peek_off ;
   int sk_write_pending ;
   void *sk_security ;
   __u32 sk_mark ;
   u32 sk_classid ;
   struct cg_proto *sk_cgrp ;
   void (*sk_state_change)(struct sock * ) ;
   void (*sk_data_ready)(struct sock * , int ) ;
   void (*sk_write_space)(struct sock * ) ;
   void (*sk_error_report)(struct sock * ) ;
   int (*sk_backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*sk_destruct)(struct sock * ) ;
};
struct request_sock_ops;
struct timewait_sock_ops;
struct inet_hashinfo;
struct raw_hashinfo;
struct udp_table;
union __anonunion_h_237 {
   struct inet_hashinfo *hashinfo ;
   struct udp_table *udp_table ;
   struct raw_hashinfo *raw_hash ;
};
struct proto {
   void (*close)(struct sock * , long ) ;
   int (*connect)(struct sock * , struct sockaddr * , int ) ;
   int (*disconnect)(struct sock * , int ) ;
   struct sock *(*accept)(struct sock * , int , int * ) ;
   int (*ioctl)(struct sock * , int , unsigned long ) ;
   int (*init)(struct sock * ) ;
   void (*destroy)(struct sock * ) ;
   void (*shutdown)(struct sock * , int ) ;
   int (*setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_setsockopt)(struct sock * , int , int , char * , unsigned int ) ;
   int (*compat_getsockopt)(struct sock * , int , int , char * , int * ) ;
   int (*compat_ioctl)(struct sock * , unsigned int , unsigned long ) ;
   int (*sendmsg)(struct kiocb * , struct sock * , struct msghdr * , size_t ) ;
   int (*recvmsg)(struct kiocb * , struct sock * , struct msghdr * , size_t , int ,
                  int , int * ) ;
   int (*sendpage)(struct sock * , struct page * , int , size_t , int ) ;
   int (*bind)(struct sock * , struct sockaddr * , int ) ;
   int (*backlog_rcv)(struct sock * , struct sk_buff * ) ;
   void (*release_cb)(struct sock * ) ;
   void (*mtu_reduced)(struct sock * ) ;
   void (*hash)(struct sock * ) ;
   void (*unhash)(struct sock * ) ;
   void (*rehash)(struct sock * ) ;
   int (*get_port)(struct sock * , unsigned short ) ;
   void (*clear_sk)(struct sock * , int ) ;
   unsigned int inuse_idx ;
   void (*enter_memory_pressure)(struct sock * ) ;
   atomic_long_t *memory_allocated ;
   struct percpu_counter *sockets_allocated ;
   int *memory_pressure ;
   long *sysctl_mem ;
   int *sysctl_wmem ;
   int *sysctl_rmem ;
   int max_header ;
   bool no_autobind ;
   struct kmem_cache *slab ;
   unsigned int obj_size ;
   int slab_flags ;
   struct percpu_counter *orphan_count ;
   struct request_sock_ops *rsk_prot ;
   struct timewait_sock_ops *twsk_prot ;
   union __anonunion_h_237 h ;
   struct module *owner ;
   char name[32U] ;
   struct list_head node ;
   int (*init_cgroup)(struct mem_cgroup * , struct cgroup_subsys * ) ;
   void (*destroy_cgroup)(struct mem_cgroup * ) ;
   struct cg_proto *(*proto_cgroup)(struct mem_cgroup * ) ;
};
struct cg_proto {
   void (*enter_memory_pressure)(struct sock * ) ;
   struct res_counter *memory_allocated ;
   struct percpu_counter *sockets_allocated ;
   int *memory_pressure ;
   long *sysctl_mem ;
   unsigned long flags ;
   struct mem_cgroup *memcg ;
};
struct mISDNchannel;
struct mISDNdevice;
struct mISDNstack;
struct channel_req {
   u_int protocol ;
   struct sockaddr_mISDN adr ;
   struct mISDNchannel *ch ;
};
typedef int ctrl_func_t(struct mISDNchannel * , u_int , void * );
typedef int send_func_t(struct mISDNchannel * , struct sk_buff * );
struct mISDNchannel {
   struct list_head list ;
   u_int protocol ;
   u_int nr ;
   u_long opt ;
   u_int addr ;
   struct mISDNstack *st ;
   struct mISDNchannel *peer ;
   send_func_t *send ;
   send_func_t *recv ;
   ctrl_func_t *ctrl ;
};
struct mISDN_sock_list {
   struct hlist_head head ;
   rwlock_t lock ;
};
struct mISDNdevice {
   struct mISDNchannel D ;
   u_int id ;
   u_int Dprotocols ;
   u_int Bprotocols ;
   u_int nrbchan ;
   u_char channelmap[16U] ;
   struct list_head bchannels ;
   struct mISDNchannel *teimgr ;
   struct device dev ;
};
struct mISDNstack {
   u_long status ;
   struct mISDNdevice *dev ;
   struct task_struct *thread ;
   struct completion *notify ;
   wait_queue_head_t workq ;
   struct sk_buff_head msgq ;
   struct list_head layer2 ;
   struct mISDNchannel *layer1 ;
   struct mISDNchannel own ;
   struct mutex lmutex ;
   struct mISDN_sock_list l1sock ;
};
struct dchannel {
   struct mISDNdevice dev ;
   u_long Flags ;
   struct work_struct workq ;
   void (*phfunc)(struct dchannel * ) ;
   u_int state ;
   void *l1 ;
   void *hw ;
   int slot ;
   struct timer_list timer ;
   struct sk_buff *rx_skb ;
   int maxlen ;
   struct sk_buff_head squeue ;
   struct sk_buff_head rqueue ;
   struct sk_buff *tx_skb ;
   int tx_idx ;
   int debug ;
   int err_crc ;
   int err_tx ;
   int err_rx ;
};
struct bchannel {
   struct mISDNchannel ch ;
   int nr ;
   u_long Flags ;
   struct work_struct workq ;
   u_int state ;
   void *hw ;
   int slot ;
   struct timer_list timer ;
   u8 fill[4U] ;
   struct sk_buff *rx_skb ;
   unsigned short maxlen ;
   unsigned short init_maxlen ;
   unsigned short next_maxlen ;
   unsigned short minlen ;
   unsigned short init_minlen ;
   unsigned short next_minlen ;
   struct sk_buff *next_skb ;
   struct sk_buff *tx_skb ;
   struct sk_buff_head rqueue ;
   int rcount ;
   int tx_idx ;
   int debug ;
   int err_crc ;
   int err_tx ;
   int err_rx ;
   int dropcnt ;
};
struct dsp_features {
   int hfc_id ;
   int hfc_dtmf ;
   int hfc_conf ;
   int hfc_loops ;
   int hfc_echocanhw ;
   int pcm_id ;
   int pcm_slots ;
   int pcm_banks ;
   int unclocked ;
   int unordered ;
};
struct l1oip_chan {
   struct dchannel *dch ;
   struct bchannel *bch ;
   u32 tx_counter ;
   u32 rx_counter ;
   u32 codecstate ;
};
struct l1oip {
   struct list_head list ;
   int registered ;
   char name[20U] ;
   int idx ;
   int pri ;
   int d_idx ;
   int b_num ;
   u32 id ;
   int ondemand ;
   int bundle ;
   int codec ;
   int limit ;
   struct timer_list keep_tl ;
   struct timer_list timeout_tl ;
   int timeout_on ;
   struct work_struct workq ;
   struct socket *socket ;
   struct completion socket_complete ;
   struct task_struct *socket_thread ;
   spinlock_t socket_lock ;
   u32 remoteip ;
   u16 localport ;
   u16 remoteport ;
   struct sockaddr_in sin_local ;
   struct sockaddr_in sin_remote ;
   struct msghdr sendmsg ;
   struct kvec sendiov ;
   struct l1oip_chan chan[128U] ;
};
typedef int ldv_func_ret_type___2;
enum hrtimer_restart;
long ldv__builtin_expect(long exp , long c ) ;
__inline static int test_and_set_bit(int nr , unsigned long volatile *addr )
{ int oldbit ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2,%1\n\tsbb %0,%0": "=r" (oldbit),
                       "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return (oldbit);
}
}
__inline static int test_and_clear_bit(int nr , unsigned long volatile *addr )
{ int oldbit ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %2,%1\n\tsbb %0,%0": "=r" (oldbit),
                       "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return (oldbit);
}
}
__inline static int constant_test_bit(unsigned int nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr / 64U)) >> ((int )nr & 63)) & 1);
}
}
__inline static int variable_test_bit(int nr , unsigned long const volatile *addr )
{ int oldbit ;
  {
  __asm__ volatile ("bt %2,%1\n\tsbb %0,%0": "=r" (oldbit): "m" (*((unsigned long *)addr)),
                       "Ir" (nr));
  return (oldbit);
}
}
__inline static __u32 __arch_swab32(__u32 val )
{
  {
  __asm__ ("bswapl %0": "=r" (val): "0" (val));
  return (val);
}
}
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
}
}
__inline static __u32 __fswab32(__u32 val )
{ __u32 tmp ;
  {
  tmp = __arch_swab32(val);
  return (tmp);
}
}
extern int printk(char const * , ...) ;
extern int sprintf(char * , char const * , ...) ;
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
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
}
}
extern void list_del(struct list_head * ) ;
extern void __bad_percpu_size(void) ;
extern struct task_struct *current_task ;
__inline static struct task_struct *get_current(void)
{ struct task_struct *pfo_ret__ ;
  {
  switch (8UL) {
  case 1:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  case 2:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  case 4:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  case 8:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& current_task));
  goto ldv_2861;
  default:
  __bad_percpu_size();
  }
  ldv_2861: ;
  return (pfo_ret__);
}
}
extern void *memchr_inv(void const * , int , size_t ) ;
__inline static long PTR_ERR(void const *ptr )
{
  {
  return ((long )ptr);
}
}
__inline static long IS_ERR(void const *ptr )
{ long tmp ;
  {
  tmp = ldv__builtin_expect((unsigned long )ptr > 0xfffffffffffff000UL, 0L);
  return (tmp);
}
}
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
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
void ldv_mutex_lock_cred_guard_mutex_of_signal_struct(struct mutex *lock ) ;
void ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex_of_device(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock ) ;
int ref_cnt ;
int ldv_state_variable_0 ;
extern int __VERIFIER_nondet_int(void) ;
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{ int tmp ;
  {
  tmp = variable_test_bit(flag, (unsigned long const volatile *)(& ti->flags));
  return (tmp);
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_5961.rlock);
}
}
__inline static void spin_lock(spinlock_t *lock )
{
  {
  _raw_spin_lock(& lock->ldv_5961.rlock);
  return;
}
}
__inline static void spin_unlock(spinlock_t *lock )
{
  {
  _raw_spin_unlock(& lock->ldv_5961.rlock);
  return;
}
}
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
__inline static void init_completion(struct completion *x )
{ struct lock_class_key __key ;
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  return;
}
}
extern void wait_for_completion(struct completion * ) ;
extern void complete(struct completion * ) ;
extern unsigned long volatile jiffies ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
__inline static int timer_pending(struct timer_list const *timer )
{
  {
  return ((unsigned long )timer->entry.next != (unsigned long )((struct list_head * )0));
}
}
extern int del_timer(struct timer_list * ) ;
extern void add_timer(struct timer_list * ) ;
extern void __init_work(struct work_struct * , int ) ;
extern bool schedule_work(struct work_struct * ) ;
extern bool cancel_work_sync(struct work_struct * ) ;
extern struct module __this_module ;
extern bool try_module_get(struct module * ) ;
extern void module_put(struct module * ) ;
__inline static int test_channelmap(u_int nr , u_char *map )
{
  {
  if (nr <= 127U) {
    return ((int )*(map + (unsigned long )(nr >> 3)) & (1 << ((int )nr & 7)));
  } else {
    return (0);
  }
}
}
__inline static void set_channelmap(u_int nr , u_char *map )
{
  {
  *(map + (unsigned long )(nr >> 3)) = (u_char )((int )((signed char )*(map + (unsigned long )(nr >> 3))) | (int )((signed char )(1 << ((int )nr & 7))));
  return;
}
}
extern int sock_create(int , int , int , struct socket ** ) ;
extern void sock_release(struct socket * ) ;
extern int kernel_sendmsg(struct socket * , struct msghdr * , struct kvec * , size_t ,
                          size_t ) ;
extern int kernel_recvmsg(struct socket * , struct msghdr * , struct kvec * , size_t ,
                          size_t , int ) ;
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
{ void *tmp___2 ;
  {
  tmp___2 = __kmalloc(size, flags);
  return (tmp___2);
}
}
__inline static void *kzalloc(size_t size , gfp_t flags )
{ void *tmp ;
  {
  tmp = kmalloc(size, flags | 32768U);
  return (tmp);
}
}
extern void consume_skb(struct sk_buff * ) ;
extern struct sk_buff *__alloc_skb(unsigned int , gfp_t , int , int ) ;
__inline static struct sk_buff *alloc_skb(unsigned int size , gfp_t priority )
{ struct sk_buff *tmp ;
  {
  tmp = __alloc_skb(size, priority, 0, -1);
  return (tmp);
}
}
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
__inline static void skb_reserve(struct sk_buff *skb , int len )
{
  {
  skb->data = skb->data + (unsigned long )len;
  skb->tail = skb->tail + (sk_buff_data_t )len;
  return;
}
}
extern void skb_trim(struct sk_buff * , unsigned int ) ;
extern long schedule_timeout(long ) ;
extern int wake_up_process(struct task_struct * ) ;
extern int send_sig(int , struct task_struct * , int ) ;
extern int allow_signal(int ) ;
__inline static int test_tsk_thread_flag(struct task_struct *tsk , int flag )
{ int tmp ;
  {
  tmp = test_ti_thread_flag((struct thread_info *)tsk->stack, flag);
  return (tmp);
}
}
__inline static int signal_pending(struct task_struct *p )
{ int tmp ;
  long tmp___0 ;
  {
  tmp = test_tsk_thread_flag(p, 2);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  return ((int )tmp___0);
}
}
__inline static struct sk_buff *mI_alloc_skb(unsigned int len , gfp_t gfp_mask )
{ struct sk_buff *skb ;
  long tmp ;
  {
  skb = alloc_skb(len + 8U, gfp_mask);
  tmp = ldv__builtin_expect((unsigned long )skb != (unsigned long )((struct sk_buff *)0),
                         1L);
  if (tmp != 0L) {
    skb_reserve(skb, 8);
  } else {
  }
  return (skb);
}
}
__inline static struct sk_buff *_alloc_mISDN_skb(u_int prim , u_int id___0 , u_int len ,
                                                 void *dp , gfp_t gfp_mask )
{ struct sk_buff *skb ;
  struct sk_buff *tmp ;
  struct mISDNhead *hh ;
  size_t __len ;
  void *__ret ;
  unsigned char *tmp___1 ;
  {
  tmp = mI_alloc_skb(len, gfp_mask);
  skb = tmp;
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (0);
  } else {
  }
  if (len != 0U) {
    __len = (size_t )len;
    tmp___1 = skb_put(skb, len);
    __ret = __builtin_memcpy((void *)tmp___1, (void const *)dp, __len);
  } else {
  }
  hh = (struct mISDNhead *)(& skb->cb);
  hh->prim = prim;
  hh->id = id___0;
  return (skb);
}
}
__inline static void _queue_data(struct mISDNchannel *ch , u_int prim , u_int id___0 ,
                                 u_int len , void *dp , gfp_t gfp_mask )
{ struct sk_buff *skb ;
  int tmp ;
  {
  if ((unsigned long )ch->peer == (unsigned long )((struct mISDNchannel *)0)) {
    return;
  } else {
  }
  skb = _alloc_mISDN_skb(prim, id___0, len, dp, gfp_mask);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return;
  } else {
  }
  tmp = (*(ch->recv))(ch->peer, skb);
  if (tmp != 0) {
    consume_skb(skb);
  } else {
  }
  return;
}
}
extern int mISDN_register_device(struct mISDNdevice * , struct device * , char * ) ;
extern void mISDN_unregister_device(struct mISDNdevice * ) ;
extern int mISDN_initdchannel(struct dchannel * , int , void * ) ;
extern int mISDN_initbchannel(struct bchannel * , unsigned short , unsigned short ) ;
extern int mISDN_freedchannel(struct dchannel * ) ;
extern void mISDN_freebchannel(struct bchannel * ) ;
extern void queue_ch_frame(struct mISDNchannel * , u_int , int , struct sk_buff * ) ;
extern void recv_Dchannel(struct dchannel * ) ;
extern struct task_struct *kthread_create_on_node(int (*)(void * ) , void * , int ,
                                                  char const * , ...) ;
int l1oip_law_to_4bit(u8 *data , int len , u8 *result , u32 *state ) ;
int l1oip_4bit_to_law(u8 *data , int len , u8 *result ) ;
int l1oip_alaw_to_ulaw(u8 *data , int len , u8 *result ) ;
int l1oip_ulaw_to_alaw(u8 *data , int len , u8 *result ) ;
void l1oip_4bit_free(void) ;
int l1oip_4bit_alloc(int ulaw___0 ) ;
static char const *l1oip_revision = "2.00";
static int l1oip_cnt ;
static spinlock_t l1oip_lock ;
static struct list_head l1oip_ilist ;
static u_int type[16U] ;
static u_int codec[16U] ;
static u_int ip[64U] ;
static u_int port[16U] ;
static u_int remoteport[16U] ;
static u_int ondemand[16U] ;
static u_int limit[16U] ;
static u_int id[16U] ;
static int debug ;
static int ulaw ;
static int l1oip_socket_send(struct l1oip *hc , u8 localcodec , u8 channel , u32 chanmask ,
                             u16 timebase , u8 *buf , int len )
{ u8 *p ;
  u8 *frame ;
  unsigned long __lengthofframe ;
  void *tmp ;
  struct socket *socket ;
  u8 *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  u8 *tmp___3 ;
  u8 *tmp___4 ;
  u8 *tmp___5 ;
  u8 *tmp___6 ;
  u8 *tmp___7 ;
  u8 *tmp___8 ;
  u8 *tmp___9 ;
  size_t __len ;
  void *__ret ;
  {
  __lengthofframe = (unsigned long )((long )(len + 32));
  tmp = __builtin_alloca(sizeof(*frame) * __lengthofframe);
  frame = (u8 *)tmp;
  socket = 0;
  if ((debug & 524288) != 0) {
    printk("\017%s: sending data to socket (len = %d)\n", "l1oip_socket_send", len);
  } else {
  }
  p = (u8 *)(& frame);
  if ((int )((unsigned int )hc->keep_tl.expires - (unsigned int )jiffies) <= 1249) {
    del_timer(& hc->keep_tl);
    hc->keep_tl.expires = (unsigned long )jiffies + 3750UL;
    add_timer(& hc->keep_tl);
  } else {
    hc->keep_tl.expires = (unsigned long )jiffies + 3750UL;
  }
  if ((debug & 524288) != 0) {
    printk("\017%s: resetting timer\n", "l1oip_socket_send");
  } else {
  }
  if (hc->sin_remote.sin_addr.s_addr == 0U || (unsigned int )hc->sin_remote.sin_port == 0U) {
    if ((debug & 524288) != 0) {
      printk("\017%s: dropping frame, because remote IP is not set.\n", "l1oip_socket_send");
    } else {
    }
    return (len);
  } else {
  }
  tmp___0 = p;
  p = p + 1;
  if (hc->pri != 0) {
    tmp___1 = 32;
  } else {
    tmp___1 = 0;
  }
  if (hc->id != 0U) {
    tmp___2 = 16;
  } else {
    tmp___2 = 0;
  }
  *tmp___0 = (u8 )((tmp___1 | tmp___2) | (int )((signed char )localcodec));
  if (hc->id != 0U) {
    tmp___3 = p;
    p = p + 1;
    *tmp___3 = (u8 )(hc->id >> 24);
    tmp___4 = p;
    p = p + 1;
    *tmp___4 = (u8 )(hc->id >> 16);
    tmp___5 = p;
    p = p + 1;
    *tmp___5 = (u8 )(hc->id >> 8);
    tmp___6 = p;
    p = p + 1;
    *tmp___6 = (u8 )hc->id;
  } else {
  }
  tmp___7 = p;
  p = p + 1;
  *tmp___7 = channel;
  tmp___8 = p;
  p = p + 1;
  *tmp___8 = (u8 )((int )timebase >> 8);
  tmp___9 = p;
  p = p + 1;
  *tmp___9 = (u8 )timebase;
  if ((unsigned long )buf != (unsigned long )((u8 *)0) && len != 0) {
    if ((unsigned int )localcodec == 1U && ulaw != 0) {
      l1oip_ulaw_to_alaw(buf, len, p);
    } else
    if ((unsigned int )localcodec == 2U && ulaw == 0) {
      l1oip_alaw_to_ulaw(buf, len, p);
    } else
    if ((unsigned int )localcodec == 3U) {
      len = l1oip_law_to_4bit(buf, len, p, & hc->chan[(int )channel].codecstate);
    } else {
      __len = (size_t )len;
      __ret = __builtin_memcpy((void *)p, (void const *)buf, __len);
    }
  } else {
  }
  len = (int )(((unsigned int )((long )p) - (unsigned int )((long )(& frame))) + (unsigned int )len);
  spin_lock(& hc->socket_lock);
  if ((unsigned long )hc->socket == (unsigned long )((struct socket *)0)) {
    spin_unlock(& hc->socket_lock);
    return (0);
  } else {
  }
  socket = hc->socket;
  hc->socket = 0;
  spin_unlock(& hc->socket_lock);
  if ((debug & 524288) != 0) {
    printk("\017%s: sending packet to socket (len = %d)\n", "l1oip_socket_send", len);
  } else {
  }
  hc->sendiov.iov_base = (void *)(& frame);
  hc->sendiov.iov_len = (size_t )len;
  len = kernel_sendmsg(socket, & hc->sendmsg, & hc->sendiov, 1UL, (size_t )len);
  hc->socket = socket;
  return (len);
}
}
static void l1oip_socket_recv(struct l1oip *hc , u8 remotecodec , u8 channel , u16 timebase ,
                              u8 *buf , int len )
{ struct sk_buff *nskb ;
  struct bchannel *bch ;
  struct dchannel *dch ;
  u8 *p ;
  u32 rx_counter ;
  int tmp ;
  int tmp___0 ;
  unsigned char *tmp___1 ;
  size_t __len ;
  void *__ret ;
  {
  if (len == 0) {
    if ((debug & 524288) != 0) {
      printk("\017%s: received empty keepalive data, ignoring\n", "l1oip_socket_recv");
    } else {
    }
    return;
  } else {
  }
  if ((debug & 524288) != 0) {
    printk("\017%s: received data, sending to mISDN (%d)\n", "l1oip_socket_recv",
           len);
  } else {
  }
  if ((unsigned int )channel == 0U || (int )((signed char )channel) < 0) {
    printk("\f%s: packet error - channel %d out of range\n", "l1oip_socket_recv",
           (int )channel);
    return;
  } else {
  }
  dch = hc->chan[(int )channel].dch;
  bch = hc->chan[(int )channel].bch;
  if ((unsigned long )dch == (unsigned long )((struct dchannel *)0) && (unsigned long )bch == (unsigned long )((struct bchannel *)0)) {
    printk("\f%s: packet error - channel %d not in stack\n", "l1oip_socket_recv",
           (int )channel);
    return;
  } else {
  }
  if ((unsigned int )remotecodec == 3U) {
    tmp = len << 1;
  } else {
    tmp = len;
  }
  nskb = mI_alloc_skb((unsigned int )tmp, 32U);
  if ((unsigned long )nskb == (unsigned long )((struct sk_buff *)0)) {
    printk("\v%s: No mem for skb.\n", "l1oip_socket_recv");
    return;
  } else {
  }
  if ((unsigned int )remotecodec == 3U) {
    tmp___0 = len << 1;
  } else {
    tmp___0 = len;
  }
  tmp___1 = skb_put(nskb, (unsigned int )tmp___0);
  p = tmp___1;
  if ((unsigned int )remotecodec == 1U && ulaw != 0) {
    l1oip_alaw_to_ulaw(buf, len, p);
  } else
  if ((unsigned int )remotecodec == 2U && ulaw == 0) {
    l1oip_ulaw_to_alaw(buf, len, p);
  } else
  if ((unsigned int )remotecodec == 3U) {
    len = l1oip_4bit_to_law(buf, len, p);
  } else {
    __len = (size_t )len;
    __ret = __builtin_memcpy((void *)p, (void const *)buf, __len);
  }
  if ((unsigned long )dch != (unsigned long )((struct dchannel *)0) && len > 1) {
    dch->rx_skb = nskb;
    recv_Dchannel(dch);
  } else {
  }
  if ((unsigned long )bch != (unsigned long )((struct bchannel *)0)) {
    rx_counter = hc->chan[(int )channel].rx_counter;
    if ((int )((short )((int )timebase - (int )((unsigned short )rx_counter))) >= 0) {
      if ((u32 )timebase >= (rx_counter & 65535U)) {
        rx_counter = (rx_counter & 4294901760U) | (u32 )timebase;
      } else {
        rx_counter = ((rx_counter & 4294901760U) + 65536U) | (u32 )timebase;
      }
    } else
    if ((u32 )timebase < (rx_counter & 65535U)) {
      rx_counter = (rx_counter & 4294901760U) | (u32 )timebase;
    } else {
      rx_counter = ((rx_counter & 4294901760U) - 65536U) | (u32 )timebase;
    }
    hc->chan[(int )channel].rx_counter = rx_counter;
    queue_ch_frame(& bch->ch, 8194U, (int )rx_counter, nskb);
  } else {
  }
  return;
}
}
static void l1oip_socket_parse(struct l1oip *hc , struct sockaddr_in *sin , u8 *buf ,
                               int len )
{ u32 packet_id ;
  u8 channel ;
  u8 remotecodec ;
  u16 timebase ;
  int m ;
  int mlen ;
  int len_start ;
  struct dchannel *dch ;
  u8 *tmp ;
  u8 *tmp___0 ;
  u8 *tmp___1 ;
  u8 *tmp___2 ;
  u8 *tmp___3 ;
  u8 *tmp___4 ;
  u8 *tmp___5 ;
  int tmp___6 ;
  __u16 tmp___7 ;
  __u16 tmp___8 ;
  __u32 tmp___9 ;
  __u32 tmp___10 ;
  {
  len_start = len;
  dch = hc->chan[hc->d_idx].dch;
  if ((debug & 524288) != 0) {
    printk("\017%s: received frame, parsing... (%d)\n", "l1oip_socket_parse", len);
  } else {
  }
  if (len <= 3) {
    printk("\f%s: packet error - length %d below 4 bytes\n", "l1oip_socket_parse",
           len);
    return;
  } else {
  }
  if ((unsigned int )((int )*buf >> 6) != 0U) {
    printk("\f%s: packet error - unknown version %d\n", "l1oip_socket_parse", (int )*buf >> 6);
    return;
  } else {
  }
  if (((int )*buf & 32) != 0 && hc->pri == 0) {
    printk("\f%s: packet error - received E1 packet on S0 interface\n", "l1oip_socket_parse");
    return;
  } else {
  }
  if (((int )*buf & 32) == 0 && hc->pri != 0) {
    printk("\f%s: packet error - received S0 packet on E1 interface\n", "l1oip_socket_parse");
    return;
  } else {
  }
  packet_id = (u32 )((int )*buf >> 4) & 1U;
  remotecodec = (unsigned int )*buf & 15U;
  if ((unsigned int )remotecodec > 3U) {
    printk("\f%s: packet error - remotecodec %d unsupported\n", "l1oip_socket_parse",
           (int )remotecodec);
    return;
  } else {
  }
  buf = buf + 1;
  len = len - 1;
  if (packet_id != 0U) {
    if (hc->id == 0U) {
      printk("\f%s: packet error - packet has id 0x%x, but we have not\n", "l1oip_socket_parse",
             packet_id);
      return;
    } else {
    }
    if (len <= 3) {
      printk("\f%s: packet error - packet too short for ID value\n", "l1oip_socket_parse");
      return;
    } else {
    }
    tmp = buf;
    buf = buf + 1;
    packet_id = (u32 )((int )*tmp << 24);
    tmp___0 = buf;
    buf = buf + 1;
    packet_id = (u32 )((int )*tmp___0 << 16) + packet_id;
    tmp___1 = buf;
    buf = buf + 1;
    packet_id = (u32 )((int )*tmp___1 << 8) + packet_id;
    tmp___2 = buf;
    buf = buf + 1;
    packet_id = (u32 )*tmp___2 + packet_id;
    len = len + -4;
    if (hc->id != packet_id) {
      printk("\f%s: packet error - ID mismatch, got 0x%x, we 0x%x\n", "l1oip_socket_parse",
             packet_id, hc->id);
      return;
    } else {
    }
  } else
  if (hc->id != 0U) {
    printk("\f%s: packet error - packet has no ID, but we have\n", "l1oip_socket_parse");
    return;
  } else {
  }
  multiframe: ;
  if (len <= 0) {
    printk("\f%s: packet error - packet too short, channel expected at position %d.\n",
           "l1oip_socket_parse", (len - len_start) + 1);
    return;
  } else {
  }
  channel = (unsigned int )*buf & 127U;
  m = (int )*buf >> 7;
  buf = buf + 1;
  len = len - 1;
  if (m != 0) {
    if (len <= 0) {
      printk("\f%s: packet error - packet too short, length expected at position %d.\n",
             "l1oip_socket_parse", (len_start - len) + -1);
      return;
    } else {
    }
    tmp___3 = buf;
    buf = buf + 1;
    mlen = (int )*tmp___3;
    len = len - 1;
    if (mlen == 0) {
      mlen = 256;
    } else {
    }
    if (mlen + 3 > len) {
      printk("\f%s: packet error - length %d at position %d exceeds total length %d.\n",
             "l1oip_socket_parse", mlen, (len_start - len) + -1, len_start);
      return;
    } else {
    }
    if (mlen + 3 == len) {
      printk("\f%s: packet error - length %d at position %d will not allow additional packet.\n",
             "l1oip_socket_parse", mlen, (len_start - len) + 1);
      return;
    } else {
    }
  } else {
    mlen = len + -2;
  }
  if (len <= 1) {
    printk("\f%s: packet error - packet too short, time base expected at position %d.\n",
           "l1oip_socket_parse", (len - len_start) + 1);
    return;
  } else {
  }
  tmp___4 = buf;
  buf = buf + 1;
  timebase = (int )((u16 )*tmp___4) << 8U;
  tmp___5 = buf;
  buf = buf + 1;
  timebase = (int )((u16 )*tmp___5) | (int )timebase;
  len = len + -2;
  tmp___6 = constant_test_bit(6U, (unsigned long const volatile *)(& dch->Flags));
  if (tmp___6 == 0) {
    if ((debug & 655360) != 0) {
      printk("\017%s: interface become active due to received packet\n", "l1oip_socket_parse");
    } else {
    }
    test_and_set_bit(6, (unsigned long volatile *)(& dch->Flags));
    _queue_data(& dch->dev.D, 258U, 65535U, 0U, 0, 32U);
  } else {
  }
  l1oip_socket_recv(hc, (int )remotecodec, (int )channel, (int )timebase, buf, mlen);
  buf = buf + (unsigned long )mlen;
  len = len - mlen;
  if (m != 0) {
    goto multiframe;
  } else {
  }
  if ((int )((unsigned int )hc->timeout_tl.expires - (unsigned int )jiffies) <= 1249 || hc->timeout_on == 0) {
    hc->timeout_on = 1;
    del_timer(& hc->timeout_tl);
    hc->timeout_tl.expires = (unsigned long )jiffies + 16250UL;
    add_timer(& hc->timeout_tl);
  } else {
    hc->timeout_tl.expires = (unsigned long )jiffies + 16250UL;
  }
  if (hc->sin_remote.sin_addr.s_addr != sin->sin_addr.s_addr || (int )hc->sin_remote.sin_port != (int )sin->sin_port) {
    if ((debug & 131072) != 0) {
      tmp___7 = __fswab16((int )sin->sin_port);
      tmp___8 = __fswab16((int )hc->sin_remote.sin_port);
      tmp___9 = __fswab32(sin->sin_addr.s_addr);
      tmp___10 = __fswab32(hc->sin_remote.sin_addr.s_addr);
      printk("\017%s: remote address changes from 0x%08x to 0x%08x (port %d to %d)\n",
             "l1oip_socket_parse", tmp___10, tmp___9, (int )tmp___8, (int )tmp___7);
    } else {
    }
    hc->sin_remote.sin_addr.s_addr = sin->sin_addr.s_addr;
    hc->sin_remote.sin_port = sin->sin_port;
  } else {
  }
  return;
}
}
static int l1oip_socket_thread(void *data )
{ struct l1oip *hc ;
  int ret ;
  struct msghdr msg ;
  struct sockaddr_in sin_rx ;
  unsigned char *recvbuf ;
  size_t recvbuf_size ;
  int recvlen ;
  struct socket *socket ;
  struct completion wait ;
  void *tmp ;
  int tmp___0 ;
  __u16 tmp___1 ;
  __u32 tmp___2 ;
  __u16 tmp___3 ;
  int tmp___4 ;
  struct kvec iov ;
  struct task_struct *tmp___5 ;
  int tmp___6 ;
  {
  hc = (struct l1oip *)data;
  ret = 0;
  recvbuf_size = 1500UL;
  socket = 0;
  init_completion(& wait);
  wait = wait;
  tmp = kmalloc(recvbuf_size, 208U);
  recvbuf = (unsigned char *)tmp;
  if ((unsigned long )recvbuf == (unsigned long )((unsigned char *)0)) {
    printk("\v%s: Failed to alloc recvbuf.\n", "l1oip_socket_thread");
    ret = -12;
    goto fail;
  } else {
  }
  allow_signal(15);
  tmp___0 = sock_create(2, 2, 17, & socket);
  if (tmp___0 != 0) {
    printk("\v%s: Failed to create socket.\n", "l1oip_socket_thread");
    ret = -5;
    goto fail;
  } else {
  }
  hc->sin_local.sin_family = 2U;
  hc->sin_local.sin_addr.s_addr = 0U;
  tmp___1 = __fswab16((int )hc->localport);
  hc->sin_local.sin_port = tmp___1;
  hc->sin_remote.sin_family = 2U;
  tmp___2 = __fswab32(hc->remoteip);
  hc->sin_remote.sin_addr.s_addr = tmp___2;
  tmp___3 = __fswab16((int )hc->remoteport);
  hc->sin_remote.sin_port = tmp___3;
  tmp___4 = (*((socket->ops)->bind))(socket, (struct sockaddr *)(& hc->sin_local),
                                     16);
  if (tmp___4 != 0) {
    printk("\v%s: Failed to bind socket to port %d.\n", "l1oip_socket_thread", (int )hc->localport);
    ret = -22;
    goto fail;
  } else {
  }
  if ((unsigned long )socket->sk == (unsigned long )((struct sock *)0)) {
    printk("\v%s: socket->sk == NULL\n", "l1oip_socket_thread");
    ret = -5;
    goto fail;
  } else {
  }
  msg.msg_name = (void *)(& sin_rx);
  msg.msg_namelen = 16;
  msg.msg_control = 0;
  msg.msg_controllen = 0UL;
  hc->sendmsg.msg_name = (void *)(& hc->sin_remote);
  hc->sendmsg.msg_namelen = 16;
  hc->sendmsg.msg_control = 0;
  hc->sendmsg.msg_controllen = 0UL;
  spin_lock(& hc->socket_lock);
  hc->socket = socket;
  spin_unlock(& hc->socket_lock);
  if ((debug & 131072) != 0) {
    printk("\017%s: socket created and open\n", "l1oip_socket_thread");
  } else {
  }
  goto ldv_41649;
  ldv_41648:
  iov.iov_base = (void *)recvbuf;
  iov.iov_len = recvbuf_size;
  recvlen = kernel_recvmsg(socket, & msg, & iov, 1UL, recvbuf_size, 0);
  if (recvlen > 0) {
    l1oip_socket_parse(hc, & sin_rx, recvbuf, recvlen);
  } else
  if ((debug & 131072) != 0) {
    printk("\f%s: broken pipe on socket\n", "l1oip_socket_thread");
  } else {
  }
  ldv_41649:
  tmp___5 = get_current();
  tmp___6 = signal_pending(tmp___5);
  if (tmp___6 == 0) {
    goto ldv_41648;
  } else {
    goto ldv_41650;
  }
  ldv_41650:
  spin_lock(& hc->socket_lock);
  goto ldv_41652;
  ldv_41651:
  spin_unlock(& hc->socket_lock);
  schedule_timeout(25L);
  spin_lock(& hc->socket_lock);
  ldv_41652: ;
  if ((unsigned long )hc->socket == (unsigned long )((struct socket *)0)) {
    goto ldv_41651;
  } else {
    goto ldv_41653;
  }
  ldv_41653:
  hc->socket = 0;
  spin_unlock(& hc->socket_lock);
  if ((debug & 131072) != 0) {
    printk("\017%s: socket thread terminating\n", "l1oip_socket_thread");
  } else {
  }
  fail:
  kfree((void const *)recvbuf);
  if ((unsigned long )socket != (unsigned long )((struct socket *)0)) {
    sock_release(socket);
  } else {
  }
  complete(& hc->socket_complete);
  hc->socket_thread = 0;
  if ((debug & 131072) != 0) {
    printk("\017%s: socket thread terminated\n", "l1oip_socket_thread");
  } else {
  }
  return (ret);
}
}
static void l1oip_socket_close(struct l1oip *hc )
{ struct dchannel *dch ;
  int tmp ;
  {
  dch = hc->chan[hc->d_idx].dch;
  if ((unsigned long )hc->socket_thread != (unsigned long )((struct task_struct *)0)) {
    if ((debug & 131072) != 0) {
      printk("\017%s: socket thread exists, killing...\n", "l1oip_socket_close");
    } else {
    }
    send_sig(15, hc->socket_thread, 0);
    wait_for_completion(& hc->socket_complete);
  } else {
  }
  tmp = constant_test_bit(6U, (unsigned long const volatile *)(& dch->Flags));
  if (tmp != 0) {
    if ((debug & 655360) != 0) {
      printk("\017%s: interface become deactivated due to timeout\n", "l1oip_socket_close");
    } else {
    }
    test_and_clear_bit(6, (unsigned long volatile *)(& dch->Flags));
    _queue_data(& dch->dev.D, 514U, 65535U, 0U, 0, 32U);
  } else {
  }
  return;
}
}
static int l1oip_socket_open(struct l1oip *hc )
{ struct task_struct *__k ;
  struct task_struct *tmp ;
  long tmp___0 ;
  int err ;
  long tmp___1 ;
  long tmp___2 ;
  {
  l1oip_socket_close(hc);
  init_completion(& hc->socket_complete);
  tmp = kthread_create_on_node(& l1oip_socket_thread, (void *)hc, -1, "l1oip_%s",
                               (char *)(& hc->name));
  __k = tmp;
  tmp___0 = IS_ERR((void const *)__k);
  if (tmp___0 == 0L) {
    wake_up_process(__k);
  } else {
  }
  hc->socket_thread = __k;
  tmp___2 = IS_ERR((void const *)hc->socket_thread);
  if (tmp___2 != 0L) {
    tmp___1 = PTR_ERR((void const *)hc->socket_thread);
    err = (int )tmp___1;
    printk("\v%s: Failed (%d) to create socket process.\n", "l1oip_socket_open", err);
    hc->socket_thread = 0;
    sock_release(hc->socket);
    return (err);
  } else {
  }
  if ((debug & 131072) != 0) {
    printk("\017%s: socket thread created\n", "l1oip_socket_open");
  } else {
  }
  return (0);
}
}
static void l1oip_send_bh(struct work_struct *work )
{ struct l1oip *hc ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  hc = (struct l1oip *)__mptr + 0xfffffffffffffea8UL;
  if ((debug & 655360) != 0) {
    printk("\017%s: keepalive timer expired, sending empty frame on dchannel\n", "l1oip_send_bh");
  } else {
  }
  l1oip_socket_send(hc, 0, (int )((u8 )hc->d_idx), 0U, 0, 0, 0);
  return;
}
}
static void l1oip_keepalive(void *data )
{ struct l1oip *hc ;
  {
  hc = (struct l1oip *)data;
  schedule_work(& hc->workq);
  return;
}
}
static void l1oip_timeout(void *data )
{ struct l1oip *hc ;
  struct dchannel *dch ;
  int tmp ;
  {
  hc = (struct l1oip *)data;
  dch = hc->chan[hc->d_idx].dch;
  if ((debug & 524288) != 0) {
    printk("\017%s: timeout timer expired, turn layer one down.\n", "l1oip_timeout");
  } else {
  }
  hc->timeout_on = 0;
  tmp = constant_test_bit(6U, (unsigned long const volatile *)(& dch->Flags));
  if (tmp != 0) {
    if ((debug & 655360) != 0) {
      printk("\017%s: interface become deactivated due to timeout\n", "l1oip_timeout");
    } else {
    }
    test_and_clear_bit(6, (unsigned long volatile *)(& dch->Flags));
    _queue_data(& dch->dev.D, 514U, 65535U, 0U, 0, 32U);
  } else {
  }
  if (hc->ondemand != 0) {
    if ((debug & 524288) != 0) {
      printk("\017%s: on demand causes ip address to be removed\n", "l1oip_timeout");
    } else {
    }
    hc->sin_remote.sin_addr.s_addr = 0U;
  } else {
  }
  return;
}
}
static int handle_dmsg(struct mISDNchannel *ch , struct sk_buff *skb )
{ struct mISDNdevice *dev ;
  struct mISDNchannel const *__mptr ;
  struct dchannel *dch ;
  struct mISDNdevice const *__mptr___0 ;
  struct l1oip *hc ;
  struct mISDNhead *hh ;
  int ret ;
  int l ;
  int ll ;
  unsigned char *p ;
  u32 tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  __mptr = (struct mISDNchannel const *)ch;
  dev = (struct mISDNdevice *)__mptr;
  __mptr___0 = (struct mISDNdevice const *)dev;
  dch = (struct dchannel *)__mptr___0;
  hc = (struct l1oip *)dch->hw;
  hh = (struct mISDNhead *)(& skb->cb);
  ret = -22;
  switch (hh->prim) {
  case 8193: ;
  if (skb->len == 0U) {
    printk("\f%s: skb too small\n", "handle_dmsg");
    goto ldv_41701;
  } else {
  }
  if (skb->len > 300U || skb->len > 2048U) {
    printk("\f%s: skb too large\n", "handle_dmsg");
    goto ldv_41701;
  } else {
  }
  p = skb->data;
  l = (int )skb->len;
  goto ldv_41703;
  ldv_41702: ;
  if (1400 < l) {
    ll = 1400;
  } else {
    ll = l;
  }
  tmp = hc->chan[dch->slot].tx_counter;
  hc->chan[dch->slot].tx_counter = hc->chan[dch->slot].tx_counter + 1U;
  l1oip_socket_send(hc, 0, (int )((u8 )dch->slot), 0U, (int )((u16 )tmp), p, ll);
  p = p + (unsigned long )ll;
  l = l - ll;
  ldv_41703: ;
  if (l != 0) {
    goto ldv_41702;
  } else {
    goto ldv_41704;
  }
  ldv_41704:
  skb_trim(skb, 0U);
  queue_ch_frame(ch, 24578U, (int )hh->id, skb);
  return (0);
  case 257: ;
  if ((debug & 655360) != 0) {
    printk("\017%s: PH_ACTIVATE channel %d (1..%d)\n", "handle_dmsg", dch->slot, hc->b_num + 1);
  } else {
  }
  skb_trim(skb, 0U);
  tmp___0 = constant_test_bit(6U, (unsigned long const volatile *)(& dch->Flags));
  if (tmp___0 != 0) {
    queue_ch_frame(ch, 258U, (int )hh->id, skb);
  } else {
    queue_ch_frame(ch, 514U, (int )hh->id, skb);
  }
  return (0);
  case 513: ;
  if ((debug & 655360) != 0) {
    printk("\017%s: PH_DEACTIVATE channel %d (1..%d)\n", "handle_dmsg", dch->slot,
           hc->b_num + 1);
  } else {
  }
  skb_trim(skb, 0U);
  tmp___1 = constant_test_bit(6U, (unsigned long const volatile *)(& dch->Flags));
  if (tmp___1 != 0) {
    queue_ch_frame(ch, 258U, (int )hh->id, skb);
  } else {
    queue_ch_frame(ch, 514U, (int )hh->id, skb);
  }
  return (0);
  }
  ldv_41701: ;
  if (ret == 0) {
    consume_skb(skb);
  } else {
  }
  return (ret);
}
}
static int channel_dctrl(struct dchannel *dch , struct mISDN_ctrl_req *cq )
{ int ret ;
  struct l1oip *hc ;
  {
  ret = 0;
  hc = (struct l1oip *)dch->hw;
  switch (cq->op) {
  case 0:
  cq->op = 1216;
  goto ldv_41714;
  case 64:
  hc->remoteip = (unsigned int )cq->p1;
  hc->remoteport = (u16 )cq->p2;
  hc->localport = (u16 )(cq->p2 >> 16);
  if ((unsigned int )hc->remoteport == 0U) {
    hc->remoteport = hc->localport;
  } else {
  }
  if ((debug & 131072) != 0) {
    printk("\017%s: got new ip address from user space.\n", "channel_dctrl");
  } else {
  }
  l1oip_socket_open(hc);
  goto ldv_41714;
  case 128: ;
  if ((debug & 131072) != 0) {
    printk("\017%s: removing ip address.\n", "channel_dctrl");
  } else {
  }
  hc->remoteip = 0U;
  l1oip_socket_open(hc);
  goto ldv_41714;
  case 1024: ;
  if ((debug & 131072) != 0) {
    printk("\017%s: getting ip address.\n", "channel_dctrl");
  } else {
  }
  cq->p1 = (int )hc->remoteip;
  cq->p2 = (int )hc->remoteport | ((int )hc->localport << 16);
  goto ldv_41714;
  default:
  printk("\f%s: unknown Op %x\n", "channel_dctrl", cq->op);
  ret = -22;
  goto ldv_41714;
  }
  ldv_41714: ;
  return (ret);
}
}
static int open_dchannel(struct l1oip *hc , struct dchannel *dch , struct channel_req *rq )
{ void *tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  if ((debug & 2) != 0) {
    tmp = __builtin_return_address(0U);
    printk("\017%s: dev(%d) open from %p\n", "open_dchannel", dch->dev.id, tmp);
  } else {
  }
  if (rq->protocol == 0U) {
    return (-22);
  } else {
  }
  if (dch->dev.D.protocol != 0U && dch->dev.D.protocol != rq->protocol) {
    if ((debug & 2) != 0) {
      printk("\f%s: change protocol %x to %x\n", "open_dchannel", dch->dev.D.protocol,
             rq->protocol);
    } else {
    }
  } else {
  }
  if (dch->dev.D.protocol != rq->protocol) {
    dch->dev.D.protocol = rq->protocol;
  } else {
  }
  tmp___0 = constant_test_bit(6U, (unsigned long const volatile *)(& dch->Flags));
  if (tmp___0 != 0) {
    _queue_data(& dch->dev.D, 258U, 65535U, 0U, 0, 208U);
  } else {
  }
  rq->ch = & dch->dev.D;
  tmp___1 = try_module_get(& __this_module);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    printk("\f%s:cannot get module\n", "open_dchannel");
  } else {
  }
  return (0);
}
}
static int open_bchannel(struct l1oip *hc , struct dchannel *dch , struct channel_req *rq )
{ struct bchannel *bch ;
  int ch ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  tmp = test_channelmap((u_int )rq->adr.channel, (u_char *)(& dch->dev.channelmap));
  if (tmp == 0) {
    return (-22);
  } else {
  }
  if (rq->protocol == 0U) {
    return (-22);
  } else {
  }
  ch = (int )rq->adr.channel;
  bch = hc->chan[ch].bch;
  if ((unsigned long )bch == (unsigned long )((struct bchannel *)0)) {
    printk("\v%s:internal error ch %d has no bch\n", "open_bchannel", ch);
    return (-22);
  } else {
  }
  tmp___0 = test_and_set_bit(5, (unsigned long volatile *)(& bch->Flags));
  if (tmp___0 != 0) {
    return (-16);
  } else {
  }
  bch->ch.protocol = rq->protocol;
  rq->ch = & bch->ch;
  tmp___1 = try_module_get(& __this_module);
  if (tmp___1) {
    tmp___2 = 0;
  } else {
    tmp___2 = 1;
  }
  if (tmp___2) {
    printk("\f%s:cannot get module\n", "open_bchannel");
  } else {
  }
  return (0);
}
}
static int l1oip_dctrl(struct mISDNchannel *ch , u_int cmd , void *arg )
{ struct mISDNdevice *dev ;
  struct mISDNchannel const *__mptr ;
  struct dchannel *dch ;
  struct mISDNdevice const *__mptr___0 ;
  struct l1oip *hc ;
  struct channel_req *rq ;
  int err ;
  void *tmp ;
  {
  __mptr = (struct mISDNchannel const *)ch;
  dev = (struct mISDNdevice *)__mptr;
  __mptr___0 = (struct mISDNdevice const *)dev;
  dch = (struct dchannel *)__mptr___0;
  hc = (struct l1oip *)dch->hw;
  err = 0;
  if (dch->debug & 1) {
    printk("\017%s: cmd:%x %p\n", "l1oip_dctrl", cmd, arg);
  } else {
  }
  switch (cmd) {
  case 256:
  rq = (struct channel_req *)arg;
  switch (rq->protocol) {
  case 1: ;
  case 2: ;
  if (hc->pri != 0) {
    err = -22;
    goto ldv_41752;
  } else {
  }
  err = open_dchannel(hc, dch, rq);
  goto ldv_41752;
  case 3: ;
  case 4: ;
  if (hc->pri == 0) {
    err = -22;
    goto ldv_41752;
  } else {
  }
  err = open_dchannel(hc, dch, rq);
  goto ldv_41752;
  default:
  err = open_bchannel(hc, dch, rq);
  }
  ldv_41752: ;
  goto ldv_41756;
  case 512: ;
  if ((debug & 2) != 0) {
    tmp = __builtin_return_address(0U);
    printk("\017%s: dev(%d) close from %p\n", "l1oip_dctrl", dch->dev.id, tmp);
  } else {
  }
  module_put(& __this_module);
  goto ldv_41756;
  case 768:
  err = channel_dctrl(dch, (struct mISDN_ctrl_req *)arg);
  goto ldv_41756;
  default: ;
  if (dch->debug & 1) {
    printk("\017%s: unknown command %x\n", "l1oip_dctrl", cmd);
  } else {
  }
  err = -22;
  }
  ldv_41756: ;
  return (err);
}
}
static int handle_bmsg(struct mISDNchannel *ch , struct sk_buff *skb )
{ struct bchannel *bch ;
  struct mISDNchannel const *__mptr ;
  struct l1oip *hc ;
  int ret ;
  struct mISDNhead *hh ;
  int l ;
  int ll ;
  unsigned char *p ;
  void *tmp ;
  void *tmp___0 ;
  {
  __mptr = (struct mISDNchannel const *)ch;
  bch = (struct bchannel *)__mptr;
  hc = (struct l1oip *)bch->hw;
  ret = -22;
  hh = (struct mISDNhead *)(& skb->cb);
  switch (hh->prim) {
  case 8193: ;
  if (skb->len == 0U) {
    printk("\f%s: skb too small\n", "handle_bmsg");
    goto ldv_41775;
  } else {
  }
  if (skb->len > 300U || skb->len > 2048U) {
    printk("\f%s: skb too large\n", "handle_bmsg");
    goto ldv_41775;
  } else {
  }
  l = (int )skb->len;
  tmp = memchr_inv((void const *)skb->data, 255, (size_t )l);
  if ((unsigned long )tmp == (unsigned long )((void *)0)) {
    if ((debug & 524288) != 0) {
      printk("\017%s: got AIS, not sending, but counting\n", "handle_bmsg");
    } else {
    }
    hc->chan[bch->slot].tx_counter = hc->chan[bch->slot].tx_counter + (u32 )l;
    skb_trim(skb, 0U);
    queue_ch_frame(ch, 24578U, (int )hh->id, skb);
    return (0);
  } else {
  }
  l = (int )skb->len;
  tmp___0 = memchr_inv((void const *)skb->data, 42, (size_t )l);
  if ((unsigned long )tmp___0 == (unsigned long )((void *)0)) {
    if ((debug & 524288) != 0) {
      printk("\017%s: got silence, not sending, but counting\n", "handle_bmsg");
    } else {
    }
    hc->chan[bch->slot].tx_counter = hc->chan[bch->slot].tx_counter + (u32 )l;
    skb_trim(skb, 0U);
    queue_ch_frame(ch, 24578U, (int )hh->id, skb);
    return (0);
  } else {
  }
  p = skb->data;
  l = (int )skb->len;
  goto ldv_41777;
  ldv_41776: ;
  if (1400 < l) {
    ll = 1400;
  } else {
    ll = l;
  }
  l1oip_socket_send(hc, (int )((u8 )hc->codec), (int )((u8 )bch->slot), 0U, (int )((u16 )hc->chan[bch->slot].tx_counter),
                    p, ll);
  hc->chan[bch->slot].tx_counter = hc->chan[bch->slot].tx_counter + (u32 )ll;
  p = p + (unsigned long )ll;
  l = l - ll;
  ldv_41777: ;
  if (l != 0) {
    goto ldv_41776;
  } else {
    goto ldv_41778;
  }
  ldv_41778:
  skb_trim(skb, 0U);
  queue_ch_frame(ch, 24578U, (int )hh->id, skb);
  return (0);
  case 257: ;
  if ((debug & 655360) != 0) {
    printk("\017%s: PH_ACTIVATE channel %d (1..%d)\n", "handle_bmsg", bch->slot, hc->b_num + 1);
  } else {
  }
  hc->chan[bch->slot].codecstate = 0U;
  test_and_set_bit(6, (unsigned long volatile *)(& bch->Flags));
  skb_trim(skb, 0U);
  queue_ch_frame(ch, 258U, (int )hh->id, skb);
  return (0);
  case 513: ;
  if ((debug & 655360) != 0) {
    printk("\017%s: PH_DEACTIVATE channel %d (1..%d)\n", "handle_bmsg", bch->slot,
           hc->b_num + 1);
  } else {
  }
  test_and_clear_bit(6, (unsigned long volatile *)(& bch->Flags));
  skb_trim(skb, 0U);
  queue_ch_frame(ch, 514U, (int )hh->id, skb);
  return (0);
  }
  ldv_41775: ;
  if (ret == 0) {
    consume_skb(skb);
  } else {
  }
  return (ret);
}
}
static int channel_bctrl(struct bchannel *bch , struct mISDN_ctrl_req *cq )
{ int ret ;
  struct dsp_features *features ;
  {
  ret = 0;
  features = (struct dsp_features *)*((u_long *)(& cq->p1));
  switch (cq->op) {
  case 0:
  cq->op = 8192;
  goto ldv_41788;
  case 8193: ;
  if ((debug & 524288) != 0) {
    printk("\017%s: HW_FEATURE request\n", "channel_bctrl");
  } else {
  }
  features->unclocked = 1;
  features->unordered = 1;
  goto ldv_41788;
  default:
  printk("\f%s: unknown Op %x\n", "channel_bctrl", cq->op);
  ret = -22;
  goto ldv_41788;
  }
  ldv_41788: ;
  return (ret);
}
}
static int l1oip_bctrl(struct mISDNchannel *ch , u_int cmd , void *arg )
{ struct bchannel *bch ;
  struct mISDNchannel const *__mptr ;
  int err ;
  {
  __mptr = (struct mISDNchannel const *)ch;
  bch = (struct bchannel *)__mptr;
  err = -22;
  if (bch->debug & 1) {
    printk("\017%s: cmd:%x %p\n", "l1oip_bctrl", cmd, arg);
  } else {
  }
  switch (cmd) {
  case 512:
  test_and_clear_bit(5, (unsigned long volatile *)(& bch->Flags));
  test_and_clear_bit(6, (unsigned long volatile *)(& bch->Flags));
  ch->protocol = 0U;
  ch->peer = 0;
  module_put(& __this_module);
  err = 0;
  goto ldv_41803;
  case 768:
  err = channel_bctrl(bch, (struct mISDN_ctrl_req *)arg);
  goto ldv_41803;
  default:
  printk("\f%s: unknown prim(%x)\n", "l1oip_bctrl", cmd);
  }
  ldv_41803: ;
  return (err);
}
}
static void release_card(struct l1oip *hc )
{ int ch ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = timer_pending((struct timer_list const *)(& hc->keep_tl));
  if (tmp != 0) {
    del_timer(& hc->keep_tl);
  } else {
  }
  tmp___0 = timer_pending((struct timer_list const *)(& hc->timeout_tl));
  if (tmp___0 != 0) {
    del_timer(& hc->timeout_tl);
  } else {
  }
  cancel_work_sync(& hc->workq);
  if ((unsigned long )hc->socket_thread != (unsigned long )((struct task_struct *)0)) {
    l1oip_socket_close(hc);
  } else {
  }
  if (hc->registered != 0 && (unsigned long )hc->chan[hc->d_idx].dch != (unsigned long )((struct dchannel *)0)) {
    mISDN_unregister_device(& (hc->chan[hc->d_idx].dch)->dev);
  } else {
  }
  ch = 0;
  goto ldv_41811;
  ldv_41810: ;
  if ((unsigned long )hc->chan[ch].dch != (unsigned long )((struct dchannel *)0)) {
    mISDN_freedchannel(hc->chan[ch].dch);
    kfree((void const *)hc->chan[ch].dch);
  } else {
  }
  if ((unsigned long )hc->chan[ch].bch != (unsigned long )((struct bchannel *)0)) {
    mISDN_freebchannel(hc->chan[ch].bch);
    kfree((void const *)hc->chan[ch].bch);
  } else {
  }
  ch = ch + 1;
  ldv_41811: ;
  if (ch <= 127) {
    goto ldv_41810;
  } else {
    goto ldv_41812;
  }
  ldv_41812:
  spin_lock(& l1oip_lock);
  list_del(& hc->list);
  spin_unlock(& l1oip_lock);
  kfree((void const *)hc);
  return;
}
}
static void l1oip_cleanup(void)
{ struct l1oip *hc ;
  struct l1oip *next ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)l1oip_ilist.next;
  hc = (struct l1oip *)__mptr;
  __mptr___0 = (struct list_head const *)hc->list.next;
  next = (struct l1oip *)__mptr___0;
  goto ldv_41825;
  ldv_41824:
  release_card(hc);
  hc = next;
  __mptr___1 = (struct list_head const *)next->list.next;
  next = (struct l1oip *)__mptr___1;
  ldv_41825: ;
  if ((unsigned long )(& hc->list) != (unsigned long )(& l1oip_ilist)) {
    goto ldv_41824;
  } else {
    goto ldv_41826;
  }
  ldv_41826:
  l1oip_4bit_free();
  return;
}
}
static int init_card(struct l1oip *hc , int pri , int bundle )
{ struct dchannel *dch ;
  struct bchannel *bch ;
  int ret ;
  int i ;
  int ch ;
  struct lock_class_key __key ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  {
  spinlock_check(& hc->socket_lock);
  __raw_spin_lock_init(& hc->socket_lock.ldv_5961.rlock, "&(&hc->socket_lock)->rlock",
                       & __key);
  hc->idx = l1oip_cnt;
  hc->pri = pri;
  if (pri != 0) {
    hc->d_idx = 16;
  } else {
    hc->d_idx = 3;
  }
  if (pri != 0) {
    hc->b_num = 30;
  } else {
    hc->b_num = 2;
  }
  hc->bundle = bundle;
  if (hc->pri != 0) {
    sprintf((char *)(& hc->name), "l1oip-e1.%d", l1oip_cnt + 1);
  } else {
    sprintf((char *)(& hc->name), "l1oip-s0.%d", l1oip_cnt + 1);
  }
  switch (codec[l1oip_cnt]) {
  case 0: ;
  case 1: ;
  case 2: ;
  case 3: ;
  goto ldv_41842;
  default:
  printk("\vCodec(%d) not supported.\n", codec[l1oip_cnt]);
  return (-22);
  }
  ldv_41842:
  hc->codec = (int )codec[l1oip_cnt];
  if ((debug & 65536) != 0) {
    printk("\017%s: using codec %d\n", "init_card", hc->codec);
  } else {
  }
  if (id[l1oip_cnt] == 0U) {
    printk("\fWarning: No \'id\' value given or 0, this is highly unsecure. Please use 32 bit randmom number 0x...\n");
  } else {
  }
  hc->id = id[l1oip_cnt];
  if ((debug & 65536) != 0) {
    printk("\017%s: using id 0x%x\n", "init_card", hc->id);
  } else {
  }
  hc->ondemand = (int )ondemand[l1oip_cnt];
  if (hc->ondemand != 0 && hc->id == 0U) {
    printk("\v%s: ondemand option only allowed in conjunction with non 0 ID\n", "init_card");
    return (-22);
  } else {
  }
  if (limit[l1oip_cnt] != 0U) {
    hc->b_num = (int )limit[l1oip_cnt];
  } else {
  }
  if (pri == 0 && hc->b_num > 2) {
    printk("\vMaximum limit for BRI interface is 2 channels.\n");
    return (-22);
  } else {
  }
  if (pri != 0 && hc->b_num > 126) {
    printk("\vMaximum limit for PRI interface is 126 channels.\n");
    return (-22);
  } else {
  }
  if (pri != 0 && hc->b_num > 30) {
    printk("\fMaximum limit for BRI interface is 30 channels.\n");
    printk("\fYour selection of %d channels must be supported by application.\n",
           hc->limit);
  } else {
  }
  hc->remoteip = (((ip[l1oip_cnt << 2] << 24) | (ip[(l1oip_cnt << 2) + 1] << 16)) | (ip[(l1oip_cnt << 2) + 2] << 8)) | ip[(l1oip_cnt << 2) + 3];
  if (port[l1oip_cnt] != 0U) {
    hc->localport = (u16 )port[l1oip_cnt];
  } else {
    hc->localport = (unsigned int )((u16 )l1oip_cnt) + 931U;
  }
  if (remoteport[l1oip_cnt] != 0U) {
    hc->remoteport = (u16 )remoteport[l1oip_cnt];
  } else {
    hc->remoteport = hc->localport;
  }
  if ((debug & 65536) != 0) {
    printk("\017%s: using local port %d remote ip %d.%d.%d.%d port %d ondemand %d\n",
           "init_card", (int )hc->localport, hc->remoteip >> 24, (hc->remoteip >> 16) & 255U,
           (hc->remoteip >> 8) & 255U, hc->remoteip & 255U, (int )hc->remoteport,
           hc->ondemand);
  } else {
  }
  tmp = kzalloc(1768UL, 208U);
  dch = (struct dchannel *)tmp;
  if ((unsigned long )dch == (unsigned long )((struct dchannel *)0)) {
    return (-12);
  } else {
  }
  dch->debug = debug;
  mISDN_initdchannel(dch, 300, 0);
  dch->hw = (void *)hc;
  if (pri != 0) {
    dch->dev.Dprotocols = 24U;
  } else {
    dch->dev.Dprotocols = 6U;
  }
  dch->dev.Bprotocols = 6U;
  dch->dev.D.send = & handle_dmsg;
  dch->dev.D.ctrl = & l1oip_dctrl;
  dch->dev.nrbchan = (u_int )hc->b_num;
  dch->slot = hc->d_idx;
  hc->chan[hc->d_idx].dch = dch;
  i = 1;
  ch = 0;
  goto ldv_41846;
  ldv_41845: ;
  if (ch == 15) {
    i = i + 1;
  } else {
  }
  tmp___0 = kzalloc(504UL, 208U);
  bch = (struct bchannel *)tmp___0;
  if ((unsigned long )bch == (unsigned long )((struct bchannel *)0)) {
    printk("\v%s: no memory for bchannel\n", "init_card");
    return (-12);
  } else {
  }
  bch->nr = i + ch;
  bch->slot = i + ch;
  bch->debug = debug;
  mISDN_initbchannel(bch, 2056, 0);
  bch->hw = (void *)hc;
  bch->ch.send = & handle_bmsg;
  bch->ch.ctrl = & l1oip_bctrl;
  bch->ch.nr = (u_int )(i + ch);
  list_add(& bch->ch.list, & dch->dev.bchannels);
  hc->chan[i + ch].bch = bch;
  set_channelmap((u_int )bch->nr, (u_char *)(& dch->dev.channelmap));
  ch = ch + 1;
  ldv_41846: ;
  if ((u_int )ch < dch->dev.nrbchan) {
    goto ldv_41845;
  } else {
    goto ldv_41847;
  }
  ldv_41847:
  ret = mISDN_register_device(& dch->dev, 0, (char *)(& hc->name));
  if (ret != 0) {
    return (ret);
  } else {
  }
  hc->registered = 1;
  if ((debug & 65536) != 0) {
    printk("\017%s: Setting up network card(%d)\n", "init_card", l1oip_cnt + 1);
  } else {
  }
  ret = l1oip_socket_open(hc);
  if (ret != 0) {
    return (ret);
  } else {
  }
  hc->keep_tl.function = (void (*)(unsigned long ))(& l1oip_keepalive);
  hc->keep_tl.data = (unsigned long )hc;
  init_timer_key(& hc->keep_tl, 0U, "(&hc->keep_tl)", & __key___0);
  hc->keep_tl.expires = (unsigned long )jiffies + 500UL;
  add_timer(& hc->keep_tl);
  hc->timeout_tl.function = (void (*)(unsigned long ))(& l1oip_timeout);
  hc->timeout_tl.data = (unsigned long )hc;
  init_timer_key(& hc->timeout_tl, 0U, "(&hc->timeout_tl)", & __key___1);
  hc->timeout_on = 0;
  return (0);
}
}
static int l1oip_init(void)
{ int pri ;
  int bundle ;
  struct l1oip *hc ;
  int ret ;
  struct lock_class_key __key ;
  int tmp ;
  char *tmp___0 ;
  char *tmp___1 ;
  void *tmp___2 ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0 ;
  {
  printk("\016mISDN: Layer-1-over-IP driver Rev. %s\n", l1oip_revision);
  INIT_LIST_HEAD(& l1oip_ilist);
  spinlock_check(& l1oip_lock);
  __raw_spin_lock_init(& l1oip_lock.ldv_5961.rlock, "&(&l1oip_lock)->rlock", & __key);
  tmp = l1oip_4bit_alloc(ulaw);
  if (tmp != 0) {
    return (-12);
  } else {
  }
  l1oip_cnt = 0;
  goto ldv_41868;
  ldv_41867: ;
  switch (type[l1oip_cnt] & 255U) {
  case 1:
  pri = 0;
  bundle = 0;
  goto ldv_41859;
  case 2:
  pri = 1;
  bundle = 0;
  goto ldv_41859;
  case 3:
  pri = 0;
  bundle = 1;
  goto ldv_41859;
  case 4:
  pri = 1;
  bundle = 1;
  goto ldv_41859;
  default:
  printk("\vCard type(%d) not supported.\n", type[l1oip_cnt] & 255U);
  l1oip_cleanup();
  return (-22);
  }
  ldv_41859: ;
  if ((debug & 65536) != 0) {
    if (bundle != 0) {
      tmp___0 = (char *)"bundled IP packet for all B-channels";
    } else {
      tmp___0 = (char *)"separate IP packets for every B-channel";
    }
    if (pri != 0) {
      tmp___1 = (char *)"PRI";
    } else {
      tmp___1 = (char *)"BRI";
    }
    printk("\017%s: interface %d is %s with %s.\n", "l1oip_init", l1oip_cnt, tmp___1,
           tmp___0);
  } else {
  }
  tmp___2 = kzalloc(4816UL, 32U);
  hc = (struct l1oip *)tmp___2;
  if ((unsigned long )hc == (unsigned long )((struct l1oip *)0)) {
    printk("\vNo kmem for L1-over-IP driver.\n");
    l1oip_cleanup();
    return (-12);
  } else {
  }
  __init_work(& hc->workq, 0);
  __constr_expr_0.counter = 4195328L;
  hc->workq.data = __constr_expr_0;
  lockdep_init_map(& hc->workq.lockdep_map, "(&hc->workq)", & __key___0, 0);
  INIT_LIST_HEAD(& hc->workq.entry);
  hc->workq.func = & l1oip_send_bh;
  spin_lock(& l1oip_lock);
  list_add_tail(& hc->list, & l1oip_ilist);
  spin_unlock(& l1oip_lock);
  ret = init_card(hc, pri, bundle);
  if (ret != 0) {
    l1oip_cleanup();
    return (ret);
  } else {
  }
  l1oip_cnt = l1oip_cnt + 1;
  ldv_41868: ;
  if (l1oip_cnt <= 15 && type[l1oip_cnt] != 0U) {
    goto ldv_41867;
  } else {
    goto ldv_41869;
  }
  ldv_41869:
  printk("\016%d virtual devices registered\n", l1oip_cnt);
  return (0);
}
}
int ldv_retval_0 ;
void ldv_initialize(void) ;
void ldv_check_final_state(void) ;
int main(void)
{ int tmp ;
  int tmp___0 ;
  {
  ldv_initialize();
  ref_cnt = 0;
  ldv_state_variable_0 = 1;
  ldv_41898:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_state_variable_0 != 0) {
    tmp___0 = __VERIFIER_nondet_int();
    switch (tmp___0) {
    case 0: ;
    if (ldv_state_variable_0 == 3 && ref_cnt == 0) {
      l1oip_cleanup();
      ldv_state_variable_0 = 2;
      goto ldv_final;
    } else {
    }
    goto ldv_41893;
    case 1: ;
    if (ldv_state_variable_0 == 1) {
      ldv_retval_0 = l1oip_init();
      if (ldv_retval_0 == 0) {
        ldv_state_variable_0 = 3;
      } else {
      }
      if (ldv_retval_0 != 0) {
        ldv_state_variable_0 = 2;
        goto ldv_final;
      } else {
      }
    } else {
    }
    goto ldv_41893;
    default: ;
    goto ldv_41893;
    }
    ldv_41893: ;
  } else {
  }
  goto ldv_41896;
  default: ;
  goto ldv_41896;
  }
  ldv_41896: ;
  goto ldv_41898;
  ldv_final:
  ldv_check_final_state();
  return 0;
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
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_4(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_5(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_6(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_7(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 ) ;
extern void *vzalloc(unsigned long ) ;
extern void vfree(void const * ) ;
static u8 *table_com ;
static u16 *table_dec ;
static u8 alaw_to_ulaw[256U] =
  { 171U, 43U, 227U, 99U,
        139U, 11U, 201U, 73U,
        186U, 58U, 246U, 118U,
        155U, 27U, 215U, 87U,
        163U, 35U, 221U, 93U,
        131U, 3U, 193U, 65U,
        178U, 50U, 235U, 107U,
        147U, 19U, 207U, 79U,
        175U, 47U, 231U, 103U,
        143U, 15U, 205U, 77U,
        190U, 62U, 254U, 126U,
        159U, 31U, 219U, 91U,
        167U, 39U, 223U, 95U,
        135U, 7U, 197U, 69U,
        182U, 54U, 239U, 111U,
        151U, 23U, 211U, 83U,
        169U, 41U, 225U, 97U,
        137U, 9U, 199U, 71U,
        184U, 56U, 242U, 114U,
        153U, 25U, 213U, 85U,
        161U, 33U, 220U, 92U,
        129U, 1U, 191U, 63U,
        176U, 48U, 233U, 105U,
        145U, 17U, 206U, 78U,
        173U, 45U, 229U, 101U,
        141U, 13U, 203U, 75U,
        188U, 60U, 250U, 122U,
        157U, 29U, 217U, 89U,
        165U, 37U, 222U, 94U,
        133U, 5U, 195U, 67U,
        180U, 52U, 237U, 109U,
        149U, 21U, 209U, 81U,
        172U, 44U, 228U, 100U,
        140U, 12U, 202U, 74U,
        187U, 59U, 248U, 120U,
        156U, 28U, 216U, 88U,
        164U, 36U, 222U, 94U,
        132U, 4U, 194U, 66U,
        179U, 51U, 236U, 108U,
        148U, 20U, 208U, 80U,
        176U, 48U, 232U, 104U,
        144U, 16U, 206U, 78U,
        191U, 63U, 254U, 126U,
        160U, 32U, 220U, 92U,
        168U, 40U, 224U, 96U,
        136U, 8U, 198U, 70U,
        183U, 55U, 240U, 112U,
        152U, 24U, 212U, 84U,
        170U, 42U, 226U, 98U,
        138U, 10U, 200U, 72U,
        185U, 57U, 244U, 116U,
        154U, 26U, 214U, 86U,
        162U, 34U, 221U, 93U,
        130U, 2U, 192U, 64U,
        177U, 49U, 234U, 106U,
        146U, 18U, 207U, 79U,
        174U, 46U, 230U, 102U,
        142U, 14U, 204U, 76U,
        189U, 61U, 252U, 124U,
        158U, 30U, 218U, 90U,
        166U, 38U, 223U, 95U,
        134U, 6U, 196U, 68U,
        181U, 53U, 238U, 110U,
        150U, 22U, 210U, 82U};
static u8 ulaw_to_alaw[256U] =
  { 171U, 85U, 213U, 21U,
        149U, 117U, 245U, 53U,
        181U, 69U, 197U, 5U,
        133U, 101U, 229U, 37U,
        165U, 93U, 221U, 29U,
        157U, 125U, 253U, 61U,
        189U, 77U, 205U, 13U,
        141U, 109U, 237U, 45U,
        173U, 81U, 209U, 17U,
        145U, 113U, 241U, 49U,
        177U, 65U, 193U, 1U,
        129U, 97U, 225U, 33U,
        89U, 217U, 25U, 153U,
        121U, 249U, 57U, 185U,
        73U, 201U, 9U, 137U,
        105U, 233U, 41U, 169U,
        215U, 23U, 151U, 119U,
        247U, 55U, 183U, 71U,
        199U, 7U, 135U, 103U,
        231U, 39U, 167U, 223U,
        159U, 127U, 255U, 63U,
        191U, 79U, 207U, 15U,
        143U, 111U, 239U, 47U,
        83U, 19U, 115U, 51U,
        179U, 67U, 195U, 3U,
        131U, 99U, 227U, 35U,
        163U, 91U, 219U, 27U,
        155U, 123U, 251U, 59U,
        187U, 187U, 75U, 75U,
        203U, 203U, 11U, 11U,
        139U, 139U, 107U, 107U,
        235U, 235U, 43U, 43U,
        171U, 84U, 212U, 20U,
        148U, 116U, 244U, 52U,
        180U, 68U, 196U, 4U,
        132U, 100U, 228U, 36U,
        164U, 92U, 220U, 28U,
        156U, 124U, 252U, 60U,
        188U, 76U, 204U, 12U,
        140U, 108U, 236U, 44U,
        172U, 80U, 208U, 16U,
        144U, 112U, 240U, 48U,
        176U, 64U, 192U, 0U,
        128U, 96U, 224U, 32U,
        88U, 216U, 24U, 152U,
        120U, 248U, 56U, 184U,
        72U, 200U, 8U, 136U,
        104U, 232U, 40U, 168U,
        214U, 22U, 150U, 118U,
        246U, 54U, 182U, 70U,
        198U, 6U, 134U, 102U,
        230U, 38U, 166U, 222U,
        158U, 126U, 254U, 62U,
        190U, 78U, 206U, 14U,
        142U, 110U, 238U, 46U,
        82U, 18U, 114U, 50U,
        178U, 66U, 194U, 2U,
        130U, 98U, 226U, 34U,
        162U, 90U, 218U, 26U,
        154U, 122U, 250U, 58U,
        186U, 186U, 74U, 74U,
        202U, 202U, 10U, 10U,
        138U, 138U, 106U, 106U,
        234U, 234U, 42U, 42U};
static u8 alaw_to_4bit[256U] =
  { 14U, 1U, 10U, 5U,
        15U, 0U, 12U, 3U,
        13U, 2U, 8U, 7U,
        15U, 0U, 11U, 4U,
        14U, 1U, 10U, 5U,
        15U, 0U, 12U, 3U,
        13U, 2U, 9U, 6U,
        15U, 0U, 11U, 4U,
        14U, 1U, 10U, 5U,
        15U, 0U, 12U, 3U,
        13U, 2U, 8U, 7U,
        15U, 0U, 11U, 4U,
        14U, 1U, 10U, 5U,
        15U, 0U, 12U, 3U,
        13U, 2U, 9U, 6U,
        15U, 0U, 11U, 4U,
        14U, 1U, 10U, 5U,
        15U, 0U, 12U, 3U,
        13U, 2U, 8U, 7U,
        15U, 0U, 11U, 4U,
        14U, 1U, 10U, 5U,
        15U, 0U, 13U, 2U,
        14U, 2U, 9U, 6U,
        15U, 0U, 11U, 4U,
        14U, 1U, 10U, 5U,
        15U, 0U, 12U, 3U,
        13U, 2U, 8U, 7U,
        15U, 0U, 11U, 4U,
        14U, 1U, 10U, 5U,
        15U, 0U, 12U, 3U,
        13U, 2U, 9U, 6U,
        15U, 0U, 11U, 4U,
        14U, 1U, 10U, 5U,
        15U, 0U, 12U, 3U,
        13U, 2U, 8U, 7U,
        15U, 0U, 11U, 4U,
        14U, 1U, 10U, 5U,
        15U, 0U, 12U, 3U,
        13U, 2U, 9U, 6U,
        15U, 0U, 11U, 4U,
        14U, 2U, 9U, 6U,
        15U, 0U, 11U, 4U,
        13U, 2U, 8U, 7U,
        15U, 1U, 10U, 5U,
        14U, 1U, 10U, 5U,
        15U, 0U, 12U, 3U,
        13U, 2U, 9U, 7U,
        15U, 0U, 11U, 4U,
        14U, 1U, 10U, 5U,
        15U, 0U, 12U, 3U,
        13U, 2U, 8U, 7U,
        15U, 0U, 11U, 4U,
        14U, 1U, 10U, 5U,
        15U, 0U, 12U, 3U,
        13U, 2U, 9U, 6U,
        15U, 0U, 11U, 4U,
        14U, 1U, 10U, 5U,
        15U, 0U, 12U, 3U,
        13U, 2U, 8U, 7U,
        15U, 0U, 11U, 4U,
        14U, 1U, 10U, 5U,
        15U, 0U, 12U, 3U,
        13U, 2U, 9U, 6U,
        15U, 0U, 11U, 4U};
static u8 _4bit_to_alaw[16U] =
  { 93U, 81U, 217U, 215U,
        95U, 83U, 163U, 75U,
        42U, 58U, 34U, 46U,
        38U, 86U, 32U, 44U};
static u8 ulaw_to_4bit[256U] =
  { 0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        1U, 1U, 1U, 1U,
        2U, 2U, 2U, 2U,
        2U, 2U, 2U, 2U,
        2U, 2U, 2U, 2U,
        2U, 2U, 2U, 2U,
        3U, 3U, 3U, 3U,
        3U, 3U, 3U, 3U,
        3U, 3U, 3U, 3U,
        3U, 3U, 4U, 4U,
        4U, 4U, 4U, 4U,
        4U, 4U, 4U, 4U,
        4U, 4U, 4U, 4U,
        5U, 5U, 5U, 5U,
        5U, 5U, 5U, 5U,
        5U, 5U, 5U, 5U,
        6U, 6U, 6U, 6U,
        6U, 6U, 6U, 6U,
        7U, 7U, 7U, 7U,
        7U, 7U, 7U, 7U,
        7U, 7U, 7U, 7U,
        7U, 7U, 7U, 8U,
        15U, 15U, 15U, 15U,
        15U, 15U, 15U, 15U,
        15U, 15U, 15U, 15U,
        15U, 15U, 15U, 15U,
        15U, 15U, 15U, 15U,
        15U, 15U, 15U, 15U,
        15U, 15U, 15U, 15U,
        15U, 15U, 15U, 15U,
        15U, 14U, 14U, 14U,
        14U, 14U, 14U, 14U,
        14U, 14U, 14U, 14U,
        14U, 14U, 14U, 14U,
        14U, 13U, 13U, 13U,
        13U, 13U, 13U, 13U,
        13U, 13U, 13U, 13U,
        13U, 13U, 13U, 13U,
        12U, 12U, 12U, 12U,
        12U, 12U, 12U, 12U,
        12U, 12U, 12U, 12U,
        12U, 12U, 11U, 11U,
        11U, 11U, 11U, 11U,
        11U, 11U, 11U, 11U,
        11U, 11U, 11U, 11U,
        10U, 10U, 10U, 10U,
        10U, 10U, 10U, 10U,
        10U, 10U, 10U, 10U,
        9U, 9U, 9U, 9U,
        9U, 9U, 9U, 9U,
        9U, 8U, 8U, 8U,
        8U, 8U, 8U, 8U,
        8U, 8U, 8U, 8U,
        8U, 8U, 8U, 8U};
static u8 _4bit_to_ulaw[16U] =
  { 17U, 33U, 49U, 64U,
        78U, 92U, 104U, 113U,
        254U, 239U, 231U, 219U,
        205U, 191U, 175U, 159U};
int l1oip_law_to_4bit(u8 *data , int len , u8 *result , u32 *state )
{ int ii ;
  int i ;
  int o ;
  u8 *tmp ;
  u8 *tmp___0 ;
  u8 *tmp___1 ;
  {
  i = 0;
  o = 0;
  if (len == 0) {
    return (0);
  } else {
  }
  if (*state != 0U) {
    tmp = result;
    result = result + 1;
    tmp___0 = data;
    data = data + 1;
    *tmp = *(table_com + (unsigned long )(((*state << 8) & 65535U) | (u32 )*tmp___0));
    len = len - 1;
    o = o + 1;
  } else {
  }
  ii = len >> 1;
  goto ldv_40448;
  ldv_40447:
  tmp___1 = result;
  result = result + 1;
  *tmp___1 = *(table_com + (unsigned long )(((int )*data << 8) | (int )*(data + 1UL)));
  data = data + 2UL;
  i = i + 1;
  o = o + 1;
  ldv_40448: ;
  if (i < ii) {
    goto ldv_40447;
  } else {
    goto ldv_40449;
  }
  ldv_40449: ;
  if (len & 1) {
    *state = (u32 )((int )*data + 256);
  } else {
    *state = 0U;
  }
  return (o);
}
}
int l1oip_4bit_to_law(u8 *data , int len , u8 *result )
{ int i ;
  u16 r ;
  u8 *tmp ;
  u8 *tmp___0 ;
  u8 *tmp___1 ;
  {
  i = 0;
  goto ldv_40458;
  ldv_40457:
  tmp = data;
  data = data + 1;
  r = *(table_dec + (unsigned long )*tmp);
  tmp___0 = result;
  result = result + 1;
  *tmp___0 = (u8 )((int )r >> 8);
  tmp___1 = result;
  result = result + 1;
  *tmp___1 = (u8 )r;
  i = i + 1;
  ldv_40458: ;
  if (i < len) {
    goto ldv_40457;
  } else {
    goto ldv_40459;
  }
  ldv_40459: ;
  return (len << 1);
}
}
int l1oip_alaw_to_ulaw(u8 *data , int len , u8 *result )
{ int i ;
  u8 *tmp ;
  u8 *tmp___0 ;
  {
  i = 0;
  goto ldv_40467;
  ldv_40466:
  tmp = result;
  result = result + 1;
  tmp___0 = data;
  data = data + 1;
  *tmp = alaw_to_ulaw[(int )*tmp___0];
  i = i + 1;
  ldv_40467: ;
  if (i < len) {
    goto ldv_40466;
  } else {
    goto ldv_40468;
  }
  ldv_40468: ;
  return (len);
}
}
int l1oip_ulaw_to_alaw(u8 *data , int len , u8 *result )
{ int i ;
  u8 *tmp ;
  u8 *tmp___0 ;
  {
  i = 0;
  goto ldv_40476;
  ldv_40475:
  tmp = result;
  result = result + 1;
  tmp___0 = data;
  data = data + 1;
  *tmp = ulaw_to_alaw[(int )*tmp___0];
  i = i + 1;
  ldv_40476: ;
  if (i < len) {
    goto ldv_40475;
  } else {
    goto ldv_40477;
  }
  ldv_40477: ;
  return (len);
}
}
void l1oip_4bit_free(void)
{
  {
  if ((unsigned long )table_dec != (unsigned long )((u16 *)0)) {
    vfree((void const *)table_dec);
  } else {
  }
  if ((unsigned long )table_com != (unsigned long )((u8 *)0)) {
    vfree((void const *)table_com);
  } else {
  }
  table_com = 0;
  table_dec = 0;
  return;
}
}
int l1oip_4bit_alloc(int ulaw___0 )
{ int i1 ;
  int i2 ;
  int c ;
  int sample ;
  void *tmp ;
  void *tmp___0 ;
  {
  if ((unsigned long )table_dec != (unsigned long )((u16 *)0)) {
    return (0);
  } else {
  }
  tmp = vzalloc(65536UL);
  table_com = (u8 *)tmp;
  tmp___0 = vzalloc(512UL);
  table_dec = (u16 *)tmp___0;
  if ((unsigned long )table_com == (unsigned long )((u8 *)0) || (unsigned long )table_dec == (unsigned long )((u16 *)0)) {
    l1oip_4bit_free();
    return (-12);
  } else {
  }
  i1 = 0;
  goto ldv_40492;
  ldv_40491: ;
  if (ulaw___0 != 0) {
    c = (int )ulaw_to_4bit[i1];
  } else {
    c = (int )alaw_to_4bit[i1];
  }
  i2 = 0;
  goto ldv_40489;
  ldv_40488:
  *(table_com + (unsigned long )((i1 << 8) | i2)) = (u8 )((int )((signed char )*(table_com + (unsigned long )((i1 << 8) | i2))) | (int )((signed char )(c << 4)));
  *(table_com + (unsigned long )((i2 << 8) | i1)) = (u8 )((int )((signed char )*(table_com + (unsigned long )((i2 << 8) | i1))) | (int )((signed char )c));
  i2 = i2 + 1;
  ldv_40489: ;
  if (i2 <= 255) {
    goto ldv_40488;
  } else {
    goto ldv_40490;
  }
  ldv_40490:
  i1 = i1 + 1;
  ldv_40492: ;
  if (i1 <= 255) {
    goto ldv_40491;
  } else {
    goto ldv_40493;
  }
  ldv_40493:
  i1 = 0;
  goto ldv_40498;
  ldv_40497: ;
  if (ulaw___0 != 0) {
    sample = (int )_4bit_to_ulaw[i1];
  } else {
    sample = (int )_4bit_to_alaw[i1];
  }
  i2 = 0;
  goto ldv_40495;
  ldv_40494:
  *(table_dec + (unsigned long )((i1 << 4) | i2)) = (u16 )((int )((short )*(table_dec + (unsigned long )((i1 << 4) | i2))) | (int )((short )(sample << 8)));
  *(table_dec + (unsigned long )((i2 << 4) | i1)) = (u16 )((int )((short )*(table_dec + (unsigned long )((i2 << 4) | i1))) | (int )((short )sample));
  i2 = i2 + 1;
  ldv_40495: ;
  if (i2 <= 15) {
    goto ldv_40494;
  } else {
    goto ldv_40496;
  }
  ldv_40496:
  i1 = i1 + 1;
  ldv_40498: ;
  if (i1 <= 15) {
    goto ldv_40497;
  } else {
    goto ldv_40499;
  }
  ldv_40499: ;
  return (0);
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
  ldv_mutex_lock_mutex_of_device(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_18(struct mutex *ldv_func_arg1 )
{ ldv_func_ret_type___2 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mutex_of_device(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex_of_device(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(ldv_func_arg1);
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
void ldv__builtin_trap(void)
{
  {
  ldv_error();
  return;
}
}
static int ldv_mutex_cred_guard_mutex_of_signal_struct ;
int ldv_mutex_lock_interruptible_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
  return;
}
}
int ldv_mutex_trylock_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_cred_guard_mutex_of_signal_struct(atomic_t *cnt ,
                                                                    struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_cred_guard_mutex_of_signal_struct = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
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
void ldv_mutex_unlock_cred_guard_mutex_of_signal_struct(struct mutex *lock )
{
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_cred_guard_mutex_of_signal_struct = 1;
  return;
}
}
static int ldv_mutex_lock ;
int ldv_mutex_lock_interruptible_lock(struct mutex *lock )
{ int nondetermined ;
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
{ int nondetermined ;
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
{ int is_mutex_held_by_another_thread ;
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
{ int atomic_value_after_dec ;
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
{ int nondetermined ;
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
static int ldv_mutex_mutex_of_device ;
int ldv_mutex_lock_interruptible_mutex_of_device(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mutex_of_device(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mutex_of_device = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mutex_of_device(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_device = 2;
  return;
}
}
int ldv_mutex_trylock_mutex_of_device(struct mutex *lock )
{ int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mutex_of_device = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mutex_of_device(atomic_t *cnt , struct mutex *lock )
{ int atomic_value_after_dec ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mutex_of_device = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mutex_of_device(struct mutex *lock )
{ int nondetermined ;
  {
  if (ldv_mutex_mutex_of_device == 1) {
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
void ldv_mutex_unlock_mutex_of_device(struct mutex *lock )
{
  {
  if (ldv_mutex_mutex_of_device == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mutex_of_device = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_cred_guard_mutex_of_signal_struct = 1;
  ldv_mutex_lock = 1;
  ldv_mutex_mutex_of_device = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_cred_guard_mutex_of_signal_struct == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex_of_device == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
void *external_alloc(void);
struct sk_buff *__alloc_skb(unsigned int arg0, gfp_t arg1, int arg2, int arg3) {
  return (struct sk_buff *)external_alloc();
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
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void add_timer(struct timer_list *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int allow_signal(int arg0) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void complete(struct completion *arg0) {
  return;
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int kernel_recvmsg(struct socket *arg0, struct msghdr *arg1, struct kvec *arg2, size_t arg3, size_t arg4, int arg5) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int kernel_sendmsg(struct socket *arg0, struct msghdr *arg1, struct kvec *arg2, size_t arg3, size_t arg4) {
  return __VERIFIER_nondet_int();
}
void kfree(const void *arg0) {
  return;
}
void *external_alloc(void);
struct task_struct *kthread_create_on_node(int (*arg0)(void *), void *arg1, int arg2, const char *arg3, ...) {
  return (struct task_struct *)external_alloc();
}
void list_del(struct list_head *arg0) {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void mISDN_freebchannel(struct bchannel *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mISDN_freedchannel(struct dchannel *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mISDN_initbchannel(struct bchannel *arg0, unsigned short arg1, unsigned short arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mISDN_initdchannel(struct dchannel *arg0, int arg1, void *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int mISDN_register_device(struct mISDNdevice *arg0, struct device *arg1, char *arg2) {
  return __VERIFIER_nondet_int();
}
void mISDN_unregister_device(struct mISDNdevice *arg0) {
  return;
}
void *external_alloc(void);
void *memchr_inv(const void *arg0, int arg1, size_t arg2) {
  return (void *)external_alloc();
}
void module_put(struct module *arg0) {
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
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void queue_ch_frame(struct mISDNchannel *arg0, u_int arg1, int arg2, struct sk_buff *arg3) {
  return;
}
void recv_Dchannel(struct dchannel *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout(long arg0) {
  return __VERIFIER_nondet_long();
}
bool __VERIFIER_nondet_bool(void);
bool schedule_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int send_sig(int arg0, struct task_struct *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
void skb_trim(struct sk_buff *arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int sock_create(int arg0, int arg1, int arg2, struct socket **arg3) {
  return __VERIFIER_nondet_int();
}
void sock_release(struct socket *arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool try_module_get(struct module *arg0) {
  return __VERIFIER_nondet_bool();
}
void vfree(const void *arg0) {
  return;
}
void *external_alloc(void);
void *vzalloc(unsigned long arg0) {
  return (void *)external_alloc();
}
void wait_for_completion(struct completion *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int wake_up_process(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void *__VERIFIER_external_alloc(void);
void *external_alloc(void) {
  return __VERIFIER_external_alloc();
}
void free(void *);
void kfree(void const *p) {
  free((void *)p);
}
