extern void __VERIFIER_error() __attribute__ ((__noreturn__));
extern void __VERIFIER_assume(int cond);
extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));
void avoid_zero(int y)
{
    if (!y)
    {
        abort();
    }
}
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
typedef __u16 __le16;
typedef __u16 __be16;
typedef __u32 __le32;
typedef __u32 __be32;
typedef __u64 __le64;
typedef __u16 __sum16;
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
union __anonunion_ldv_6157_31 {
   struct __anonstruct_futex_32 futex ;
   struct __anonstruct_nanosleep_33 nanosleep ;
   struct __anonstruct_poll_34 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_6157_31 ldv_6157 ;
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
struct __anonstruct_ldv_13040_129 {
   struct ctl_table *ctl_table ;
   int used ;
   int count ;
   int nreg ;
};
union __anonunion_ldv_13042_128 {
   struct __anonstruct_ldv_13040_129 ldv_13040 ;
   struct callback_head rcu ;
};
struct ctl_table_set;
struct ctl_table_header {
   union __anonunion_ldv_13042_128 ldv_13042 ;
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
union __anonunion_ldv_13820_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_13820_134 ldv_13820 ;
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
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct proc_dir_entry;
struct exception_table_entry {
   int insn ;
   int fixup ;
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
struct pci_driver;
union __anonunion_ldv_17224_137 {
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
   union __anonunion_ldv_17224_137 ldv_17224 ;
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
struct msix_entry {
   u32 vector ;
   u16 entry ;
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
union __anonunion_ldv_18255_139 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_18265_143 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_18267_142 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_18265_143 ldv_18265 ;
   int units ;
};
struct __anonstruct_ldv_18269_141 {
   union __anonunion_ldv_18267_142 ldv_18267 ;
   atomic_t _count ;
};
union __anonunion_ldv_18270_140 {
   unsigned long counters ;
   struct __anonstruct_ldv_18269_141 ldv_18269 ;
};
struct __anonstruct_ldv_18271_138 {
   union __anonunion_ldv_18255_139 ldv_18255 ;
   union __anonunion_ldv_18270_140 ldv_18270 ;
};
struct __anonstruct_ldv_18278_145 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_18282_144 {
   struct list_head lru ;
   struct __anonstruct_ldv_18278_145 ldv_18278 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_18287_146 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_18271_138 ldv_18271 ;
   union __anonunion_ldv_18282_144 ldv_18282 ;
   union __anonunion_ldv_18287_146 ldv_18287 ;
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
struct mem_cgroup;
struct __anonstruct_ldv_21046_150 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_21047_149 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_21046_150 ldv_21046 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_21047_149 ldv_21047 ;
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
union __anonunion_data_151 {
   struct plist_node pnode ;
   struct pm_qos_flags_request flr ;
};
struct dev_pm_qos_request {
   enum dev_pm_qos_req_type type ;
   union __anonunion_data_151 data ;
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
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
typedef s32 dma_cookie_t;
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
struct __anonstruct_sync_serial_settings_153 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
};
typedef struct __anonstruct_sync_serial_settings_153 sync_serial_settings;
struct __anonstruct_te1_settings_154 {
   unsigned int clock_rate ;
   unsigned int clock_type ;
   unsigned short loopback ;
   unsigned int slot_map ;
};
typedef struct __anonstruct_te1_settings_154 te1_settings;
struct __anonstruct_raw_hdlc_proto_155 {
   unsigned short encoding ;
   unsigned short parity ;
};
typedef struct __anonstruct_raw_hdlc_proto_155 raw_hdlc_proto;
struct __anonstruct_fr_proto_156 {
   unsigned int t391 ;
   unsigned int t392 ;
   unsigned int n391 ;
   unsigned int n392 ;
   unsigned int n393 ;
   unsigned short lmi ;
   unsigned short dce ;
};
typedef struct __anonstruct_fr_proto_156 fr_proto;
struct __anonstruct_fr_proto_pvc_157 {
   unsigned int dlci ;
};
typedef struct __anonstruct_fr_proto_pvc_157 fr_proto_pvc;
struct __anonstruct_fr_proto_pvc_info_158 {
   unsigned int dlci ;
   char master[16U] ;
};
typedef struct __anonstruct_fr_proto_pvc_info_158 fr_proto_pvc_info;
struct __anonstruct_cisco_proto_159 {
   unsigned int interval ;
   unsigned int timeout ;
};
typedef struct __anonstruct_cisco_proto_159 cisco_proto;
struct ifmap {
   unsigned long mem_start ;
   unsigned long mem_end ;
   unsigned short base_addr ;
   unsigned char irq ;
   unsigned char dma ;
   unsigned char port ;
};
union __anonunion_ifs_ifsu_160 {
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
   union __anonunion_ifs_ifsu_160 ifs_ifsu ;
};
union __anonunion_ifr_ifrn_161 {
   char ifrn_name[16U] ;
};
union __anonunion_ifr_ifru_162 {
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
   union __anonunion_ifr_ifrn_161 ifr_ifrn ;
   union __anonunion_ifr_ifru_162 ifr_ifru ;
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
struct __anonstruct_ldv_23698_165 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_23700_164 {
   struct __anonstruct_ldv_23698_165 ldv_23698 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_23700_164 ldv_23700 ;
   unsigned char const *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_166 {
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
   union __anonunion_d_u_166 d_u ;
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
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
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
union __anonunion_ldv_24703_168 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_24703_168 ldv_24703 ;
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
union __anonunion_arg_170 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_169 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_170 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_169 read_descriptor_t;
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
union __anonunion_ldv_25137_171 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_25157_172 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_25173_173 {
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
   union __anonunion_ldv_25137_171 ldv_25137 ;
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
   union __anonunion_ldv_25157_172 ldv_25157 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_25173_173 ldv_25173 ;
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
union __anonunion_f_u_174 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_174 f_u ;
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
struct net;
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
struct fasync_struct;
struct __anonstruct_afs_176 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_175 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_176 afs ;
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
   union __anonunion_fl_u_175 fl_u ;
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
struct __anonstruct_sigset_t_177 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_177 sigset_t;
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
struct __anonstruct__kill_179 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_180 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_181 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_182 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_183 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_184 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_185 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_178 {
   int _pad[28U] ;
   struct __anonstruct__kill_179 _kill ;
   struct __anonstruct__timer_180 _timer ;
   struct __anonstruct__rt_181 _rt ;
   struct __anonstruct__sigchld_182 _sigchld ;
   struct __anonstruct__sigfault_183 _sigfault ;
   struct __anonstruct__sigpoll_184 _sigpoll ;
   struct __anonstruct__sigsys_185 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_178 _sifields ;
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
union __anonunion_ldv_27742_188 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_27751_189 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_190 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_191 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_27742_188 ldv_27742 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_27751_189 ldv_27751 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_190 type_data ;
   union __anonunion_payload_191 payload ;
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
union __anonunion_ki_obj_192 {
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
   union __anonunion_ki_obj_192 ki_obj ;
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
enum ldv_23495 {
    SS_FREE = 0,
    SS_UNCONNECTED = 1,
    SS_CONNECTING = 2,
    SS_CONNECTED = 3,
    SS_DISCONNECTING = 4
} ;
typedef enum ldv_23495 socket_state;
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
struct in6_addr;
struct sk_buff;
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
struct skb_frag_struct;
typedef struct skb_frag_struct skb_frag_t;
struct __anonstruct_page_208 {
   struct page *p ;
};
struct skb_frag_struct {
   struct __anonstruct_page_208 page ;
   __u32 page_offset ;
   __u32 size ;
};
struct skb_shared_hwtstamps {
   ktime_t hwtstamp ;
   ktime_t syststamp ;
};
struct skb_shared_info {
   unsigned char nr_frags ;
   __u8 tx_flags ;
   unsigned short gso_size ;
   unsigned short gso_segs ;
   unsigned short gso_type ;
   struct sk_buff *frag_list ;
   struct skb_shared_hwtstamps hwtstamps ;
   __be32 ip6_frag_id ;
   atomic_t dataref ;
   void *destructor_arg ;
   skb_frag_t frags[17U] ;
};
typedef unsigned int sk_buff_data_t;
struct sec_path;
struct __anonstruct_ldv_31248_210 {
   __u16 csum_start ;
   __u16 csum_offset ;
};
union __anonunion_ldv_31249_209 {
   __wsum csum ;
   struct __anonstruct_ldv_31248_210 ldv_31248 ;
};
union __anonunion_ldv_31288_211 {
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
   union __anonunion_ldv_31249_209 ldv_31249 ;
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
   union __anonunion_ldv_31288_211 ldv_31288 ;
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
union __anonunion_in6_u_214 {
   __u8 u6_addr8[16U] ;
   __be16 u6_addr16[8U] ;
   __be32 u6_addr32[4U] ;
};
struct in6_addr {
   union __anonunion_in6_u_214 in6_u ;
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
struct hlist_nulls_node;
struct hlist_nulls_head {
   struct hlist_nulls_node *first ;
};
struct hlist_nulls_node {
   struct hlist_nulls_node *next ;
   struct hlist_nulls_node **pprev ;
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
struct request_sock;
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
struct netdev_hw_addr {
   struct list_head list ;
   unsigned char addr[32U] ;
   unsigned char type ;
   bool synced ;
   bool global_use ;
   int refcount ;
   struct callback_head callback_head ;
};
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
struct napi_struct {
   struct list_head poll_list ;
   unsigned long state ;
   int weight ;
   unsigned int gro_count ;
   int (*poll)(struct napi_struct * , int ) ;
   spinlock_t poll_lock ;
   int poll_owner ;
   struct net_device *dev ;
   struct sk_buff *gro_list ;
   struct sk_buff *skb ;
   struct list_head dev_list ;
};
enum gro_result {
    GRO_MERGED = 0,
    GRO_MERGED_FREE = 1,
    GRO_HELD = 2,
    GRO_NORMAL = 3,
    GRO_DROP = 4
} ;
typedef enum gro_result gro_result_t;
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
union __anonunion_ldv_38603_223 {
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
   union __anonunion_ldv_38603_223 ldv_38603 ;
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
struct iphdr {
   unsigned char ihl : 4 ;
   unsigned char version : 4 ;
   __u8 tos ;
   __be16 tot_len ;
   __be16 id ;
   __be16 frag_off ;
   __u8 ttl ;
   __u8 protocol ;
   __sum16 check ;
   __be32 saddr ;
   __be32 daddr ;
};
struct ipv6hdr {
   unsigned char priority : 4 ;
   unsigned char version : 4 ;
   __u8 flow_lbl[3U] ;
   __be16 payload_len ;
   __u8 nexthdr ;
   __u8 hop_limit ;
   struct in6_addr saddr ;
   struct in6_addr daddr ;
};
struct ipv6_devconf {
   __s32 forwarding ;
   __s32 hop_limit ;
   __s32 mtu6 ;
   __s32 accept_ra ;
   __s32 accept_redirects ;
   __s32 autoconf ;
   __s32 dad_transmits ;
   __s32 rtr_solicits ;
   __s32 rtr_solicit_interval ;
   __s32 rtr_solicit_delay ;
   __s32 force_mld_version ;
   __s32 use_tempaddr ;
   __s32 temp_valid_lft ;
   __s32 temp_prefered_lft ;
   __s32 regen_max_retry ;
   __s32 max_desync_factor ;
   __s32 max_addresses ;
   __s32 accept_ra_defrtr ;
   __s32 accept_ra_pinfo ;
   __s32 accept_ra_rtr_pref ;
   __s32 rtr_probe_interval ;
   __s32 accept_ra_rt_info_max_plen ;
   __s32 proxy_ndp ;
   __s32 accept_source_route ;
   __s32 optimistic_dad ;
   __s32 mc_forwarding ;
   __s32 disable_ipv6 ;
   __s32 accept_dad ;
   __s32 force_tllao ;
   __s32 ndisc_notify ;
   void *sysctl ;
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
union __anonunion_ldv_42015_230 {
   unsigned long expires ;
   struct dst_entry *from ;
};
struct dn_route;
union __anonunion_ldv_42040_231 {
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
   union __anonunion_ldv_42015_230 ldv_42015 ;
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
   union __anonunion_ldv_42040_231 ldv_42040 ;
};
struct __anonstruct_socket_lock_t_232 {
   spinlock_t slock ;
   int owned ;
   wait_queue_head_t wq ;
   struct lockdep_map dep_map ;
};
typedef struct __anonstruct_socket_lock_t_232 socket_lock_t;
struct proto;
typedef __u32 __portpair;
typedef __u64 __addrpair;
struct __anonstruct_ldv_42257_234 {
   __be32 skc_daddr ;
   __be32 skc_rcv_saddr ;
};
union __anonunion_ldv_42258_233 {
   __addrpair skc_addrpair ;
   struct __anonstruct_ldv_42257_234 ldv_42257 ;
};
union __anonunion_ldv_42262_235 {
   unsigned int skc_hash ;
   __u16 skc_u16hashes[2U] ;
};
struct __anonstruct_ldv_42268_237 {
   __be16 skc_dport ;
   __u16 skc_num ;
};
union __anonunion_ldv_42269_236 {
   __portpair skc_portpair ;
   struct __anonstruct_ldv_42268_237 ldv_42268 ;
};
union __anonunion_ldv_42277_238 {
   struct hlist_node skc_bind_node ;
   struct hlist_nulls_node skc_portaddr_node ;
};
union __anonunion_ldv_42284_239 {
   struct hlist_node skc_node ;
   struct hlist_nulls_node skc_nulls_node ;
};
struct sock_common {
   union __anonunion_ldv_42258_233 ldv_42258 ;
   union __anonunion_ldv_42262_235 ldv_42262 ;
   union __anonunion_ldv_42269_236 ldv_42269 ;
   unsigned short skc_family ;
   unsigned char volatile skc_state ;
   unsigned char skc_reuse ;
   int skc_bound_dev_if ;
   union __anonunion_ldv_42277_238 ldv_42277 ;
   struct proto *skc_prot ;
   struct net *skc_net ;
   int skc_dontcopy_begin[0U] ;
   union __anonunion_ldv_42284_239 ldv_42284 ;
   int skc_tx_queue_mapping ;
   atomic_t skc_refcnt ;
   int skc_dontcopy_end[0U] ;
};
struct cg_proto;
struct __anonstruct_sk_backlog_240 {
   atomic_t rmem_alloc ;
   int len ;
   struct sk_buff *head ;
   struct sk_buff *tail ;
};
struct sock {
   struct sock_common __sk_common ;
   socket_lock_t sk_lock ;
   struct sk_buff_head sk_receive_queue ;
   struct __anonstruct_sk_backlog_240 sk_backlog ;
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
union __anonunion_h_241 {
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
   union __anonunion_h_241 h ;
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
struct request_values {
};
struct request_sock_ops {
   int family ;
   int obj_size ;
   struct kmem_cache *slab ;
   char *slab_name ;
   int (*rtx_syn_ack)(struct sock * , struct request_sock * , struct request_values * ) ;
   void (*send_ack)(struct sock * , struct sk_buff * , struct request_sock * ) ;
   void (*send_reset)(struct sock * , struct sk_buff * ) ;
   void (*destructor)(struct request_sock * ) ;
   void (*syn_ack_timeout)(struct sock * , struct request_sock * ) ;
};
struct request_sock {
   struct request_sock *dl_next ;
   u16 mss ;
   u8 num_retrans ;
   unsigned char cookie_ts : 1 ;
   unsigned char num_timeout : 7 ;
   u32 window_clamp ;
   u32 rcv_wnd ;
   u32 ts_recent ;
   unsigned long expires ;
   struct request_sock_ops const *rsk_ops ;
   struct sock *sk ;
   u32 secid ;
   u32 peer_secid ;
};
struct timewait_sock_ops {
   struct kmem_cache *twsk_slab ;
   char *twsk_slab_name ;
   unsigned int twsk_obj_size ;
   int (*twsk_unique)(struct sock * , struct sock * , void * ) ;
   void (*twsk_destructor)(struct sock * ) ;
};
struct tcphdr {
   __be16 source ;
   __be16 dest ;
   __be32 seq ;
   __be32 ack_seq ;
   unsigned char res1 : 4 ;
   unsigned char doff : 4 ;
   unsigned char fin : 1 ;
   unsigned char syn : 1 ;
   unsigned char rst : 1 ;
   unsigned char psh : 1 ;
   unsigned char ack : 1 ;
   unsigned char urg : 1 ;
   unsigned char ece : 1 ;
   unsigned char cwr : 1 ;
   __be16 window ;
   __sum16 check ;
   __be16 urg_ptr ;
};
struct cq_desc {
   __le16 completed_index ;
   __le16 q_number ;
   u8 type_specfic[11U] ;
   u8 type_color ;
};
struct cq_enet_rq_desc {
   __le16 completed_index_flags ;
   __le16 q_number_rss_type_flags ;
   __le32 rss_hash ;
   __le16 bytes_written_flags ;
   __le16 vlan ;
   __le16 checksum_fcoe ;
   u8 flags ;
   u8 type_color ;
};
struct vnic_devcmd_fw_info {
   char fw_version[32U] ;
   char fw_build[32U] ;
   char hw_version[32U] ;
   char hw_serial_number[32U] ;
   u16 asic_type ;
   u16 asic_rev ;
};
enum vnic_dev_intr_mode {
    VNIC_DEV_INTR_MODE_UNKNOWN = 0,
    VNIC_DEV_INTR_MODE_INTX = 1,
    VNIC_DEV_INTR_MODE_MSI = 2,
    VNIC_DEV_INTR_MODE_MSIX = 3
} ;
struct vnic_dev_bar {
   void *vaddr ;
   dma_addr_t bus_addr ;
   unsigned long len ;
};
struct vnic_dev_ring {
   void *descs ;
   size_t size ;
   dma_addr_t base_addr ;
   size_t base_align ;
   void *descs_unaligned ;
   size_t size_unaligned ;
   dma_addr_t base_addr_unaligned ;
   unsigned int desc_size ;
   unsigned int desc_count ;
   unsigned int desc_avail ;
};
struct vnic_dev;
struct vnic_stats;
struct vnic_intr_ctrl {
   u32 coalescing_timer ;
   u32 pad0 ;
   u32 coalescing_value ;
   u32 pad1 ;
   u32 coalescing_type ;
   u32 pad2 ;
   u32 mask_on_assertion ;
   u32 pad3 ;
   u32 mask ;
   u32 pad4 ;
   u32 int_credits ;
   u32 pad5 ;
   u32 int_credit_return ;
   u32 pad6 ;
};
struct vnic_intr {
   unsigned int index ;
   struct vnic_dev *vdev ;
   struct vnic_intr_ctrl *ctrl ;
};
struct vnic_tx_stats {
   u64 tx_frames_ok ;
   u64 tx_unicast_frames_ok ;
   u64 tx_multicast_frames_ok ;
   u64 tx_broadcast_frames_ok ;
   u64 tx_bytes_ok ;
   u64 tx_unicast_bytes_ok ;
   u64 tx_multicast_bytes_ok ;
   u64 tx_broadcast_bytes_ok ;
   u64 tx_drops ;
   u64 tx_errors ;
   u64 tx_tso ;
   u64 rsvd[16U] ;
};
struct vnic_rx_stats {
   u64 rx_frames_ok ;
   u64 rx_frames_total ;
   u64 rx_unicast_frames_ok ;
   u64 rx_multicast_frames_ok ;
   u64 rx_broadcast_frames_ok ;
   u64 rx_bytes_ok ;
   u64 rx_unicast_bytes_ok ;
   u64 rx_multicast_bytes_ok ;
   u64 rx_broadcast_bytes_ok ;
   u64 rx_drop ;
   u64 rx_no_bufs ;
   u64 rx_errors ;
   u64 rx_rss ;
   u64 rx_crc_errors ;
   u64 rx_frames_64 ;
   u64 rx_frames_127 ;
   u64 rx_frames_255 ;
   u64 rx_frames_511 ;
   u64 rx_frames_1023 ;
   u64 rx_frames_1518 ;
   u64 rx_frames_to_max ;
   u64 rsvd[16U] ;
};
struct vnic_stats {
   struct vnic_tx_stats tx ;
   struct vnic_rx_stats rx ;
};
struct wq_enet_desc {
   __le64 address ;
   __le16 length ;
   __le16 mss_loopback ;
   __le16 header_length_flags ;
   __le16 vlan_tag ;
};
struct rq_enet_desc {
   __le64 address ;
   __le16 length_type ;
   u8 reserved[6U] ;
};
struct vnic_cq_ctrl {
   u64 ring_base ;
   u32 ring_size ;
   u32 pad0 ;
   u32 flow_control_enable ;
   u32 pad1 ;
   u32 color_enable ;
   u32 pad2 ;
   u32 cq_head ;
   u32 pad3 ;
   u32 cq_tail ;
   u32 pad4 ;
   u32 cq_tail_color ;
   u32 pad5 ;
   u32 interrupt_enable ;
   u32 pad6 ;
   u32 cq_entry_enable ;
   u32 pad7 ;
   u32 cq_message_enable ;
   u32 pad8 ;
   u32 interrupt_offset ;
   u32 pad9 ;
   u64 cq_message_addr ;
   u32 pad10 ;
};
struct vnic_cq {
   unsigned int index ;
   struct vnic_dev *vdev ;
   struct vnic_cq_ctrl *ctrl ;
   struct vnic_dev_ring ring ;
   unsigned int to_clean ;
   unsigned int last_color ;
   unsigned int interrupt_offset ;
};
struct vnic_wq_ctrl {
   u64 ring_base ;
   u32 ring_size ;
   u32 pad0 ;
   u32 posted_index ;
   u32 pad1 ;
   u32 cq_index ;
   u32 pad2 ;
   u32 enable ;
   u32 pad3 ;
   u32 running ;
   u32 pad4 ;
   u32 fetch_index ;
   u32 pad5 ;
   u32 dca_value ;
   u32 pad6 ;
   u32 error_interrupt_enable ;
   u32 pad7 ;
   u32 error_interrupt_offset ;
   u32 pad8 ;
   u32 error_status ;
   u32 pad9 ;
};
struct vnic_wq_buf {
   struct vnic_wq_buf *next ;
   dma_addr_t dma_addr ;
   void *os_buf ;
   unsigned int len ;
   unsigned int index ;
   int sop ;
   void *desc ;
};
struct vnic_wq {
   unsigned int index ;
   struct vnic_dev *vdev ;
   struct vnic_wq_ctrl *ctrl ;
   struct vnic_dev_ring ring ;
   struct vnic_wq_buf *bufs[64U] ;
   struct vnic_wq_buf *to_use ;
   struct vnic_wq_buf *to_clean ;
   unsigned int pkts_outstanding ;
};
struct vnic_rq_ctrl {
   u64 ring_base ;
   u32 ring_size ;
   u32 pad0 ;
   u32 posted_index ;
   u32 pad1 ;
   u32 cq_index ;
   u32 pad2 ;
   u32 enable ;
   u32 pad3 ;
   u32 running ;
   u32 pad4 ;
   u32 fetch_index ;
   u32 pad5 ;
   u32 error_interrupt_enable ;
   u32 pad6 ;
   u32 error_interrupt_offset ;
   u32 pad7 ;
   u32 error_status ;
   u32 pad8 ;
   u32 dropped_packet_count ;
   u32 pad9 ;
   u32 dropped_packet_count_rc ;
   u32 pad10 ;
};
struct vnic_rq_buf {
   struct vnic_rq_buf *next ;
   dma_addr_t dma_addr ;
   void *os_buf ;
   unsigned int os_buf_index ;
   unsigned int len ;
   unsigned int index ;
   void *desc ;
};
struct vnic_rq {
   unsigned int index ;
   struct vnic_dev *vdev ;
   struct vnic_rq_ctrl *ctrl ;
   struct vnic_dev_ring ring ;
   struct vnic_rq_buf *bufs[64U] ;
   struct vnic_rq_buf *to_use ;
   struct vnic_rq_buf *to_clean ;
   void *os_buf_head ;
   unsigned int pkts_outstanding ;
};
struct enic;
struct vnic_enet_config {
   u32 flags ;
   u32 wq_desc_count ;
   u32 rq_desc_count ;
   u16 mtu ;
   u16 intr_timer_deprecated ;
   u8 intr_timer_type ;
   u8 intr_mode ;
   char devname[16U] ;
   u32 intr_timer_usec ;
   u16 loop_tag ;
};
struct __anonstruct_key_252 {
   u8 b[10U] ;
   u8 b_pad[6U] ;
};
union vnic_rss_key {
   struct __anonstruct_key_252 key[4U] ;
   u64 raw[8U] ;
};
struct __anonstruct_cpu_253 {
   u8 b[4U] ;
   u8 b_pad[4U] ;
};
union vnic_rss_cpu {
   struct __anonstruct_cpu_253 cpu[32U] ;
   u64 raw[32U] ;
};
struct enic_msix_entry {
   int requested ;
   char devname[16U] ;
   irqreturn_t (*isr)(int , void * ) ;
   void *devid ;
};
struct enic_port_profile {
   u32 set ;
   u8 request ;
   char name[40U] ;
   u8 instance_uuid[16U] ;
   u8 host_uuid[16U] ;
   u8 vf_mac[6U] ;
   u8 mac_addr[6U] ;
};
struct enic {
   struct net_device *netdev ;
   struct pci_dev *pdev ;
   struct vnic_enet_config config ;
   struct vnic_dev_bar bar[6U] ;
   struct vnic_dev *vdev ;
   struct timer_list notify_timer ;
   struct work_struct reset ;
   struct work_struct change_mtu_work ;
   struct msix_entry msix_entry[11U] ;
   struct enic_msix_entry msix[11U] ;
   u32 msg_enable ;
   spinlock_t devcmd_lock ;
   u8 mac_addr[6U] ;
   u8 mc_addr[32U][6U] ;
   u8 uc_addr[32U][6U] ;
   unsigned int flags ;
   unsigned int priv_flags ;
   unsigned int mc_count ;
   unsigned int uc_count ;
   u32 port_mtu ;
   u32 rx_coalesce_usecs ;
   u32 tx_coalesce_usecs ;
   u16 num_vfs ;
   struct enic_port_profile *pp ;
   struct vnic_wq wq[1U] ;
   spinlock_t wq_lock[1U] ;
   unsigned int wq_count ;
   u16 loop_enable ;
   u16 loop_tag ;
   struct vnic_rq rq[8U] ;
   unsigned int rq_count ;
   u64 rq_truncated_pkts ;
   u64 rq_bad_fcs ;
   struct napi_struct napi[8U] ;
   struct vnic_intr intr[11U] ;
   unsigned int intr_count ;
   u32 *legacy_pba ;
   struct vnic_cq cq[9U] ;
   unsigned int cq_count ;
};
struct enic_stat {
   char name[32U] ;
   unsigned int offset ;
};
typedef int ldv_func_ret_type___2;
enum vnic_res_type {
    RES_TYPE_EOL = 0,
    RES_TYPE_WQ = 1,
    RES_TYPE_RQ = 2,
    RES_TYPE_CQ = 3,
    RES_TYPE_RSVD1 = 4,
    RES_TYPE_NIC_CFG = 5,
    RES_TYPE_RSVD2 = 6,
    RES_TYPE_RSVD3 = 7,
    RES_TYPE_RSVD4 = 8,
    RES_TYPE_RSVD5 = 9,
    RES_TYPE_INTR_CTRL = 10,
    RES_TYPE_INTR_TABLE = 11,
    RES_TYPE_INTR_PBA = 12,
    RES_TYPE_INTR_PBA_LEGACY = 13,
    RES_TYPE_RSVD6 = 14,
    RES_TYPE_RSVD7 = 15,
    RES_TYPE_DEVCMD = 16,
    RES_TYPE_PASS_THRU_PAGE = 17,
    RES_TYPE_MAX = 18
} ;
enum hrtimer_restart;
enum vnic_devcmd_cmd {
    CMD_NONE = 0,
    CMD_MCPU_FW_INFO_OLD = 1073856513,
    CMD_MCPU_FW_INFO = 3221340161U,
    CMD_DEV_SPEC = 3221340162U,
    CMD_STATS_CLEAR = 16891907,
    CMD_STATS_DUMP = 1073856516,
    CMD_PACKET_FILTER = 1090535431,
    CMD_PACKET_FILTER_ALL = 1090633735,
    CMD_HANG_NOTIFY = 114696,
    CMD_GET_MAC_ADDR = 2147532809U,
    CMD_ADDR_ADD = 1090568204,
    CMD_ADDR_DEL = 1090568205,
    CMD_VLAN_ADD = 1090535438,
    CMD_VLAN_DEL = 1090535439,
    CMD_NIC_CFG = 1090633744,
    CMD_RSS_KEY = 1073758225,
    CMD_RSS_CPU = 1073758226,
    CMD_SOFT_RESET = 16891923,
    CMD_SOFT_RESET_STATUS = 2147598356U,
    CMD_NOTIFY = 3221340181U,
    CMD_UNDI = 1073758230,
    CMD_OPEN = 1090633751,
    CMD_OPEN_STATUS = 2147598360U,
    CMD_CLOSE = 114713,
    CMD_INIT_v1 = 2164375578U,
    CMD_INIT_PROV_INFO = 1073758235,
    CMD_ENABLE = 1090633756,
    CMD_ENABLE_WAIT = 1073856540,
    CMD_DISABLE = 114717,
    CMD_STATS_DUMP_ALL = 1073856542,
    CMD_INIT_STATUS = 2147598367U,
    CMD_INT13 = 1073774624,
    CMD_LOGICAL_UPLINK = 1090535457,
    CMD_DEINIT = 16891938,
    CMD_INIT = 1090633763,
    CMD_CAPABILITY = 3221340196U,
    CMD_PERBI = 3221258277U,
    CMD_IAR = 1090633766,
    CMD_HANG_RESET = 114727,
    CMD_HANG_RESET_STATUS = 2147598376U,
    CMD_IG_VLAN_REWRITE_MODE = 3221241897U,
    CMD_PROXY_BY_BDF = 3221340202U,
    CMD_PROXY_BY_INDEX = 3221340203U,
    CMD_CONFIG_INFO_GET = 3221340204U,
    CMD_INIT_PROV_INFO2 = 1073758255,
    CMD_ENABLE2 = 1073758256,
    CMD_STATUS = 3221340209U,
    CMD_INTR_COAL_CONVERT = 2147598386U,
    CMD_SET_MAC_ADDR = 1073758263
} ;
enum hrtimer_restart;
struct vic_provinfo_tlv {
   u16 type ;
   u16 length ;
   u8 value[0U] ;
};
struct vic_provinfo {
   u8 oui[3U] ;
   u8 type ;
   u32 length ;
   u32 num_tlvs ;
   struct vic_provinfo_tlv tlv[0U] ;
};
enum hrtimer_restart;
struct vnic_resource_header {
   u32 magic ;
   u32 version ;
};
struct mgmt_barmap_hdr {
   u32 magic ;
   u32 version ;
   u16 lif ;
   u16 pci_slot ;
   char serial[16U] ;
};
struct vnic_resource {
   u8 type ;
   u8 bar ;
   u8 pad[2U] ;
   u32 bar_offset ;
   u32 count ;
};
struct vnic_devcmd_notify {
   u32 csum ;
   u32 link_state ;
   u32 port_speed ;
   u32 mtu ;
   u32 msglvl ;
   u32 uif ;
   u32 status ;
   u32 error ;
   u32 link_down_cnt ;
   u32 perbi_rebuild_cnt ;
};
struct vnic_devcmd {
   u32 status ;
   u32 cmd ;
   u64 args[15U] ;
};
enum vnic_proxy_type {
    PROXY_NONE = 0,
    PROXY_BY_BDF = 1,
    PROXY_BY_INDEX = 2
} ;
struct vnic_res {
   void *vaddr ;
   dma_addr_t bus_addr ;
   unsigned int count ;
};
struct vnic_intr_coal_timer_info {
   u32 mul ;
   u32 div ;
   u32 max_usec ;
};
struct vnic_dev {
   void *priv ;
   struct pci_dev *pdev ;
   struct vnic_res res[18U] ;
   enum vnic_dev_intr_mode intr_mode ;
   struct vnic_devcmd *devcmd ;
   struct vnic_devcmd_notify *notify ;
   struct vnic_devcmd_notify notify_copy ;
   dma_addr_t notify_pa ;
   u32 notify_sz ;
   dma_addr_t linkstatus_pa ;
   struct vnic_stats *stats ;
   dma_addr_t stats_pa ;
   struct vnic_devcmd_fw_info *fw_info ;
   dma_addr_t fw_info_pa ;
   enum vnic_proxy_type proxy ;
   u32 proxy_index ;
   u64 args[15U] ;
   struct vnic_intr_coal_timer_info intr_coal_timer_info ;
};
long ldv__builtin_expect(long exp , long c ) ;
__inline static void set_bit(unsigned int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return;
}
}
__inline static void clear_bit(int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr));
  return;
}
}
__inline static int test_and_set_bit(int nr , unsigned long volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %2,%1\n\tsbb %0,%0": "=r" (oldbit),
                       "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return (oldbit);
}
}
__inline static int test_and_clear_bit(int nr , unsigned long volatile *addr )
{
  int oldbit ;
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
__inline static __u16 __fswab16(__u16 val )
{
  {
  return ((__u16 )((int )((short )((int )val << 8)) | (int )((short )((int )val >> 8))));
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
extern unsigned long __phys_addr(unsigned long ) ;
extern struct pv_irq_ops pv_irq_ops ;
extern void __bad_percpu_size(void) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern size_t strlcpy(char * , char const * , size_t ) ;
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
void ldv_mutex_lock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
void ldv_mutex_lock_mutex(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex(struct mutex *lock ) ;
extern unsigned long kernel_stack ;
__inline static struct thread_info *current_thread_info(void)
{
  struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6180;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6180;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6180;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6180;
  default:
  __bad_percpu_size();
  }
  ldv_6180:
  ti = (struct thread_info *)(pfo_ret__ - 8152UL);
  return (ti);
}
}
extern void local_bh_disable(void) ;
extern void local_bh_enable(void) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
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
__inline static void spin_unlock_irqrestore(spinlock_t *lock , unsigned long flags )
{
  {
  _raw_spin_unlock_irqrestore(& lock->ldv_5961.rlock, flags);
  return;
}
}
extern unsigned long volatile jiffies ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
extern int del_timer_sync(struct timer_list * ) ;
extern unsigned long round_jiffies(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern bool schedule_work(struct work_struct * ) ;
extern bool cancel_work_sync(struct work_struct * ) ;
extern void iounmap(void volatile * ) ;
extern unsigned int ioread32(void * ) ;
extern void iowrite32(u32 , void * ) ;
extern void *pci_iomap(struct pci_dev * , int , unsigned long ) ;
extern int cpu_number ;
extern void __bad_size_call_parameter(void) ;
__inline static char const *kobject_name(struct kobject const *kobj )
{
  {
  return ((char const *)kobj->name);
}
}
extern struct module __this_module ;
extern void synchronize_irq(unsigned int ) ;
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
extern void *dev_get_drvdata(struct device const * ) ;
extern int dev_set_drvdata(struct device * , void * ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int dev_warn(struct device const * , char const * , ...) ;
extern int _dev_info(struct device const * , char const * , ...) ;
extern int pci_find_ext_capability(struct pci_dev * , int ) ;
extern int pci_bus_read_config_word(struct pci_bus * , unsigned int , int , u16 * ) ;
__inline static int pci_read_config_word(struct pci_dev const *dev , int where ,
                                         u16 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_word(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
extern int pci_enable_device_mem(struct pci_dev * ) ;
extern void pci_disable_device(struct pci_dev * ) ;
extern void pci_set_master(struct pci_dev * ) ;
extern int pci_request_regions(struct pci_dev * , char const * ) ;
extern void pci_release_regions(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
extern int pci_enable_msi_block(struct pci_dev * , unsigned int ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
extern int pci_enable_msix(struct pci_dev * , struct msix_entry * , int ) ;
extern void pci_disable_msix(struct pci_dev * ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 80L) << 12) + 0xffff880000000000UL));
}
}
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
__inline static int valid_dma_direction(int dma_direction )
{
  {
  return ((dma_direction == 0 || dma_direction == 1) || dma_direction == 2);
}
}
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0) && *(dev->dma_mask) != 0ULL);
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
extern void debug_dma_alloc_coherent(struct device * , size_t , dma_addr_t , void * ) ;
extern void debug_dma_free_coherent(struct device * , size_t , void * , dma_addr_t ) ;
extern struct device x86_dma_fallback_dev ;
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
    ldv_21913: ;
    goto ldv_21913;
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
    ldv_21922: ;
    goto ldv_21922;
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
__inline static dma_addr_t dma_map_page(struct device *dev , struct page *page , size_t offset ,
                                        size_t size , enum dma_data_direction dir )
{
  struct dma_map_ops *ops ;
  struct dma_map_ops *tmp ;
  dma_addr_t addr ;
  void *tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  {
  tmp = get_dma_ops(dev);
  ops = tmp;
  tmp___0 = lowmem_page_address((struct page const *)page);
  kmemcheck_mark_initialized(tmp___0 + offset, (unsigned int )size);
  tmp___1 = valid_dma_direction((int )dir);
  tmp___2 = ldv__builtin_expect(tmp___1 == 0, 0L);
  if (tmp___2 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/asm-generic/dma-mapping-common.h"),
                         "i" (79), "i" (12UL));
    ldv_21956: ;
    goto ldv_21956;
  } else {
  }
  addr = (*(ops->map_page))(dev, page, offset, size, dir, 0);
  debug_dma_map_page(dev, page, offset, size, (int )dir, addr, 0);
  return (addr);
}
}
__inline static void dma_unmap_page(struct device *dev , dma_addr_t addr , size_t size ,
                                    enum dma_data_direction dir )
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
                         "i" (91), "i" (12UL));
    ldv_21964: ;
    goto ldv_21964;
  } else {
  }
  if ((unsigned long )ops->unmap_page != (unsigned long )((void (*)(struct device * ,
                                                                    dma_addr_t ,
                                                                    size_t , enum dma_data_direction ,
                                                                    struct dma_attrs * ))0)) {
    (*(ops->unmap_page))(dev, addr, size, dir, 0);
  } else {
  }
  debug_dma_unmap_page(dev, addr, size, (int )dir, 0);
  return;
}
}
extern int dma_supported(struct device * , u64 ) ;
extern int dma_set_mask(struct device * , u64 ) ;
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
__inline static int dma_set_coherent_mask(struct device *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_supported(dev, mask);
  if (tmp == 0) {
    return (-5);
  } else {
  }
  dev->coherent_dma_mask = mask;
  return (0);
}
}
__inline static void *pci_alloc_consistent(struct pci_dev *hwdev , size_t size , dma_addr_t *dma_handle )
{
  void *tmp ;
  {
  tmp = dma_alloc_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                        size, dma_handle, 32U, 0);
  return (tmp);
}
}
__inline static void pci_free_consistent(struct pci_dev *hwdev , size_t size , void *vaddr ,
                                         dma_addr_t dma_handle )
{
  {
  dma_free_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                 size, vaddr, dma_handle, 0);
  return;
}
}
__inline static dma_addr_t pci_map_single(struct pci_dev *hwdev , void *ptr , size_t size ,
                                          int direction )
{
  dma_addr_t tmp ;
  {
  tmp = dma_map_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                             ptr, size, (enum dma_data_direction )direction, 0);
  return (tmp);
}
}
__inline static void pci_unmap_single(struct pci_dev *hwdev , dma_addr_t dma_addr ,
                                      size_t size , int direction )
{
  {
  dma_unmap_single_attrs((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                         dma_addr, size, (enum dma_data_direction )direction, 0);
  return;
}
}
__inline static void pci_unmap_page(struct pci_dev *hwdev , dma_addr_t dma_address ,
                                    size_t size , int direction )
{
  {
  dma_unmap_page((unsigned long )hwdev != (unsigned long )((struct pci_dev *)0) ? & hwdev->dev : 0,
                 dma_address, size, (enum dma_data_direction )direction);
  return;
}
}
__inline static int pci_set_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_set_mask(& dev->dev, mask);
  return (tmp);
}
}
__inline static int pci_set_consistent_dma_mask(struct pci_dev *dev , u64 mask )
{
  int tmp ;
  {
  tmp = dma_set_coherent_mask(& dev->dev, mask);
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
extern int pci_enable_sriov(struct pci_dev * , int ) ;
extern void pci_disable_sriov(struct pci_dev * ) ;
extern void msleep(unsigned int ) ;
extern long schedule_timeout_uninterruptible(long ) ;
extern void get_random_bytes(void * , int ) ;
__inline static __sum16 csum_fold(__wsum sum )
{
  {
  __asm__ ("  addl %1,%0\n  adcl $0xffff,%0": "=r" (sum): "r" (sum << 16), "0" (sum & 4294901760U));
  return ((__sum16 )(~ sum >> 16));
}
}
__inline static __wsum csum_tcpudp_nofold(__be32 saddr , __be32 daddr , unsigned short len ,
                                          unsigned short proto , __wsum sum )
{
  {
  __asm__ ("  addl %1, %0\n  adcl %2, %0\n  adcl %3, %0\n  adcl $0, %0\n": "=r" (sum): "g" (daddr),
            "g" (saddr), "g" (((int )len + (int )proto) << 8), "0" (sum));
  return (sum);
}
}
__inline static __sum16 csum_tcpudp_magic(__be32 saddr , __be32 daddr , unsigned short len ,
                                          unsigned short proto , __wsum sum )
{
  __wsum tmp ;
  __sum16 tmp___0 ;
  {
  tmp = csum_tcpudp_nofold(saddr, daddr, (int )len, (int )proto, sum);
  tmp___0 = csum_fold(tmp);
  return (tmp___0);
}
}
extern __sum16 csum_ipv6_magic(struct in6_addr const * , struct in6_addr const * ,
                               __u32 , unsigned short , __wsum ) ;
__inline static unsigned int skb_frag_size(skb_frag_t const *frag )
{
  {
  return ((unsigned int )frag->size);
}
}
extern void consume_skb(struct sk_buff * ) ;
__inline static unsigned char *skb_end_pointer(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->end);
}
}
__inline static bool skb_is_nonlinear(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->data_len != 0U);
}
}
__inline static unsigned int skb_headlen(struct sk_buff const *skb )
{
  {
  return ((unsigned int )skb->len - (unsigned int )skb->data_len);
}
}
extern unsigned char *skb_put(struct sk_buff * , unsigned int ) ;
extern unsigned char *__pskb_pull_tail(struct sk_buff * , int ) ;
__inline static unsigned int skb_headroom(struct sk_buff const *skb )
{
  {
  return ((unsigned int )((long )skb->data) - (unsigned int )((long )skb->head));
}
}
__inline static unsigned char *skb_transport_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->transport_header);
}
}
__inline static unsigned char *skb_network_header(struct sk_buff const *skb )
{
  {
  return ((unsigned char *)skb->head + (unsigned long )skb->network_header);
}
}
__inline static int skb_checksum_start_offset(struct sk_buff const *skb )
{
  unsigned int tmp ;
  {
  tmp = skb_headroom(skb);
  return ((int )((unsigned int )skb->ldv_31249.ldv_31248.csum_start - tmp));
}
}
__inline static int skb_transport_offset(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_transport_header(skb);
  return ((int )((unsigned int )((long )tmp) - (unsigned int )((long )skb->data)));
}
}
extern struct sk_buff *__netdev_alloc_skb(struct net_device * , unsigned int , gfp_t ) ;
__inline static struct sk_buff *__netdev_alloc_skb_ip_align(struct net_device *dev ,
                                                            unsigned int length ,
                                                            gfp_t gfp )
{
  struct sk_buff *skb ;
  struct sk_buff *tmp ;
  {
  tmp = __netdev_alloc_skb(dev, length, gfp);
  skb = tmp;
  return (skb);
}
}
__inline static struct sk_buff *netdev_alloc_skb_ip_align(struct net_device *dev ,
                                                          unsigned int length )
{
  struct sk_buff *tmp ;
  {
  tmp = __netdev_alloc_skb_ip_align(dev, length, 32U);
  return (tmp);
}
}
__inline static struct page *skb_frag_page(skb_frag_t const *frag )
{
  {
  return ((struct page *)frag->page.p);
}
}
__inline static dma_addr_t skb_frag_dma_map(struct device *dev , skb_frag_t const *frag ,
                                            size_t offset , size_t size , enum dma_data_direction dir )
{
  struct page *tmp ;
  dma_addr_t tmp___0 ;
  {
  tmp = skb_frag_page(frag);
  tmp___0 = dma_map_page(dev, tmp, (size_t )frag->page_offset + offset, size, dir);
  return (tmp___0);
}
}
__inline static int __skb_linearize(struct sk_buff *skb )
{
  unsigned char *tmp ;
  {
  tmp = __pskb_pull_tail(skb, (int )skb->data_len);
  return ((unsigned long )tmp != (unsigned long )((unsigned char *)0) ? 0 : -12);
}
}
__inline static int skb_linearize(struct sk_buff *skb )
{
  int tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  {
  tmp___2 = skb_is_nonlinear((struct sk_buff const *)skb);
  if ((int )tmp___2) {
    tmp___0 = __skb_linearize(skb);
    tmp___1 = tmp___0;
  } else {
    tmp___1 = 0;
  }
  return (tmp___1);
}
}
__inline static void ethtool_cmd_speed_set(struct ethtool_cmd *ep , __u32 speed )
{
  {
  ep->speed = (unsigned short )speed;
  ep->speed_hi = (unsigned short )(speed >> 16);
  return;
}
}
extern u32 ethtool_op_get_link(struct net_device * ) ;
extern void __napi_schedule(struct napi_struct * ) ;
__inline static bool napi_disable_pending(struct napi_struct *n )
{
  int tmp ;
  {
  tmp = constant_test_bit(1U, (unsigned long const volatile *)(& n->state));
  return (tmp != 0);
}
}
__inline static bool napi_schedule_prep(struct napi_struct *n )
{
  bool tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = napi_disable_pending(n);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    tmp___1 = test_and_set_bit(0, (unsigned long volatile *)(& n->state));
    if (tmp___1 == 0) {
      tmp___2 = 1;
    } else {
      tmp___2 = 0;
    }
  } else {
    tmp___2 = 0;
  }
  return ((bool )tmp___2);
}
}
__inline static void napi_schedule(struct napi_struct *n )
{
  bool tmp ;
  {
  tmp = napi_schedule_prep(n);
  if ((int )tmp) {
    __napi_schedule(n);
  } else {
  }
  return;
}
}
extern void napi_complete(struct napi_struct * ) ;
__inline static void napi_disable(struct napi_struct *n )
{
  int tmp ;
  {
  set_bit(1U, (unsigned long volatile *)(& n->state));
  goto ldv_38194;
  ldv_38193:
  msleep(1U);
  ldv_38194:
  tmp = test_and_set_bit(0, (unsigned long volatile *)(& n->state));
  if (tmp != 0) {
    goto ldv_38193;
  } else {
  }
  clear_bit(1, (unsigned long volatile *)(& n->state));
  return;
}
}
__inline static void napi_enable(struct napi_struct *n )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = constant_test_bit(0U, (unsigned long const volatile *)(& n->state));
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/netdevice.h"),
                         "i" (468), "i" (12UL));
    ldv_38199: ;
    goto ldv_38199;
  } else {
  }
  __asm__ volatile ("": : : "memory");
  clear_bit(0, (unsigned long volatile *)(& n->state));
  return;
}
}
__inline static struct netdev_queue *netdev_get_tx_queue(struct net_device const *dev ,
                                                         unsigned int index )
{
  {
  return ((struct netdev_queue *)dev->_tx + (unsigned long )index);
}
}
__inline static void *netdev_priv(struct net_device const *dev )
{
  {
  return ((void *)dev + 2816U);
}
}
extern void netif_napi_add(struct net_device * , struct napi_struct * , int (*)(struct napi_struct * ,
                                                                                int ) ,
                           int ) ;
extern void netif_napi_del(struct napi_struct * ) ;
extern void free_netdev(struct net_device * ) ;
extern int netpoll_trap(void) ;
extern void __netif_schedule(struct Qdisc * ) ;
__inline static void netif_tx_start_queue(struct netdev_queue *dev_queue )
{
  {
  clear_bit(0, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
__inline static void netif_tx_wake_queue(struct netdev_queue *dev_queue )
{
  int tmp ;
  int tmp___0 ;
  {
  tmp = netpoll_trap();
  if (tmp != 0) {
    netif_tx_start_queue(dev_queue);
    return;
  } else {
  }
  tmp___0 = test_and_clear_bit(0, (unsigned long volatile *)(& dev_queue->state));
  if (tmp___0 != 0) {
    __netif_schedule(dev_queue->qdisc);
  } else {
  }
  return;
}
}
__inline static void netif_wake_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_wake_queue(tmp);
  return;
}
}
__inline static void netif_tx_stop_queue(struct netdev_queue *dev_queue )
{
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  {
  __ret_warn_on = (unsigned long )dev_queue == (unsigned long )((struct netdev_queue *)0);
  tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp != 0L) {
    warn_slowpath_null("include/linux/netdevice.h", 1880);
  } else {
  }
  tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___0 != 0L) {
    printk("\016netif_stop_queue() cannot be called before register_netdev()\n");
    return;
  } else {
  }
  set_bit(0U, (unsigned long volatile *)(& dev_queue->state));
  return;
}
}
__inline static void netif_stop_queue(struct net_device *dev )
{
  struct netdev_queue *tmp ;
  {
  tmp = netdev_get_tx_queue((struct net_device const *)dev, 0U);
  netif_tx_stop_queue(tmp);
  return;
}
}
__inline static bool netif_tx_queue_stopped(struct netdev_queue const *dev_queue )
{
  int tmp ;
  {
  tmp = constant_test_bit(0U, (unsigned long const volatile *)(& dev_queue->state));
  return (tmp != 0);
}
}
__inline static bool netif_queue_stopped(struct net_device const *dev )
{
  struct netdev_queue *tmp ;
  bool tmp___0 ;
  {
  tmp = netdev_get_tx_queue(dev, 0U);
  tmp___0 = netif_tx_queue_stopped((struct netdev_queue const *)tmp);
  return (tmp___0);
}
}
__inline static bool netif_running(struct net_device const *dev )
{
  int tmp ;
  {
  tmp = constant_test_bit(0U, (unsigned long const volatile *)(& dev->state));
  return (tmp != 0);
}
}
extern void dev_kfree_skb_any(struct sk_buff * ) ;
extern int netif_receive_skb(struct sk_buff * ) ;
extern gro_result_t napi_gro_receive(struct napi_struct * , struct sk_buff * ) ;
__inline static bool netif_carrier_ok(struct net_device const *dev )
{
  int tmp ;
  {
  tmp = constant_test_bit(2U, (unsigned long const volatile *)(& dev->state));
  return (tmp == 0);
}
}
extern void netif_carrier_on(struct net_device * ) ;
extern void netif_carrier_off(struct net_device * ) ;
__inline static void __netif_tx_lock(struct netdev_queue *txq , int cpu )
{
  {
  spin_lock(& txq->_xmit_lock);
  txq->xmit_lock_owner = cpu;
  return;
}
}
__inline static void __netif_tx_unlock(struct netdev_queue *txq )
{
  {
  txq->xmit_lock_owner = -1;
  spin_unlock(& txq->_xmit_lock);
  return;
}
}
__inline static void netif_tx_disable(struct net_device *dev )
{
  unsigned int i ;
  int cpu ;
  int pscr_ret__ ;
  void const *__vpp_verify ;
  int pfo_ret__ ;
  int pfo_ret_____0 ;
  int pfo_ret_____1 ;
  int pfo_ret_____2 ;
  struct netdev_queue *txq ;
  struct netdev_queue *tmp ;
  {
  local_bh_disable();
  __vpp_verify = 0;
  switch (4UL) {
  case 1UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "m" (cpu_number));
  goto ldv_39481;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_39481;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_39481;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "m" (cpu_number));
  goto ldv_39481;
  default:
  __bad_percpu_size();
  }
  ldv_39481:
  pscr_ret__ = pfo_ret__;
  goto ldv_39487;
  case 2UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39491;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39491;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39491;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____0): "m" (cpu_number));
  goto ldv_39491;
  default:
  __bad_percpu_size();
  }
  ldv_39491:
  pscr_ret__ = pfo_ret_____0;
  goto ldv_39487;
  case 4UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39500;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39500;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39500;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____1): "m" (cpu_number));
  goto ldv_39500;
  default:
  __bad_percpu_size();
  }
  ldv_39500:
  pscr_ret__ = pfo_ret_____1;
  goto ldv_39487;
  case 8UL: ;
  switch (4UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39509;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39509;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39509;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret_____2): "m" (cpu_number));
  goto ldv_39509;
  default:
  __bad_percpu_size();
  }
  ldv_39509:
  pscr_ret__ = pfo_ret_____2;
  goto ldv_39487;
  default:
  __bad_size_call_parameter();
  goto ldv_39487;
  }
  ldv_39487:
  cpu = pscr_ret__;
  i = 0U;
  goto ldv_39519;
  ldv_39518:
  tmp = netdev_get_tx_queue((struct net_device const *)dev, i);
  txq = tmp;
  __netif_tx_lock(txq, cpu);
  netif_tx_stop_queue(txq);
  __netif_tx_unlock(txq);
  i = i + 1U;
  ldv_39519: ;
  if (dev->num_tx_queues > i) {
    goto ldv_39518;
  } else {
  }
  local_bh_enable();
  return;
}
}
extern int register_netdev(struct net_device * ) ;
extern void unregister_netdev(struct net_device * ) ;
extern int netdev_err(struct net_device const * , char const * , ...) ;
extern int netdev_warn(struct net_device const * , char const * , ...) ;
extern int netdev_info(struct net_device const * , char const * , ...) ;
extern __be16 eth_type_trans(struct sk_buff * , struct net_device * ) ;
extern int eth_validate_addr(struct net_device * ) ;
extern struct net_device *alloc_etherdev_mqs(int , unsigned int , unsigned int ) ;
__inline static bool is_zero_ether_addr(u8 const *addr )
{
  {
  return ((unsigned int )((((((int )((unsigned char )*addr) | (int )((unsigned char )*(addr + 1UL))) | (int )((unsigned char )*(addr + 2UL))) | (int )((unsigned char )*(addr + 3UL))) | (int )((unsigned char )*(addr + 4UL))) | (int )((unsigned char )*(addr + 5UL))) == 0U);
}
}
__inline static bool is_multicast_ether_addr(u8 const *addr )
{
  {
  return (((int )*addr & 1) != 0);
}
}
__inline static bool is_valid_ether_addr(u8 const *addr )
{
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  tmp = is_multicast_ether_addr(addr);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    tmp___1 = is_zero_ether_addr(addr);
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      tmp___3 = 1;
    } else {
      tmp___3 = 0;
    }
  } else {
    tmp___3 = 0;
  }
  return ((bool )tmp___3);
}
}
__inline static void eth_random_addr(u8 *addr )
{
  {
  get_random_bytes((void *)addr, 6);
  *addr = (unsigned int )*addr & 254U;
  *addr = (u8 )((unsigned int )*addr | 2U);
  return;
}
}
__inline static void eth_hw_addr_random(struct net_device *dev )
{
  {
  dev->addr_assign_type = (unsigned int )dev->addr_assign_type | 1U;
  eth_random_addr(dev->dev_addr);
  return;
}
}
__inline static unsigned int compare_ether_addr(u8 const *addr1 , u8 const *addr2 )
{
  u16 const *a ;
  u16 const *b ;
  {
  a = (u16 const *)addr1;
  b = (u16 const *)addr2;
  return ((unsigned int )((((int )((unsigned short )*a) ^ (int )((unsigned short )*b)) | ((int )((unsigned short )*(a + 1UL)) ^ (int )((unsigned short )*(b + 1UL)))) | ((int )((unsigned short )*(a + 2UL)) ^ (int )((unsigned short )*(b + 2UL)))) != 0U);
}
}
__inline static bool ether_addr_equal(u8 const *addr1 , u8 const *addr2 )
{
  unsigned int tmp ;
  {
  tmp = compare_ether_addr(addr1, addr2);
  return (tmp == 0U);
}
}
extern void rtnl_lock(void) ;
extern void rtnl_unlock(void) ;
__inline static struct sk_buff *__vlan_hwaccel_put_tag(struct sk_buff *skb , u16 vlan_tci )
{
  {
  skb->vlan_tci = (__u16 )((unsigned int )vlan_tci | 4096U);
  return (skb);
}
}
__inline static struct iphdr *ip_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_network_header(skb);
  return ((struct iphdr *)tmp);
}
}
extern int nla_put(struct sk_buff * , int , int , void const * ) ;
__inline static void *nla_data(struct nlattr const *nla )
{
  {
  return ((void *)nla + 4U);
}
}
__inline static int nla_put_u16(struct sk_buff *skb , int attrtype , u16 value )
{
  int tmp ;
  {
  tmp = nla_put(skb, attrtype, 2, (void const *)(& value));
  return (tmp);
}
}
__inline static u8 nla_get_u8(struct nlattr const *nla )
{
  void *tmp ;
  {
  tmp = nla_data(nla);
  return (*((u8 *)tmp));
}
}
__inline static struct tcphdr *tcp_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_transport_header(skb);
  return ((struct tcphdr *)tmp);
}
}
__inline static unsigned int tcp_hdrlen(struct sk_buff const *skb )
{
  struct tcphdr *tmp ;
  {
  tmp = tcp_hdr(skb);
  return ((unsigned int )((int )tmp->doff * 4));
}
}
__inline static struct ipv6hdr *ipv6_hdr(struct sk_buff const *skb )
{
  unsigned char *tmp ;
  {
  tmp = skb_network_header(skb);
  return ((struct ipv6hdr *)tmp);
}
}
__inline static void cq_desc_dec(struct cq_desc const *desc_arg , u8 *type , u8 *color ,
                                 u16 *q_number , u16 *completed_index )
{
  struct cq_desc const *desc ;
  u8 type_color ;
  {
  desc = desc_arg;
  type_color = desc->type_color;
  *color = (u8 )((int )type_color >> 7);
  __asm__ volatile ("lfence": : : "memory");
  *type = (unsigned int )type_color & 15U;
  *q_number = (unsigned int )((u16 )desc->q_number) & 1023U;
  *completed_index = (unsigned int )((u16 )desc->completed_index) & 4095U;
  return;
}
}
__inline static void cq_enet_rq_desc_dec(struct cq_enet_rq_desc *desc , u8 *type ,
                                         u8 *color , u16 *q_number , u16 *completed_index ,
                                         u8 *ingress_port , u8 *fcoe , u8 *eop , u8 *sop ,
                                         u8 *rss_type , u8 *csum_not_calc , u32 *rss_hash ,
                                         u16 *bytes_written , u8 *packet_error , u8 *vlan_stripped ,
                                         u16 *vlan_tci , u16 *checksum , u8 *fcoe_sof ,
                                         u8 *fcoe_fc_crc_ok , u8 *fcoe_enc_error ,
                                         u8 *fcoe_eof , u8 *tcp_udp_csum_ok , u8 *udp ,
                                         u8 *tcp , u8 *ipv4_csum_ok , u8 *ipv6 , u8 *ipv4 ,
                                         u8 *ipv4_fragment , u8 *fcs_ok )
{
  u16 completed_index_flags ;
  u16 q_number_rss_type_flags ;
  u16 bytes_written_flags ;
  {
  cq_desc_dec((struct cq_desc const *)desc, type, color, q_number, completed_index);
  completed_index_flags = desc->completed_index_flags;
  q_number_rss_type_flags = desc->q_number_rss_type_flags;
  bytes_written_flags = desc->bytes_written_flags;
  *ingress_port = ((int )completed_index_flags & 4096) != 0;
  *fcoe = ((int )completed_index_flags & 8192) != 0;
  *eop = ((int )completed_index_flags & 16384) != 0;
  *sop = (int )((short )completed_index_flags) < 0;
  *rss_type = (unsigned int )((unsigned char )((int )q_number_rss_type_flags >> 10)) & 15U;
  *csum_not_calc = ((int )q_number_rss_type_flags & 16384) != 0;
  *rss_hash = desc->rss_hash;
  *bytes_written = (unsigned int )bytes_written_flags & 16383U;
  *packet_error = ((int )bytes_written_flags & 16384) != 0;
  *vlan_stripped = (int )((short )bytes_written_flags) < 0;
  *vlan_tci = desc->vlan;
  if ((unsigned int )*fcoe != 0U) {
    *fcoe_sof = (unsigned char )desc->checksum_fcoe;
    *fcoe_fc_crc_ok = (unsigned int )desc->flags & 1U;
    *fcoe_enc_error = ((int )desc->flags & 2) != 0;
    *fcoe_eof = (unsigned char )((int )desc->checksum_fcoe >> 8);
    *checksum = 0U;
  } else {
    *fcoe_sof = 0U;
    *fcoe_fc_crc_ok = 0U;
    *fcoe_enc_error = 0U;
    *fcoe_eof = 0U;
    *checksum = desc->checksum_fcoe;
  }
  *tcp_udp_csum_ok = (unsigned int )desc->flags & 1U;
  *udp = ((int )desc->flags & 2) != 0;
  *tcp = ((int )desc->flags & 4) != 0;
  *ipv4_csum_ok = ((int )desc->flags & 8) != 0;
  *ipv6 = ((int )desc->flags & 16) != 0;
  *ipv4 = ((int )desc->flags & 32) != 0;
  *ipv4_fragment = ((int )desc->flags & 64) != 0;
  *fcs_ok = (int )((signed char )desc->flags) < 0;
  return;
}
}
void *vnic_dev_priv(struct vnic_dev *vdev ) ;
void vnic_dev_cmd_proxy_by_index_start(struct vnic_dev *vdev , u16 index ) ;
void vnic_dev_cmd_proxy_end(struct vnic_dev *vdev ) ;
int vnic_dev_get_mac_addr(struct vnic_dev *vdev , u8 *mac_addr ) ;
int vnic_dev_notify_set(struct vnic_dev *vdev , u16 intr ) ;
int vnic_dev_link_status(struct vnic_dev *vdev ) ;
u32 vnic_dev_port_speed(struct vnic_dev *vdev ) ;
u32 vnic_dev_msg_lvl(struct vnic_dev *vdev ) ;
u32 vnic_dev_mtu(struct vnic_dev *vdev ) ;
int vnic_dev_close(struct vnic_dev *vdev ) ;
int vnic_dev_open(struct vnic_dev *vdev , int arg ) ;
int vnic_dev_open_done(struct vnic_dev *vdev , int *done ) ;
int vnic_dev_init(struct vnic_dev *vdev , int arg ) ;
void vnic_dev_intr_coal_timer_info_default(struct vnic_dev *vdev ) ;
int vnic_dev_hang_reset(struct vnic_dev *vdev , int arg ) ;
int vnic_dev_hang_reset_done(struct vnic_dev *vdev , int *done ) ;
void vnic_dev_set_intr_mode(struct vnic_dev *vdev , enum vnic_dev_intr_mode intr_mode ) ;
enum vnic_dev_intr_mode vnic_dev_get_intr_mode(struct vnic_dev *vdev ) ;
u32 vnic_dev_get_intr_coal_timer_max(struct vnic_dev *vdev ) ;
void vnic_dev_unregister(struct vnic_dev *vdev ) ;
struct vnic_dev *vnic_dev_register(struct vnic_dev *vdev , void *priv , struct pci_dev *pdev ,
                                   struct vnic_dev_bar *bar , unsigned int num_bars ) ;
int vnic_dev_set_mac_addr(struct vnic_dev *vdev , u8 *mac_addr ) ;
__inline static void vnic_intr_unmask(struct vnic_intr *intr )
{
  {
  iowrite32(0U, (void *)(& (intr->ctrl)->mask));
  return;
}
}
__inline static void vnic_intr_mask(struct vnic_intr *intr )
{
  {
  iowrite32(1U, (void *)(& (intr->ctrl)->mask));
  return;
}
}
__inline static int vnic_intr_masked(struct vnic_intr *intr )
{
  unsigned int tmp ;
  {
  tmp = ioread32((void *)(& (intr->ctrl)->mask));
  return ((int )tmp);
}
}
__inline static void vnic_intr_return_credits(struct vnic_intr *intr , unsigned int credits ,
                                              int unmask , int reset_timer )
{
  u32 int_credit_return ;
  {
  int_credit_return = ((credits & 65535U) | (unmask != 0 ? 65536U : 0U)) | (reset_timer != 0 ? 131072U : 0U);
  iowrite32(int_credit_return, (void *)(& (intr->ctrl)->int_credit_return));
  return;
}
}
__inline static unsigned int vnic_intr_credits(struct vnic_intr *intr )
{
  unsigned int tmp ;
  {
  tmp = ioread32((void *)(& (intr->ctrl)->int_credits));
  return (tmp);
}
}
__inline static void vnic_intr_return_all_credits(struct vnic_intr *intr )
{
  unsigned int credits ;
  unsigned int tmp ;
  int unmask ;
  int reset_timer ;
  {
  tmp = vnic_intr_credits(intr);
  credits = tmp;
  unmask = 1;
  reset_timer = 1;
  vnic_intr_return_credits(intr, credits, unmask, reset_timer);
  return;
}
}
__inline static u32 vnic_intr_legacy_pba(u32 *legacy_pba )
{
  unsigned int tmp ;
  {
  tmp = ioread32((void *)legacy_pba);
  return (tmp);
}
}
void vnic_intr_coalescing_timer_set(struct vnic_intr *intr , u32 coalescing_timer ) ;
void vnic_intr_clean(struct vnic_intr *intr ) ;
__inline static void wq_enet_desc_enc(struct wq_enet_desc *desc , u64 address , u16 length ,
                                      u16 mss , u16 header_length , u8 offload_mode ,
                                      u8 eop , u8 cq_entry , u8 fcoe_encap , u8 vlan_tag_insert ,
                                      u16 vlan_tag , u8 loopback )
{
  {
  desc->address = address;
  desc->length = (unsigned int )length & 16383U;
  desc->mss_loopback = (unsigned short )((int )((short )((int )mss << 2)) | (int )((short )(((int )loopback & 1) << 1)));
  desc->header_length_flags = (unsigned short )(((((((int )((short )header_length) & 1023) | (int )((short )(((int )offload_mode & 3) << 10))) | (int )((short )(((int )eop & 1) << 12))) | (int )((short )(((int )cq_entry & 1) << 13))) | (int )((short )(((int )fcoe_encap & 1) << 14))) | (int )((short )((int )vlan_tag_insert << 15)));
  desc->vlan_tag = vlan_tag;
  return;
}
}
__inline static void rq_enet_desc_enc(struct rq_enet_desc *desc , u64 address , u8 type ,
                                      u16 length )
{
  {
  desc->address = address;
  desc->length_type = (unsigned short )(((int )((short )length) & 16383) | (int )((short )((int )type << 14)));
  return;
}
}
__inline static unsigned int vnic_cq_service(struct vnic_cq *cq , unsigned int work_to_do ,
                                             int (*q_service)(struct vnic_dev * ,
                                                              struct cq_desc * , u8 ,
                                                              u16 , u16 , void * ) ,
                                             void *opaque )
{
  struct cq_desc *cq_desc ;
  unsigned int work_done ;
  u16 q_number ;
  u16 completed_index ;
  u8 type ;
  u8 color ;
  int tmp ;
  {
  work_done = 0U;
  cq_desc = (struct cq_desc *)cq->ring.descs + (unsigned long )(cq->ring.desc_size * cq->to_clean);
  cq_desc_dec((struct cq_desc const *)cq_desc, & type, & color, & q_number, & completed_index);
  goto ldv_45658;
  ldv_45657:
  tmp = (*q_service)(cq->vdev, cq_desc, (int )type, (int )q_number, (int )completed_index,
                     opaque);
  if (tmp != 0) {
    goto ldv_45656;
  } else {
  }
  cq->to_clean = cq->to_clean + 1U;
  if (cq->to_clean == cq->ring.desc_count) {
    cq->to_clean = 0U;
    cq->last_color = cq->last_color == 0U;
  } else {
  }
  cq_desc = (struct cq_desc *)cq->ring.descs + (unsigned long )(cq->ring.desc_size * cq->to_clean);
  cq_desc_dec((struct cq_desc const *)cq_desc, & type, & color, & q_number, & completed_index);
  work_done = work_done + 1U;
  if (work_done >= work_to_do) {
    goto ldv_45656;
  } else {
  }
  ldv_45658: ;
  if ((unsigned int )color != cq->last_color) {
    goto ldv_45657;
  } else {
  }
  ldv_45656: ;
  return (work_done);
}
}
void vnic_cq_clean(struct vnic_cq *cq ) ;
__inline static unsigned int vnic_wq_desc_avail(struct vnic_wq *wq )
{
  {
  return (wq->ring.desc_avail);
}
}
__inline static void *vnic_wq_next_desc(struct vnic_wq *wq )
{
  {
  return ((wq->to_use)->desc);
}
}
__inline static void vnic_wq_post(struct vnic_wq *wq , void *os_buf , dma_addr_t dma_addr ,
                                  unsigned int len , int sop , int eop )
{
  struct vnic_wq_buf *buf ;
  {
  buf = wq->to_use;
  buf->sop = sop;
  buf->os_buf = eop != 0 ? os_buf : 0;
  buf->dma_addr = dma_addr;
  buf->len = len;
  buf = buf->next;
  if (eop != 0) {
    __asm__ volatile ("sfence": : : "memory");
    iowrite32(buf->index, (void *)(& (wq->ctrl)->posted_index));
  } else {
  }
  wq->to_use = buf;
  wq->ring.desc_avail = wq->ring.desc_avail - 1U;
  return;
}
}
__inline static void vnic_wq_service(struct vnic_wq *wq , struct cq_desc *cq_desc ,
                                     u16 completed_index , void (*buf_service)(struct vnic_wq * ,
                                                                               struct cq_desc * ,
                                                                               struct vnic_wq_buf * ,
                                                                               void * ) ,
                                     void *opaque )
{
  struct vnic_wq_buf *buf ;
  {
  buf = wq->to_clean;
  ldv_45751:
  (*buf_service)(wq, cq_desc, buf, opaque);
  wq->ring.desc_avail = wq->ring.desc_avail + 1U;
  wq->to_clean = buf->next;
  if (buf->index == (unsigned int )completed_index) {
    goto ldv_45750;
  } else {
  }
  buf = wq->to_clean;
  goto ldv_45751;
  ldv_45750: ;
  return;
}
}
unsigned int vnic_wq_error_status(struct vnic_wq *wq ) ;
void vnic_wq_enable(struct vnic_wq *wq ) ;
int vnic_wq_disable(struct vnic_wq *wq ) ;
void vnic_wq_clean(struct vnic_wq *wq , void (*buf_clean)(struct vnic_wq * , struct vnic_wq_buf * ) ) ;
__inline static unsigned int vnic_rq_desc_avail(struct vnic_rq *rq )
{
  {
  return (rq->ring.desc_avail);
}
}
__inline static unsigned int vnic_rq_desc_used(struct vnic_rq *rq )
{
  {
  return ((rq->ring.desc_count - rq->ring.desc_avail) - 1U);
}
}
__inline static void *vnic_rq_next_desc(struct vnic_rq *rq )
{
  {
  return ((rq->to_use)->desc);
}
}
__inline static void vnic_rq_post(struct vnic_rq *rq , void *os_buf , unsigned int os_buf_index ,
                                  dma_addr_t dma_addr , unsigned int len )
{
  struct vnic_rq_buf *buf ;
  {
  buf = rq->to_use;
  buf->os_buf = os_buf;
  buf->os_buf_index = os_buf_index;
  buf->dma_addr = dma_addr;
  buf->len = len;
  buf = buf->next;
  rq->to_use = buf;
  rq->ring.desc_avail = rq->ring.desc_avail - 1U;
  if ((buf->index & 15U) == 0U) {
    __asm__ volatile ("sfence": : : "memory");
    iowrite32(buf->index, (void *)(& (rq->ctrl)->posted_index));
  } else {
  }
  return;
}
}
__inline static void vnic_rq_service(struct vnic_rq *rq , struct cq_desc *cq_desc ,
                                     u16 completed_index , int desc_return , void (*buf_service)(struct vnic_rq * ,
                                                                                                 struct cq_desc * ,
                                                                                                 struct vnic_rq_buf * ,
                                                                                                 int ,
                                                                                                 void * ) ,
                                     void *opaque )
{
  struct vnic_rq_buf *buf ;
  int skipped ;
  {
  buf = rq->to_clean;
  ldv_45861:
  skipped = buf->index != (unsigned int )completed_index;
  (*buf_service)(rq, cq_desc, buf, skipped, opaque);
  if (desc_return == 0) {
    rq->ring.desc_avail = rq->ring.desc_avail + 1U;
  } else {
  }
  rq->to_clean = buf->next;
  if (skipped == 0) {
    goto ldv_45860;
  } else {
  }
  buf = rq->to_clean;
  goto ldv_45861;
  ldv_45860: ;
  return;
}
}
__inline static int vnic_rq_fill(struct vnic_rq *rq , int (*buf_fill)(struct vnic_rq * ) )
{
  int err ;
  unsigned int tmp ;
  {
  goto ldv_45869;
  ldv_45868:
  err = (*buf_fill)(rq);
  if (err != 0) {
    return (err);
  } else {
  }
  ldv_45869:
  tmp = vnic_rq_desc_avail(rq);
  if (tmp != 0U) {
    goto ldv_45868;
  } else {
  }
  return (0);
}
}
unsigned int vnic_rq_error_status(struct vnic_rq *rq ) ;
void vnic_rq_enable(struct vnic_rq *rq ) ;
int vnic_rq_disable(struct vnic_rq *rq ) ;
void vnic_rq_clean(struct vnic_rq *rq , void (*buf_clean)(struct vnic_rq * , struct vnic_rq_buf * ) ) ;
__inline static void enic_queue_wq_desc_ex(struct vnic_wq *wq , void *os_buf , dma_addr_t dma_addr ,
                                           unsigned int len , unsigned int mss_or_csum_offset ,
                                           unsigned int hdr_len , int vlan_tag_insert ,
                                           unsigned int vlan_tag , int offload_mode ,
                                           int cq_entry , int sop , int eop , int loopback )
{
  struct wq_enet_desc *desc ;
  void *tmp ;
  {
  tmp = vnic_wq_next_desc(wq);
  desc = (struct wq_enet_desc *)tmp;
  wq_enet_desc_enc(desc, dma_addr, (int )((unsigned short )len), (int )((unsigned short )mss_or_csum_offset),
                   (int )((unsigned short )hdr_len), (int )((unsigned char )offload_mode),
                   (int )((unsigned char )eop), (int )((unsigned char )cq_entry),
                   0, (int )((unsigned char )vlan_tag_insert), (int )((unsigned short )vlan_tag),
                   (int )((unsigned char )loopback));
  vnic_wq_post(wq, os_buf, dma_addr, len, sop, eop);
  return;
}
}
__inline static void enic_queue_wq_desc_cont(struct vnic_wq *wq , void *os_buf , dma_addr_t dma_addr ,
                                             unsigned int len , int eop , int loopback )
{
  {
  enic_queue_wq_desc_ex(wq, os_buf, dma_addr, len, 0U, 0U, 0, 0U, 0, eop, 0, eop,
                        loopback);
  return;
}
}
__inline static void enic_queue_wq_desc(struct vnic_wq *wq , void *os_buf , dma_addr_t dma_addr ,
                                        unsigned int len , int vlan_tag_insert , unsigned int vlan_tag ,
                                        int eop , int loopback )
{
  {
  enic_queue_wq_desc_ex(wq, os_buf, dma_addr, len, 0U, 0U, vlan_tag_insert, vlan_tag,
                        0, eop, 1, eop, loopback);
  return;
}
}
__inline static void enic_queue_wq_desc_csum_l4(struct vnic_wq *wq , void *os_buf ,
                                                dma_addr_t dma_addr , unsigned int len ,
                                                unsigned int csum_offset , unsigned int hdr_len ,
                                                int vlan_tag_insert , unsigned int vlan_tag ,
                                                int eop , int loopback )
{
  {
  enic_queue_wq_desc_ex(wq, os_buf, dma_addr, len, csum_offset, hdr_len, vlan_tag_insert,
                        vlan_tag, 2, eop, 1, eop, loopback);
  return;
}
}
__inline static void enic_queue_wq_desc_tso(struct vnic_wq *wq , void *os_buf , dma_addr_t dma_addr ,
                                            unsigned int len , unsigned int mss ,
                                            unsigned int hdr_len , int vlan_tag_insert ,
                                            unsigned int vlan_tag , int eop , int loopback )
{
  {
  enic_queue_wq_desc_ex(wq, os_buf, dma_addr, len, mss, hdr_len, vlan_tag_insert,
                        vlan_tag, 3, eop, 1, eop, loopback);
  return;
}
}
__inline static void enic_queue_rq_desc(struct vnic_rq *rq , void *os_buf , unsigned int os_buf_index ,
                                        dma_addr_t dma_addr , unsigned int len )
{
  struct rq_enet_desc *desc ;
  void *tmp ;
  u8 type ;
  {
  tmp = vnic_rq_next_desc(rq);
  desc = (struct rq_enet_desc *)tmp;
  type = os_buf_index != 0U;
  rq_enet_desc_enc(desc, dma_addr, (int )type, (int )((unsigned short )len));
  vnic_rq_post(rq, os_buf, os_buf_index, dma_addr, len);
  return;
}
}
int enic_get_vnic_config(struct enic *enic ) ;
int enic_set_nic_cfg(struct enic *enic , u8 rss_default_cpu , u8 rss_hash_type , u8 rss_hash_bits ,
                     u8 rss_base_cpu , u8 rss_enable , u8 tso_ipid_split_en , u8 ig_vlan_strip_en ) ;
int enic_set_rss_key(struct enic *enic , dma_addr_t key_pa , u64 len ) ;
int enic_set_rss_cpu(struct enic *enic , dma_addr_t cpu_pa , u64 len ) ;
void enic_get_res_counts(struct enic *enic ) ;
void enic_init_vnic_resources(struct enic *enic ) ;
int enic_alloc_vnic_resources(struct enic *enic ) ;
void enic_free_vnic_resources(struct enic *enic ) ;
__inline static struct device *enic_get_dev(struct enic *enic )
{
  {
  return (& (enic->pdev)->dev);
}
}
void enic_reset_addr_lists(struct enic *enic ) ;
int enic_sriov_enabled(struct enic *enic ) ;
int enic_is_valid_vf(struct enic *enic , int vf ) ;
int enic_is_dynamic(struct enic *enic ) ;
int enic_dev_fw_info(struct enic *enic , struct vnic_devcmd_fw_info **fw_info ) ;
int enic_dev_stats_dump(struct enic *enic , struct vnic_stats **vstats ) ;
int enic_dev_add_station_addr(struct enic *enic ) ;
int enic_dev_del_station_addr(struct enic *enic ) ;
int enic_dev_packet_filter(struct enic *enic , int directed , int multicast , int broadcast ,
                           int promisc , int allmulti ) ;
int enic_dev_add_addr(struct enic *enic , u8 *addr ) ;
int enic_dev_del_addr(struct enic *enic , u8 *addr ) ;
int enic_vlan_rx_add_vid(struct net_device *netdev , u16 vid ) ;
int enic_vlan_rx_kill_vid(struct net_device *netdev , u16 vid ) ;
int enic_dev_notify_unset(struct enic *enic ) ;
int enic_dev_hang_notify(struct enic *enic ) ;
int enic_dev_set_ig_vlan_rewrite_mode(struct enic *enic ) ;
int enic_dev_enable(struct enic *enic ) ;
int enic_dev_disable(struct enic *enic ) ;
int enic_dev_intr_coal_timer_info(struct enic *enic ) ;
int enic_dev_status_to_errno(int devcmd_status ) ;
int enic_process_set_pp_request(struct enic *enic , int vf , struct enic_port_profile *prev_pp ,
                                int *restore_pp ) ;
int enic_process_get_pp_request(struct enic *enic , int vf , int request , u16 *response ) ;
int enic_is_valid_pp_vf(struct enic *enic , int vf , int *err ) ;
static struct pci_device_id const enic_id_table[4U] = { {4407U, 67U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4407U, 68U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {4407U, 113U, 4294967295U, 4294967295U, 0U, 0U, 0UL},
        {0U, 0U, 0U, 0U, 0U, 0U, 0UL}};
struct pci_device_id const __mod_pci_device_table ;
static struct enic_stat const enic_tx_stats[11U] =
  { {{'t', 'x', '_', 'f', 'r', 'a', 'm', 'e', 's', '_', 'o', 'k', '\000'}, 0U},
        {{'t', 'x', '_', 'u', 'n', 'i', 'c', 'a', 's', 't', '_', 'f', 'r', 'a', 'm',
       'e', 's', '_', 'o', 'k', '\000'}, 1U},
        {{'t', 'x', '_', 'm', 'u', 'l', 't', 'i', 'c', 'a', 's', 't', '_', 'f', 'r',
       'a', 'm', 'e', 's', '_', 'o', 'k', '\000'}, 2U},
        {{'t', 'x', '_', 'b', 'r', 'o', 'a', 'd', 'c', 'a', 's', 't', '_', 'f', 'r',
       'a', 'm', 'e', 's', '_', 'o', 'k', '\000'}, 3U},
        {{'t', 'x', '_', 'b', 'y', 't', 'e', 's', '_', 'o', 'k', '\000'}, 4U},
        {{'t', 'x', '_', 'u', 'n', 'i', 'c', 'a', 's', 't', '_', 'b', 'y', 't', 'e',
       's', '_', 'o', 'k', '\000'}, 5U},
        {{'t', 'x', '_', 'm', 'u', 'l', 't', 'i', 'c', 'a', 's', 't', '_', 'b', 'y',
       't', 'e', 's', '_', 'o', 'k', '\000'}, 6U},
        {{'t', 'x', '_', 'b', 'r', 'o', 'a', 'd', 'c', 'a', 's', 't', '_', 'b', 'y',
       't', 'e', 's', '_', 'o', 'k', '\000'}, 7U},
        {{'t', 'x', '_', 'd', 'r', 'o', 'p', 's', '\000'}, 8U},
        {{'t', 'x', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}, 9U},
        {{'t', 'x', '_', 't', 's', 'o', '\000'}, 10U}};
static struct enic_stat const enic_rx_stats[21U] =
  { {{'r', 'x', '_', 'f', 'r', 'a', 'm', 'e', 's', '_', 'o', 'k', '\000'}, 0U},
        {{'r', 'x', '_', 'f', 'r', 'a', 'm', 'e', 's', '_', 't', 'o', 't', 'a', 'l',
       '\000'}, 1U},
        {{'r', 'x', '_', 'u', 'n', 'i', 'c', 'a', 's', 't', '_', 'f', 'r', 'a', 'm',
       'e', 's', '_', 'o', 'k', '\000'}, 2U},
        {{'r', 'x', '_', 'm', 'u', 'l', 't', 'i', 'c', 'a', 's', 't', '_', 'f', 'r',
       'a', 'm', 'e', 's', '_', 'o', 'k', '\000'}, 3U},
        {{'r', 'x', '_', 'b', 'r', 'o', 'a', 'd', 'c', 'a', 's', 't', '_', 'f', 'r',
       'a', 'm', 'e', 's', '_', 'o', 'k', '\000'}, 4U},
        {{'r', 'x', '_', 'b', 'y', 't', 'e', 's', '_', 'o', 'k', '\000'}, 5U},
        {{'r', 'x', '_', 'u', 'n', 'i', 'c', 'a', 's', 't', '_', 'b', 'y', 't', 'e',
       's', '_', 'o', 'k', '\000'}, 6U},
        {{'r', 'x', '_', 'm', 'u', 'l', 't', 'i', 'c', 'a', 's', 't', '_', 'b', 'y',
       't', 'e', 's', '_', 'o', 'k', '\000'}, 7U},
        {{'r', 'x', '_', 'b', 'r', 'o', 'a', 'd', 'c', 'a', 's', 't', '_', 'b', 'y',
       't', 'e', 's', '_', 'o', 'k', '\000'}, 8U},
        {{'r', 'x', '_', 'd', 'r', 'o', 'p', '\000'}, 9U},
        {{'r', 'x', '_', 'n', 'o', '_', 'b', 'u', 'f', 's', '\000'}, 10U},
        {{'r', 'x', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}, 11U},
        {{'r', 'x', '_', 'r', 's', 's', '\000'}, 12U},
        {{'r', 'x', '_', 'c', 'r', 'c', '_', 'e', 'r', 'r', 'o', 'r', 's', '\000'}, 13U},
        {{'r',
       'x', '_', 'f', 'r', 'a', 'm', 'e', 's', '_', '6', '4', '\000'}, 14U},
        {{'r', 'x', '_', 'f', 'r', 'a', 'm', 'e', 's', '_', '1', '2', '7', '\000'}, 15U},
        {{'r',
       'x', '_', 'f', 'r', 'a', 'm', 'e', 's', '_', '2', '5', '5', '\000'}, 16U},
        {{'r', 'x', '_', 'f', 'r', 'a', 'm', 'e', 's', '_', '5', '1', '1', '\000'}, 17U},
        {{'r',
       'x', '_', 'f', 'r', 'a', 'm', 'e', 's', '_', '1', '0', '2', '3', '\000'}, 18U},
        {{'r',
       'x', '_', 'f', 'r', 'a', 'm', 'e', 's', '_', '1', '5', '1', '8', '\000'}, 19U},
        {{'r',
       'x', '_', 'f', 'r', 'a', 'm', 'e', 's', '_', 't', 'o', '_', 'm', 'a', 'x',
       '\000'}, 20U}};
static unsigned int const enic_n_tx_stats = 11U;
static unsigned int const enic_n_rx_stats = 21U;
int enic_is_dynamic(struct enic *enic )
{
  {
  return ((unsigned int )(enic->pdev)->device == 68U);
}
}
int enic_sriov_enabled(struct enic *enic )
{
  {
  return ((int )enic->priv_flags & 1);
}
}
static int enic_is_sriov_vf(struct enic *enic )
{
  {
  return ((unsigned int )(enic->pdev)->device == 113U);
}
}
int enic_is_valid_vf(struct enic *enic , int vf )
{
  {
  return (vf >= 0 && (int )enic->num_vfs > vf);
}
}
__inline static unsigned int enic_cq_rq(struct enic *enic , unsigned int rq )
{
  {
  return (rq);
}
}
__inline static unsigned int enic_cq_wq(struct enic *enic , unsigned int wq )
{
  {
  return (enic->rq_count + wq);
}
}
__inline static unsigned int enic_legacy_io_intr(void)
{
  {
  return (0U);
}
}
__inline static unsigned int enic_legacy_err_intr(void)
{
  {
  return (1U);
}
}
__inline static unsigned int enic_legacy_notify_intr(void)
{
  {
  return (2U);
}
}
__inline static unsigned int enic_msix_rq_intr(struct enic *enic , unsigned int rq )
{
  unsigned int tmp ;
  {
  tmp = enic_cq_rq(enic, rq);
  return (enic->cq[tmp].interrupt_offset);
}
}
__inline static unsigned int enic_msix_wq_intr(struct enic *enic , unsigned int wq )
{
  unsigned int tmp ;
  {
  tmp = enic_cq_wq(enic, wq);
  return (enic->cq[tmp].interrupt_offset);
}
}
__inline static unsigned int enic_msix_err_intr(struct enic *enic )
{
  {
  return (enic->rq_count + enic->wq_count);
}
}
__inline static unsigned int enic_msix_notify_intr(struct enic *enic )
{
  {
  return ((enic->rq_count + enic->wq_count) + 1U);
}
}
static int enic_get_settings(struct net_device *netdev , struct ethtool_cmd *ecmd )
{
  struct enic *enic ;
  void *tmp ;
  u32 tmp___0 ;
  bool tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  ecmd->supported = 5120U;
  ecmd->advertising = 5120U;
  ecmd->port = 3U;
  ecmd->transceiver = 1U;
  tmp___1 = netif_carrier_ok((struct net_device const *)netdev);
  if ((int )tmp___1) {
    tmp___0 = vnic_dev_port_speed(enic->vdev);
    ethtool_cmd_speed_set(ecmd, tmp___0);
    ecmd->duplex = 1U;
  } else {
    ethtool_cmd_speed_set(ecmd, 4294967295U);
    ecmd->duplex = 255U;
  }
  ecmd->autoneg = 0U;
  return (0);
}
}
static void enic_get_drvinfo(struct net_device *netdev , struct ethtool_drvinfo *drvinfo )
{
  struct enic *enic ;
  void *tmp ;
  struct vnic_devcmd_fw_info *fw_info ;
  char const *tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  enic_dev_fw_info(enic, & fw_info);
  strlcpy((char *)(& drvinfo->driver), "enic", 32UL);
  strlcpy((char *)(& drvinfo->version), "2.1.1.39", 32UL);
  strlcpy((char *)(& drvinfo->fw_version), (char const *)(& fw_info->fw_version),
          32UL);
  tmp___0 = pci_name((struct pci_dev const *)enic->pdev);
  strlcpy((char *)(& drvinfo->bus_info), tmp___0, 32UL);
  return;
}
}
static void enic_get_strings(struct net_device *netdev , u32 stringset , u8 *data )
{
  unsigned int i ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  switch (stringset) {
  case 1U:
  i = 0U;
  goto ldv_46261;
  ldv_46260:
  __len = 32UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)data, (void const *)(& enic_tx_stats[i].name), __len);
  } else {
    __ret = __builtin_memcpy((void *)data, (void const *)(& enic_tx_stats[i].name),
                             __len);
  }
  data = data + 32UL;
  i = i + 1U;
  ldv_46261: ;
  if (i < (unsigned int )enic_n_tx_stats) {
    goto ldv_46260;
  } else {
  }
  i = 0U;
  goto ldv_46267;
  ldv_46266:
  __len___0 = 32UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)data, (void const *)(& enic_rx_stats[i].name),
                         __len___0);
  } else {
    __ret___0 = __builtin_memcpy((void *)data, (void const *)(& enic_rx_stats[i].name),
                                 __len___0);
  }
  data = data + 32UL;
  i = i + 1U;
  ldv_46267: ;
  if (i < (unsigned int )enic_n_rx_stats) {
    goto ldv_46266;
  } else {
  }
  goto ldv_46269;
  }
  ldv_46269: ;
  return;
}
}
static int enic_get_sset_count(struct net_device *netdev , int sset )
{
  {
  switch (sset) {
  case 1: ;
  return ((int )((unsigned int )enic_n_tx_stats + (unsigned int )enic_n_rx_stats));
  default: ;
  return (-95);
  }
}
}
static void enic_get_ethtool_stats(struct net_device *netdev , struct ethtool_stats *stats ,
                                   u64 *data )
{
  struct enic *enic ;
  void *tmp ;
  struct vnic_stats *vstats ;
  unsigned int i ;
  u64 *tmp___0 ;
  u64 *tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  enic_dev_stats_dump(enic, & vstats);
  i = 0U;
  goto ldv_46285;
  ldv_46284:
  tmp___0 = data;
  data = data + 1;
  *tmp___0 = *((u64 *)(& vstats->tx) + (unsigned long )enic_tx_stats[i].offset);
  i = i + 1U;
  ldv_46285: ;
  if (i < (unsigned int )enic_n_tx_stats) {
    goto ldv_46284;
  } else {
  }
  i = 0U;
  goto ldv_46288;
  ldv_46287:
  tmp___1 = data;
  data = data + 1;
  *tmp___1 = *((u64 *)(& vstats->rx) + (unsigned long )enic_rx_stats[i].offset);
  i = i + 1U;
  ldv_46288: ;
  if (i < (unsigned int )enic_n_rx_stats) {
    goto ldv_46287;
  } else {
  }
  return;
}
}
static u32 enic_get_msglevel(struct net_device *netdev )
{
  struct enic *enic ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  return (enic->msg_enable);
}
}
static void enic_set_msglevel(struct net_device *netdev , u32 value )
{
  struct enic *enic ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  enic->msg_enable = value;
  return;
}
}
static int enic_get_coalesce(struct net_device *netdev , struct ethtool_coalesce *ecmd )
{
  struct enic *enic ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  ecmd->tx_coalesce_usecs = enic->tx_coalesce_usecs;
  ecmd->rx_coalesce_usecs = enic->rx_coalesce_usecs;
  return (0);
}
}
static int enic_set_coalesce(struct net_device *netdev , struct ethtool_coalesce *ecmd )
{
  struct enic *enic ;
  void *tmp ;
  u32 tx_coalesce_usecs ;
  u32 rx_coalesce_usecs ;
  unsigned int i ;
  unsigned int intr ;
  u32 __min1 ;
  u32 __min2 ;
  u32 tmp___0 ;
  u32 __min1___0 ;
  u32 __min2___0 ;
  u32 tmp___1 ;
  enum vnic_dev_intr_mode tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  __min1 = ecmd->tx_coalesce_usecs;
  tmp___0 = vnic_dev_get_intr_coal_timer_max(enic->vdev);
  __min2 = tmp___0;
  tx_coalesce_usecs = __min1 < __min2 ? __min1 : __min2;
  __min1___0 = ecmd->rx_coalesce_usecs;
  tmp___1 = vnic_dev_get_intr_coal_timer_max(enic->vdev);
  __min2___0 = tmp___1;
  rx_coalesce_usecs = __min1___0 < __min2___0 ? __min1___0 : __min2___0;
  tmp___2 = vnic_dev_get_intr_mode(enic->vdev);
  switch ((unsigned int )tmp___2) {
  case 1U: ;
  if (tx_coalesce_usecs != rx_coalesce_usecs) {
    return (-22);
  } else {
  }
  intr = enic_legacy_io_intr();
  vnic_intr_coalescing_timer_set((struct vnic_intr *)(& enic->intr) + (unsigned long )intr,
                                 tx_coalesce_usecs);
  goto ldv_46320;
  case 2U: ;
  if (tx_coalesce_usecs != rx_coalesce_usecs) {
    return (-22);
  } else {
  }
  vnic_intr_coalescing_timer_set((struct vnic_intr *)(& enic->intr), tx_coalesce_usecs);
  goto ldv_46320;
  case 3U:
  i = 0U;
  goto ldv_46324;
  ldv_46323:
  intr = enic_msix_wq_intr(enic, i);
  vnic_intr_coalescing_timer_set((struct vnic_intr *)(& enic->intr) + (unsigned long )intr,
                                 tx_coalesce_usecs);
  i = i + 1U;
  ldv_46324: ;
  if (enic->wq_count > i) {
    goto ldv_46323;
  } else {
  }
  i = 0U;
  goto ldv_46327;
  ldv_46326:
  intr = enic_msix_rq_intr(enic, i);
  vnic_intr_coalescing_timer_set((struct vnic_intr *)(& enic->intr) + (unsigned long )intr,
                                 rx_coalesce_usecs);
  i = i + 1U;
  ldv_46327: ;
  if (enic->rq_count > i) {
    goto ldv_46326;
  } else {
  }
  goto ldv_46320;
  default: ;
  goto ldv_46320;
  }
  ldv_46320:
  enic->tx_coalesce_usecs = tx_coalesce_usecs;
  enic->rx_coalesce_usecs = rx_coalesce_usecs;
  return (0);
}
}
static struct ethtool_ops const enic_ethtool_ops =
     {& enic_get_settings, 0, & enic_get_drvinfo, 0, 0, 0, 0, & enic_get_msglevel, & enic_set_msglevel,
    0, & ethtool_op_get_link, 0, 0, 0, & enic_get_coalesce, & enic_set_coalesce, 0,
    0, 0, 0, 0, & enic_get_strings, 0, & enic_get_ethtool_stats, 0, 0, 0, 0, & enic_get_sset_count,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static void enic_free_wq_buf(struct vnic_wq *wq , struct vnic_wq_buf *buf )
{
  struct enic *enic ;
  void *tmp ;
  {
  tmp = vnic_dev_priv(wq->vdev);
  enic = (struct enic *)tmp;
  if (buf->sop != 0) {
    pci_unmap_single(enic->pdev, buf->dma_addr, (size_t )buf->len, 1);
  } else {
    pci_unmap_page(enic->pdev, buf->dma_addr, (size_t )buf->len, 1);
  }
  if ((unsigned long )buf->os_buf != (unsigned long )((void *)0)) {
    dev_kfree_skb_any((struct sk_buff *)buf->os_buf);
  } else {
  }
  return;
}
}
static void enic_wq_free_buf(struct vnic_wq *wq , struct cq_desc *cq_desc , struct vnic_wq_buf *buf ,
                             void *opaque )
{
  {
  enic_free_wq_buf(wq, buf);
  return;
}
}
static int enic_wq_service(struct vnic_dev *vdev , struct cq_desc *cq_desc , u8 type ,
                           u16 q_number , u16 completed_index , void *opaque )
{
  struct enic *enic ;
  void *tmp ;
  bool tmp___0 ;
  unsigned int tmp___1 ;
  {
  tmp = vnic_dev_priv(vdev);
  enic = (struct enic *)tmp;
  spin_lock((spinlock_t *)(& enic->wq_lock) + (unsigned long )q_number);
  vnic_wq_service((struct vnic_wq *)(& enic->wq) + (unsigned long )q_number, cq_desc,
                  (int )completed_index, & enic_wq_free_buf, opaque);
  tmp___0 = netif_queue_stopped((struct net_device const *)enic->netdev);
  if ((int )tmp___0) {
    tmp___1 = vnic_wq_desc_avail((struct vnic_wq *)(& enic->wq) + (unsigned long )q_number);
    if (tmp___1 > 21U) {
      netif_wake_queue(enic->netdev);
    } else {
    }
  } else {
  }
  spin_unlock((spinlock_t *)(& enic->wq_lock) + (unsigned long )q_number);
  return (0);
}
}
static void enic_log_q_error(struct enic *enic )
{
  unsigned int i ;
  u32 error_status ;
  {
  i = 0U;
  goto ldv_46357;
  ldv_46356:
  error_status = vnic_wq_error_status((struct vnic_wq *)(& enic->wq) + (unsigned long )i);
  if (error_status != 0U) {
    netdev_err((struct net_device const *)enic->netdev, "WQ[%d] error_status %d\n",
               i, error_status);
  } else {
  }
  i = i + 1U;
  ldv_46357: ;
  if (enic->wq_count > i) {
    goto ldv_46356;
  } else {
  }
  i = 0U;
  goto ldv_46360;
  ldv_46359:
  error_status = vnic_rq_error_status((struct vnic_rq *)(& enic->rq) + (unsigned long )i);
  if (error_status != 0U) {
    netdev_err((struct net_device const *)enic->netdev, "RQ[%d] error_status %d\n",
               i, error_status);
  } else {
  }
  i = i + 1U;
  ldv_46360: ;
  if (enic->rq_count > i) {
    goto ldv_46359;
  } else {
  }
  return;
}
}
static void enic_msglvl_check(struct enic *enic )
{
  u32 msg_enable ;
  u32 tmp ;
  {
  tmp = vnic_dev_msg_lvl(enic->vdev);
  msg_enable = tmp;
  if (enic->msg_enable != msg_enable) {
    netdev_info((struct net_device const *)enic->netdev, "msg lvl changed from 0x%x to 0x%x\n",
                enic->msg_enable, msg_enable);
    enic->msg_enable = msg_enable;
  } else {
  }
  return;
}
}
static void enic_mtu_check(struct enic *enic )
{
  u32 mtu ;
  u32 tmp ;
  struct net_device *netdev ;
  int __max1 ;
  int __max2 ;
  int __min1 ;
  int __min2 ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = vnic_dev_mtu(enic->vdev);
  mtu = tmp;
  netdev = enic->netdev;
  if (mtu != 0U && enic->port_mtu != mtu) {
    enic->port_mtu = mtu;
    tmp___0 = enic_is_dynamic(enic);
    if (tmp___0 != 0) {
      goto _L;
    } else {
      tmp___1 = enic_is_sriov_vf(enic);
      if (tmp___1 != 0) {
        _L:
        __max1 = 68;
        __min1 = 9000;
        __min2 = (int )mtu;
        __max2 = __min1 < __min2 ? __min1 : __min2;
        mtu = (u32 )(__max1 > __max2 ? __max1 : __max2);
        if (netdev->mtu != mtu) {
          schedule_work(& enic->change_mtu_work);
        } else {
        }
      } else
      if (netdev->mtu > mtu) {
        netdev_warn((struct net_device const *)netdev, "interface MTU (%d) set higher than switch port MTU (%d)\n",
                    netdev->mtu, mtu);
      } else {
      }
    }
  } else {
  }
  return;
}
}
static void enic_link_check(struct enic *enic )
{
  int link_status ;
  int tmp ;
  int carrier_ok ;
  bool tmp___0 ;
  {
  tmp = vnic_dev_link_status(enic->vdev);
  link_status = tmp;
  tmp___0 = netif_carrier_ok((struct net_device const *)enic->netdev);
  carrier_ok = (int )tmp___0;
  if (link_status != 0 && carrier_ok == 0) {
    netdev_info((struct net_device const *)enic->netdev, "Link UP\n");
    netif_carrier_on(enic->netdev);
  } else
  if (link_status == 0 && carrier_ok != 0) {
    netdev_info((struct net_device const *)enic->netdev, "Link DOWN\n");
    netif_carrier_off(enic->netdev);
  } else {
  }
  return;
}
}
static void enic_notify_check(struct enic *enic )
{
  {
  enic_msglvl_check(enic);
  enic_mtu_check(enic);
  enic_link_check(enic);
  return;
}
}
static irqreturn_t enic_isr_legacy(int irq , void *data )
{
  struct net_device *netdev ;
  struct enic *enic ;
  void *tmp ;
  unsigned int io_intr ;
  unsigned int tmp___0 ;
  unsigned int err_intr ;
  unsigned int tmp___1 ;
  unsigned int notify_intr ;
  unsigned int tmp___2 ;
  u32 pba ;
  bool tmp___3 ;
  {
  netdev = (struct net_device *)data;
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  tmp___0 = enic_legacy_io_intr();
  io_intr = tmp___0;
  tmp___1 = enic_legacy_err_intr();
  err_intr = tmp___1;
  tmp___2 = enic_legacy_notify_intr();
  notify_intr = tmp___2;
  vnic_intr_mask((struct vnic_intr *)(& enic->intr) + (unsigned long )io_intr);
  pba = vnic_intr_legacy_pba(enic->legacy_pba);
  if (pba == 0U) {
    vnic_intr_unmask((struct vnic_intr *)(& enic->intr) + (unsigned long )io_intr);
    return (0);
  } else {
  }
  if (((u32 )(1 << (int )notify_intr) & pba) != 0U) {
    vnic_intr_return_all_credits((struct vnic_intr *)(& enic->intr) + (unsigned long )notify_intr);
    enic_notify_check(enic);
  } else {
  }
  if (((u32 )(1 << (int )err_intr) & pba) != 0U) {
    vnic_intr_return_all_credits((struct vnic_intr *)(& enic->intr) + (unsigned long )err_intr);
    enic_log_q_error(enic);
    schedule_work(& enic->reset);
    return (1);
  } else {
  }
  if (((u32 )(1 << (int )io_intr) & pba) != 0U) {
    tmp___3 = napi_schedule_prep((struct napi_struct *)(& enic->napi));
    if ((int )tmp___3) {
      __napi_schedule((struct napi_struct *)(& enic->napi));
    } else {
      vnic_intr_unmask((struct vnic_intr *)(& enic->intr) + (unsigned long )io_intr);
    }
  } else {
  }
  return (1);
}
}
static irqreturn_t enic_isr_msi(int irq , void *data )
{
  struct enic *enic ;
  {
  enic = (struct enic *)data;
  napi_schedule((struct napi_struct *)(& enic->napi));
  return (1);
}
}
static irqreturn_t enic_isr_msix_rq(int irq , void *data )
{
  struct napi_struct *napi ;
  {
  napi = (struct napi_struct *)data;
  napi_schedule(napi);
  return (1);
}
}
static irqreturn_t enic_isr_msix_wq(int irq , void *data )
{
  struct enic *enic ;
  unsigned int cq ;
  unsigned int tmp ;
  unsigned int intr ;
  unsigned int tmp___0 ;
  unsigned int wq_work_to_do ;
  unsigned int wq_work_done ;
  {
  enic = (struct enic *)data;
  tmp = enic_cq_wq(enic, 0U);
  cq = tmp;
  tmp___0 = enic_msix_wq_intr(enic, 0U);
  intr = tmp___0;
  wq_work_to_do = 4294967295U;
  wq_work_done = vnic_cq_service((struct vnic_cq *)(& enic->cq) + (unsigned long )cq,
                                 wq_work_to_do, & enic_wq_service, 0);
  vnic_intr_return_credits((struct vnic_intr *)(& enic->intr) + (unsigned long )intr,
                           wq_work_done, 1, 1);
  return (1);
}
}
static irqreturn_t enic_isr_msix_err(int irq , void *data )
{
  struct enic *enic ;
  unsigned int intr ;
  unsigned int tmp ;
  {
  enic = (struct enic *)data;
  tmp = enic_msix_err_intr(enic);
  intr = tmp;
  vnic_intr_return_all_credits((struct vnic_intr *)(& enic->intr) + (unsigned long )intr);
  enic_log_q_error(enic);
  schedule_work(& enic->reset);
  return (1);
}
}
static irqreturn_t enic_isr_msix_notify(int irq , void *data )
{
  struct enic *enic ;
  unsigned int intr ;
  unsigned int tmp ;
  {
  enic = (struct enic *)data;
  tmp = enic_msix_notify_intr(enic);
  intr = tmp;
  vnic_intr_return_all_credits((struct vnic_intr *)(& enic->intr) + (unsigned long )intr);
  enic_notify_check(enic);
  return (1);
}
}
__inline static void enic_queue_wq_skb_cont(struct enic *enic , struct vnic_wq *wq ,
                                            struct sk_buff *skb , unsigned int len_left ,
                                            int loopback )
{
  skb_frag_t const *frag ;
  unsigned char *tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  dma_addr_t tmp___3 ;
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  frag = (skb_frag_t const *)(& ((struct skb_shared_info *)tmp)->frags);
  goto ldv_46435;
  ldv_46434:
  tmp___0 = skb_frag_size(frag);
  len_left = len_left - tmp___0;
  tmp___1 = skb_frag_size(frag);
  tmp___2 = skb_frag_size(frag);
  tmp___3 = skb_frag_dma_map(& (enic->pdev)->dev, frag, 0UL, (size_t )tmp___2, 1);
  enic_queue_wq_desc_cont(wq, (void *)skb, tmp___3, tmp___1, len_left == 0U, loopback);
  frag = frag + 1;
  ldv_46435: ;
  if (len_left != 0U) {
    goto ldv_46434;
  } else {
  }
  return;
}
}
__inline static void enic_queue_wq_skb_vlan(struct enic *enic , struct vnic_wq *wq ,
                                            struct sk_buff *skb , int vlan_tag_insert ,
                                            unsigned int vlan_tag , int loopback )
{
  unsigned int head_len ;
  unsigned int tmp ;
  unsigned int len_left ;
  int eop ;
  dma_addr_t tmp___0 ;
  {
  tmp = skb_headlen((struct sk_buff const *)skb);
  head_len = tmp;
  len_left = skb->len - head_len;
  eop = len_left == 0U;
  tmp___0 = pci_map_single(enic->pdev, (void *)skb->data, (size_t )head_len, 1);
  enic_queue_wq_desc(wq, (void *)skb, tmp___0, head_len, vlan_tag_insert, vlan_tag,
                     eop, loopback);
  if (eop == 0) {
    enic_queue_wq_skb_cont(enic, wq, skb, len_left, loopback);
  } else {
  }
  return;
}
}
__inline static void enic_queue_wq_skb_csum_l4(struct enic *enic , struct vnic_wq *wq ,
                                               struct sk_buff *skb , int vlan_tag_insert ,
                                               unsigned int vlan_tag , int loopback )
{
  unsigned int head_len ;
  unsigned int tmp ;
  unsigned int len_left ;
  unsigned int hdr_len ;
  int tmp___0 ;
  unsigned int csum_offset ;
  int eop ;
  dma_addr_t tmp___1 ;
  {
  tmp = skb_headlen((struct sk_buff const *)skb);
  head_len = tmp;
  len_left = skb->len - head_len;
  tmp___0 = skb_checksum_start_offset((struct sk_buff const *)skb);
  hdr_len = (unsigned int )tmp___0;
  csum_offset = (unsigned int )skb->ldv_31249.ldv_31248.csum_offset + hdr_len;
  eop = len_left == 0U;
  tmp___1 = pci_map_single(enic->pdev, (void *)skb->data, (size_t )head_len, 1);
  enic_queue_wq_desc_csum_l4(wq, (void *)skb, tmp___1, head_len, csum_offset, hdr_len,
                             vlan_tag_insert, vlan_tag, eop, loopback);
  if (eop == 0) {
    enic_queue_wq_skb_cont(enic, wq, skb, len_left, loopback);
  } else {
  }
  return;
}
}
__inline static void enic_queue_wq_skb_tso(struct enic *enic , struct vnic_wq *wq ,
                                           struct sk_buff *skb , unsigned int mss ,
                                           int vlan_tag_insert , unsigned int vlan_tag ,
                                           int loopback )
{
  unsigned int frag_len_left ;
  unsigned int tmp ;
  unsigned int len_left ;
  unsigned int hdr_len ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  int eop ;
  unsigned int len ;
  dma_addr_t dma_addr ;
  unsigned int offset ;
  skb_frag_t *frag ;
  struct iphdr *tmp___2 ;
  struct tcphdr *tmp___3 ;
  struct iphdr *tmp___4 ;
  struct iphdr *tmp___5 ;
  __sum16 tmp___6 ;
  struct tcphdr *tmp___7 ;
  struct ipv6hdr *tmp___8 ;
  struct ipv6hdr *tmp___9 ;
  __sum16 tmp___10 ;
  unsigned int _min1 ;
  unsigned int _min2 ;
  unsigned char *tmp___11 ;
  unsigned int tmp___12 ;
  unsigned int _min1___0 ;
  unsigned int _min2___0 ;
  {
  tmp = skb_headlen((struct sk_buff const *)skb);
  frag_len_left = tmp;
  len_left = skb->len - frag_len_left;
  tmp___0 = skb_transport_offset((struct sk_buff const *)skb);
  tmp___1 = tcp_hdrlen((struct sk_buff const *)skb);
  hdr_len = (unsigned int )tmp___0 + tmp___1;
  eop = len_left == 0U;
  offset = 0U;
  if ((unsigned int )skb->protocol == 8U) {
    tmp___2 = ip_hdr((struct sk_buff const *)skb);
    tmp___2->check = 0U;
    tmp___3 = tcp_hdr((struct sk_buff const *)skb);
    tmp___4 = ip_hdr((struct sk_buff const *)skb);
    tmp___5 = ip_hdr((struct sk_buff const *)skb);
    tmp___6 = csum_tcpudp_magic(tmp___5->saddr, tmp___4->daddr, 0, 6, 0U);
    tmp___3->check = ~ ((int )tmp___6);
  } else
  if ((unsigned int )skb->protocol == 56710U) {
    tmp___7 = tcp_hdr((struct sk_buff const *)skb);
    tmp___8 = ipv6_hdr((struct sk_buff const *)skb);
    tmp___9 = ipv6_hdr((struct sk_buff const *)skb);
    tmp___10 = csum_ipv6_magic((struct in6_addr const *)(& tmp___9->saddr), (struct in6_addr const *)(& tmp___8->daddr),
                               0U, 6, 0U);
    tmp___7->check = ~ ((int )tmp___10);
  } else {
  }
  goto ldv_46482;
  ldv_46481:
  _min1 = frag_len_left;
  _min2 = 16384U;
  len = _min1 < _min2 ? _min1 : _min2;
  dma_addr = pci_map_single(enic->pdev, (void *)skb->data + (unsigned long )offset,
                            (size_t )len, 1);
  enic_queue_wq_desc_tso(wq, (void *)skb, dma_addr, len, mss, hdr_len, vlan_tag_insert,
                         vlan_tag, eop != 0 && len == frag_len_left, loopback);
  frag_len_left = frag_len_left - len;
  offset = offset + len;
  ldv_46482: ;
  if (frag_len_left != 0U) {
    goto ldv_46481;
  } else {
  }
  if (eop != 0) {
    return;
  } else {
  }
  tmp___11 = skb_end_pointer((struct sk_buff const *)skb);
  frag = (skb_frag_t *)(& ((struct skb_shared_info *)tmp___11)->frags);
  goto ldv_46491;
  ldv_46490:
  tmp___12 = skb_frag_size((skb_frag_t const *)frag);
  len_left = len_left - tmp___12;
  frag_len_left = skb_frag_size((skb_frag_t const *)frag);
  offset = 0U;
  goto ldv_46488;
  ldv_46487:
  _min1___0 = frag_len_left;
  _min2___0 = 16384U;
  len = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  dma_addr = skb_frag_dma_map(& (enic->pdev)->dev, (skb_frag_t const *)frag, (size_t )offset,
                              (size_t )len, 1);
  enic_queue_wq_desc_cont(wq, (void *)skb, dma_addr, len, len_left == 0U && len == frag_len_left,
                          loopback);
  frag_len_left = frag_len_left - len;
  offset = offset + len;
  ldv_46488: ;
  if (frag_len_left != 0U) {
    goto ldv_46487;
  } else {
  }
  frag = frag + 1;
  ldv_46491: ;
  if (len_left != 0U) {
    goto ldv_46490;
  } else {
  }
  return;
}
}
__inline static void enic_queue_wq_skb(struct enic *enic , struct vnic_wq *wq , struct sk_buff *skb )
{
  unsigned int mss ;
  unsigned char *tmp ;
  unsigned int vlan_tag ;
  int vlan_tag_insert ;
  int loopback ;
  {
  tmp = skb_end_pointer((struct sk_buff const *)skb);
  mss = (unsigned int )((struct skb_shared_info *)tmp)->gso_size;
  vlan_tag = 0U;
  vlan_tag_insert = 0;
  loopback = 0;
  if (((int )skb->vlan_tci & 4096) != 0) {
    vlan_tag_insert = 1;
    vlan_tag = (unsigned int )skb->vlan_tci & 4294963199U;
  } else
  if ((unsigned int )enic->loop_enable != 0U) {
    vlan_tag = (unsigned int )enic->loop_tag;
    loopback = 1;
  } else {
  }
  if (mss != 0U) {
    enic_queue_wq_skb_tso(enic, wq, skb, mss, vlan_tag_insert, vlan_tag, loopback);
  } else
  if ((unsigned int )*((unsigned char *)skb + 124UL) == 12U) {
    enic_queue_wq_skb_csum_l4(enic, wq, skb, vlan_tag_insert, vlan_tag, loopback);
  } else {
    enic_queue_wq_skb_vlan(enic, wq, skb, vlan_tag_insert, vlan_tag, loopback);
  }
  return;
}
}
static netdev_tx_t enic_hard_start_xmit(struct sk_buff *skb , struct net_device *netdev )
{
  struct enic *enic ;
  void *tmp ;
  struct vnic_wq *wq ;
  unsigned long flags ;
  unsigned char *tmp___0 ;
  unsigned char *tmp___1 ;
  int tmp___2 ;
  raw_spinlock_t *tmp___3 ;
  unsigned int tmp___4 ;
  unsigned char *tmp___5 ;
  unsigned int tmp___6 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  wq = (struct vnic_wq *)(& enic->wq);
  if (skb->len == 0U) {
    consume_skb(skb);
    return (0);
  } else {
  }
  tmp___0 = skb_end_pointer((struct sk_buff const *)skb);
  if ((unsigned int )((struct skb_shared_info *)tmp___0)->gso_size == 0U) {
    tmp___1 = skb_end_pointer((struct sk_buff const *)skb);
    if ((int )((struct skb_shared_info *)tmp___1)->nr_frags + 1 > 16) {
      tmp___2 = skb_linearize(skb);
      if (tmp___2 != 0) {
        consume_skb(skb);
        return (0);
      } else {
      }
    } else {
    }
  } else {
  }
  tmp___3 = spinlock_check((spinlock_t *)(& enic->wq_lock));
  flags = _raw_spin_lock_irqsave(tmp___3);
  tmp___4 = vnic_wq_desc_avail(wq);
  tmp___5 = skb_end_pointer((struct sk_buff const *)skb);
  if (tmp___4 < (unsigned int )((int )((struct skb_shared_info *)tmp___5)->nr_frags + 5)) {
    netif_stop_queue(netdev);
    netdev_err((struct net_device const *)netdev, "BUG! Tx ring full when queue awake!\n");
    spin_unlock_irqrestore((spinlock_t *)(& enic->wq_lock), flags);
    return (16);
  } else {
  }
  enic_queue_wq_skb(enic, wq, skb);
  tmp___6 = vnic_wq_desc_avail(wq);
  if (tmp___6 <= 21U) {
    netif_stop_queue(netdev);
  } else {
  }
  spin_unlock_irqrestore((spinlock_t *)(& enic->wq_lock), flags);
  return (0);
}
}
static struct rtnl_link_stats64 *enic_get_stats(struct net_device *netdev , struct rtnl_link_stats64 *net_stats )
{
  struct enic *enic ;
  void *tmp ;
  struct vnic_stats *stats ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  enic_dev_stats_dump(enic, & stats);
  net_stats->tx_packets = stats->tx.tx_frames_ok;
  net_stats->tx_bytes = stats->tx.tx_bytes_ok;
  net_stats->tx_errors = stats->tx.tx_errors;
  net_stats->tx_dropped = stats->tx.tx_drops;
  net_stats->rx_packets = stats->rx.rx_frames_ok;
  net_stats->rx_bytes = stats->rx.rx_bytes_ok;
  net_stats->rx_errors = stats->rx.rx_errors;
  net_stats->multicast = stats->rx.rx_multicast_frames_ok;
  net_stats->rx_over_errors = enic->rq_truncated_pkts;
  net_stats->rx_crc_errors = enic->rq_bad_fcs;
  net_stats->rx_dropped = stats->rx.rx_no_bufs + stats->rx.rx_drop;
  return (net_stats);
}
}
void enic_reset_addr_lists(struct enic *enic )
{
  {
  enic->mc_count = 0U;
  enic->uc_count = 0U;
  enic->flags = 0U;
  return;
}
}
static int enic_set_mac_addr(struct net_device *netdev , char *addr )
{
  struct enic *enic ;
  void *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  size_t __len ;
  void *__ret ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  tmp___6 = enic_is_dynamic(enic);
  if (tmp___6 != 0) {
    goto _L___0;
  } else {
    tmp___7 = enic_is_sriov_vf(enic);
    if (tmp___7 != 0) {
      _L___0:
      tmp___2 = is_valid_ether_addr((u8 const *)addr);
      if (tmp___2) {
        tmp___3 = 0;
      } else {
        tmp___3 = 1;
      }
      if (tmp___3) {
        tmp___4 = is_zero_ether_addr((u8 const *)addr);
        if (tmp___4) {
          tmp___5 = 0;
        } else {
          tmp___5 = 1;
        }
        if (tmp___5) {
          return (-99);
        } else {
          goto _L;
        }
      } else {
        _L:
        tmp___0 = is_valid_ether_addr((u8 const *)addr);
        if (tmp___0) {
          tmp___1 = 0;
        } else {
          tmp___1 = 1;
        }
        if (tmp___1) {
          return (-99);
        } else {
        }
      }
    } else {
    }
  }
  __len = (size_t )netdev->addr_len;
  __ret = __builtin_memcpy((void *)netdev->dev_addr, (void const *)addr, __len);
  netdev->addr_assign_type = (unsigned int )netdev->addr_assign_type & 254U;
  return (0);
}
}
static int enic_set_mac_address_dynamic(struct net_device *netdev , void *p )
{
  struct enic *enic ;
  void *tmp ;
  struct sockaddr *saddr ;
  char *addr ;
  int err ;
  bool tmp___0 ;
  bool tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  saddr = (struct sockaddr *)p;
  addr = (char *)(& saddr->sa_data);
  tmp___0 = netif_running((struct net_device const *)enic->netdev);
  if ((int )tmp___0) {
    err = enic_dev_del_station_addr(enic);
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
  }
  err = enic_set_mac_addr(netdev, addr);
  if (err != 0) {
    return (err);
  } else {
  }
  tmp___1 = netif_running((struct net_device const *)enic->netdev);
  if ((int )tmp___1) {
    err = enic_dev_add_station_addr(enic);
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
  }
  return (err);
}
}
static int enic_set_mac_address(struct net_device *netdev , void *p )
{
  struct sockaddr *saddr ;
  char *addr ;
  struct enic *enic ;
  void *tmp ;
  int err ;
  int tmp___0 ;
  {
  saddr = (struct sockaddr *)p;
  addr = (char *)(& saddr->sa_data);
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  err = enic_dev_del_station_addr(enic);
  if (err != 0) {
    return (err);
  } else {
  }
  err = enic_set_mac_addr(netdev, addr);
  if (err != 0) {
    return (err);
  } else {
  }
  tmp___0 = enic_dev_add_station_addr(enic);
  return (tmp___0);
}
}
static void enic_update_multicast_addr_list(struct enic *enic )
{
  struct net_device *netdev ;
  struct netdev_hw_addr *ha ;
  unsigned int mc_count ;
  u8 mc_addr[32U][6U] ;
  unsigned int i ;
  unsigned int j ;
  struct list_head const *__mptr ;
  size_t __len ;
  void *__ret ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  struct list_head const *__mptr___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  netdev = enic->netdev;
  mc_count = (unsigned int )netdev->mc.count;
  if (mc_count > 32U) {
    netdev_warn((struct net_device const *)netdev, "Registering only %d out of %d multicast addresses\n",
                32, mc_count);
    mc_count = 32U;
  } else {
  }
  i = 0U;
  __mptr = (struct list_head const *)netdev->mc.list.next;
  ha = (struct netdev_hw_addr *)__mptr;
  goto ldv_46563;
  ldv_46562: ;
  if (i == mc_count) {
    goto ldv_46558;
  } else {
  }
  __len = 6UL;
  if (__len > 63UL) {
    tmp = i;
    i = i + 1U;
    __ret = memcpy((void *)(& mc_addr) + (unsigned long )tmp, (void const *)(& ha->addr),
                     __len);
  } else {
    tmp___0 = i;
    i = i + 1U;
    __ret = __builtin_memcpy((void *)(& mc_addr) + (unsigned long )tmp___0, (void const *)(& ha->addr),
                             __len);
  }
  __mptr___0 = (struct list_head const *)ha->list.next;
  ha = (struct netdev_hw_addr *)__mptr___0;
  ldv_46563: ;
  if ((unsigned long )(& ha->list) != (unsigned long )(& netdev->mc.list)) {
    goto ldv_46562;
  } else {
  }
  ldv_46558:
  i = 0U;
  goto ldv_46568;
  ldv_46567:
  j = 0U;
  goto ldv_46566;
  ldv_46565:
  tmp___1 = ether_addr_equal((u8 const *)(& enic->mc_addr) + (unsigned long )i,
                             (u8 const *)(& mc_addr) + (unsigned long )j);
  if ((int )tmp___1) {
    goto ldv_46564;
  } else {
  }
  j = j + 1U;
  ldv_46566: ;
  if (j < mc_count) {
    goto ldv_46565;
  } else {
  }
  ldv_46564: ;
  if (j == mc_count) {
    enic_dev_del_addr(enic, (u8 *)(& enic->mc_addr) + (unsigned long )i);
  } else {
  }
  i = i + 1U;
  ldv_46568: ;
  if (enic->mc_count > i) {
    goto ldv_46567;
  } else {
  }
  i = 0U;
  goto ldv_46574;
  ldv_46573:
  j = 0U;
  goto ldv_46572;
  ldv_46571:
  tmp___2 = ether_addr_equal((u8 const *)(& mc_addr) + (unsigned long )i, (u8 const *)(& enic->mc_addr) + (unsigned long )j);
  if ((int )tmp___2) {
    goto ldv_46570;
  } else {
  }
  j = j + 1U;
  ldv_46572: ;
  if (enic->mc_count > j) {
    goto ldv_46571;
  } else {
  }
  ldv_46570: ;
  if (enic->mc_count == j) {
    enic_dev_add_addr(enic, (u8 *)(& mc_addr) + (unsigned long )i);
  } else {
  }
  i = i + 1U;
  ldv_46574: ;
  if (i < mc_count) {
    goto ldv_46573;
  } else {
  }
  i = 0U;
  goto ldv_46580;
  ldv_46579:
  __len___0 = 6UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)(& enic->mc_addr) + (unsigned long )i, (void const *)(& mc_addr) + (unsigned long )i,
                         __len___0);
  } else {
    __ret___0 = __builtin_memcpy((void *)(& enic->mc_addr) + (unsigned long )i, (void const *)(& mc_addr) + (unsigned long )i,
                                 __len___0);
  }
  i = i + 1U;
  ldv_46580: ;
  if (i < mc_count) {
    goto ldv_46579;
  } else {
  }
  enic->mc_count = mc_count;
  return;
}
}
static void enic_update_unicast_addr_list(struct enic *enic )
{
  struct net_device *netdev ;
  struct netdev_hw_addr *ha ;
  unsigned int uc_count ;
  u8 uc_addr[32U][6U] ;
  unsigned int i ;
  unsigned int j ;
  struct list_head const *__mptr ;
  size_t __len ;
  void *__ret ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  struct list_head const *__mptr___0 ;
  bool tmp___1 ;
  bool tmp___2 ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  netdev = enic->netdev;
  uc_count = (unsigned int )netdev->uc.count;
  if (uc_count > 32U) {
    netdev_warn((struct net_device const *)netdev, "Registering only %d out of %d unicast addresses\n",
                32, uc_count);
    uc_count = 32U;
  } else {
  }
  i = 0U;
  __mptr = (struct list_head const *)netdev->uc.list.next;
  ha = (struct netdev_hw_addr *)__mptr;
  goto ldv_46600;
  ldv_46599: ;
  if (i == uc_count) {
    goto ldv_46595;
  } else {
  }
  __len = 6UL;
  if (__len > 63UL) {
    tmp = i;
    i = i + 1U;
    __ret = memcpy((void *)(& uc_addr) + (unsigned long )tmp, (void const *)(& ha->addr),
                     __len);
  } else {
    tmp___0 = i;
    i = i + 1U;
    __ret = __builtin_memcpy((void *)(& uc_addr) + (unsigned long )tmp___0, (void const *)(& ha->addr),
                             __len);
  }
  __mptr___0 = (struct list_head const *)ha->list.next;
  ha = (struct netdev_hw_addr *)__mptr___0;
  ldv_46600: ;
  if ((unsigned long )(& ha->list) != (unsigned long )(& netdev->uc.list)) {
    goto ldv_46599;
  } else {
  }
  ldv_46595:
  i = 0U;
  goto ldv_46605;
  ldv_46604:
  j = 0U;
  goto ldv_46603;
  ldv_46602:
  tmp___1 = ether_addr_equal((u8 const *)(& enic->uc_addr) + (unsigned long )i,
                             (u8 const *)(& uc_addr) + (unsigned long )j);
  if ((int )tmp___1) {
    goto ldv_46601;
  } else {
  }
  j = j + 1U;
  ldv_46603: ;
  if (j < uc_count) {
    goto ldv_46602;
  } else {
  }
  ldv_46601: ;
  if (j == uc_count) {
    enic_dev_del_addr(enic, (u8 *)(& enic->uc_addr) + (unsigned long )i);
  } else {
  }
  i = i + 1U;
  ldv_46605: ;
  if (enic->uc_count > i) {
    goto ldv_46604;
  } else {
  }
  i = 0U;
  goto ldv_46611;
  ldv_46610:
  j = 0U;
  goto ldv_46609;
  ldv_46608:
  tmp___2 = ether_addr_equal((u8 const *)(& uc_addr) + (unsigned long )i, (u8 const *)(& enic->uc_addr) + (unsigned long )j);
  if ((int )tmp___2) {
    goto ldv_46607;
  } else {
  }
  j = j + 1U;
  ldv_46609: ;
  if (enic->uc_count > j) {
    goto ldv_46608;
  } else {
  }
  ldv_46607: ;
  if (enic->uc_count == j) {
    enic_dev_add_addr(enic, (u8 *)(& uc_addr) + (unsigned long )i);
  } else {
  }
  i = i + 1U;
  ldv_46611: ;
  if (i < uc_count) {
    goto ldv_46610;
  } else {
  }
  i = 0U;
  goto ldv_46617;
  ldv_46616:
  __len___0 = 6UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)(& enic->uc_addr) + (unsigned long )i, (void const *)(& uc_addr) + (unsigned long )i,
                         __len___0);
  } else {
    __ret___0 = __builtin_memcpy((void *)(& enic->uc_addr) + (unsigned long )i, (void const *)(& uc_addr) + (unsigned long )i,
                                 __len___0);
  }
  i = i + 1U;
  ldv_46617: ;
  if (i < uc_count) {
    goto ldv_46616;
  } else {
  }
  enic->uc_count = uc_count;
  return;
}
}
static void enic_set_rx_mode(struct net_device *netdev )
{
  struct enic *enic ;
  void *tmp ;
  int directed ;
  int multicast ;
  int broadcast ;
  int promisc ;
  int allmulti ;
  unsigned int flags ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  directed = 1;
  multicast = (netdev->flags & 4096U) != 0U;
  broadcast = (netdev->flags & 2U) != 0U;
  promisc = (netdev->flags & 256U) != 0U || netdev->uc.count > 32;
  allmulti = (netdev->flags & 512U) != 0U || netdev->mc.count > 32;
  flags = (netdev->flags | (allmulti != 0 ? 512U : 0U)) | (promisc != 0 ? 256U : 0U);
  if (enic->flags != flags) {
    enic->flags = flags;
    enic_dev_packet_filter(enic, directed, multicast, broadcast, promisc, allmulti);
  } else {
  }
  if (promisc == 0) {
    enic_update_unicast_addr_list(enic);
    if (allmulti == 0) {
      enic_update_multicast_addr_list(enic);
    } else {
    }
  } else {
  }
  return;
}
}
static void enic_tx_timeout(struct net_device *netdev )
{
  struct enic *enic ;
  void *tmp ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  schedule_work(& enic->reset);
  return;
}
}
static int enic_set_vf_mac(struct net_device *netdev , int vf , u8 *mac )
{
  struct enic *enic ;
  void *tmp ;
  struct enic_port_profile *pp ;
  int err ;
  int tmp___0 ;
  size_t __len ;
  void *__ret ;
  int tmp___1 ;
  int tmp___2 ;
  bool tmp___3 ;
  bool tmp___4 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  tmp___0 = enic_is_valid_pp_vf(enic, vf, & err);
  if (tmp___0 != 0) {
    pp = vf == -1 ? enic->pp : enic->pp + (unsigned long )vf;
  } else {
    pp = 0;
  }
  if (err != 0) {
    return (err);
  } else {
  }
  tmp___3 = is_valid_ether_addr((u8 const *)mac);
  if ((int )tmp___3) {
    goto _L;
  } else {
    tmp___4 = is_zero_ether_addr((u8 const *)mac);
    if ((int )tmp___4) {
      _L:
      if (vf == -1) {
        __len = 6UL;
        if (__len > 63UL) {
          __ret = memcpy((void *)(& pp->vf_mac), (void const *)mac, __len);
        } else {
          __ret = __builtin_memcpy((void *)(& pp->vf_mac), (void const *)mac, __len);
        }
        return (0);
      } else {
        spin_lock(& enic->devcmd_lock);
        tmp___1 = enic_is_valid_vf(enic, vf);
        if (tmp___1 != 0) {
          vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
          err = vnic_dev_set_mac_addr(enic->vdev, mac);
          vnic_dev_cmd_proxy_end(enic->vdev);
        } else {
          err = vnic_dev_set_mac_addr(enic->vdev, mac);
        }
        spin_unlock(& enic->devcmd_lock);
        tmp___2 = enic_dev_status_to_errno(err);
        return (tmp___2);
      }
    } else {
      return (-22);
    }
  }
}
}
static int enic_set_vf_port(struct net_device *netdev , int vf , struct nlattr **port )
{
  struct enic *enic ;
  void *tmp ;
  struct enic_port_profile prev_pp ;
  struct enic_port_profile *pp ;
  int err ;
  int restore_pp ;
  int tmp___0 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  size_t __len___1 ;
  void *__ret___1 ;
  void *tmp___3 ;
  void *tmp___4 ;
  size_t __len___2 ;
  void *__ret___2 ;
  void *tmp___5 ;
  void *tmp___6 ;
  size_t __len___3 ;
  void *__ret___3 ;
  bool tmp___7 ;
  int tmp___8 ;
  bool tmp___9 ;
  int tmp___10 ;
  size_t __len___4 ;
  void *__ret___4 ;
  int tmp___11 ;
  size_t __len___5 ;
  void *__ret___5 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  err = 0;
  restore_pp = 1;
  tmp___0 = enic_is_valid_pp_vf(enic, vf, & err);
  if (tmp___0 != 0) {
    pp = vf == -1 ? enic->pp : enic->pp + (unsigned long )vf;
  } else {
    pp = 0;
  }
  if (err != 0) {
    return (err);
  } else {
  }
  if ((unsigned long )*(port + 6UL) == (unsigned long )((struct nlattr *)0)) {
    return (-95);
  } else {
  }
  __len = 92UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& prev_pp), (void const *)pp, __len);
  } else {
    __ret = __builtin_memcpy((void *)(& prev_pp), (void const *)pp, __len);
  }
  memset((void *)pp, 0, 92UL);
  pp->set = pp->set | 2U;
  pp->request = nla_get_u8((struct nlattr const *)*(port + 6UL));
  if ((unsigned long )*(port + 2UL) != (unsigned long )((struct nlattr *)0)) {
    pp->set = pp->set | 4U;
    __len___0 = 40UL;
    if (__len___0 > 63UL) {
      tmp___1 = nla_data((struct nlattr const *)*(port + 2UL));
      __ret___0 = memcpy((void *)(& pp->name), (void const *)tmp___1, __len___0);
    } else {
      tmp___2 = nla_data((struct nlattr const *)*(port + 2UL));
      __ret___0 = __builtin_memcpy((void *)(& pp->name), (void const *)tmp___2,
                                   __len___0);
    }
  } else {
  }
  if ((unsigned long )*(port + 4UL) != (unsigned long )((struct nlattr *)0)) {
    pp->set = pp->set | 8U;
    __len___1 = 16UL;
    if (__len___1 > 63UL) {
      tmp___3 = nla_data((struct nlattr const *)*(port + 4UL));
      __ret___1 = memcpy((void *)(& pp->instance_uuid), (void const *)tmp___3,
                           __len___1);
    } else {
      tmp___4 = nla_data((struct nlattr const *)*(port + 4UL));
      __ret___1 = __builtin_memcpy((void *)(& pp->instance_uuid), (void const *)tmp___4,
                                   __len___1);
    }
  } else {
  }
  if ((unsigned long )*(port + 5UL) != (unsigned long )((struct nlattr *)0)) {
    pp->set = pp->set | 16U;
    __len___2 = 16UL;
    if (__len___2 > 63UL) {
      tmp___5 = nla_data((struct nlattr const *)*(port + 5UL));
      __ret___2 = memcpy((void *)(& pp->host_uuid), (void const *)tmp___5, __len___2);
    } else {
      tmp___6 = nla_data((struct nlattr const *)*(port + 5UL));
      __ret___2 = __builtin_memcpy((void *)(& pp->host_uuid), (void const *)tmp___6,
                                   __len___2);
    }
  } else {
  }
  if (vf == -1) {
    tmp___7 = is_zero_ether_addr((u8 const *)(& prev_pp.vf_mac));
    if (tmp___7) {
      tmp___8 = 0;
    } else {
      tmp___8 = 1;
    }
    if (tmp___8) {
      __len___3 = 6UL;
      if (__len___3 > 63UL) {
        __ret___3 = memcpy((void *)(& pp->mac_addr), (void const *)(& prev_pp.vf_mac),
                             __len___3);
      } else {
        __ret___3 = __builtin_memcpy((void *)(& pp->mac_addr), (void const *)(& prev_pp.vf_mac),
                                     __len___3);
      }
    } else {
    }
    tmp___9 = is_zero_ether_addr((u8 const *)netdev->dev_addr);
    if ((int )tmp___9) {
      eth_hw_addr_random(netdev);
    } else {
    }
  } else {
    spin_lock(& enic->devcmd_lock);
    tmp___10 = enic_is_valid_vf(enic, vf);
    if (tmp___10 != 0) {
      vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
      err = vnic_dev_get_mac_addr(enic->vdev, (u8 *)(& pp->mac_addr));
      vnic_dev_cmd_proxy_end(enic->vdev);
    } else {
      err = vnic_dev_get_mac_addr(enic->vdev, (u8 *)(& pp->mac_addr));
    }
    spin_unlock(& enic->devcmd_lock);
    if (err != 0) {
      netdev_err((struct net_device const *)netdev, "Error getting mac for vf %d\n",
                 vf);
      __len___4 = 92UL;
      if (__len___4 > 63UL) {
        __ret___4 = memcpy((void *)pp, (void const *)(& prev_pp), __len___4);
      } else {
        __ret___4 = __builtin_memcpy((void *)pp, (void const *)(& prev_pp), __len___4);
      }
      tmp___11 = enic_dev_status_to_errno(err);
      return (tmp___11);
    } else {
    }
  }
  err = enic_process_set_pp_request(enic, vf, & prev_pp, & restore_pp);
  if (err != 0) {
    if (restore_pp != 0) {
      __len___5 = 92UL;
      if (__len___5 > 63UL) {
        __ret___5 = memcpy((void *)pp, (void const *)(& prev_pp), __len___5);
      } else {
        __ret___5 = __builtin_memcpy((void *)pp, (void const *)(& prev_pp), __len___5);
      }
    } else {
      memset((void *)pp, 0, 92UL);
      if (vf == -1) {
        memset((void *)netdev->dev_addr, 0, 6UL);
      } else {
      }
    }
  } else {
    pp->set = pp->set | 1U;
    if ((unsigned int )pp->request == 3U) {
      memset((void *)(& pp->mac_addr), 0, 6UL);
      if (vf == -1) {
        memset((void *)netdev->dev_addr, 0, 6UL);
      } else {
      }
    } else {
    }
  }
  if (vf == -1) {
    memset((void *)(& pp->vf_mac), 0, 6UL);
  } else {
  }
  return (err);
}
}
static int enic_get_vf_port(struct net_device *netdev , int vf , struct sk_buff *skb )
{
  struct enic *enic ;
  void *tmp ;
  u16 response ;
  struct enic_port_profile *pp ;
  int err ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  response = 256U;
  tmp___0 = enic_is_valid_pp_vf(enic, vf, & err);
  if (tmp___0 != 0) {
    pp = vf == -1 ? enic->pp : enic->pp + (unsigned long )vf;
  } else {
    pp = 0;
  }
  if (err != 0) {
    return (err);
  } else {
  }
  if ((pp->set & 1U) == 0U) {
    return (-61);
  } else {
  }
  err = enic_process_get_pp_request(enic, vf, (int )pp->request, & response);
  if (err != 0) {
    return (err);
  } else {
  }
  tmp___1 = nla_put_u16(skb, 6, (int )pp->request);
  if (tmp___1 != 0) {
    goto nla_put_failure;
  } else {
    tmp___2 = nla_put_u16(skb, 7, (int )response);
    if (tmp___2 != 0) {
      goto nla_put_failure;
    } else
    if ((pp->set & 4U) != 0U) {
      tmp___3 = nla_put(skb, 2, 40, (void const *)(& pp->name));
      if (tmp___3 != 0) {
        goto nla_put_failure;
      } else {
        goto _L___0;
      }
    } else
    _L___0:
    if ((pp->set & 8U) != 0U) {
      tmp___4 = nla_put(skb, 4, 16, (void const *)(& pp->instance_uuid));
      if (tmp___4 != 0) {
        goto nla_put_failure;
      } else {
        goto _L;
      }
    } else
    _L:
    if ((pp->set & 16U) != 0U) {
      tmp___5 = nla_put(skb, 5, 16, (void const *)(& pp->host_uuid));
      if (tmp___5 != 0) {
        goto nla_put_failure;
      } else {
      }
    } else {
    }
  }
  return (0);
  nla_put_failure: ;
  return (-90);
}
}
static void enic_free_rq_buf(struct vnic_rq *rq , struct vnic_rq_buf *buf )
{
  struct enic *enic ;
  void *tmp ;
  {
  tmp = vnic_dev_priv(rq->vdev);
  enic = (struct enic *)tmp;
  if ((unsigned long )buf->os_buf == (unsigned long )((void *)0)) {
    return;
  } else {
  }
  pci_unmap_single(enic->pdev, buf->dma_addr, (size_t )buf->len, 2);
  dev_kfree_skb_any((struct sk_buff *)buf->os_buf);
  return;
}
}
static int enic_rq_alloc_buf(struct vnic_rq *rq )
{
  struct enic *enic ;
  void *tmp ;
  struct net_device *netdev ;
  struct sk_buff *skb ;
  unsigned int len ;
  unsigned int os_buf_index ;
  dma_addr_t dma_addr ;
  {
  tmp = vnic_dev_priv(rq->vdev);
  enic = (struct enic *)tmp;
  netdev = enic->netdev;
  len = netdev->mtu + 18U;
  os_buf_index = 0U;
  skb = netdev_alloc_skb_ip_align(netdev, len);
  if ((unsigned long )skb == (unsigned long )((struct sk_buff *)0)) {
    return (-12);
  } else {
  }
  dma_addr = pci_map_single(enic->pdev, (void *)skb->data, (size_t )len, 2);
  enic_queue_rq_desc(rq, (void *)skb, os_buf_index, dma_addr, len);
  return (0);
}
}
static void enic_rq_indicate_buf(struct vnic_rq *rq , struct cq_desc *cq_desc , struct vnic_rq_buf *buf ,
                                 int skipped , void *opaque )
{
  struct enic *enic ;
  void *tmp ;
  struct net_device *netdev ;
  struct sk_buff *skb ;
  u8 type ;
  u8 color ;
  u8 eop ;
  u8 sop ;
  u8 ingress_port ;
  u8 vlan_stripped ;
  u8 fcoe ;
  u8 fcoe_sof ;
  u8 fcoe_fc_crc_ok ;
  u8 fcoe_enc_error ;
  u8 fcoe_eof ;
  u8 tcp_udp_csum_ok ;
  u8 udp ;
  u8 tcp ;
  u8 ipv4_csum_ok ;
  u8 ipv6 ;
  u8 ipv4 ;
  u8 ipv4_fragment ;
  u8 fcs_ok ;
  u8 rss_type ;
  u8 csum_not_calc ;
  u8 packet_error ;
  u16 q_number ;
  u16 completed_index ;
  u16 bytes_written ;
  u16 vlan_tci ;
  u16 checksum ;
  u32 rss_hash ;
  __u16 tmp___0 ;
  {
  tmp = vnic_dev_priv(rq->vdev);
  enic = (struct enic *)tmp;
  netdev = enic->netdev;
  if (skipped != 0) {
    return;
  } else {
  }
  skb = (struct sk_buff *)buf->os_buf;
  __builtin_prefetch((void const *)skb->data);
  pci_unmap_single(enic->pdev, buf->dma_addr, (size_t )buf->len, 2);
  cq_enet_rq_desc_dec((struct cq_enet_rq_desc *)cq_desc, & type, & color, & q_number,
                      & completed_index, & ingress_port, & fcoe, & eop, & sop, & rss_type,
                      & csum_not_calc, & rss_hash, & bytes_written, & packet_error,
                      & vlan_stripped, & vlan_tci, & checksum, & fcoe_sof, & fcoe_fc_crc_ok,
                      & fcoe_enc_error, & fcoe_eof, & tcp_udp_csum_ok, & udp, & tcp,
                      & ipv4_csum_ok, & ipv6, & ipv4, & ipv4_fragment, & fcs_ok);
  if ((unsigned int )packet_error != 0U) {
    if ((unsigned int )fcs_ok == 0U) {
      if ((unsigned int )bytes_written != 0U) {
        enic->rq_bad_fcs = enic->rq_bad_fcs + 1ULL;
      } else
      if ((unsigned int )bytes_written == 0U) {
        enic->rq_truncated_pkts = enic->rq_truncated_pkts + 1ULL;
      } else {
      }
    } else {
    }
    dev_kfree_skb_any(skb);
    return;
  } else {
  }
  if ((unsigned int )eop != 0U && (unsigned int )bytes_written != 0U) {
    skb_put(skb, (unsigned int )bytes_written);
    skb->protocol = eth_type_trans(skb, netdev);
    if ((netdev->features & 536870912ULL) != 0ULL && (unsigned int )csum_not_calc == 0U) {
      tmp___0 = __fswab16((int )checksum);
      skb->ldv_31249.csum = (__wsum )tmp___0;
      skb->ip_summed = 2U;
    } else {
    }
    if ((unsigned int )vlan_stripped != 0U) {
      __vlan_hwaccel_put_tag(skb, (int )vlan_tci);
    } else {
    }
    if ((netdev->features & 16384ULL) != 0ULL) {
      napi_gro_receive((struct napi_struct *)(& enic->napi) + (unsigned long )q_number,
                       skb);
    } else {
      netif_receive_skb(skb);
    }
  } else {
    dev_kfree_skb_any(skb);
  }
  return;
}
}
static int enic_rq_service(struct vnic_dev *vdev , struct cq_desc *cq_desc , u8 type ,
                           u16 q_number , u16 completed_index , void *opaque )
{
  struct enic *enic ;
  void *tmp ;
  {
  tmp = vnic_dev_priv(vdev);
  enic = (struct enic *)tmp;
  vnic_rq_service((struct vnic_rq *)(& enic->rq) + (unsigned long )q_number, cq_desc,
                  (int )completed_index, 0, & enic_rq_indicate_buf, opaque);
  return (0);
}
}
static int enic_poll(struct napi_struct *napi , int budget )
{
  struct net_device *netdev ;
  struct enic *enic ;
  void *tmp ;
  unsigned int cq_rq ;
  unsigned int tmp___0 ;
  unsigned int cq_wq ;
  unsigned int tmp___1 ;
  unsigned int intr ;
  unsigned int tmp___2 ;
  unsigned int rq_work_to_do ;
  unsigned int wq_work_to_do ;
  unsigned int work_done ;
  unsigned int rq_work_done ;
  unsigned int wq_work_done ;
  int err ;
  {
  netdev = napi->dev;
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  tmp___0 = enic_cq_rq(enic, 0U);
  cq_rq = tmp___0;
  tmp___1 = enic_cq_wq(enic, 0U);
  cq_wq = tmp___1;
  tmp___2 = enic_legacy_io_intr();
  intr = tmp___2;
  rq_work_to_do = (unsigned int )budget;
  wq_work_to_do = 4294967295U;
  rq_work_done = vnic_cq_service((struct vnic_cq *)(& enic->cq) + (unsigned long )cq_rq,
                                 rq_work_to_do, & enic_rq_service, 0);
  wq_work_done = vnic_cq_service((struct vnic_cq *)(& enic->cq) + (unsigned long )cq_wq,
                                 wq_work_to_do, & enic_wq_service, 0);
  work_done = rq_work_done + wq_work_done;
  if (work_done != 0U) {
    vnic_intr_return_credits((struct vnic_intr *)(& enic->intr) + (unsigned long )intr,
                             work_done, 0, 0);
  } else {
  }
  err = vnic_rq_fill((struct vnic_rq *)(& enic->rq), & enic_rq_alloc_buf);
  if (err != 0) {
    rq_work_done = rq_work_to_do;
  } else {
  }
  if (rq_work_done < rq_work_to_do) {
    napi_complete(napi);
    vnic_intr_unmask((struct vnic_intr *)(& enic->intr) + (unsigned long )intr);
  } else {
  }
  return ((int )rq_work_done);
}
}
static int enic_poll_msix(struct napi_struct *napi , int budget )
{
  struct net_device *netdev ;
  struct enic *enic ;
  void *tmp ;
  unsigned int rq ;
  unsigned int cq ;
  unsigned int tmp___0 ;
  unsigned int intr ;
  unsigned int tmp___1 ;
  unsigned int work_to_do ;
  unsigned int work_done ;
  int err ;
  {
  netdev = napi->dev;
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  rq = (unsigned int )(((long )napi - (long )(& enic->napi)) / 160L);
  tmp___0 = enic_cq_rq(enic, rq);
  cq = tmp___0;
  tmp___1 = enic_msix_rq_intr(enic, rq);
  intr = tmp___1;
  work_to_do = (unsigned int )budget;
  work_done = vnic_cq_service((struct vnic_cq *)(& enic->cq) + (unsigned long )cq,
                              work_to_do, & enic_rq_service, 0);
  if (work_done != 0U) {
    vnic_intr_return_credits((struct vnic_intr *)(& enic->intr) + (unsigned long )intr,
                             work_done, 0, 0);
  } else {
  }
  err = vnic_rq_fill((struct vnic_rq *)(& enic->rq) + (unsigned long )rq, & enic_rq_alloc_buf);
  if (err != 0) {
    work_done = work_to_do;
  } else {
  }
  if (work_done < work_to_do) {
    napi_complete(napi);
    vnic_intr_unmask((struct vnic_intr *)(& enic->intr) + (unsigned long )intr);
  } else {
  }
  return ((int )work_done);
}
}
static void enic_notify_timer(unsigned long data )
{
  struct enic *enic ;
  unsigned long tmp ;
  {
  enic = (struct enic *)data;
  enic_notify_check(enic);
  tmp = round_jiffies((unsigned long )jiffies + 500UL);
  mod_timer(& enic->notify_timer, tmp);
  return;
}
}
static void enic_free_intr(struct enic *enic )
{
  struct net_device *netdev ;
  unsigned int i ;
  enum vnic_dev_intr_mode tmp ;
  {
  netdev = enic->netdev;
  tmp = vnic_dev_get_intr_mode(enic->vdev);
  switch ((unsigned int )tmp) {
  case 1U:
  free_irq((enic->pdev)->irq, (void *)netdev);
  goto ldv_46783;
  case 2U:
  free_irq((enic->pdev)->irq, (void *)enic);
  goto ldv_46783;
  case 3U:
  i = 0U;
  goto ldv_46789;
  ldv_46788: ;
  if (enic->msix[i].requested != 0) {
    free_irq(enic->msix_entry[i].vector, enic->msix[i].devid);
  } else {
  }
  i = i + 1U;
  ldv_46789: ;
  if (i <= 10U) {
    goto ldv_46788;
  } else {
  }
  goto ldv_46783;
  default: ;
  goto ldv_46783;
  }
  ldv_46783: ;
  return;
}
}
static int enic_request_intr(struct enic *enic )
{
  struct net_device *netdev ;
  unsigned int i ;
  unsigned int intr ;
  int err ;
  enum vnic_dev_intr_mode tmp ;
  {
  netdev = enic->netdev;
  err = 0;
  tmp = vnic_dev_get_intr_mode(enic->vdev);
  switch ((unsigned int )tmp) {
  case 1U:
  err = request_irq((enic->pdev)->irq, & enic_isr_legacy, 128UL, (char const *)(& netdev->name),
                    (void *)netdev);
  goto ldv_46800;
  case 2U:
  err = request_irq((enic->pdev)->irq, & enic_isr_msi, 0UL, (char const *)(& netdev->name),
                    (void *)enic);
  goto ldv_46800;
  case 3U:
  i = 0U;
  goto ldv_46804;
  ldv_46803:
  intr = enic_msix_rq_intr(enic, i);
  sprintf((char *)(& enic->msix[intr].devname), "%.11s-rx-%d", (char *)(& netdev->name),
          i);
  enic->msix[intr].isr = & enic_isr_msix_rq;
  enic->msix[intr].devid = (void *)(& enic->napi) + (unsigned long )i;
  i = i + 1U;
  ldv_46804: ;
  if (enic->rq_count > i) {
    goto ldv_46803;
  } else {
  }
  i = 0U;
  goto ldv_46807;
  ldv_46806:
  intr = enic_msix_wq_intr(enic, i);
  sprintf((char *)(& enic->msix[intr].devname), "%.11s-tx-%d", (char *)(& netdev->name),
          i);
  enic->msix[intr].isr = & enic_isr_msix_wq;
  enic->msix[intr].devid = (void *)enic;
  i = i + 1U;
  ldv_46807: ;
  if (enic->wq_count > i) {
    goto ldv_46806;
  } else {
  }
  intr = enic_msix_err_intr(enic);
  sprintf((char *)(& enic->msix[intr].devname), "%.11s-err", (char *)(& netdev->name));
  enic->msix[intr].isr = & enic_isr_msix_err;
  enic->msix[intr].devid = (void *)enic;
  intr = enic_msix_notify_intr(enic);
  sprintf((char *)(& enic->msix[intr].devname), "%.11s-notify", (char *)(& netdev->name));
  enic->msix[intr].isr = & enic_isr_msix_notify;
  enic->msix[intr].devid = (void *)enic;
  i = 0U;
  goto ldv_46812;
  ldv_46811:
  enic->msix[i].requested = 0;
  i = i + 1U;
  ldv_46812: ;
  if (i <= 10U) {
    goto ldv_46811;
  } else {
  }
  i = 0U;
  goto ldv_46816;
  ldv_46815:
  err = request_irq(enic->msix_entry[i].vector, enic->msix[i].isr, 0UL, (char const *)(& enic->msix[i].devname),
                    enic->msix[i].devid);
  if (err != 0) {
    enic_free_intr(enic);
    goto ldv_46814;
  } else {
  }
  enic->msix[i].requested = 1;
  i = i + 1U;
  ldv_46816: ;
  if (enic->intr_count > i) {
    goto ldv_46815;
  } else {
  }
  ldv_46814: ;
  goto ldv_46800;
  default: ;
  goto ldv_46800;
  }
  ldv_46800: ;
  return (err);
}
}
static void enic_synchronize_irqs(struct enic *enic )
{
  unsigned int i ;
  enum vnic_dev_intr_mode tmp ;
  {
  tmp = vnic_dev_get_intr_mode(enic->vdev);
  switch ((unsigned int )tmp) {
  case 1U: ;
  case 2U:
  synchronize_irq((enic->pdev)->irq);
  goto ldv_46824;
  case 3U:
  i = 0U;
  goto ldv_46827;
  ldv_46826:
  synchronize_irq(enic->msix_entry[i].vector);
  i = i + 1U;
  ldv_46827: ;
  if (enic->intr_count > i) {
    goto ldv_46826;
  } else {
  }
  goto ldv_46824;
  default: ;
  goto ldv_46824;
  }
  ldv_46824: ;
  return;
}
}
static int enic_dev_notify_set(struct enic *enic )
{
  int err ;
  enum vnic_dev_intr_mode tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  {
  spin_lock(& enic->devcmd_lock);
  tmp = vnic_dev_get_intr_mode(enic->vdev);
  switch ((unsigned int )tmp) {
  case 1U:
  tmp___0 = enic_legacy_notify_intr();
  err = vnic_dev_notify_set(enic->vdev, (int )((u16 )tmp___0));
  goto ldv_46835;
  case 3U:
  tmp___1 = enic_msix_notify_intr(enic);
  err = vnic_dev_notify_set(enic->vdev, (int )((u16 )tmp___1));
  goto ldv_46835;
  default:
  err = vnic_dev_notify_set(enic->vdev, 65535);
  goto ldv_46835;
  }
  ldv_46835:
  spin_unlock(& enic->devcmd_lock);
  return (err);
}
}
static void enic_notify_timer_start(struct enic *enic )
{
  enum vnic_dev_intr_mode tmp ;
  {
  tmp = vnic_dev_get_intr_mode(enic->vdev);
  switch ((unsigned int )tmp) {
  case 2U:
  mod_timer(& enic->notify_timer, jiffies);
  goto ldv_46842;
  default: ;
  goto ldv_46842;
  }
  ldv_46842: ;
  return;
}
}
static int enic_open(struct net_device *netdev )
{
  struct enic *enic ;
  void *tmp ;
  unsigned int i ;
  int err ;
  unsigned int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  err = enic_request_intr(enic);
  if (err != 0) {
    netdev_err((struct net_device const *)netdev, "Unable to request irq.\n");
    return (err);
  } else {
  }
  err = enic_dev_notify_set(enic);
  if (err != 0) {
    netdev_err((struct net_device const *)netdev, "Failed to alloc notify buffer, aborting.\n");
    goto err_out_free_intr;
  } else {
  }
  i = 0U;
  goto ldv_46853;
  ldv_46852:
  vnic_rq_fill((struct vnic_rq *)(& enic->rq) + (unsigned long )i, & enic_rq_alloc_buf);
  tmp___0 = vnic_rq_desc_used((struct vnic_rq *)(& enic->rq) + (unsigned long )i);
  if (tmp___0 == 0U) {
    netdev_err((struct net_device const *)netdev, "Unable to alloc receive buffers\n");
    err = -12;
    goto err_out_notify_unset;
  } else {
  }
  i = i + 1U;
  ldv_46853: ;
  if (enic->rq_count > i) {
    goto ldv_46852;
  } else {
  }
  i = 0U;
  goto ldv_46856;
  ldv_46855:
  vnic_wq_enable((struct vnic_wq *)(& enic->wq) + (unsigned long )i);
  i = i + 1U;
  ldv_46856: ;
  if (enic->wq_count > i) {
    goto ldv_46855;
  } else {
  }
  i = 0U;
  goto ldv_46859;
  ldv_46858:
  vnic_rq_enable((struct vnic_rq *)(& enic->rq) + (unsigned long )i);
  i = i + 1U;
  ldv_46859: ;
  if (enic->rq_count > i) {
    goto ldv_46858;
  } else {
  }
  tmp___1 = enic_is_dynamic(enic);
  if (tmp___1 == 0) {
    tmp___2 = enic_is_sriov_vf(enic);
    if (tmp___2 == 0) {
      enic_dev_add_station_addr(enic);
    } else {
    }
  } else {
  }
  enic_set_rx_mode(netdev);
  netif_wake_queue(netdev);
  i = 0U;
  goto ldv_46862;
  ldv_46861:
  napi_enable((struct napi_struct *)(& enic->napi) + (unsigned long )i);
  i = i + 1U;
  ldv_46862: ;
  if (enic->rq_count > i) {
    goto ldv_46861;
  } else {
  }
  enic_dev_enable(enic);
  i = 0U;
  goto ldv_46865;
  ldv_46864:
  vnic_intr_unmask((struct vnic_intr *)(& enic->intr) + (unsigned long )i);
  i = i + 1U;
  ldv_46865: ;
  if (enic->intr_count > i) {
    goto ldv_46864;
  } else {
  }
  enic_notify_timer_start(enic);
  return (0);
  err_out_notify_unset:
  enic_dev_notify_unset(enic);
  err_out_free_intr:
  enic_free_intr(enic);
  return (err);
}
}
static int enic_stop(struct net_device *netdev )
{
  struct enic *enic ;
  void *tmp ;
  unsigned int i ;
  int err ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  i = 0U;
  goto ldv_46874;
  ldv_46873:
  vnic_intr_mask((struct vnic_intr *)(& enic->intr) + (unsigned long )i);
  vnic_intr_masked((struct vnic_intr *)(& enic->intr) + (unsigned long )i);
  i = i + 1U;
  ldv_46874: ;
  if (enic->intr_count > i) {
    goto ldv_46873;
  } else {
  }
  enic_synchronize_irqs(enic);
  del_timer_sync(& enic->notify_timer);
  enic_dev_disable(enic);
  i = 0U;
  goto ldv_46877;
  ldv_46876:
  napi_disable((struct napi_struct *)(& enic->napi) + (unsigned long )i);
  i = i + 1U;
  ldv_46877: ;
  if (enic->rq_count > i) {
    goto ldv_46876;
  } else {
  }
  netif_carrier_off(netdev);
  netif_tx_disable(netdev);
  tmp___0 = enic_is_dynamic(enic);
  if (tmp___0 == 0) {
    tmp___1 = enic_is_sriov_vf(enic);
    if (tmp___1 == 0) {
      enic_dev_del_station_addr(enic);
    } else {
    }
  } else {
  }
  i = 0U;
  goto ldv_46880;
  ldv_46879:
  err = vnic_wq_disable((struct vnic_wq *)(& enic->wq) + (unsigned long )i);
  if (err != 0) {
    return (err);
  } else {
  }
  i = i + 1U;
  ldv_46880: ;
  if (enic->wq_count > i) {
    goto ldv_46879;
  } else {
  }
  i = 0U;
  goto ldv_46883;
  ldv_46882:
  err = vnic_rq_disable((struct vnic_rq *)(& enic->rq) + (unsigned long )i);
  if (err != 0) {
    return (err);
  } else {
  }
  i = i + 1U;
  ldv_46883: ;
  if (enic->rq_count > i) {
    goto ldv_46882;
  } else {
  }
  enic_dev_notify_unset(enic);
  enic_free_intr(enic);
  i = 0U;
  goto ldv_46886;
  ldv_46885:
  vnic_wq_clean((struct vnic_wq *)(& enic->wq) + (unsigned long )i, & enic_free_wq_buf);
  i = i + 1U;
  ldv_46886: ;
  if (enic->wq_count > i) {
    goto ldv_46885;
  } else {
  }
  i = 0U;
  goto ldv_46889;
  ldv_46888:
  vnic_rq_clean((struct vnic_rq *)(& enic->rq) + (unsigned long )i, & enic_free_rq_buf);
  i = i + 1U;
  ldv_46889: ;
  if (enic->rq_count > i) {
    goto ldv_46888;
  } else {
  }
  i = 0U;
  goto ldv_46892;
  ldv_46891:
  vnic_cq_clean((struct vnic_cq *)(& enic->cq) + (unsigned long )i);
  i = i + 1U;
  ldv_46892: ;
  if (enic->cq_count > i) {
    goto ldv_46891;
  } else {
  }
  i = 0U;
  goto ldv_46895;
  ldv_46894:
  vnic_intr_clean((struct vnic_intr *)(& enic->intr) + (unsigned long )i);
  i = i + 1U;
  ldv_46895: ;
  if (enic->intr_count > i) {
    goto ldv_46894;
  } else {
  }
  return (0);
}
}
static int enic_change_mtu(struct net_device *netdev , int new_mtu )
{
  struct enic *enic ;
  void *tmp ;
  int running ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  tmp___0 = netif_running((struct net_device const *)netdev);
  running = (int )tmp___0;
  if (new_mtu <= 67 || new_mtu > 9000) {
    return (-22);
  } else {
  }
  tmp___1 = enic_is_dynamic(enic);
  if (tmp___1 != 0) {
    return (-95);
  } else {
    tmp___2 = enic_is_sriov_vf(enic);
    if (tmp___2 != 0) {
      return (-95);
    } else {
    }
  }
  if (running != 0) {
    enic_stop(netdev);
  } else {
  }
  netdev->mtu = (unsigned int )new_mtu;
  if (netdev->mtu > enic->port_mtu) {
    netdev_warn((struct net_device const *)netdev, "interface MTU (%d) set higher than port MTU (%d)\n",
                netdev->mtu, enic->port_mtu);
  } else {
  }
  if (running != 0) {
    enic_open(netdev);
  } else {
  }
  return (0);
}
}
static void enic_change_mtu_work(struct work_struct *work )
{
  struct enic *enic ;
  struct work_struct const *__mptr ;
  struct net_device *netdev ;
  int new_mtu ;
  u32 tmp ;
  int err ;
  unsigned int i ;
  int __max1 ;
  int __max2 ;
  int __min1 ;
  int __min2 ;
  unsigned int tmp___0 ;
  {
  __mptr = (struct work_struct const *)work;
  enic = (struct enic *)__mptr + 0xfffffffffffffe58UL;
  netdev = enic->netdev;
  tmp = vnic_dev_mtu(enic->vdev);
  new_mtu = (int )tmp;
  __max1 = 68;
  __min1 = 9000;
  __min2 = new_mtu;
  __max2 = __min1 < __min2 ? __min1 : __min2;
  new_mtu = __max1 > __max2 ? __max1 : __max2;
  rtnl_lock();
  del_timer_sync(& enic->notify_timer);
  i = 0U;
  goto ldv_46920;
  ldv_46919:
  napi_disable((struct napi_struct *)(& enic->napi) + (unsigned long )i);
  i = i + 1U;
  ldv_46920: ;
  if (enic->rq_count > i) {
    goto ldv_46919;
  } else {
  }
  vnic_intr_mask((struct vnic_intr *)(& enic->intr));
  enic_synchronize_irqs(enic);
  err = vnic_rq_disable((struct vnic_rq *)(& enic->rq));
  if (err != 0) {
    netdev_err((struct net_device const *)netdev, "Unable to disable RQ.\n");
    return;
  } else {
  }
  vnic_rq_clean((struct vnic_rq *)(& enic->rq), & enic_free_rq_buf);
  vnic_cq_clean((struct vnic_cq *)(& enic->cq));
  vnic_intr_clean((struct vnic_intr *)(& enic->intr));
  netdev->mtu = (unsigned int )new_mtu;
  vnic_rq_fill((struct vnic_rq *)(& enic->rq), & enic_rq_alloc_buf);
  tmp___0 = vnic_rq_desc_used((struct vnic_rq *)(& enic->rq));
  if (tmp___0 == 0U) {
    netdev_err((struct net_device const *)netdev, "Unable to alloc receive buffers.\n");
    return;
  } else {
  }
  vnic_rq_enable((struct vnic_rq *)(& enic->rq));
  napi_enable((struct napi_struct *)(& enic->napi));
  vnic_intr_unmask((struct vnic_intr *)(& enic->intr));
  enic_notify_timer_start(enic);
  rtnl_unlock();
  netdev_info((struct net_device const *)netdev, "interface MTU set as %d\n", netdev->mtu);
  return;
}
}
static void enic_poll_controller(struct net_device *netdev )
{
  struct enic *enic ;
  void *tmp ;
  struct vnic_dev *vdev ;
  unsigned int i ;
  unsigned int intr ;
  enum vnic_dev_intr_mode tmp___0 ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  vdev = enic->vdev;
  tmp___0 = vnic_dev_get_intr_mode(vdev);
  switch ((unsigned int )tmp___0) {
  case 3U:
  i = 0U;
  goto ldv_46931;
  ldv_46930:
  intr = enic_msix_rq_intr(enic, i);
  enic_isr_msix_rq((int )enic->msix_entry[intr].vector, (void *)(& enic->napi) + (unsigned long )i);
  i = i + 1U;
  ldv_46931: ;
  if (enic->rq_count > i) {
    goto ldv_46930;
  } else {
  }
  i = 0U;
  goto ldv_46934;
  ldv_46933:
  intr = enic_msix_wq_intr(enic, i);
  enic_isr_msix_wq((int )enic->msix_entry[intr].vector, (void *)enic);
  i = i + 1U;
  ldv_46934: ;
  if (enic->wq_count > i) {
    goto ldv_46933;
  } else {
  }
  goto ldv_46936;
  case 2U:
  enic_isr_msi((int )(enic->pdev)->irq, (void *)enic);
  goto ldv_46936;
  case 1U:
  enic_isr_legacy((int )(enic->pdev)->irq, (void *)netdev);
  goto ldv_46936;
  default: ;
  goto ldv_46936;
  }
  ldv_46936: ;
  return;
}
}
static int enic_dev_wait(struct vnic_dev *vdev , int (*start)(struct vnic_dev * ,
                                                              int ) , int (*finished)(struct vnic_dev * ,
                                                                                       int * ) ,
                         int arg )
{
  unsigned long time ;
  int done ;
  int err ;
  struct thread_info *tmp ;
  long tmp___0 ;
  {
  tmp = current_thread_info();
  tmp___0 = ldv__builtin_expect(((unsigned long )tmp->preempt_count & 134217472UL) != 0UL,
                             0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/net/ethernet/cisco/enic/enic.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/21/dscv_tempdir/dscv/ri/32_7a/drivers/net/ethernet/cisco/enic/enic_main.c.prepared"),
                         "i" (1862), "i" (12UL));
    ldv_46953: ;
    goto ldv_46953;
  } else {
  }
  err = (*start)(vdev, arg);
  if (err != 0) {
    return (err);
  } else {
  }
  time = (unsigned long )jiffies + 500UL;
  ldv_46960:
  err = (*finished)(vdev, & done);
  if (err != 0) {
    return (err);
  } else {
  }
  if (done != 0) {
    return (0);
  } else {
  }
  schedule_timeout_uninterruptible(25L);
  if ((long )jiffies - (long )time < 0L) {
    goto ldv_46960;
  } else {
  }
  return (-110);
}
}
static int enic_dev_open(struct enic *enic )
{
  int err ;
  struct device *tmp ;
  {
  err = enic_dev_wait(enic->vdev, & vnic_dev_open, & vnic_dev_open_done, 0);
  if (err != 0) {
    tmp = enic_get_dev(enic);
    dev_err((struct device const *)tmp, "vNIC device open failed, err %d\n", err);
  } else {
  }
  return (err);
}
}
static int enic_dev_hang_reset(struct enic *enic )
{
  int err ;
  {
  err = enic_dev_wait(enic->vdev, & vnic_dev_hang_reset, & vnic_dev_hang_reset_done,
                      0);
  if (err != 0) {
    netdev_err((struct net_device const *)enic->netdev, "vNIC hang reset failed, err %d\n",
               err);
  } else {
  }
  return (err);
}
}
static int enic_set_rsskey(struct enic *enic )
{
  dma_addr_t rss_key_buf_pa ;
  union vnic_rss_key *rss_key_buf_va ;
  union vnic_rss_key rss_key ;
  int err ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  {
  rss_key_buf_va = 0;
  rss_key.key[0].b[0] = 85U;
  rss_key.key[0].b[1] = 67U;
  rss_key.key[0].b[2] = 83U;
  rss_key.key[0].b[3] = 97U;
  rss_key.key[0].b[4] = 119U;
  rss_key.key[0].b[5] = 101U;
  rss_key.key[0].b[6] = 115U;
  rss_key.key[0].b[7] = 111U;
  rss_key.key[0].b[8] = 109U;
  rss_key.key[0].b[9] = 101U;
  rss_key.key[0].b_pad[0] = (unsigned char)0;
  rss_key.key[0].b_pad[1] = (unsigned char)0;
  rss_key.key[0].b_pad[2] = (unsigned char)0;
  rss_key.key[0].b_pad[3] = (unsigned char)0;
  rss_key.key[0].b_pad[4] = (unsigned char)0;
  rss_key.key[0].b_pad[5] = (unsigned char)0;
  rss_key.key[1].b[0] = 80U;
  rss_key.key[1].b[1] = 65U;
  rss_key.key[1].b[2] = 76U;
  rss_key.key[1].b[3] = 79U;
  rss_key.key[1].b[4] = 117U;
  rss_key.key[1].b[5] = 110U;
  rss_key.key[1].b[6] = 105U;
  rss_key.key[1].b[7] = 113U;
  rss_key.key[1].b[8] = 117U;
  rss_key.key[1].b[9] = 101U;
  rss_key.key[1].b_pad[0] = (unsigned char)0;
  rss_key.key[1].b_pad[1] = (unsigned char)0;
  rss_key.key[1].b_pad[2] = (unsigned char)0;
  rss_key.key[1].b_pad[3] = (unsigned char)0;
  rss_key.key[1].b_pad[4] = (unsigned char)0;
  rss_key.key[1].b_pad[5] = (unsigned char)0;
  rss_key.key[2].b[0] = 76U;
  rss_key.key[2].b[1] = 73U;
  rss_key.key[2].b[2] = 78U;
  rss_key.key[2].b[3] = 85U;
  rss_key.key[2].b[4] = 88U;
  rss_key.key[2].b[5] = 114U;
  rss_key.key[2].b[6] = 111U;
  rss_key.key[2].b[7] = 99U;
  rss_key.key[2].b[8] = 107U;
  rss_key.key[2].b[9] = 115U;
  rss_key.key[2].b_pad[0] = (unsigned char)0;
  rss_key.key[2].b_pad[1] = (unsigned char)0;
  rss_key.key[2].b_pad[2] = (unsigned char)0;
  rss_key.key[2].b_pad[3] = (unsigned char)0;
  rss_key.key[2].b_pad[4] = (unsigned char)0;
  rss_key.key[2].b_pad[5] = (unsigned char)0;
  rss_key.key[3].b[0] = 69U;
  rss_key.key[3].b[1] = 78U;
  rss_key.key[3].b[2] = 73U;
  rss_key.key[3].b[3] = 67U;
  rss_key.key[3].b[4] = 105U;
  rss_key.key[3].b[5] = 115U;
  rss_key.key[3].b[6] = 99U;
  rss_key.key[3].b[7] = 111U;
  rss_key.key[3].b[8] = 111U;
  rss_key.key[3].b[9] = 108U;
  rss_key.key[3].b_pad[0] = (unsigned char)0;
  rss_key.key[3].b_pad[1] = (unsigned char)0;
  rss_key.key[3].b_pad[2] = (unsigned char)0;
  rss_key.key[3].b_pad[3] = (unsigned char)0;
  rss_key.key[3].b_pad[4] = (unsigned char)0;
  rss_key.key[3].b_pad[5] = (unsigned char)0;
  tmp = pci_alloc_consistent(enic->pdev, 64UL, & rss_key_buf_pa);
  rss_key_buf_va = (union vnic_rss_key *)tmp;
  if ((unsigned long )rss_key_buf_va == (unsigned long )((union vnic_rss_key *)0)) {
    return (-12);
  } else {
  }
  __len = 64UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)rss_key_buf_va, (void const *)(& rss_key), __len);
  } else {
    __ret = __builtin_memcpy((void *)rss_key_buf_va, (void const *)(& rss_key),
                             __len);
  }
  spin_lock(& enic->devcmd_lock);
  err = enic_set_rss_key(enic, rss_key_buf_pa, 64ULL);
  spin_unlock(& enic->devcmd_lock);
  pci_free_consistent(enic->pdev, 64UL, (void *)rss_key_buf_va, rss_key_buf_pa);
  return (err);
}
}
static int enic_set_rsscpu(struct enic *enic , u8 rss_hash_bits )
{
  dma_addr_t rss_cpu_buf_pa ;
  union vnic_rss_cpu *rss_cpu_buf_va ;
  unsigned int i ;
  int err ;
  void *tmp ;
  {
  rss_cpu_buf_va = 0;
  tmp = pci_alloc_consistent(enic->pdev, 256UL, & rss_cpu_buf_pa);
  rss_cpu_buf_va = (union vnic_rss_cpu *)tmp;
  if ((unsigned long )rss_cpu_buf_va == (unsigned long )((union vnic_rss_cpu *)0)) {
    return (-12);
  } else {
  }
  i = 0U;
  goto ldv_46989;
  ldv_46988:
  rss_cpu_buf_va->cpu[i / 4U].b[i & 3U] = (u8 )(i % enic->rq_count);
  i = i + 1U;
  ldv_46989: ;
  if ((unsigned int )(1 << (int )rss_hash_bits) > i) {
    goto ldv_46988;
  } else {
  }
  spin_lock(& enic->devcmd_lock);
  err = enic_set_rss_cpu(enic, rss_cpu_buf_pa, 256ULL);
  spin_unlock(& enic->devcmd_lock);
  pci_free_consistent(enic->pdev, 256UL, (void *)rss_cpu_buf_va, rss_cpu_buf_pa);
  return (err);
}
}
static int enic_set_niccfg(struct enic *enic , u8 rss_default_cpu , u8 rss_hash_type ,
                           u8 rss_hash_bits , u8 rss_base_cpu , u8 rss_enable )
{
  u8 tso_ipid_split_en ;
  u8 ig_vlan_strip_en ;
  int err ;
  {
  tso_ipid_split_en = 0U;
  ig_vlan_strip_en = 1U;
  spin_lock(& enic->devcmd_lock);
  err = enic_set_nic_cfg(enic, (int )rss_default_cpu, (int )rss_hash_type, (int )rss_hash_bits,
                         (int )rss_base_cpu, (int )rss_enable, (int )tso_ipid_split_en,
                         (int )ig_vlan_strip_en);
  spin_unlock(& enic->devcmd_lock);
  return (err);
}
}
static int enic_set_rss_nic_cfg(struct enic *enic )
{
  struct device *dev ;
  struct device *tmp ;
  u8 rss_default_cpu ;
  u8 rss_hash_type ;
  u8 rss_hash_bits ;
  u8 rss_base_cpu ;
  u8 rss_enable ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = enic_get_dev(enic);
  dev = tmp;
  rss_default_cpu = 0U;
  rss_hash_type = 30U;
  rss_hash_bits = 7U;
  rss_base_cpu = 0U;
  rss_enable = (u8 )((enic->config.flags & 16U) != 0U && enic->rq_count > 1U);
  if ((unsigned int )rss_enable != 0U) {
    tmp___1 = enic_set_rsskey(enic);
    if (tmp___1 == 0) {
      tmp___0 = enic_set_rsscpu(enic, (int )rss_hash_bits);
      if (tmp___0 != 0) {
        rss_enable = 0U;
        dev_warn((struct device const *)dev, "RSS disabled, Failed to set RSS cpu indirection table.");
      } else {
        rss_enable = 0U;
        dev_warn((struct device const *)dev, "RSS disabled, Failed to set RSS key.\n");
      }
    } else {
    }
  } else {
  }
  tmp___2 = enic_set_niccfg(enic, (int )rss_default_cpu, (int )rss_hash_type, (int )rss_hash_bits,
                            (int )rss_base_cpu, (int )rss_enable);
  return (tmp___2);
}
}
static void enic_reset(struct work_struct *work )
{
  struct enic *enic ;
  struct work_struct const *__mptr ;
  bool tmp ;
  int tmp___0 ;
  {
  __mptr = (struct work_struct const *)work;
  enic = (struct enic *)__mptr + 0xfffffffffffffea8UL;
  tmp = netif_running((struct net_device const *)enic->netdev);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return;
  } else {
  }
  rtnl_lock();
  enic_dev_hang_notify(enic);
  enic_stop(enic->netdev);
  enic_dev_hang_reset(enic);
  enic_reset_addr_lists(enic);
  enic_init_vnic_resources(enic);
  enic_set_rss_nic_cfg(enic);
  enic_dev_set_ig_vlan_rewrite_mode(enic);
  enic_open(enic->netdev);
  rtnl_unlock();
  return;
}
}
static int enic_set_intr_mode(struct enic *enic )
{
  unsigned int n ;
  unsigned int __min1 ;
  unsigned int __min2 ;
  unsigned int m ;
  unsigned int __min1___0 ;
  unsigned int __min2___0 ;
  unsigned int i ;
  long tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  __min1 = enic->rq_count;
  __min2 = 8U;
  n = __min1 < __min2 ? __min1 : __min2;
  __min1___0 = enic->wq_count;
  __min2___0 = 1U;
  m = __min1___0 < __min2___0 ? __min1___0 : __min2___0;
  tmp = ldv__builtin_expect((n + m) + 2U > 11U, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/net/ethernet/cisco/enic/enic.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/21/dscv_tempdir/dscv/ri/32_7a/drivers/net/ethernet/cisco/enic/enic_main.c.prepared"),
                         "i" (2059), "i" (12UL));
    ldv_47031: ;
    goto ldv_47031;
  } else {
  }
  i = 0U;
  goto ldv_47033;
  ldv_47032:
  enic->msix_entry[i].entry = (u16 )i;
  i = i + 1U;
  ldv_47033: ;
  if ((n + m) + 2U > i) {
    goto ldv_47032;
  } else {
  }
  if ((((((enic->config.flags & 16U) != 0U && (unsigned int )enic->config.intr_mode == 0U) && enic->rq_count >= n) && enic->wq_count >= m) && enic->cq_count >= n + m) && enic->intr_count >= (n + m) + 2U) {
    tmp___0 = pci_enable_msix(enic->pdev, (struct msix_entry *)(& enic->msix_entry),
                              (int )((n + m) + 2U));
    if (tmp___0 == 0) {
      enic->rq_count = n;
      enic->wq_count = m;
      enic->cq_count = n + m;
      enic->intr_count = (n + m) + 2U;
      vnic_dev_set_intr_mode(enic->vdev, 3);
      return (0);
    } else {
    }
  } else {
  }
  if (((((unsigned int )enic->config.intr_mode == 0U && enic->rq_count != 0U) && enic->wq_count >= m) && enic->cq_count >= m + 1U) && enic->intr_count >= m + 3U) {
    tmp___1 = pci_enable_msix(enic->pdev, (struct msix_entry *)(& enic->msix_entry),
                              (int )(m + 3U));
    if (tmp___1 == 0) {
      enic->rq_count = 1U;
      enic->wq_count = m;
      enic->cq_count = m + 1U;
      enic->intr_count = m + 3U;
      vnic_dev_set_intr_mode(enic->vdev, 3);
      return (0);
    } else {
    }
  } else {
  }
  if (((((unsigned int )enic->config.intr_mode <= 1U && enic->rq_count != 0U) && enic->wq_count != 0U) && enic->cq_count > 1U) && enic->intr_count != 0U) {
    tmp___2 = pci_enable_msi_block(enic->pdev, 1U);
    if (tmp___2 == 0) {
      enic->rq_count = 1U;
      enic->wq_count = 1U;
      enic->cq_count = 2U;
      enic->intr_count = 1U;
      vnic_dev_set_intr_mode(enic->vdev, 2);
      return (0);
    } else {
    }
  } else {
  }
  if (((((unsigned int )enic->config.intr_mode <= 2U && enic->rq_count != 0U) && enic->wq_count != 0U) && enic->cq_count > 1U) && enic->intr_count > 2U) {
    enic->rq_count = 1U;
    enic->wq_count = 1U;
    enic->cq_count = 2U;
    enic->intr_count = 3U;
    vnic_dev_set_intr_mode(enic->vdev, 1);
    return (0);
  } else {
  }
  vnic_dev_set_intr_mode(enic->vdev, 0);
  return (-22);
}
}
static void enic_clear_intr_mode(struct enic *enic )
{
  enum vnic_dev_intr_mode tmp ;
  {
  tmp = vnic_dev_get_intr_mode(enic->vdev);
  switch ((unsigned int )tmp) {
  case 3U:
  pci_disable_msix(enic->pdev);
  goto ldv_47039;
  case 2U:
  pci_disable_msi(enic->pdev);
  goto ldv_47039;
  default: ;
  goto ldv_47039;
  }
  ldv_47039:
  vnic_dev_set_intr_mode(enic->vdev, 0);
  return;
}
}
static struct net_device_ops const enic_netdev_dynamic_ops =
     {0, 0, & enic_open, & enic_stop, & enic_hard_start_xmit, 0, 0, & enic_set_rx_mode,
    & enic_set_mac_address_dynamic, & eth_validate_addr, 0, 0, & enic_change_mtu,
    0, & enic_tx_timeout, & enic_get_stats, 0, & enic_vlan_rx_add_vid, & enic_vlan_rx_kill_vid,
    & enic_poll_controller, 0, 0, & enic_set_vf_mac, 0, 0, 0, 0, & enic_set_vf_port,
    & enic_get_vf_port, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct net_device_ops const enic_netdev_ops =
     {0, 0, & enic_open, & enic_stop, & enic_hard_start_xmit, 0, 0, & enic_set_rx_mode,
    & enic_set_mac_address, & eth_validate_addr, 0, 0, & enic_change_mtu, 0, & enic_tx_timeout,
    & enic_get_stats, 0, & enic_vlan_rx_add_vid, & enic_vlan_rx_kill_vid, & enic_poll_controller,
    0, 0, & enic_set_vf_mac, 0, 0, 0, 0, & enic_set_vf_port, & enic_get_vf_port, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static void enic_dev_deinit(struct enic *enic )
{
  unsigned int i ;
  {
  i = 0U;
  goto ldv_47049;
  ldv_47048:
  netif_napi_del((struct napi_struct *)(& enic->napi) + (unsigned long )i);
  i = i + 1U;
  ldv_47049: ;
  if (enic->rq_count > i) {
    goto ldv_47048;
  } else {
  }
  enic_free_vnic_resources(enic);
  enic_clear_intr_mode(enic);
  return;
}
}
static int enic_dev_init(struct enic *enic )
{
  struct device *dev ;
  struct device *tmp ;
  struct net_device *netdev ;
  unsigned int i ;
  int err ;
  enum vnic_dev_intr_mode tmp___0 ;
  {
  tmp = enic_get_dev(enic);
  dev = tmp;
  netdev = enic->netdev;
  err = enic_dev_intr_coal_timer_info(enic);
  if (err != 0) {
    dev_warn((struct device const *)dev, "Using default conversion factor for interrupt coalesce timer\n");
    vnic_dev_intr_coal_timer_info_default(enic->vdev);
  } else {
  }
  err = enic_get_vnic_config(enic);
  if (err != 0) {
    dev_err((struct device const *)dev, "Get vNIC configuration failed, aborting\n");
    return (err);
  } else {
  }
  enic_get_res_counts(enic);
  err = enic_set_intr_mode(enic);
  if (err != 0) {
    dev_err((struct device const *)dev, "Failed to set intr mode based on resource counts and system capabilities, aborting\n");
    return (err);
  } else {
  }
  err = enic_alloc_vnic_resources(enic);
  if (err != 0) {
    dev_err((struct device const *)dev, "Failed to alloc vNIC resources, aborting\n");
    goto err_out_free_vnic_resources;
  } else {
  }
  enic_init_vnic_resources(enic);
  err = enic_set_rss_nic_cfg(enic);
  if (err != 0) {
    dev_err((struct device const *)dev, "Failed to config nic, aborting\n");
    goto err_out_free_vnic_resources;
  } else {
  }
  tmp___0 = vnic_dev_get_intr_mode(enic->vdev);
  switch ((unsigned int )tmp___0) {
  default:
  netif_napi_add(netdev, (struct napi_struct *)(& enic->napi), & enic_poll, 64);
  goto ldv_47060;
  case 3U:
  i = 0U;
  goto ldv_47063;
  ldv_47062:
  netif_napi_add(netdev, (struct napi_struct *)(& enic->napi) + (unsigned long )i,
                 & enic_poll_msix, 64);
  i = i + 1U;
  ldv_47063: ;
  if (enic->rq_count > i) {
    goto ldv_47062;
  } else {
  }
  goto ldv_47060;
  }
  ldv_47060: ;
  return (0);
  err_out_free_vnic_resources:
  enic_clear_intr_mode(enic);
  enic_free_vnic_resources(enic);
  return (err);
}
}
static void enic_iounmap(struct enic *enic )
{
  unsigned int i ;
  {
  i = 0U;
  goto ldv_47072;
  ldv_47071: ;
  if ((unsigned long )enic->bar[i].vaddr != (unsigned long )((void *)0)) {
    iounmap((void volatile *)enic->bar[i].vaddr);
  } else {
  }
  i = i + 1U;
  ldv_47072: ;
  if (i <= 5U) {
    goto ldv_47071;
  } else {
  }
  return;
}
}
static int enic_probe(struct pci_dev *pdev , struct pci_device_id const *ent )
{
  struct device *dev ;
  struct net_device *netdev ;
  struct enic *enic ;
  int using_dac ;
  unsigned int i ;
  int err ;
  int pos ;
  int num_pps ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key ;
  int tmp___1 ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___2 ;
  atomic_long_t __constr_expr_1 ;
  struct lock_class_key __key___3 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  dev = & pdev->dev;
  using_dac = 0;
  pos = 0;
  num_pps = 1;
  netdev = alloc_etherdev_mqs(10176, 1U, 1U);
  if ((unsigned long )netdev == (unsigned long )((struct net_device *)0)) {
    return (-12);
  } else {
  }
  pci_set_drvdata(pdev, (void *)netdev);
  netdev->dev.parent = & pdev->dev;
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  enic->netdev = netdev;
  enic->pdev = pdev;
  err = pci_enable_device_mem(pdev);
  if (err != 0) {
    dev_err((struct device const *)dev, "Cannot enable PCI device, aborting\n");
    goto err_out_free_netdev;
  } else {
  }
  err = pci_request_regions(pdev, "enic");
  if (err != 0) {
    dev_err((struct device const *)dev, "Cannot request PCI regions, aborting\n");
    goto err_out_disable_device;
  } else {
  }
  pci_set_master(pdev);
  err = pci_set_dma_mask(pdev, 1099511627775ULL);
  if (err != 0) {
    err = pci_set_dma_mask(pdev, 4294967295ULL);
    if (err != 0) {
      dev_err((struct device const *)dev, "No usable DMA configuration, aborting\n");
      goto err_out_release_regions;
    } else {
    }
    err = pci_set_consistent_dma_mask(pdev, 4294967295ULL);
    if (err != 0) {
      dev_err((struct device const *)dev, "Unable to obtain %u-bit DMA for consistent allocations, aborting\n",
              32);
      goto err_out_release_regions;
    } else {
    }
  } else {
    err = pci_set_consistent_dma_mask(pdev, 1099511627775ULL);
    if (err != 0) {
      dev_err((struct device const *)dev, "Unable to obtain %u-bit DMA for consistent allocations, aborting\n",
              40);
      goto err_out_release_regions;
    } else {
    }
    using_dac = 1;
  }
  i = 0U;
  goto ldv_47094;
  ldv_47093: ;
  if ((pdev->resource[i].flags & 512UL) == 0UL) {
    goto ldv_47091;
  } else {
  }
  enic->bar[i].len = pdev->resource[i].start != 0ULL || pdev->resource[i].end != pdev->resource[i].start ? (unsigned long )((pdev->resource[i].end - pdev->resource[i].start) + 1ULL) : 0UL;
  enic->bar[i].vaddr = pci_iomap(pdev, (int )i, enic->bar[i].len);
  if ((unsigned long )enic->bar[i].vaddr == (unsigned long )((void *)0)) {
    dev_err((struct device const *)dev, "Cannot memory-map BAR %d, aborting\n",
            i);
    err = -19;
    goto err_out_iounmap;
  } else {
  }
  enic->bar[i].bus_addr = pdev->resource[i].start;
  ldv_47091:
  i = i + 1U;
  ldv_47094: ;
  if (i <= 5U) {
    goto ldv_47093;
  } else {
  }
  enic->vdev = vnic_dev_register(0, (void *)enic, pdev, (struct vnic_dev_bar *)(& enic->bar),
                                 6U);
  if ((unsigned long )enic->vdev == (unsigned long )((struct vnic_dev *)0)) {
    dev_err((struct device const *)dev, "vNIC registration failed, aborting\n");
    err = -19;
    goto err_out_iounmap;
  } else {
  }
  pos = pci_find_ext_capability(pdev, 16);
  if (pos != 0) {
    pci_read_config_word((struct pci_dev const *)pdev, pos + 14, & enic->num_vfs);
    if ((unsigned int )enic->num_vfs != 0U) {
      err = pci_enable_sriov(pdev, (int )enic->num_vfs);
      if (err != 0) {
        dev_err((struct device const *)dev, "SRIOV enable failed, aborting. pci_enable_sriov() returned %d\n",
                err);
        goto err_out_vnic_unregister;
      } else {
      }
      enic->priv_flags = enic->priv_flags | 1U;
      num_pps = (int )enic->num_vfs;
    } else {
    }
  } else {
  }
  tmp___0 = kcalloc((size_t )num_pps, 92UL, 208U);
  enic->pp = (struct enic_port_profile *)tmp___0;
  if ((unsigned long )enic->pp == (unsigned long )((struct enic_port_profile *)0)) {
    err = -12;
    goto err_out_disable_sriov_pp;
  } else {
  }
  err = enic_dev_open(enic);
  if (err != 0) {
    dev_err((struct device const *)dev, "vNIC dev open failed, aborting\n");
    goto err_out_disable_sriov;
  } else {
  }
  spinlock_check(& enic->devcmd_lock);
  __raw_spin_lock_init(& enic->devcmd_lock.ldv_5961.rlock, "&(&enic->devcmd_lock)->rlock",
                       & __key);
  err = enic_dev_set_ig_vlan_rewrite_mode(enic);
  if (err != 0) {
    dev_err((struct device const *)dev, "Failed to set ingress vlan rewrite mode, aborting.\n");
    goto err_out_dev_close;
  } else {
  }
  netif_carrier_off(netdev);
  tmp___1 = enic_is_dynamic(enic);
  if (tmp___1 == 0) {
    err = vnic_dev_init(enic->vdev, 0);
    if (err != 0) {
      dev_err((struct device const *)dev, "vNIC dev init failed, aborting\n");
      goto err_out_dev_close;
    } else {
    }
  } else {
  }
  err = enic_dev_init(enic);
  if (err != 0) {
    dev_err((struct device const *)dev, "Device initialization failed, aborting\n");
    goto err_out_dev_close;
  } else {
  }
  init_timer_key(& enic->notify_timer, 0U, "(&enic->notify_timer)", & __key___0);
  enic->notify_timer.function = & enic_notify_timer;
  enic->notify_timer.data = (unsigned long )enic;
  __init_work(& enic->reset, 0);
  __constr_expr_0.counter = 4195328L;
  enic->reset.data = __constr_expr_0;
  lockdep_init_map(& enic->reset.lockdep_map, "(&enic->reset)", & __key___1, 0);
  INIT_LIST_HEAD(& enic->reset.entry);
  enic->reset.func = & enic_reset;
  __init_work(& enic->change_mtu_work, 0);
  __constr_expr_1.counter = 4195328L;
  enic->change_mtu_work.data = __constr_expr_1;
  lockdep_init_map(& enic->change_mtu_work.lockdep_map, "(&enic->change_mtu_work)",
                   & __key___2, 0);
  INIT_LIST_HEAD(& enic->change_mtu_work.entry);
  enic->change_mtu_work.func = & enic_change_mtu_work;
  i = 0U;
  goto ldv_47110;
  ldv_47109:
  spinlock_check((spinlock_t *)(& enic->wq_lock) + (unsigned long )i);
  __raw_spin_lock_init(& ((spinlock_t *)(& enic->wq_lock) + (unsigned long )i)->ldv_5961.rlock,
                       "&(&enic->wq_lock[i])->rlock", & __key___3);
  i = i + 1U;
  ldv_47110: ;
  if (enic->wq_count > i) {
    goto ldv_47109;
  } else {
  }
  enic->port_mtu = (u32 )enic->config.mtu;
  enic_change_mtu(netdev, (int )enic->port_mtu);
  err = enic_set_mac_addr(netdev, (char *)(& enic->mac_addr));
  if (err != 0) {
    dev_err((struct device const *)dev, "Invalid MAC address, aborting\n");
    goto err_out_dev_deinit;
  } else {
  }
  enic->tx_coalesce_usecs = enic->config.intr_timer_usec;
  enic->rx_coalesce_usecs = enic->tx_coalesce_usecs;
  tmp___2 = enic_is_dynamic(enic);
  if (tmp___2 != 0) {
    netdev->netdev_ops = & enic_netdev_dynamic_ops;
  } else {
    tmp___3 = enic_is_sriov_vf(enic);
    if (tmp___3 != 0) {
      netdev->netdev_ops = & enic_netdev_dynamic_ops;
    } else {
      netdev->netdev_ops = & enic_netdev_ops;
    }
  }
  netdev->watchdog_timeo = 500;
  netdev->ethtool_ops = & enic_ethtool_ops;
  netdev->features = netdev->features | 384ULL;
  if ((enic->config.flags & 2048U) != 0U) {
    netdev->features = netdev->features & 0xffffffffffffff7fULL;
    enic->loop_enable = 1U;
    enic->loop_tag = enic->config.loop_tag;
    _dev_info((struct device const *)dev, "loopback tag=0x%04x\n", (int )enic->loop_tag);
  } else {
  }
  if ((enic->config.flags & 8U) != 0U) {
    netdev->hw_features = netdev->hw_features | 9ULL;
  } else {
  }
  if ((int )enic->config.flags & 1) {
    netdev->hw_features = netdev->hw_features | 1638400ULL;
  } else {
  }
  if ((enic->config.flags & 4U) != 0U) {
    netdev->hw_features = netdev->hw_features | 536870912ULL;
  } else {
  }
  netdev->features = netdev->features | netdev->hw_features;
  if (using_dac != 0) {
    netdev->features = netdev->features | 32ULL;
  } else {
  }
  netdev->priv_flags = netdev->priv_flags | 131072U;
  err = register_netdev(netdev);
  if (err != 0) {
    dev_err((struct device const *)dev, "Cannot register net device, aborting\n");
    goto err_out_dev_deinit;
  } else {
  }
  return (0);
  err_out_dev_deinit:
  enic_dev_deinit(enic);
  err_out_dev_close:
  vnic_dev_close(enic->vdev);
  err_out_disable_sriov:
  kfree((void const *)enic->pp);
  err_out_disable_sriov_pp:
  tmp___4 = enic_sriov_enabled(enic);
  if (tmp___4 != 0) {
    pci_disable_sriov(pdev);
    enic->priv_flags = enic->priv_flags & 4294967294U;
  } else {
  }
  err_out_vnic_unregister:
  vnic_dev_unregister(enic->vdev);
  err_out_iounmap:
  enic_iounmap(enic);
  err_out_release_regions:
  pci_release_regions(pdev);
  err_out_disable_device:
  pci_disable_device(pdev);
  err_out_free_netdev:
  pci_set_drvdata(pdev, 0);
  free_netdev(netdev);
  return (err);
}
}
static void enic_remove(struct pci_dev *pdev )
{
  struct net_device *netdev ;
  void *tmp ;
  struct enic *enic ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = pci_get_drvdata(pdev);
  netdev = (struct net_device *)tmp;
  if ((unsigned long )netdev != (unsigned long )((struct net_device *)0)) {
    tmp___0 = netdev_priv((struct net_device const *)netdev);
    enic = (struct enic *)tmp___0;
    cancel_work_sync(& enic->reset);
    cancel_work_sync(& enic->change_mtu_work);
    unregister_netdev(netdev);
    enic_dev_deinit(enic);
    vnic_dev_close(enic->vdev);
    tmp___1 = enic_sriov_enabled(enic);
    if (tmp___1 != 0) {
      pci_disable_sriov(pdev);
      enic->priv_flags = enic->priv_flags & 4294967294U;
    } else {
    }
    kfree((void const *)enic->pp);
    vnic_dev_unregister(enic->vdev);
    enic_iounmap(enic);
    pci_release_regions(pdev);
    pci_disable_device(pdev);
    pci_set_drvdata(pdev, 0);
    free_netdev(netdev);
  } else {
  }
  return;
}
}
static struct pci_driver enic_driver =
     {{0, 0}, "enic", (struct pci_device_id const *)(& enic_id_table), & enic_probe,
    & enic_remove, 0, 0, 0, 0, 0, 0, 0, {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0,
                                         0, 0, 0}, {{{{{{0U}}, 0U, 0U, 0, {0, {0,
                                                                               0},
                                                                           0, 0, 0UL}}}},
                                                    {0, 0}}};
static int enic_init_module(void)
{
  int tmp ;
  {
  printk("\016enic: %s, ver %s\n", (char *)"Cisco VIC Ethernet NIC Driver", (char *)"2.1.1.39");
  tmp = __pci_register_driver(& enic_driver, & __this_module, "enic");
  return (tmp);
}
}
static void enic_cleanup_module(void)
{
  {
  pci_unregister_driver(& enic_driver);
  return;
}
}
void ldv_check_final_state(void) ;
extern void ldv_check_return_value(int ) ;
extern void ldv_check_return_value_probe(int ) ;
void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
int main(void)
{
  struct net_device *var_group1 ;
  struct ethtool_cmd *var_group2 ;
  struct ethtool_drvinfo *var_group3 ;
  u32 var_enic_set_msglevel_19_p1 ;
  u32 var_enic_get_strings_15_p1 ;
  u8 *var_enic_get_strings_15_p2 ;
  int var_enic_get_sset_count_16_p1 ;
  struct ethtool_stats *var_group4 ;
  u64 *var_enic_get_ethtool_stats_17_p2 ;
  struct ethtool_coalesce *var_group5 ;
  int res_enic_open_65 ;
  int res_enic_stop_66 ;
  struct sk_buff *var_group6 ;
  struct rtnl_link_stats64 *var_group7 ;
  void *var_enic_set_mac_address_dynamic_45_p1 ;
  int var_enic_change_mtu_67_p1 ;
  int var_enic_get_vf_port_52_p1 ;
  struct sk_buff *var_enic_get_vf_port_52_p2 ;
  int var_enic_set_vf_mac_51_p1 ;
  u8 *var_enic_set_vf_mac_51_p2 ;
  void *var_enic_set_mac_address_46_p1 ;
  struct pci_dev *var_group8 ;
  struct pci_device_id const *var_enic_probe_82_p1 ;
  int res_enic_probe_82 ;
  int var_enic_isr_legacy_30_p0 ;
  void *var_enic_isr_legacy_30_p1 ;
  int var_enic_isr_msi_31_p0 ;
  void *var_enic_isr_msi_31_p1 ;
  int var_enic_isr_msix_err_34_p0 ;
  void *var_enic_isr_msix_err_34_p1 ;
  int var_enic_isr_msix_notify_35_p0 ;
  void *var_enic_isr_msix_notify_35_p1 ;
  int var_enic_isr_msix_rq_32_p0 ;
  void *var_enic_isr_msix_rq_32_p1 ;
  int var_enic_isr_msix_wq_33_p0 ;
  void *var_enic_isr_msix_wq_33_p1 ;
  unsigned long var_enic_notify_timer_59_p0 ;
  int ldv_s_enic_netdev_dynamic_ops_net_device_ops ;
  int ldv_s_enic_netdev_ops_net_device_ops ;
  int ldv_s_enic_driver_pci_driver ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  ldv_s_enic_netdev_dynamic_ops_net_device_ops = 0;
  ldv_s_enic_netdev_ops_net_device_ops = 0;
  ldv_s_enic_driver_pci_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = enic_init_module();
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_47236;
  ldv_47235:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0:
  ldv_handler_precall();
  enic_get_settings(var_group1, var_group2);
  goto ldv_47193;
  case 1:
  ldv_handler_precall();
  enic_get_drvinfo(var_group1, var_group3);
  goto ldv_47193;
  case 2:
  ldv_handler_precall();
  enic_get_msglevel(var_group1);
  goto ldv_47193;
  case 3:
  ldv_handler_precall();
  enic_set_msglevel(var_group1, var_enic_set_msglevel_19_p1);
  goto ldv_47193;
  case 4:
  ldv_handler_precall();
  enic_get_strings(var_group1, var_enic_get_strings_15_p1, var_enic_get_strings_15_p2);
  goto ldv_47193;
  case 5:
  ldv_handler_precall();
  enic_get_sset_count(var_group1, var_enic_get_sset_count_16_p1);
  goto ldv_47193;
  case 6:
  ldv_handler_precall();
  enic_get_ethtool_stats(var_group1, var_group4, var_enic_get_ethtool_stats_17_p2);
  goto ldv_47193;
  case 7:
  ldv_handler_precall();
  enic_get_coalesce(var_group1, var_group5);
  goto ldv_47193;
  case 8:
  ldv_handler_precall();
  enic_set_coalesce(var_group1, var_group5);
  goto ldv_47193;
  case 9: ;
  if (ldv_s_enic_netdev_dynamic_ops_net_device_ops == 0) {
    ldv_handler_precall();
    res_enic_open_65 = enic_open(var_group1);
    ldv_check_return_value(res_enic_open_65);
    if (res_enic_open_65 < 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_enic_netdev_dynamic_ops_net_device_ops = ldv_s_enic_netdev_dynamic_ops_net_device_ops + 1;
  } else {
  }
  goto ldv_47193;
  case 10: ;
  if (ldv_s_enic_netdev_dynamic_ops_net_device_ops == 1) {
    ldv_handler_precall();
    res_enic_stop_66 = enic_stop(var_group1);
    ldv_check_return_value(res_enic_stop_66);
    if (res_enic_stop_66 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_enic_netdev_dynamic_ops_net_device_ops = 0;
  } else {
  }
  goto ldv_47193;
  case 11:
  ldv_handler_precall();
  enic_hard_start_xmit(var_group6, var_group1);
  goto ldv_47193;
  case 12:
  ldv_handler_precall();
  enic_get_stats(var_group1, var_group7);
  goto ldv_47193;
  case 13:
  ldv_handler_precall();
  enic_set_rx_mode(var_group1);
  goto ldv_47193;
  case 14:
  ldv_handler_precall();
  enic_set_mac_address_dynamic(var_group1, var_enic_set_mac_address_dynamic_45_p1);
  goto ldv_47193;
  case 15:
  ldv_handler_precall();
  enic_change_mtu(var_group1, var_enic_change_mtu_67_p1);
  goto ldv_47193;
  case 16:
  ldv_handler_precall();
  enic_tx_timeout(var_group1);
  goto ldv_47193;
  case 17:
  ldv_handler_precall();
  enic_get_vf_port(var_group1, var_enic_get_vf_port_52_p1, var_enic_get_vf_port_52_p2);
  goto ldv_47193;
  case 18:
  ldv_handler_precall();
  enic_set_vf_mac(var_group1, var_enic_set_vf_mac_51_p1, var_enic_set_vf_mac_51_p2);
  goto ldv_47193;
  case 19:
  ldv_handler_precall();
  enic_poll_controller(var_group1);
  goto ldv_47193;
  case 20: ;
  if (ldv_s_enic_netdev_ops_net_device_ops == 0) {
    ldv_handler_precall();
    res_enic_open_65 = enic_open(var_group1);
    ldv_check_return_value(res_enic_open_65);
    if (res_enic_open_65 < 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_enic_netdev_ops_net_device_ops = ldv_s_enic_netdev_ops_net_device_ops + 1;
  } else {
  }
  goto ldv_47193;
  case 21: ;
  if (ldv_s_enic_netdev_ops_net_device_ops == 1) {
    ldv_handler_precall();
    res_enic_stop_66 = enic_stop(var_group1);
    ldv_check_return_value(res_enic_stop_66);
    if (res_enic_stop_66 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_enic_netdev_ops_net_device_ops = 0;
  } else {
  }
  goto ldv_47193;
  case 22:
  ldv_handler_precall();
  enic_hard_start_xmit(var_group6, var_group1);
  goto ldv_47193;
  case 23:
  ldv_handler_precall();
  enic_get_stats(var_group1, var_group7);
  goto ldv_47193;
  case 24:
  ldv_handler_precall();
  enic_set_mac_address(var_group1, var_enic_set_mac_address_46_p1);
  goto ldv_47193;
  case 25:
  ldv_handler_precall();
  enic_set_rx_mode(var_group1);
  goto ldv_47193;
  case 26:
  ldv_handler_precall();
  enic_change_mtu(var_group1, var_enic_change_mtu_67_p1);
  goto ldv_47193;
  case 27:
  ldv_handler_precall();
  enic_tx_timeout(var_group1);
  goto ldv_47193;
  case 28:
  ldv_handler_precall();
  enic_get_vf_port(var_group1, var_enic_get_vf_port_52_p1, var_enic_get_vf_port_52_p2);
  goto ldv_47193;
  case 29:
  ldv_handler_precall();
  enic_set_vf_mac(var_group1, var_enic_set_vf_mac_51_p1, var_enic_set_vf_mac_51_p2);
  goto ldv_47193;
  case 30:
  ldv_handler_precall();
  enic_poll_controller(var_group1);
  goto ldv_47193;
  case 31: ;
  if (ldv_s_enic_driver_pci_driver == 0) {
    res_enic_probe_82 = enic_probe(var_group8, var_enic_probe_82_p1);
    ldv_check_return_value(res_enic_probe_82);
    ldv_check_return_value_probe(res_enic_probe_82);
    if (res_enic_probe_82 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_enic_driver_pci_driver = ldv_s_enic_driver_pci_driver + 1;
  } else {
  }
  goto ldv_47193;
  case 32: ;
  if (ldv_s_enic_driver_pci_driver == 1) {
    ldv_handler_precall();
    enic_remove(var_group8);
    ldv_s_enic_driver_pci_driver = 0;
  } else {
  }
  goto ldv_47193;
  case 33:
  LDV_IN_INTERRUPT = 2;
  ldv_handler_precall();
  enic_isr_legacy(var_enic_isr_legacy_30_p0, var_enic_isr_legacy_30_p1);
  LDV_IN_INTERRUPT = 1;
  goto ldv_47193;
  case 34:
  LDV_IN_INTERRUPT = 2;
  ldv_handler_precall();
  enic_isr_msi(var_enic_isr_msi_31_p0, var_enic_isr_msi_31_p1);
  LDV_IN_INTERRUPT = 1;
  goto ldv_47193;
  case 35:
  LDV_IN_INTERRUPT = 2;
  ldv_handler_precall();
  enic_isr_msix_err(var_enic_isr_msix_err_34_p0, var_enic_isr_msix_err_34_p1);
  LDV_IN_INTERRUPT = 1;
  goto ldv_47193;
  case 36:
  LDV_IN_INTERRUPT = 2;
  ldv_handler_precall();
  enic_isr_msix_notify(var_enic_isr_msix_notify_35_p0, var_enic_isr_msix_notify_35_p1);
  LDV_IN_INTERRUPT = 1;
  goto ldv_47193;
  case 37:
  LDV_IN_INTERRUPT = 2;
  ldv_handler_precall();
  enic_isr_msix_rq(var_enic_isr_msix_rq_32_p0, var_enic_isr_msix_rq_32_p1);
  LDV_IN_INTERRUPT = 1;
  goto ldv_47193;
  case 38:
  LDV_IN_INTERRUPT = 2;
  ldv_handler_precall();
  enic_isr_msix_wq(var_enic_isr_msix_wq_33_p0, var_enic_isr_msix_wq_33_p1);
  LDV_IN_INTERRUPT = 1;
  goto ldv_47193;
  case 39:
  ldv_handler_precall();
  enic_notify_timer(var_enic_notify_timer_59_p0);
  goto ldv_47193;
  default: ;
  goto ldv_47193;
  }
  ldv_47193: ;
  ldv_47236:
  tmp___1 = __VERIFIER_nondet_int();
  if (((tmp___1 != 0 || ldv_s_enic_netdev_dynamic_ops_net_device_ops != 0) || ldv_s_enic_netdev_ops_net_device_ops != 0) || ldv_s_enic_driver_pci_driver != 0) {
    goto ldv_47235;
  } else {
  }
  ldv_module_exit:
  ldv_handler_precall();
  enic_cleanup_module();
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
int ldv_mutex_trylock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 ) ;
__inline static void writeq(unsigned long val , void volatile *addr )
{
  {
  __asm__ volatile ("movq %0,%1": : "r" (val), "m" (*((unsigned long volatile *)addr)): "memory");
  return;
}
}
void *vnic_dev_get_res(struct vnic_dev *vdev , enum vnic_res_type type , unsigned int index ) ;
void vnic_dev_clear_desc_ring(struct vnic_dev_ring *ring ) ;
int vnic_dev_alloc_desc_ring(struct vnic_dev *vdev , struct vnic_dev_ring *ring ,
                             unsigned int desc_count , unsigned int desc_size ) ;
void vnic_dev_free_desc_ring(struct vnic_dev *vdev , struct vnic_dev_ring *ring ) ;
void vnic_cq_free(struct vnic_cq *cq ) ;
int vnic_cq_alloc(struct vnic_dev *vdev , struct vnic_cq *cq , unsigned int index ,
                  unsigned int desc_count , unsigned int desc_size ) ;
void vnic_cq_init(struct vnic_cq *cq , unsigned int flow_control_enable , unsigned int color_enable ,
                  unsigned int cq_head , unsigned int cq_tail , unsigned int cq_tail_color ,
                  unsigned int interrupt_enable , unsigned int cq_entry_enable , unsigned int cq_message_enable ,
                  unsigned int interrupt_offset , u64 cq_message_addr ) ;
void vnic_cq_free(struct vnic_cq *cq )
{
  {
  vnic_dev_free_desc_ring(cq->vdev, & cq->ring);
  cq->ctrl = 0;
  return;
}
}
int vnic_cq_alloc(struct vnic_dev *vdev , struct vnic_cq *cq , unsigned int index ,
                  unsigned int desc_count , unsigned int desc_size )
{
  int err ;
  void *tmp ;
  {
  cq->index = index;
  cq->vdev = vdev;
  tmp = vnic_dev_get_res(vdev, 3, index);
  cq->ctrl = (struct vnic_cq_ctrl *)tmp;
  if ((unsigned long )cq->ctrl == (unsigned long )((struct vnic_cq_ctrl *)0)) {
    printk("\venic: Failed to hook CQ[%d] resource\n", index);
    return (-22);
  } else {
  }
  err = vnic_dev_alloc_desc_ring(vdev, & cq->ring, desc_count, desc_size);
  if (err != 0) {
    return (err);
  } else {
  }
  return (0);
}
}
void vnic_cq_init(struct vnic_cq *cq , unsigned int flow_control_enable , unsigned int color_enable ,
                  unsigned int cq_head , unsigned int cq_tail , unsigned int cq_tail_color ,
                  unsigned int interrupt_enable , unsigned int cq_entry_enable , unsigned int cq_message_enable ,
                  unsigned int interrupt_offset , u64 cq_message_addr )
{
  u64 paddr ;
  {
  paddr = cq->ring.base_addr;
  writeq((unsigned long )paddr, (void volatile *)(& (cq->ctrl)->ring_base));
  iowrite32(cq->ring.desc_count, (void *)(& (cq->ctrl)->ring_size));
  iowrite32(flow_control_enable, (void *)(& (cq->ctrl)->flow_control_enable));
  iowrite32(color_enable, (void *)(& (cq->ctrl)->color_enable));
  iowrite32(cq_head, (void *)(& (cq->ctrl)->cq_head));
  iowrite32(cq_tail, (void *)(& (cq->ctrl)->cq_tail));
  iowrite32(cq_tail_color, (void *)(& (cq->ctrl)->cq_tail_color));
  iowrite32(interrupt_enable, (void *)(& (cq->ctrl)->interrupt_enable));
  iowrite32(cq_entry_enable, (void *)(& (cq->ctrl)->cq_entry_enable));
  iowrite32(cq_message_enable, (void *)(& (cq->ctrl)->cq_message_enable));
  iowrite32(interrupt_offset, (void *)(& (cq->ctrl)->interrupt_offset));
  writeq((unsigned long )cq_message_addr, (void volatile *)(& (cq->ctrl)->cq_message_addr));
  cq->interrupt_offset = interrupt_offset;
  return;
}
}
void vnic_cq_clean(struct vnic_cq *cq )
{
  {
  cq->to_clean = 0U;
  cq->last_color = 0U;
  iowrite32(0U, (void *)(& (cq->ctrl)->cq_head));
  iowrite32(0U, (void *)(& (cq->ctrl)->cq_tail));
  iowrite32(1U, (void *)(& (cq->ctrl)->cq_tail_color));
  vnic_dev_clear_desc_ring(& cq->ring);
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
int ldv_mutex_trylock_28(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_26(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_29(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_25(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_27(struct mutex *ldv_func_arg1 ) ;
u32 vnic_dev_intr_coal_timer_usec_to_hw(struct vnic_dev *vdev , u32 usec ) ;
void vnic_intr_free(struct vnic_intr *intr ) ;
int vnic_intr_alloc(struct vnic_dev *vdev , struct vnic_intr *intr , unsigned int index ) ;
void vnic_intr_init(struct vnic_intr *intr , u32 coalescing_timer , unsigned int coalescing_type ,
                    unsigned int mask_on_assertion ) ;
void vnic_intr_free(struct vnic_intr *intr )
{
  {
  intr->ctrl = 0;
  return;
}
}
int vnic_intr_alloc(struct vnic_dev *vdev , struct vnic_intr *intr , unsigned int index )
{
  void *tmp ;
  {
  intr->index = index;
  intr->vdev = vdev;
  tmp = vnic_dev_get_res(vdev, 10, index);
  intr->ctrl = (struct vnic_intr_ctrl *)tmp;
  if ((unsigned long )intr->ctrl == (unsigned long )((struct vnic_intr_ctrl *)0)) {
    printk("\venic: Failed to hook INTR[%d].ctrl resource\n", index);
    return (-22);
  } else {
  }
  return (0);
}
}
void vnic_intr_init(struct vnic_intr *intr , u32 coalescing_timer , unsigned int coalescing_type ,
                    unsigned int mask_on_assertion )
{
  {
  vnic_intr_coalescing_timer_set(intr, coalescing_timer);
  iowrite32(coalescing_type, (void *)(& (intr->ctrl)->coalescing_type));
  iowrite32(mask_on_assertion, (void *)(& (intr->ctrl)->mask_on_assertion));
  iowrite32(0U, (void *)(& (intr->ctrl)->int_credits));
  return;
}
}
void vnic_intr_coalescing_timer_set(struct vnic_intr *intr , u32 coalescing_timer )
{
  u32 tmp ;
  {
  tmp = vnic_dev_intr_coal_timer_usec_to_hw(intr->vdev, coalescing_timer);
  iowrite32(tmp, (void *)(& (intr->ctrl)->coalescing_timer));
  return;
}
}
void vnic_intr_clean(struct vnic_intr *intr )
{
  {
  iowrite32(0U, (void *)(& (intr->ctrl)->int_credits));
  return;
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
int ldv_mutex_trylock_38(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_36(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_39(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_35(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_37(struct mutex *ldv_func_arg1 ) ;
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
extern void __const_udelay(unsigned long ) ;
__inline static unsigned int vnic_wq_desc_used(struct vnic_wq *wq )
{
  {
  return ((wq->ring.desc_count - wq->ring.desc_avail) - 1U);
}
}
void vnic_wq_free(struct vnic_wq *wq ) ;
int vnic_wq_alloc(struct vnic_dev *vdev , struct vnic_wq *wq , unsigned int index ,
                  unsigned int desc_count , unsigned int desc_size ) ;
void vnic_wq_init(struct vnic_wq *wq , unsigned int cq_index , unsigned int error_interrupt_enable ,
                  unsigned int error_interrupt_offset ) ;
static int vnic_wq_alloc_bufs(struct vnic_wq *wq )
{
  struct vnic_wq_buf *buf ;
  struct vnic_dev *vdev ;
  unsigned int i ;
  unsigned int j ;
  unsigned int count ;
  unsigned int blks ;
  void *tmp ;
  struct vnic_wq_buf *tmp___0 ;
  {
  count = wq->ring.desc_count;
  blks = (((count <= 63U ? 32U : 64U) + count) - 1U) / (count <= 63U ? 32U : 64U);
  vdev = wq->vdev;
  i = 0U;
  goto ldv_19486;
  ldv_19485:
  tmp = kzalloc(count <= 63U ? 1536UL : 3072UL, 32U);
  wq->bufs[i] = (struct vnic_wq_buf *)tmp;
  if ((unsigned long )wq->bufs[i] == (unsigned long )((struct vnic_wq_buf *)0)) {
    return (-12);
  } else {
  }
  i = i + 1U;
  ldv_19486: ;
  if (i < blks) {
    goto ldv_19485;
  } else {
  }
  i = 0U;
  goto ldv_19492;
  ldv_19491:
  buf = wq->bufs[i];
  j = 0U;
  goto ldv_19490;
  ldv_19489:
  buf->index = (count <= 63U ? 32U : 64U) * i + j;
  buf->desc = wq->ring.descs + (unsigned long )(wq->ring.desc_size * buf->index);
  if (buf->index + 1U == count) {
    buf->next = wq->bufs[0];
    goto ldv_19488;
  } else
  if (j + 1U == (count <= 63U ? 32U : 64U)) {
    buf->next = wq->bufs[i + 1U];
  } else {
    buf->next = buf + 1UL;
    buf = buf + 1;
  }
  j = j + 1U;
  ldv_19490: ;
  if ((count <= 63U ? 32U : 64U) > j) {
    goto ldv_19489;
  } else {
  }
  ldv_19488:
  i = i + 1U;
  ldv_19492: ;
  if (i < blks) {
    goto ldv_19491;
  } else {
  }
  tmp___0 = wq->bufs[0];
  wq->to_clean = tmp___0;
  wq->to_use = tmp___0;
  return (0);
}
}
void vnic_wq_free(struct vnic_wq *wq )
{
  struct vnic_dev *vdev ;
  unsigned int i ;
  {
  vdev = wq->vdev;
  vnic_dev_free_desc_ring(vdev, & wq->ring);
  i = 0U;
  goto ldv_19500;
  ldv_19499: ;
  if ((unsigned long )wq->bufs[i] != (unsigned long )((struct vnic_wq_buf *)0)) {
    kfree((void const *)wq->bufs[i]);
    wq->bufs[i] = 0;
  } else {
  }
  i = i + 1U;
  ldv_19500: ;
  if (i <= 63U) {
    goto ldv_19499;
  } else {
  }
  wq->ctrl = 0;
  return;
}
}
int vnic_wq_alloc(struct vnic_dev *vdev , struct vnic_wq *wq , unsigned int index ,
                  unsigned int desc_count , unsigned int desc_size )
{
  int err ;
  void *tmp ;
  {
  wq->index = index;
  wq->vdev = vdev;
  tmp = vnic_dev_get_res(vdev, 1, index);
  wq->ctrl = (struct vnic_wq_ctrl *)tmp;
  if ((unsigned long )wq->ctrl == (unsigned long )((struct vnic_wq_ctrl *)0)) {
    printk("\venic: Failed to hook WQ[%d] resource\n", index);
    return (-22);
  } else {
  }
  vnic_wq_disable(wq);
  err = vnic_dev_alloc_desc_ring(vdev, & wq->ring, desc_count, desc_size);
  if (err != 0) {
    return (err);
  } else {
  }
  err = vnic_wq_alloc_bufs(wq);
  if (err != 0) {
    vnic_wq_free(wq);
    return (err);
  } else {
  }
  return (0);
}
}
static void vnic_wq_init_start(struct vnic_wq *wq , unsigned int cq_index , unsigned int fetch_index ,
                               unsigned int posted_index , unsigned int error_interrupt_enable ,
                               unsigned int error_interrupt_offset )
{
  u64 paddr ;
  unsigned int count ;
  struct vnic_wq_buf *tmp ;
  {
  count = wq->ring.desc_count;
  paddr = wq->ring.base_addr;
  writeq((unsigned long )paddr, (void volatile *)(& (wq->ctrl)->ring_base));
  iowrite32(count, (void *)(& (wq->ctrl)->ring_size));
  iowrite32(fetch_index, (void *)(& (wq->ctrl)->fetch_index));
  iowrite32(posted_index, (void *)(& (wq->ctrl)->posted_index));
  iowrite32(cq_index, (void *)(& (wq->ctrl)->cq_index));
  iowrite32(error_interrupt_enable, (void *)(& (wq->ctrl)->error_interrupt_enable));
  iowrite32(error_interrupt_offset, (void *)(& (wq->ctrl)->error_interrupt_offset));
  iowrite32(0U, (void *)(& (wq->ctrl)->error_status));
  tmp = wq->bufs[fetch_index / (count <= 63U ? 32U : 64U)] + (unsigned long )(fetch_index % (count <= 63U ? 32U : 64U));
  wq->to_clean = tmp;
  wq->to_use = tmp;
  return;
}
}
void vnic_wq_init(struct vnic_wq *wq , unsigned int cq_index , unsigned int error_interrupt_enable ,
                  unsigned int error_interrupt_offset )
{
  {
  vnic_wq_init_start(wq, cq_index, 0U, 0U, error_interrupt_enable, error_interrupt_offset);
  return;
}
}
unsigned int vnic_wq_error_status(struct vnic_wq *wq )
{
  unsigned int tmp ;
  {
  tmp = ioread32((void *)(& (wq->ctrl)->error_status));
  return (tmp);
}
}
void vnic_wq_enable(struct vnic_wq *wq )
{
  {
  iowrite32(1U, (void *)(& (wq->ctrl)->enable));
  return;
}
}
int vnic_wq_disable(struct vnic_wq *wq )
{
  unsigned int wait ;
  unsigned int tmp ;
  {
  iowrite32(0U, (void *)(& (wq->ctrl)->enable));
  wait = 0U;
  goto ldv_19537;
  ldv_19536:
  tmp = ioread32((void *)(& (wq->ctrl)->running));
  if (tmp == 0U) {
    return (0);
  } else {
  }
  __const_udelay(42950UL);
  wait = wait + 1U;
  ldv_19537: ;
  if (wait <= 999U) {
    goto ldv_19536;
  } else {
  }
  printk("\venic: Failed to disable WQ[%d]\n", wq->index);
  return (-110);
}
}
void vnic_wq_clean(struct vnic_wq *wq , void (*buf_clean)(struct vnic_wq * , struct vnic_wq_buf * ) )
{
  struct vnic_wq_buf *buf ;
  struct vnic_wq_buf *tmp ;
  unsigned int tmp___0 ;
  struct vnic_wq_buf *tmp___1 ;
  {
  buf = wq->to_clean;
  goto ldv_19547;
  ldv_19546:
  (*buf_clean)(wq, buf);
  tmp = buf->next;
  wq->to_clean = tmp;
  buf = tmp;
  wq->ring.desc_avail = wq->ring.desc_avail + 1U;
  ldv_19547:
  tmp___0 = vnic_wq_desc_used(wq);
  if (tmp___0 != 0U) {
    goto ldv_19546;
  } else {
  }
  tmp___1 = wq->bufs[0];
  wq->to_clean = tmp___1;
  wq->to_use = tmp___1;
  iowrite32(0U, (void *)(& (wq->ctrl)->fetch_index));
  iowrite32(0U, (void *)(& (wq->ctrl)->posted_index));
  iowrite32(0U, (void *)(& (wq->ctrl)->error_status));
  vnic_dev_clear_desc_ring(& wq->ring);
  return;
}
}
void ldv_mutex_lock_35(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_36(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_37(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_38(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_39(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_48(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_46(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_51(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_45(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_47(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_50(struct mutex *ldv_func_arg1 ) ;
unsigned int vnic_dev_get_res_count(struct vnic_dev *vdev , enum vnic_res_type type ) ;
int vnic_dev_cmd(struct vnic_dev *vdev , enum vnic_devcmd_cmd cmd , u64 *a0 , u64 *a1 ,
                 int wait ) ;
int vnic_dev_spec(struct vnic_dev *vdev , unsigned int offset , unsigned int size ,
                  void *value ) ;
void vnic_rq_free(struct vnic_rq *rq ) ;
int vnic_rq_alloc(struct vnic_dev *vdev , struct vnic_rq *rq , unsigned int index ,
                  unsigned int desc_count , unsigned int desc_size ) ;
void vnic_rq_init(struct vnic_rq *rq , unsigned int cq_index , unsigned int error_interrupt_enable ,
                  unsigned int error_interrupt_offset ) ;
__inline static void vnic_set_nic_cfg(u32 *nic_cfg , u8 rss_default_cpu , u8 rss_hash_type ,
                                      u8 rss_hash_bits , u8 rss_base_cpu , u8 rss_enable ,
                                      u8 tso_ipid_split_en , u8 ig_vlan_strip_en )
{
  {
  *nic_cfg = ((((((u32 )rss_default_cpu | ((u32 )rss_hash_type << 8U)) | (((u32 )rss_hash_bits & 7U) << 16U)) | (((u32 )rss_base_cpu & 7U) << 19U)) | (((u32 )rss_enable & 1U) << 22U)) | (((u32 )tso_ipid_split_en & 1U) << 23U)) | (((u32 )ig_vlan_strip_en & 1U) << 24U);
  return;
}
}
int enic_add_vlan(struct enic *enic , u16 vlanid ) ;
int enic_del_vlan(struct enic *enic , u16 vlanid ) ;
int enic_get_vnic_config(struct enic *enic )
{
  struct vnic_enet_config *c ;
  int err ;
  struct device *tmp ;
  struct device *tmp___0 ;
  struct device *tmp___1 ;
  struct device *tmp___2 ;
  struct device *tmp___3 ;
  struct device *tmp___4 ;
  struct device *tmp___5 ;
  struct device *tmp___6 ;
  struct device *tmp___7 ;
  u32 __min1 ;
  u32 __min2 ;
  u32 __max1 ;
  u32 __max2 ;
  u32 __min1___0 ;
  u32 __min2___0 ;
  u32 __max1___0 ;
  u32 __max2___0 ;
  u16 __min1___1 ;
  u16 __min2___1 ;
  u16 __max1___1 ;
  u16 __max2___1 ;
  u32 __min1___2 ;
  u32 __min2___2 ;
  u32 tmp___8 ;
  struct device *tmp___9 ;
  struct device *tmp___10 ;
  {
  c = & enic->config;
  err = vnic_dev_get_mac_addr(enic->vdev, (u8 *)(& enic->mac_addr));
  if (err != 0) {
    tmp = enic_get_dev(enic);
    dev_err((struct device const *)tmp, "Error getting MAC addr, %d\n", err);
    return (err);
  } else {
  }
  err = vnic_dev_spec(enic->vdev, 0U, 4U, (void *)(& c->flags));
  if (err != 0) {
    tmp___0 = enic_get_dev(enic);
    dev_err((struct device const *)tmp___0, "Error getting %s, %d\n", (char *)"flags",
            err);
    return (err);
  } else {
  }
  err = vnic_dev_spec(enic->vdev, 4U, 4U, (void *)(& c->wq_desc_count));
  if (err != 0) {
    tmp___1 = enic_get_dev(enic);
    dev_err((struct device const *)tmp___1, "Error getting %s, %d\n", (char *)"wq_desc_count",
            err);
    return (err);
  } else {
  }
  err = vnic_dev_spec(enic->vdev, 8U, 4U, (void *)(& c->rq_desc_count));
  if (err != 0) {
    tmp___2 = enic_get_dev(enic);
    dev_err((struct device const *)tmp___2, "Error getting %s, %d\n", (char *)"rq_desc_count",
            err);
    return (err);
  } else {
  }
  err = vnic_dev_spec(enic->vdev, 12U, 2U, (void *)(& c->mtu));
  if (err != 0) {
    tmp___3 = enic_get_dev(enic);
    dev_err((struct device const *)tmp___3, "Error getting %s, %d\n", (char *)"mtu",
            err);
    return (err);
  } else {
  }
  err = vnic_dev_spec(enic->vdev, 16U, 1U, (void *)(& c->intr_timer_type));
  if (err != 0) {
    tmp___4 = enic_get_dev(enic);
    dev_err((struct device const *)tmp___4, "Error getting %s, %d\n", (char *)"intr_timer_type",
            err);
    return (err);
  } else {
  }
  err = vnic_dev_spec(enic->vdev, 17U, 1U, (void *)(& c->intr_mode));
  if (err != 0) {
    tmp___5 = enic_get_dev(enic);
    dev_err((struct device const *)tmp___5, "Error getting %s, %d\n", (char *)"intr_mode",
            err);
    return (err);
  } else {
  }
  err = vnic_dev_spec(enic->vdev, 36U, 4U, (void *)(& c->intr_timer_usec));
  if (err != 0) {
    tmp___6 = enic_get_dev(enic);
    dev_err((struct device const *)tmp___6, "Error getting %s, %d\n", (char *)"intr_timer_usec",
            err);
    return (err);
  } else {
  }
  err = vnic_dev_spec(enic->vdev, 40U, 2U, (void *)(& c->loop_tag));
  if (err != 0) {
    tmp___7 = enic_get_dev(enic);
    dev_err((struct device const *)tmp___7, "Error getting %s, %d\n", (char *)"loop_tag",
            err);
    return (err);
  } else {
  }
  __min1 = 4096U;
  __max1 = 64U;
  __max2 = c->wq_desc_count;
  __min2 = __max1 > __max2 ? __max1 : __max2;
  c->wq_desc_count = __min1 < __min2 ? __min1 : __min2;
  c->wq_desc_count = c->wq_desc_count & 4294967264U;
  __min1___0 = 4096U;
  __max1___0 = 64U;
  __max2___0 = c->rq_desc_count;
  __min2___0 = __max1___0 > __max2___0 ? __max1___0 : __max2___0;
  c->rq_desc_count = __min1___0 < __min2___0 ? __min1___0 : __min2___0;
  c->rq_desc_count = c->rq_desc_count & 4294967264U;
  if ((unsigned int )c->mtu == 0U) {
    c->mtu = 1500U;
  } else {
  }
  __min1___1 = 9000U;
  __max1___1 = 68U;
  __max2___1 = c->mtu;
  __min2___1 = (u16 )((int )__max1___1 > (int )__max2___1 ? __max1___1 : __max2___1);
  c->mtu = (u16 )((int )__min1___1 < (int )__min2___1 ? __min1___1 : __min2___1);
  __min1___2 = c->intr_timer_usec;
  tmp___8 = vnic_dev_get_intr_coal_timer_max(enic->vdev);
  __min2___2 = tmp___8;
  c->intr_timer_usec = __min1___2 < __min2___2 ? __min1___2 : __min2___2;
  tmp___9 = enic_get_dev(enic);
  _dev_info((struct device const *)tmp___9, "vNIC MAC addr %pM wq/rq %d/%d mtu %d\n",
            (u8 *)(& enic->mac_addr), c->wq_desc_count, c->rq_desc_count, (int )c->mtu);
  tmp___10 = enic_get_dev(enic);
  _dev_info((struct device const *)tmp___10, "vNIC csum tx/rx %s/%s tso/lro %s/%s rss %s intr mode %s type %s timer %d usec loopback tag 0x%04x\n",
            (enic->config.flags & 8U) != 0U ? (char *)"yes" : (char *)"no", (enic->config.flags & 4U) != 0U ? (char *)"yes" : (char *)"no",
            (int )enic->config.flags & 1 ? (char *)"yes" : (char *)"no", (enic->config.flags & 2U) != 0U ? (char *)"yes" : (char *)"no",
            (enic->config.flags & 16U) != 0U ? (char *)"yes" : (char *)"no", (unsigned int )c->intr_mode != 2U ? ((unsigned int )c->intr_mode != 1U ? ((unsigned int )c->intr_mode == 0U ? (char *)"any" : (char *)"unknown") : (char *)"MSI") : (char *)"INTx",
            (unsigned int )c->intr_timer_type != 0U ? ((unsigned int )c->intr_timer_type == 1U ? (char *)"idle" : (char *)"unknown") : (char *)"min",
            c->intr_timer_usec, (int )c->loop_tag);
  return (0);
}
}
int enic_add_vlan(struct enic *enic , u16 vlanid )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  struct device *tmp ;
  {
  a0 = (u64 )vlanid;
  a1 = 0ULL;
  wait = 1000;
  err = vnic_dev_cmd(enic->vdev, 1090535438, & a0, & a1, wait);
  if (err != 0) {
    tmp = enic_get_dev(enic);
    dev_err((struct device const *)tmp, "Can\'t add vlan id, %d\n", err);
  } else {
  }
  return (err);
}
}
int enic_del_vlan(struct enic *enic , u16 vlanid )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  struct device *tmp ;
  {
  a0 = (u64 )vlanid;
  a1 = 0ULL;
  wait = 1000;
  err = vnic_dev_cmd(enic->vdev, 1090535439, & a0, & a1, wait);
  if (err != 0) {
    tmp = enic_get_dev(enic);
    dev_err((struct device const *)tmp, "Can\'t delete vlan id, %d\n", err);
  } else {
  }
  return (err);
}
}
int enic_set_nic_cfg(struct enic *enic , u8 rss_default_cpu , u8 rss_hash_type , u8 rss_hash_bits ,
                     u8 rss_base_cpu , u8 rss_enable , u8 tso_ipid_split_en , u8 ig_vlan_strip_en )
{
  u64 a0 ;
  u64 a1 ;
  u32 nic_cfg ;
  int wait ;
  int tmp ;
  {
  wait = 1000;
  vnic_set_nic_cfg(& nic_cfg, (int )rss_default_cpu, (int )rss_hash_type, (int )rss_hash_bits,
                   (int )rss_base_cpu, (int )rss_enable, (int )tso_ipid_split_en,
                   (int )ig_vlan_strip_en);
  a0 = (u64 )nic_cfg;
  a1 = 0ULL;
  tmp = vnic_dev_cmd(enic->vdev, 1090633744, & a0, & a1, wait);
  return (tmp);
}
}
int enic_set_rss_key(struct enic *enic , dma_addr_t key_pa , u64 len )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int tmp ;
  {
  a0 = key_pa;
  a1 = len;
  wait = 1000;
  tmp = vnic_dev_cmd(enic->vdev, 1073758225, & a0, & a1, wait);
  return (tmp);
}
}
int enic_set_rss_cpu(struct enic *enic , dma_addr_t cpu_pa , u64 len )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int tmp ;
  {
  a0 = cpu_pa;
  a1 = len;
  wait = 1000;
  tmp = vnic_dev_cmd(enic->vdev, 1073758226, & a0, & a1, wait);
  return (tmp);
}
}
void enic_free_vnic_resources(struct enic *enic )
{
  unsigned int i ;
  {
  i = 0U;
  goto ldv_39745;
  ldv_39744:
  vnic_wq_free((struct vnic_wq *)(& enic->wq) + (unsigned long )i);
  i = i + 1U;
  ldv_39745: ;
  if (enic->wq_count > i) {
    goto ldv_39744;
  } else {
  }
  i = 0U;
  goto ldv_39748;
  ldv_39747:
  vnic_rq_free((struct vnic_rq *)(& enic->rq) + (unsigned long )i);
  i = i + 1U;
  ldv_39748: ;
  if (enic->rq_count > i) {
    goto ldv_39747;
  } else {
  }
  i = 0U;
  goto ldv_39751;
  ldv_39750:
  vnic_cq_free((struct vnic_cq *)(& enic->cq) + (unsigned long )i);
  i = i + 1U;
  ldv_39751: ;
  if (enic->cq_count > i) {
    goto ldv_39750;
  } else {
  }
  i = 0U;
  goto ldv_39754;
  ldv_39753:
  vnic_intr_free((struct vnic_intr *)(& enic->intr) + (unsigned long )i);
  i = i + 1U;
  ldv_39754: ;
  if (enic->intr_count > i) {
    goto ldv_39753;
  } else {
  }
  return;
}
}
void enic_get_res_counts(struct enic *enic )
{
  struct device *tmp ;
  {
  enic->wq_count = vnic_dev_get_res_count(enic->vdev, 1);
  enic->rq_count = vnic_dev_get_res_count(enic->vdev, 2);
  enic->cq_count = vnic_dev_get_res_count(enic->vdev, 3);
  enic->intr_count = vnic_dev_get_res_count(enic->vdev, 10);
  tmp = enic_get_dev(enic);
  _dev_info((struct device const *)tmp, "vNIC resources avail: wq %d rq %d cq %d intr %d\n",
            enic->wq_count, enic->rq_count, enic->cq_count, enic->intr_count);
  return;
}
}
void enic_init_vnic_resources(struct enic *enic )
{
  enum vnic_dev_intr_mode intr_mode ;
  unsigned int mask_on_assertion ;
  unsigned int interrupt_offset ;
  unsigned int error_interrupt_enable ;
  unsigned int error_interrupt_offset ;
  unsigned int cq_index ;
  unsigned int i ;
  {
  intr_mode = vnic_dev_get_intr_mode(enic->vdev);
  switch ((unsigned int )intr_mode) {
  case 1U: ;
  case 3U:
  error_interrupt_enable = 1U;
  error_interrupt_offset = enic->intr_count - 2U;
  goto ldv_39771;
  default:
  error_interrupt_enable = 0U;
  error_interrupt_offset = 0U;
  goto ldv_39771;
  }
  ldv_39771:
  i = 0U;
  goto ldv_39774;
  ldv_39773:
  cq_index = i;
  vnic_rq_init((struct vnic_rq *)(& enic->rq) + (unsigned long )i, cq_index, error_interrupt_enable,
               error_interrupt_offset);
  i = i + 1U;
  ldv_39774: ;
  if (enic->rq_count > i) {
    goto ldv_39773;
  } else {
  }
  i = 0U;
  goto ldv_39777;
  ldv_39776:
  cq_index = enic->rq_count + i;
  vnic_wq_init((struct vnic_wq *)(& enic->wq) + (unsigned long )i, cq_index, error_interrupt_enable,
               error_interrupt_offset);
  i = i + 1U;
  ldv_39777: ;
  if (enic->wq_count > i) {
    goto ldv_39776;
  } else {
  }
  i = 0U;
  goto ldv_39783;
  ldv_39782: ;
  switch ((unsigned int )intr_mode) {
  case 3U:
  interrupt_offset = i;
  goto ldv_39780;
  default:
  interrupt_offset = 0U;
  goto ldv_39780;
  }
  ldv_39780:
  vnic_cq_init((struct vnic_cq *)(& enic->cq) + (unsigned long )i, 0U, 1U, 0U, 0U,
               1U, 1U, 1U, 0U, interrupt_offset, 0ULL);
  i = i + 1U;
  ldv_39783: ;
  if (enic->cq_count > i) {
    goto ldv_39782;
  } else {
  }
  switch ((unsigned int )intr_mode) {
  case 2U: ;
  case 3U:
  mask_on_assertion = 1U;
  goto ldv_39787;
  default:
  mask_on_assertion = 0U;
  goto ldv_39787;
  }
  ldv_39787:
  i = 0U;
  goto ldv_39790;
  ldv_39789:
  vnic_intr_init((struct vnic_intr *)(& enic->intr) + (unsigned long )i, enic->config.intr_timer_usec,
                 (unsigned int )enic->config.intr_timer_type, mask_on_assertion);
  i = i + 1U;
  ldv_39790: ;
  if (enic->intr_count > i) {
    goto ldv_39789;
  } else {
  }
  return;
}
}
int enic_alloc_vnic_resources(struct enic *enic )
{
  enum vnic_dev_intr_mode intr_mode ;
  unsigned int i ;
  int err ;
  struct device *tmp ;
  void *tmp___0 ;
  struct device *tmp___1 ;
  {
  intr_mode = vnic_dev_get_intr_mode(enic->vdev);
  tmp = enic_get_dev(enic);
  _dev_info((struct device const *)tmp, "vNIC resources used:  wq %d rq %d cq %d intr %d intr mode %s\n",
            enic->wq_count, enic->rq_count, enic->cq_count, enic->intr_count, (unsigned int )intr_mode != 1U ? ((unsigned int )intr_mode != 2U ? ((unsigned int )intr_mode == 3U ? (char *)"MSI-X" : (char *)"unknown") : (char *)"MSI") : (char *)"legacy PCI INTx");
  i = 0U;
  goto ldv_39800;
  ldv_39799:
  err = vnic_wq_alloc(enic->vdev, (struct vnic_wq *)(& enic->wq) + (unsigned long )i,
                      i, enic->config.wq_desc_count, 16U);
  if (err != 0) {
    goto err_out_cleanup;
  } else {
  }
  i = i + 1U;
  ldv_39800: ;
  if (enic->wq_count > i) {
    goto ldv_39799;
  } else {
  }
  i = 0U;
  goto ldv_39803;
  ldv_39802:
  err = vnic_rq_alloc(enic->vdev, (struct vnic_rq *)(& enic->rq) + (unsigned long )i,
                      i, enic->config.rq_desc_count, 16U);
  if (err != 0) {
    goto err_out_cleanup;
  } else {
  }
  i = i + 1U;
  ldv_39803: ;
  if (enic->rq_count > i) {
    goto ldv_39802;
  } else {
  }
  i = 0U;
  goto ldv_39806;
  ldv_39805: ;
  if (enic->rq_count > i) {
    err = vnic_cq_alloc(enic->vdev, (struct vnic_cq *)(& enic->cq) + (unsigned long )i,
                        i, enic->config.rq_desc_count, 16U);
  } else {
    err = vnic_cq_alloc(enic->vdev, (struct vnic_cq *)(& enic->cq) + (unsigned long )i,
                        i, enic->config.wq_desc_count, 16U);
  }
  if (err != 0) {
    goto err_out_cleanup;
  } else {
  }
  i = i + 1U;
  ldv_39806: ;
  if (enic->cq_count > i) {
    goto ldv_39805;
  } else {
  }
  i = 0U;
  goto ldv_39809;
  ldv_39808:
  err = vnic_intr_alloc(enic->vdev, (struct vnic_intr *)(& enic->intr) + (unsigned long )i,
                        i);
  if (err != 0) {
    goto err_out_cleanup;
  } else {
  }
  i = i + 1U;
  ldv_39809: ;
  if (enic->intr_count > i) {
    goto ldv_39808;
  } else {
  }
  tmp___0 = vnic_dev_get_res(enic->vdev, 13, 0U);
  enic->legacy_pba = (u32 *)tmp___0;
  if ((unsigned long )enic->legacy_pba == (unsigned long )((u32 *)0) && (unsigned int )intr_mode == 1U) {
    tmp___1 = enic_get_dev(enic);
    dev_err((struct device const *)tmp___1, "Failed to hook legacy pba resource\n");
    err = -19;
    goto err_out_cleanup;
  } else {
  }
  return (0);
  err_out_cleanup:
  enic_free_vnic_resources(enic);
  return (err);
}
}
void ldv_mutex_lock_45(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_46(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_47(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_48(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_50(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_51(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_62(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_60(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_63(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_65(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_59(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_61(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_64(struct mutex *ldv_func_arg1 ) ;
int vnic_dev_fw_info(struct vnic_dev *vdev , struct vnic_devcmd_fw_info **fw_info ) ;
int vnic_dev_stats_dump(struct vnic_dev *vdev , struct vnic_stats **stats ) ;
int vnic_dev_hang_notify(struct vnic_dev *vdev ) ;
int vnic_dev_packet_filter(struct vnic_dev *vdev , int directed , int multicast ,
                           int broadcast , int promisc , int allmulti ) ;
int vnic_dev_add_addr(struct vnic_dev *vdev , u8 *addr ) ;
int vnic_dev_del_addr(struct vnic_dev *vdev , u8 *addr ) ;
int vnic_dev_notify_unset(struct vnic_dev *vdev ) ;
int vnic_dev_enable_wait(struct vnic_dev *vdev ) ;
int vnic_dev_disable(struct vnic_dev *vdev ) ;
int vnic_dev_deinit(struct vnic_dev *vdev ) ;
int vnic_dev_intr_coal_timer_info(struct vnic_dev *vdev ) ;
int vnic_dev_set_ig_vlan_rewrite_mode(struct vnic_dev *vdev , u8 ig_vlan_rewrite_mode ) ;
int vnic_dev_init_prov2(struct vnic_dev *vdev , u8 *buf , u32 len ) ;
int vnic_dev_enable2(struct vnic_dev *vdev , int active ) ;
int vnic_dev_enable2_done(struct vnic_dev *vdev , int *status ) ;
int vnic_dev_deinit_done(struct vnic_dev *vdev , int *status ) ;
size_t vic_provinfo_size(struct vic_provinfo *vp ) ;
int enic_vnic_dev_deinit(struct enic *enic ) ;
int enic_dev_init_prov2(struct enic *enic , struct vic_provinfo *vp ) ;
int enic_dev_deinit_done(struct enic *enic , int *status ) ;
int enic_dev_enable2(struct enic *enic , int active ) ;
int enic_dev_enable2_done(struct enic *enic , int *status ) ;
int enic_dev_fw_info(struct enic *enic , struct vnic_devcmd_fw_info **fw_info )
{
  int err ;
  {
  spin_lock(& enic->devcmd_lock);
  err = vnic_dev_fw_info(enic->vdev, fw_info);
  spin_unlock(& enic->devcmd_lock);
  return (err);
}
}
int enic_dev_stats_dump(struct enic *enic , struct vnic_stats **vstats )
{
  int err ;
  {
  spin_lock(& enic->devcmd_lock);
  err = vnic_dev_stats_dump(enic->vdev, vstats);
  spin_unlock(& enic->devcmd_lock);
  return (err);
}
}
int enic_dev_add_station_addr(struct enic *enic )
{
  int err ;
  bool tmp ;
  int tmp___0 ;
  {
  tmp = is_valid_ether_addr((u8 const *)(enic->netdev)->dev_addr);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-99);
  } else {
  }
  spin_lock(& enic->devcmd_lock);
  err = vnic_dev_add_addr(enic->vdev, (enic->netdev)->dev_addr);
  spin_unlock(& enic->devcmd_lock);
  return (err);
}
}
int enic_dev_del_station_addr(struct enic *enic )
{
  int err ;
  bool tmp ;
  int tmp___0 ;
  {
  tmp = is_valid_ether_addr((u8 const *)(enic->netdev)->dev_addr);
  if (tmp) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  if (tmp___0) {
    return (-99);
  } else {
  }
  spin_lock(& enic->devcmd_lock);
  err = vnic_dev_del_addr(enic->vdev, (enic->netdev)->dev_addr);
  spin_unlock(& enic->devcmd_lock);
  return (err);
}
}
int enic_dev_packet_filter(struct enic *enic , int directed , int multicast , int broadcast ,
                           int promisc , int allmulti )
{
  int err ;
  {
  spin_lock(& enic->devcmd_lock);
  err = vnic_dev_packet_filter(enic->vdev, directed, multicast, broadcast, promisc,
                               allmulti);
  spin_unlock(& enic->devcmd_lock);
  return (err);
}
}
int enic_dev_add_addr(struct enic *enic , u8 *addr )
{
  int err ;
  {
  spin_lock(& enic->devcmd_lock);
  err = vnic_dev_add_addr(enic->vdev, addr);
  spin_unlock(& enic->devcmd_lock);
  return (err);
}
}
int enic_dev_del_addr(struct enic *enic , u8 *addr )
{
  int err ;
  {
  spin_lock(& enic->devcmd_lock);
  err = vnic_dev_del_addr(enic->vdev, addr);
  spin_unlock(& enic->devcmd_lock);
  return (err);
}
}
int enic_dev_notify_unset(struct enic *enic )
{
  int err ;
  {
  spin_lock(& enic->devcmd_lock);
  err = vnic_dev_notify_unset(enic->vdev);
  spin_unlock(& enic->devcmd_lock);
  return (err);
}
}
int enic_dev_hang_notify(struct enic *enic )
{
  int err ;
  {
  spin_lock(& enic->devcmd_lock);
  err = vnic_dev_hang_notify(enic->vdev);
  spin_unlock(& enic->devcmd_lock);
  return (err);
}
}
int enic_dev_set_ig_vlan_rewrite_mode(struct enic *enic )
{
  int err ;
  {
  spin_lock(& enic->devcmd_lock);
  err = vnic_dev_set_ig_vlan_rewrite_mode(enic->vdev, 2);
  spin_unlock(& enic->devcmd_lock);
  return (err);
}
}
int enic_dev_enable(struct enic *enic )
{
  int err ;
  {
  spin_lock(& enic->devcmd_lock);
  err = vnic_dev_enable_wait(enic->vdev);
  spin_unlock(& enic->devcmd_lock);
  return (err);
}
}
int enic_dev_disable(struct enic *enic )
{
  int err ;
  {
  spin_lock(& enic->devcmd_lock);
  err = vnic_dev_disable(enic->vdev);
  spin_unlock(& enic->devcmd_lock);
  return (err);
}
}
int enic_dev_intr_coal_timer_info(struct enic *enic )
{
  int err ;
  {
  spin_lock(& enic->devcmd_lock);
  err = vnic_dev_intr_coal_timer_info(enic->vdev);
  spin_unlock(& enic->devcmd_lock);
  return (err);
}
}
int enic_vnic_dev_deinit(struct enic *enic )
{
  int err ;
  {
  spin_lock(& enic->devcmd_lock);
  err = vnic_dev_deinit(enic->vdev);
  spin_unlock(& enic->devcmd_lock);
  return (err);
}
}
int enic_dev_init_prov2(struct enic *enic , struct vic_provinfo *vp )
{
  int err ;
  size_t tmp ;
  {
  spin_lock(& enic->devcmd_lock);
  tmp = vic_provinfo_size(vp);
  err = vnic_dev_init_prov2(enic->vdev, (u8 *)vp, (u32 )tmp);
  spin_unlock(& enic->devcmd_lock);
  return (err);
}
}
int enic_dev_deinit_done(struct enic *enic , int *status )
{
  int err ;
  {
  spin_lock(& enic->devcmd_lock);
  err = vnic_dev_deinit_done(enic->vdev, status);
  spin_unlock(& enic->devcmd_lock);
  return (err);
}
}
int enic_vlan_rx_add_vid(struct net_device *netdev , u16 vid )
{
  struct enic *enic ;
  void *tmp ;
  int err ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  spin_lock(& enic->devcmd_lock);
  err = enic_add_vlan(enic, (int )vid);
  spin_unlock(& enic->devcmd_lock);
  return (err);
}
}
int enic_vlan_rx_kill_vid(struct net_device *netdev , u16 vid )
{
  struct enic *enic ;
  void *tmp ;
  int err ;
  {
  tmp = netdev_priv((struct net_device const *)netdev);
  enic = (struct enic *)tmp;
  spin_lock(& enic->devcmd_lock);
  err = enic_del_vlan(enic, (int )vid);
  spin_unlock(& enic->devcmd_lock);
  return (err);
}
}
int enic_dev_enable2(struct enic *enic , int active )
{
  int err ;
  {
  spin_lock(& enic->devcmd_lock);
  err = vnic_dev_enable2(enic->vdev, active);
  spin_unlock(& enic->devcmd_lock);
  return (err);
}
}
int enic_dev_enable2_done(struct enic *enic , int *status )
{
  int err ;
  {
  spin_lock(& enic->devcmd_lock);
  err = vnic_dev_enable2_done(enic->vdev, status);
  spin_unlock(& enic->devcmd_lock);
  return (err);
}
}
int enic_dev_status_to_errno(int devcmd_status )
{
  {
  switch (devcmd_status) {
  case 0: ;
  return (0);
  case 1: ;
  return (-22);
  case 2: ;
  return (-14);
  case 3: ;
  return (-1);
  case 4: ;
  return (-16);
  case 5: ;
  case 11: ;
  return (-95);
  case 6: ;
  return (-22);
  case 7: ;
  return (-12);
  case 8: ;
  return (-110);
  case 9: ;
  return (-100);
  case 12: ;
  return (-115);
  case 10: ;
  default: ;
  return (-1 < devcmd_status ? -1 : devcmd_status);
  }
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
void ldv_mutex_lock_64(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_65(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern int snprintf(char * , size_t , char const * , ...) ;
extern int memcmp(void const * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
extern int strcmp(char const * , char const * ) ;
int ldv_mutex_trylock_76(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_74(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_77(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_79(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_73(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_75(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_78(struct mutex *ldv_func_arg1 ) ;
struct vic_provinfo *vic_provinfo_alloc(gfp_t flags , u8 const *oui , u8 const type ) ;
void vic_provinfo_free(struct vic_provinfo *vp ) ;
int vic_provinfo_add_tlv(struct vic_provinfo *vp , u16 type , u16 length , void const *value ) ;
int enic_is_valid_pp_vf(struct enic *enic , int vf , int *err )
{
  int tmp ;
  int tmp___0 ;
  {
  if (vf != -1) {
    tmp = enic_sriov_enabled(enic);
    if (tmp != 0) {
      if (vf < 0 || (int )enic->num_vfs <= vf) {
        *err = -22;
        goto err_out;
      } else {
        *err = -95;
        goto err_out;
      }
    } else {
    }
  } else {
  }
  if (vf == -1) {
    tmp___0 = enic_is_dynamic(enic);
    if (tmp___0 == 0) {
      *err = -95;
      goto err_out;
    } else {
    }
  } else {
  }
  *err = 0;
  return (1);
  err_out: ;
  return (0);
}
}
static int enic_set_port_profile(struct enic *enic , int vf )
{
  struct net_device *netdev ;
  struct enic_port_profile *pp ;
  struct vic_provinfo *vp ;
  u8 oui[3U] ;
  __be16 os_type ;
  char uuid_str[38U] ;
  char client_mac_str[18U] ;
  u8 *client_mac ;
  int err ;
  int tmp ;
  size_t tmp___0 ;
  size_t tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  size_t tmp___4 ;
  size_t tmp___5 ;
  int tmp___6 ;
  {
  netdev = enic->netdev;
  oui[0] = 0U;
  oui[1] = 0U;
  oui[2] = 12U;
  os_type = 512U;
  tmp = enic_is_valid_pp_vf(enic, vf, & err);
  if (tmp != 0) {
    pp = vf == -1 ? enic->pp : enic->pp + (unsigned long )vf;
  } else {
    pp = 0;
  }
  if (err != 0) {
    return (err);
  } else {
  }
  if ((pp->set & 4U) == 0U) {
    return (-22);
  } else {
    tmp___0 = strlen((char const *)(& pp->name));
    if (tmp___0 == 0UL) {
      return (-22);
    } else {
    }
  }
  vp = vic_provinfo_alloc(208U, (u8 const *)(& oui), 4);
  if ((unsigned long )vp == (unsigned long )((struct vic_provinfo *)0)) {
    return (-12);
  } else {
  }
  tmp___1 = strlen((char const *)(& pp->name));
  err = vic_provinfo_add_tlv(vp, 0, (int )((unsigned int )((u16 )tmp___1) + 1U), (void const *)(& pp->name));
  if (err != 0) {
    goto add_tlv_failure;
  } else {
  }
  tmp___2 = is_zero_ether_addr((u8 const *)(& pp->mac_addr));
  if (tmp___2) {
    tmp___3 = 0;
  } else {
    tmp___3 = 1;
  }
  if (tmp___3) {
    client_mac = (u8 *)(& pp->mac_addr);
  } else
  if (vf == -1) {
    client_mac = netdev->dev_addr;
  } else {
    netdev_err((struct net_device const *)netdev, "Cannot find pp mac address for VF %d\n",
               vf);
    err = -22;
    goto add_tlv_failure;
  }
  err = vic_provinfo_add_tlv(vp, 1, 6, (void const *)client_mac);
  if (err != 0) {
    goto add_tlv_failure;
  } else {
  }
  snprintf((char *)(& client_mac_str), 18UL, "%pM", client_mac);
  err = vic_provinfo_add_tlv(vp, 4, 18, (void const *)(& client_mac_str));
  if (err != 0) {
    goto add_tlv_failure;
  } else {
  }
  if ((pp->set & 8U) != 0U) {
    sprintf((char *)(& uuid_str), "%pUB", (u8 *)(& pp->instance_uuid));
    err = vic_provinfo_add_tlv(vp, 9, 38, (void const *)(& uuid_str));
    if (err != 0) {
      goto add_tlv_failure;
    } else {
    }
  } else {
  }
  if ((pp->set & 16U) != 0U) {
    sprintf((char *)(& uuid_str), "%pUB", (u8 *)(& pp->host_uuid));
    err = vic_provinfo_add_tlv(vp, 8, 38, (void const *)(& uuid_str));
    if (err != 0) {
      goto add_tlv_failure;
    } else {
    }
  } else {
  }
  err = vic_provinfo_add_tlv(vp, 11, 2, (void const *)(& os_type));
  if (err != 0) {
    goto add_tlv_failure;
  } else {
  }
  spin_lock(& enic->devcmd_lock);
  tmp___6 = enic_is_valid_vf(enic, vf);
  if (tmp___6 != 0) {
    vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
    tmp___4 = vic_provinfo_size(vp);
    err = vnic_dev_init_prov2(enic->vdev, (u8 *)vp, (u32 )tmp___4);
    vnic_dev_cmd_proxy_end(enic->vdev);
  } else {
    tmp___5 = vic_provinfo_size(vp);
    err = vnic_dev_init_prov2(enic->vdev, (u8 *)vp, (u32 )tmp___5);
  }
  spin_unlock(& enic->devcmd_lock);
  err = enic_dev_status_to_errno(err);
  add_tlv_failure:
  vic_provinfo_free(vp);
  return (err);
}
}
static int enic_unset_port_profile(struct enic *enic , int vf )
{
  int err ;
  int tmp ;
  int tmp___0 ;
  {
  spin_lock(& enic->devcmd_lock);
  tmp = enic_is_valid_vf(enic, vf);
  if (tmp != 0) {
    vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
    err = vnic_dev_deinit(enic->vdev);
    vnic_dev_cmd_proxy_end(enic->vdev);
  } else {
    err = vnic_dev_deinit(enic->vdev);
  }
  spin_unlock(& enic->devcmd_lock);
  if (err != 0) {
    tmp___0 = enic_dev_status_to_errno(err);
    return (tmp___0);
  } else {
  }
  if (vf == -1) {
    enic_reset_addr_lists(enic);
  } else {
  }
  return (0);
}
}
static int enic_are_pp_different(struct enic_port_profile *pp1 , struct enic_port_profile *pp2 )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = strcmp((char const *)(& pp1->name), (char const *)(& pp2->name));
  tmp___0 = memcmp((void const *)(& pp1->instance_uuid), (void const *)(& pp2->instance_uuid),
                   16UL);
  tmp___1 = memcmp((void const *)(& pp1->host_uuid), (void const *)(& pp2->host_uuid),
                   16UL);
  tmp___2 = memcmp((void const *)(& pp1->mac_addr), (void const *)(& pp2->mac_addr),
                   6UL);
  return (((tmp | (tmp___0 != 0)) | (tmp___1 != 0)) | (tmp___2 != 0));
}
}
static int enic_pp_preassociate(struct enic *enic , int vf , struct enic_port_profile *prev_pp ,
                                int *restore_pp ) ;
static int enic_pp_disassociate(struct enic *enic , int vf , struct enic_port_profile *prev_pp ,
                                int *restore_pp ) ;
static int enic_pp_preassociate_rr(struct enic *enic , int vf , struct enic_port_profile *prev_pp ,
                                   int *restore_pp ) ;
static int enic_pp_associate(struct enic *enic , int vf , struct enic_port_profile *prev_pp ,
                             int *restore_pp ) ;
static int (*enic_pp_handlers[4U])(struct enic * , int , struct enic_port_profile * ,
                                   int * ) = { & enic_pp_preassociate, & enic_pp_preassociate_rr, & enic_pp_associate, & enic_pp_disassociate};
static int const enic_pp_handlers_count = 4;
static int enic_pp_preassociate(struct enic *enic , int vf , struct enic_port_profile *prev_pp ,
                                int *restore_pp )
{
  {
  return (-95);
}
}
static int enic_pp_disassociate(struct enic *enic , int vf , struct enic_port_profile *prev_pp ,
                                int *restore_pp )
{
  struct net_device *netdev ;
  struct enic_port_profile *pp ;
  int err ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  {
  netdev = enic->netdev;
  tmp = enic_is_valid_pp_vf(enic, vf, & err);
  if (tmp != 0) {
    pp = vf == -1 ? enic->pp : enic->pp + (unsigned long )vf;
  } else {
    pp = 0;
  }
  if (err != 0) {
    return (err);
  } else {
  }
  tmp___4 = is_zero_ether_addr((u8 const *)(& pp->mac_addr));
  if (tmp___4) {
    tmp___5 = 0;
  } else {
    tmp___5 = 1;
  }
  if (tmp___5) {
    spin_lock(& enic->devcmd_lock);
    tmp___0 = enic_is_valid_vf(enic, vf);
    if (tmp___0 != 0) {
      vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
      err = vnic_dev_del_addr(enic->vdev, (u8 *)(& pp->mac_addr));
      vnic_dev_cmd_proxy_end(enic->vdev);
    } else {
      err = vnic_dev_del_addr(enic->vdev, (u8 *)(& pp->mac_addr));
    }
    spin_unlock(& enic->devcmd_lock);
  } else
  if (vf == -1) {
    tmp___2 = is_zero_ether_addr((u8 const *)netdev->dev_addr);
    if (tmp___2) {
      tmp___3 = 0;
    } else {
      tmp___3 = 1;
    }
    if (tmp___3) {
      spin_lock(& enic->devcmd_lock);
      tmp___1 = enic_is_valid_vf(enic, vf);
      if (tmp___1 != 0) {
        vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
        err = vnic_dev_del_addr(enic->vdev, netdev->dev_addr);
        vnic_dev_cmd_proxy_end(enic->vdev);
      } else {
        err = vnic_dev_del_addr(enic->vdev, netdev->dev_addr);
      }
      spin_unlock(& enic->devcmd_lock);
    } else {
    }
  } else {
  }
  tmp___6 = enic_unset_port_profile(enic, vf);
  return (tmp___6);
}
}
static int enic_pp_preassociate_rr(struct enic *enic , int vf , struct enic_port_profile *prev_pp ,
                                   int *restore_pp )
{
  struct enic_port_profile *pp ;
  int err ;
  int active ;
  int tmp ;
  int tmp___0 ;
  {
  active = 0;
  tmp = enic_is_valid_pp_vf(enic, vf, & err);
  if (tmp != 0) {
    pp = vf == -1 ? enic->pp : enic->pp + (unsigned long )vf;
  } else {
    pp = 0;
  }
  if (err != 0) {
    return (err);
  } else {
  }
  if ((unsigned int )pp->request != 2U) {
    err = (*(enic_pp_handlers[3]))(enic, vf, prev_pp, restore_pp);
    if (err != 0) {
      return (err);
    } else {
    }
    *restore_pp = 0;
  } else {
  }
  *restore_pp = 0;
  err = enic_set_port_profile(enic, vf);
  if (err != 0) {
    return (err);
  } else {
  }
  if ((unsigned int )pp->request != 2U) {
    spin_lock(& enic->devcmd_lock);
    tmp___0 = enic_is_valid_vf(enic, vf);
    if (tmp___0 != 0) {
      vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
      err = vnic_dev_enable2(enic->vdev, active);
      vnic_dev_cmd_proxy_end(enic->vdev);
    } else {
      err = vnic_dev_enable2(enic->vdev, active);
    }
    spin_unlock(& enic->devcmd_lock);
    err = enic_dev_status_to_errno(err);
  } else {
  }
  return (err);
}
}
static int enic_pp_associate(struct enic *enic , int vf , struct enic_port_profile *prev_pp ,
                             int *restore_pp )
{
  struct net_device *netdev ;
  struct enic_port_profile *pp ;
  int err ;
  int active ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  bool tmp___4 ;
  int tmp___5 ;
  bool tmp___6 ;
  int tmp___7 ;
  {
  netdev = enic->netdev;
  active = 1;
  tmp = enic_is_valid_pp_vf(enic, vf, & err);
  if (tmp != 0) {
    pp = vf == -1 ? enic->pp : enic->pp + (unsigned long )vf;
  } else {
    pp = 0;
  }
  if (err != 0) {
    return (err);
  } else {
  }
  if ((unsigned int )prev_pp->request != 1U) {
    goto _L;
  } else
  if ((unsigned int )prev_pp->request == 1U) {
    tmp___0 = enic_are_pp_different(prev_pp, pp);
    if (tmp___0 != 0) {
      _L:
      err = (*(enic_pp_handlers[3]))(enic, vf, prev_pp, restore_pp);
      if (err != 0) {
        return (err);
      } else {
      }
      *restore_pp = 0;
    } else {
    }
  } else {
  }
  err = (*(enic_pp_handlers[1]))(enic, vf, prev_pp, restore_pp);
  if (err != 0) {
    return (err);
  } else {
  }
  *restore_pp = 0;
  spin_lock(& enic->devcmd_lock);
  tmp___1 = enic_is_valid_vf(enic, vf);
  if (tmp___1 != 0) {
    vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
    err = vnic_dev_enable2(enic->vdev, active);
    vnic_dev_cmd_proxy_end(enic->vdev);
  } else {
    err = vnic_dev_enable2(enic->vdev, active);
  }
  spin_unlock(& enic->devcmd_lock);
  err = enic_dev_status_to_errno(err);
  if (err != 0) {
    return (err);
  } else {
  }
  tmp___6 = is_zero_ether_addr((u8 const *)(& pp->mac_addr));
  if (tmp___6) {
    tmp___7 = 0;
  } else {
    tmp___7 = 1;
  }
  if (tmp___7) {
    spin_lock(& enic->devcmd_lock);
    tmp___2 = enic_is_valid_vf(enic, vf);
    if (tmp___2 != 0) {
      vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
      err = vnic_dev_add_addr(enic->vdev, (u8 *)(& pp->mac_addr));
      vnic_dev_cmd_proxy_end(enic->vdev);
    } else {
      err = vnic_dev_add_addr(enic->vdev, (u8 *)(& pp->mac_addr));
    }
    spin_unlock(& enic->devcmd_lock);
  } else
  if (vf == -1) {
    tmp___4 = is_zero_ether_addr((u8 const *)netdev->dev_addr);
    if (tmp___4) {
      tmp___5 = 0;
    } else {
      tmp___5 = 1;
    }
    if (tmp___5) {
      spin_lock(& enic->devcmd_lock);
      tmp___3 = enic_is_valid_vf(enic, vf);
      if (tmp___3 != 0) {
        vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
        err = vnic_dev_add_addr(enic->vdev, netdev->dev_addr);
        vnic_dev_cmd_proxy_end(enic->vdev);
      } else {
        err = vnic_dev_add_addr(enic->vdev, netdev->dev_addr);
      }
      spin_unlock(& enic->devcmd_lock);
    } else {
    }
  } else {
  }
  return (0);
}
}
int enic_process_set_pp_request(struct enic *enic , int vf , struct enic_port_profile *prev_pp ,
                                int *restore_pp )
{
  struct enic_port_profile *pp ;
  int err ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = enic_is_valid_pp_vf(enic, vf, & err);
  if (tmp != 0) {
    pp = vf == -1 ? enic->pp : enic->pp + (unsigned long )vf;
  } else {
    pp = 0;
  }
  if (err != 0) {
    return (err);
  } else {
  }
  if ((int )pp->request >= (int )enic_pp_handlers_count || (unsigned long )enic_pp_handlers[(int )pp->request] == (unsigned long )((int (*)(struct enic * ,
                                                                                                                                            int ,
                                                                                                                                            struct enic_port_profile * ,
                                                                                                                                            int * ))0)) {
    return (-95);
  } else {
  }
  tmp___0 = (*(enic_pp_handlers[(int )pp->request]))(enic, vf, prev_pp, restore_pp);
  return (tmp___0);
}
}
int enic_process_get_pp_request(struct enic *enic , int vf , int request , u16 *response )
{
  int err ;
  int status ;
  int tmp ;
  int tmp___0 ;
  {
  status = 0;
  switch (request) {
  case 1: ;
  case 2:
  spin_lock(& enic->devcmd_lock);
  tmp = enic_is_valid_vf(enic, vf);
  if (tmp != 0) {
    vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
    err = vnic_dev_enable2_done(enic->vdev, & status);
    vnic_dev_cmd_proxy_end(enic->vdev);
  } else {
    err = vnic_dev_enable2_done(enic->vdev, & status);
  }
  spin_unlock(& enic->devcmd_lock);
  goto ldv_44966;
  case 3:
  spin_lock(& enic->devcmd_lock);
  tmp___0 = enic_is_valid_vf(enic, vf);
  if (tmp___0 != 0) {
    vnic_dev_cmd_proxy_by_index_start(enic->vdev, (int )((u16 )vf));
    err = vnic_dev_deinit_done(enic->vdev, & status);
    vnic_dev_cmd_proxy_end(enic->vdev);
  } else {
    err = vnic_dev_deinit_done(enic->vdev, & status);
  }
  spin_unlock(& enic->devcmd_lock);
  goto ldv_44966;
  default: ;
  return (-22);
  }
  ldv_44966: ;
  if (err != 0) {
    status = err;
  } else {
  }
  switch (status) {
  case 0:
  *response = 256U;
  goto ldv_44970;
  case 1:
  *response = 258U;
  goto ldv_44970;
  case 6:
  *response = 259U;
  goto ldv_44970;
  case 7:
  *response = 260U;
  goto ldv_44970;
  case 12:
  *response = 257U;
  goto ldv_44970;
  default:
  *response = 261U;
  goto ldv_44970;
  }
  ldv_44970: ;
  return (0);
}
}
void ldv_mutex_lock_73(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_74(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_75(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_76(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_77(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_78(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_79(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_90(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_88(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_91(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_87(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_89(struct mutex *ldv_func_arg1 ) ;
__inline static unsigned long readq(void const volatile *addr )
{
  unsigned long ret ;
  {
  __asm__ volatile ("movq %1,%0": "=r" (ret): "m" (*((unsigned long volatile *)addr)): "memory");
  return (ret);
}
}
extern unsigned int ioread8(void * ) ;
u32 vnic_dev_intr_coal_timer_hw_to_usec(struct vnic_dev *vdev , u32 hw_cycles ) ;
void *vnic_dev_priv(struct vnic_dev *vdev )
{
  {
  return (vdev->priv);
}
}
static int vnic_dev_discover_res(struct vnic_dev *vdev , struct vnic_dev_bar *bar ,
                                 unsigned int num_bars )
{
  struct vnic_resource_header *rh ;
  struct mgmt_barmap_hdr *mrh ;
  struct vnic_resource *r ;
  u8 type ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  unsigned int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  unsigned int tmp___5 ;
  u8 bar_num ;
  unsigned int tmp___6 ;
  u32 bar_offset ;
  unsigned int tmp___7 ;
  u32 count ;
  unsigned int tmp___8 ;
  u32 len ;
  unsigned int tmp___9 ;
  {
  if (num_bars == 0U) {
    return (-22);
  } else {
  }
  if (bar->len <= 223UL) {
    printk("\venic: vNIC BAR0 res hdr length error\n");
    return (-22);
  } else {
  }
  rh = (struct vnic_resource_header *)bar->vaddr;
  mrh = (struct mgmt_barmap_hdr *)bar->vaddr;
  if ((unsigned long )rh == (unsigned long )((struct vnic_resource_header *)0)) {
    printk("\venic: vNIC BAR0 res hdr not mem-mapped\n");
    return (-22);
  } else {
  }
  tmp___3 = ioread32((void *)(& rh->magic));
  if (tmp___3 != 1986947427U) {
    goto _L;
  } else {
    tmp___4 = ioread32((void *)(& rh->version));
    if (tmp___4 != 0U) {
      _L:
      tmp___1 = ioread32((void *)(& mrh->magic));
      if (tmp___1 != 1414350669U) {
        tmp = ioread32((void *)(& rh->version));
        tmp___0 = ioread32((void *)(& rh->magic));
        printk("\venic: vNIC BAR0 res magic/version error exp (%lx/%lx) or (%lx/%lx), curr (%x/%x)\n",
               1986947427L, 0L, 1414350669L, 0L, tmp___0, tmp);
        return (-22);
      } else {
        tmp___2 = ioread32((void *)(& mrh->version));
        if (tmp___2 != 0U) {
          tmp = ioread32((void *)(& rh->version));
          tmp___0 = ioread32((void *)(& rh->magic));
          printk("\venic: vNIC BAR0 res magic/version error exp (%lx/%lx) or (%lx/%lx), curr (%x/%x)\n",
                 1986947427L, 0L, 1414350669L, 0L, tmp___0, tmp);
          return (-22);
        } else {
        }
      }
    } else {
    }
  }
  tmp___5 = ioread32((void *)(& mrh->magic));
  if (tmp___5 == 1414350669U) {
    r = (struct vnic_resource *)mrh + 1U;
  } else {
    r = (struct vnic_resource *)rh + 1U;
  }
  goto ldv_22090;
  ldv_22099:
  tmp___6 = ioread8((void *)(& r->bar));
  bar_num = (u8 )tmp___6;
  tmp___7 = ioread32((void *)(& r->bar_offset));
  bar_offset = tmp___7;
  tmp___8 = ioread32((void *)(& r->count));
  count = tmp___8;
  r = r + 1;
  if ((unsigned int )bar_num >= num_bars) {
    goto ldv_22090;
  } else {
  }
  if ((bar + (unsigned long )bar_num)->len == 0UL || (unsigned long )(bar + (unsigned long )bar_num)->vaddr == (unsigned long )((void *)0)) {
    goto ldv_22090;
  } else {
  }
  switch ((int )type) {
  case 1: ;
  case 2: ;
  case 3: ;
  case 10:
  len = count * 128U;
  if ((unsigned long )(len + bar_offset) > (bar + (unsigned long )bar_num)->len) {
    printk("\venic: vNIC BAR0 resource %d out-of-bounds, offset 0x%x + size 0x%x > bar len 0x%lx\n",
           (int )type, bar_offset, len, (bar + (unsigned long )bar_num)->len);
    return (-22);
  } else {
  }
  goto ldv_22095;
  case 13: ;
  case 16:
  len = count;
  goto ldv_22095;
  default: ;
  goto ldv_22090;
  }
  ldv_22095:
  vdev->res[(int )type].count = count;
  vdev->res[(int )type].vaddr = (bar + (unsigned long )bar_num)->vaddr + (unsigned long )bar_offset;
  vdev->res[(int )type].bus_addr = (bar + (unsigned long )bar_num)->bus_addr + (dma_addr_t )bar_offset;
  ldv_22090:
  tmp___9 = ioread8((void *)(& r->type));
  type = (u8 )tmp___9;
  if ((unsigned int )type != 0U) {
    goto ldv_22099;
  } else {
  }
  return (0);
}
}
unsigned int vnic_dev_get_res_count(struct vnic_dev *vdev , enum vnic_res_type type )
{
  {
  return (vdev->res[(unsigned int )type].count);
}
}
void *vnic_dev_get_res(struct vnic_dev *vdev , enum vnic_res_type type , unsigned int index )
{
  {
  if ((unsigned long )vdev->res[(unsigned int )type].vaddr == (unsigned long )((void *)0)) {
    return (0);
  } else {
  }
  switch ((unsigned int )type) {
  case 1U: ;
  case 2U: ;
  case 3U: ;
  case 10U: ;
  return (vdev->res[(unsigned int )type].vaddr + (unsigned long )(index * 128U));
  default: ;
  return (vdev->res[(unsigned int )type].vaddr);
  }
}
}
static unsigned int vnic_dev_desc_ring_size(struct vnic_dev_ring *ring , unsigned int desc_count ,
                                            unsigned int desc_size )
{
  unsigned int count_align ;
  unsigned int desc_align ;
  {
  count_align = 32U;
  desc_align = 16U;
  ring->base_align = 512UL;
  if (desc_count == 0U) {
    desc_count = 4096U;
  } else {
  }
  ring->desc_count = ((count_align + desc_count) - 1U) & - count_align;
  ring->desc_size = ((desc_align + desc_size) - 1U) & - desc_align;
  ring->size = (size_t )(ring->desc_count * ring->desc_size);
  ring->size_unaligned = ring->size + ring->base_align;
  return ((unsigned int )ring->size_unaligned);
}
}
void vnic_dev_clear_desc_ring(struct vnic_dev_ring *ring )
{
  {
  memset(ring->descs, 0, ring->size);
  return;
}
}
int vnic_dev_alloc_desc_ring(struct vnic_dev *vdev , struct vnic_dev_ring *ring ,
                             unsigned int desc_count , unsigned int desc_size )
{
  {
  vnic_dev_desc_ring_size(ring, desc_count, desc_size);
  ring->descs_unaligned = pci_alloc_consistent(vdev->pdev, ring->size_unaligned, & ring->base_addr_unaligned);
  if ((unsigned long )ring->descs_unaligned == (unsigned long )((void *)0)) {
    printk("\venic: Failed to allocate ring (size=%d), aborting\n", (int )ring->size);
    return (-12);
  } else {
  }
  ring->base_addr = ((ring->base_addr_unaligned + (unsigned long long )ring->base_align) - 1ULL) & - ((unsigned long long )ring->base_align);
  ring->descs = ring->descs_unaligned + (unsigned long )(ring->base_addr - ring->base_addr_unaligned);
  vnic_dev_clear_desc_ring(ring);
  ring->desc_avail = ring->desc_count - 1U;
  return (0);
}
}
void vnic_dev_free_desc_ring(struct vnic_dev *vdev , struct vnic_dev_ring *ring )
{
  {
  if ((unsigned long )ring->descs != (unsigned long )((void *)0)) {
    pci_free_consistent(vdev->pdev, ring->size_unaligned, ring->descs_unaligned, ring->base_addr_unaligned);
    ring->descs = 0;
  } else {
  }
  return;
}
}
static int _vnic_dev_cmd(struct vnic_dev *vdev , enum vnic_devcmd_cmd cmd , int wait )
{
  struct vnic_devcmd *devcmd ;
  unsigned int i ;
  int delay ;
  u32 status ;
  int err ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  {
  devcmd = vdev->devcmd;
  status = ioread32((void *)(& devcmd->status));
  if (status == 4294967295U) {
    return (-19);
  } else {
  }
  if ((int )status & 1) {
    printk("\venic: Busy devcmd %d\n", (unsigned int )cmd & 16383U);
    return (-16);
  } else {
  }
  if (((unsigned int )cmd & 1073741824U) != 0U) {
    i = 0U;
    goto ldv_22146;
    ldv_22145:
    writeq((unsigned long )vdev->args[i], (void volatile *)(& devcmd->args) + (unsigned long )i);
    i = i + 1U;
    ldv_22146: ;
    if (i <= 14U) {
      goto ldv_22145;
    } else {
    }
    __asm__ volatile ("sfence": : : "memory");
  } else {
  }
  iowrite32((u32 )cmd, (void *)(& devcmd->cmd));
  if (((unsigned int )cmd & 16777216U) != 0U) {
    return (0);
  } else {
  }
  delay = 0;
  goto ldv_22152;
  ldv_22151:
  __const_udelay(429500UL);
  status = ioread32((void *)(& devcmd->status));
  if (status == 4294967295U) {
    return (-19);
  } else {
  }
  if ((status & 1U) == 0U) {
    if ((status & 2U) != 0U) {
      tmp = readq((void const volatile *)(& devcmd->args));
      err = (int )tmp;
      if (err != 5 || (unsigned int )cmd != 3221340196U) {
        printk("\venic: Error %d devcmd %d\n", err, (unsigned int )cmd & 16383U);
      } else {
      }
      return (err);
    } else {
    }
    if ((int )cmd < 0) {
      __asm__ volatile ("lfence": : : "memory");
      i = 0U;
      goto ldv_22149;
      ldv_22148:
      tmp___0 = readq((void const volatile *)(& devcmd->args) + (unsigned long )i);
      vdev->args[i] = (u64 )tmp___0;
      i = i + 1U;
      ldv_22149: ;
      if (i <= 14U) {
        goto ldv_22148;
      } else {
      }
    } else {
    }
    return (0);
  } else {
  }
  delay = delay + 1;
  ldv_22152: ;
  if (delay < wait) {
    goto ldv_22151;
  } else {
  }
  printk("\venic: Timedout devcmd %d\n", (unsigned int )cmd & 16383U);
  return (-110);
}
}
static int vnic_dev_cmd_proxy(struct vnic_dev *vdev , enum vnic_devcmd_cmd proxy_cmd ,
                              enum vnic_devcmd_cmd cmd , u64 *a0 , u64 *a1 , int wait )
{
  u32 status ;
  int err ;
  {
  memset((void *)(& vdev->args), 0, 120UL);
  vdev->args[0] = (u64 )vdev->proxy_index;
  vdev->args[1] = (u64 )cmd;
  vdev->args[2] = *a0;
  vdev->args[3] = *a1;
  err = _vnic_dev_cmd(vdev, proxy_cmd, wait);
  if (err != 0) {
    return (err);
  } else {
  }
  status = (unsigned int )vdev->args[0];
  if ((status & 2U) != 0U) {
    err = (int )vdev->args[1];
    if (err != 5 || (unsigned int )cmd != 3221340196U) {
      printk("\venic: Error %d proxy devcmd %d\n", err, (unsigned int )cmd & 16383U);
    } else {
    }
    return (err);
  } else {
  }
  *a0 = vdev->args[1];
  *a1 = vdev->args[2];
  return (0);
}
}
static int vnic_dev_cmd_no_proxy(struct vnic_dev *vdev , enum vnic_devcmd_cmd cmd ,
                                 u64 *a0 , u64 *a1 , int wait )
{
  int err ;
  {
  vdev->args[0] = *a0;
  vdev->args[1] = *a1;
  err = _vnic_dev_cmd(vdev, cmd, wait);
  *a0 = vdev->args[0];
  *a1 = vdev->args[1];
  return (err);
}
}
void vnic_dev_cmd_proxy_by_index_start(struct vnic_dev *vdev , u16 index )
{
  {
  vdev->proxy = 2;
  vdev->proxy_index = (u32 )index;
  return;
}
}
void vnic_dev_cmd_proxy_end(struct vnic_dev *vdev )
{
  {
  vdev->proxy = 0;
  vdev->proxy_index = 0U;
  return;
}
}
int vnic_dev_cmd(struct vnic_dev *vdev , enum vnic_devcmd_cmd cmd , u64 *a0 , u64 *a1 ,
                 int wait )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  memset((void *)(& vdev->args), 0, 120UL);
  switch ((unsigned int )vdev->proxy) {
  case 2U:
  tmp = vnic_dev_cmd_proxy(vdev, 3221340203U, cmd, a0, a1, wait);
  return (tmp);
  case 1U:
  tmp___0 = vnic_dev_cmd_proxy(vdev, 3221340202U, cmd, a0, a1, wait);
  return (tmp___0);
  case 0U: ;
  default:
  tmp___1 = vnic_dev_cmd_no_proxy(vdev, cmd, a0, a1, wait);
  return (tmp___1);
  }
}
}
static int vnic_dev_capable(struct vnic_dev *vdev , enum vnic_devcmd_cmd cmd )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  {
  a0 = (u64 )cmd;
  a1 = 0ULL;
  wait = 1000;
  err = vnic_dev_cmd(vdev, 3221340196U, & a0, & a1, wait);
  return (err == 0 && a0 == 0ULL);
}
}
int vnic_dev_fw_info(struct vnic_dev *vdev , struct vnic_devcmd_fw_info **fw_info )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  void *tmp ;
  int tmp___0 ;
  {
  a1 = 0ULL;
  wait = 1000;
  err = 0;
  if ((unsigned long )vdev->fw_info == (unsigned long )((struct vnic_devcmd_fw_info *)0)) {
    tmp = pci_alloc_consistent(vdev->pdev, 132UL, & vdev->fw_info_pa);
    vdev->fw_info = (struct vnic_devcmd_fw_info *)tmp;
    if ((unsigned long )vdev->fw_info == (unsigned long )((struct vnic_devcmd_fw_info *)0)) {
      return (-12);
    } else {
    }
    memset((void *)vdev->fw_info, 0, 132UL);
    a0 = vdev->fw_info_pa;
    a1 = 132ULL;
    tmp___0 = vnic_dev_capable(vdev, 3221340161U);
    if (tmp___0 != 0) {
      err = vnic_dev_cmd(vdev, 3221340161U, & a0, & a1, wait);
    } else {
      err = vnic_dev_cmd(vdev, 1073856513, & a0, & a1, wait);
    }
  } else {
  }
  *fw_info = vdev->fw_info;
  return (err);
}
}
int vnic_dev_spec(struct vnic_dev *vdev , unsigned int offset , unsigned int size ,
                  void *value )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  {
  wait = 1000;
  a0 = (u64 )offset;
  a1 = (u64 )size;
  err = vnic_dev_cmd(vdev, 3221340162U, & a0, & a1, wait);
  switch (size) {
  case 1U:
  *((u8 *)value) = (unsigned char )a0;
  goto ldv_22217;
  case 2U:
  *((u16 *)value) = (unsigned short )a0;
  goto ldv_22217;
  case 4U:
  *((u32 *)value) = (unsigned int )a0;
  goto ldv_22217;
  case 8U:
  *((u64 *)value) = a0;
  goto ldv_22217;
  default:
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/net/ethernet/cisco/enic/enic.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/21/dscv_tempdir/dscv/ri/32_7a/drivers/net/ethernet/cisco/enic/vnic_dev.c.prepared"),
                       "i" (503), "i" (12UL));
  ldv_22222: ;
  goto ldv_22222;
  }
  ldv_22217: ;
  return (err);
}
}
int vnic_dev_stats_dump(struct vnic_dev *vdev , struct vnic_stats **stats )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  void *tmp ;
  int tmp___0 ;
  {
  wait = 1000;
  if ((unsigned long )vdev->stats == (unsigned long )((struct vnic_stats *)0)) {
    tmp = pci_alloc_consistent(vdev->pdev, 512UL, & vdev->stats_pa);
    vdev->stats = (struct vnic_stats *)tmp;
    if ((unsigned long )vdev->stats == (unsigned long )((struct vnic_stats *)0)) {
      return (-12);
    } else {
    }
  } else {
  }
  *stats = vdev->stats;
  a0 = vdev->stats_pa;
  a1 = 512ULL;
  tmp___0 = vnic_dev_cmd(vdev, 1073856516, & a0, & a1, wait);
  return (tmp___0);
}
}
int vnic_dev_close(struct vnic_dev *vdev )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int tmp ;
  {
  a0 = 0ULL;
  a1 = 0ULL;
  wait = 1000;
  tmp = vnic_dev_cmd(vdev, 114713, & a0, & a1, wait);
  return (tmp);
}
}
int vnic_dev_enable_wait(struct vnic_dev *vdev )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  a0 = 0ULL;
  a1 = 0ULL;
  wait = 1000;
  tmp___1 = vnic_dev_capable(vdev, 1073856540);
  if (tmp___1 != 0) {
    tmp = vnic_dev_cmd(vdev, 1073856540, & a0, & a1, wait);
    return (tmp);
  } else {
    tmp___0 = vnic_dev_cmd(vdev, 1090633756, & a0, & a1, wait);
    return (tmp___0);
  }
}
}
int vnic_dev_disable(struct vnic_dev *vdev )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int tmp ;
  {
  a0 = 0ULL;
  a1 = 0ULL;
  wait = 1000;
  tmp = vnic_dev_cmd(vdev, 114717, & a0, & a1, wait);
  return (tmp);
}
}
int vnic_dev_open(struct vnic_dev *vdev , int arg )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int tmp ;
  {
  a0 = (u64 )((unsigned int )arg);
  a1 = 0ULL;
  wait = 1000;
  tmp = vnic_dev_cmd(vdev, 1090633751, & a0, & a1, wait);
  return (tmp);
}
}
int vnic_dev_open_done(struct vnic_dev *vdev , int *done )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  {
  a0 = 0ULL;
  a1 = 0ULL;
  wait = 1000;
  *done = 0;
  err = vnic_dev_cmd(vdev, 2147598360U, & a0, & a1, wait);
  if (err != 0) {
    return (err);
  } else {
  }
  *done = a0 == 0ULL;
  return (0);
}
}
static int vnic_dev_soft_reset(struct vnic_dev *vdev , int arg )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int tmp ;
  {
  a0 = (u64 )((unsigned int )arg);
  a1 = 0ULL;
  wait = 1000;
  tmp = vnic_dev_cmd(vdev, 16891923, & a0, & a1, wait);
  return (tmp);
}
}
static int vnic_dev_soft_reset_done(struct vnic_dev *vdev , int *done )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  {
  a0 = 0ULL;
  a1 = 0ULL;
  wait = 1000;
  *done = 0;
  err = vnic_dev_cmd(vdev, 2147598356U, & a0, & a1, wait);
  if (err != 0) {
    return (err);
  } else {
  }
  *done = a0 == 0ULL;
  return (0);
}
}
int vnic_dev_hang_reset(struct vnic_dev *vdev , int arg )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  a0 = (u64 )((unsigned int )arg);
  a1 = 0ULL;
  wait = 1000;
  tmp___1 = vnic_dev_capable(vdev, 114727);
  if (tmp___1 != 0) {
    tmp = vnic_dev_cmd(vdev, 114727, & a0, & a1, wait);
    return (tmp);
  } else {
    err = vnic_dev_soft_reset(vdev, arg);
    if (err != 0) {
      return (err);
    } else {
    }
    tmp___0 = vnic_dev_init(vdev, 0);
    return (tmp___0);
  }
}
}
int vnic_dev_hang_reset_done(struct vnic_dev *vdev , int *done )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  int tmp ;
  int tmp___0 ;
  {
  a0 = 0ULL;
  a1 = 0ULL;
  wait = 1000;
  *done = 0;
  tmp___0 = vnic_dev_capable(vdev, 2147598376U);
  if (tmp___0 != 0) {
    err = vnic_dev_cmd(vdev, 2147598376U, & a0, & a1, wait);
    if (err != 0) {
      return (err);
    } else {
    }
  } else {
    tmp = vnic_dev_soft_reset_done(vdev, done);
    return (tmp);
  }
  *done = a0 == 0ULL;
  return (0);
}
}
int vnic_dev_hang_notify(struct vnic_dev *vdev )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int tmp ;
  {
  wait = 1000;
  tmp = vnic_dev_cmd(vdev, 114696, & a0, & a1, wait);
  return (tmp);
}
}
int vnic_dev_get_mac_addr(struct vnic_dev *vdev , u8 *mac_addr )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  int i ;
  {
  wait = 1000;
  i = 0;
  goto ldv_22310;
  ldv_22309:
  *(mac_addr + (unsigned long )i) = 0U;
  i = i + 1;
  ldv_22310: ;
  if (i <= 5) {
    goto ldv_22309;
  } else {
  }
  err = vnic_dev_cmd(vdev, 2147532809U, & a0, & a1, wait);
  if (err != 0) {
    return (err);
  } else {
  }
  i = 0;
  goto ldv_22313;
  ldv_22312:
  *(mac_addr + (unsigned long )i) = *((u8 *)(& a0) + (unsigned long )i);
  i = i + 1;
  ldv_22313: ;
  if (i <= 5) {
    goto ldv_22312;
  } else {
  }
  return (0);
}
}
int vnic_dev_packet_filter(struct vnic_dev *vdev , int directed , int multicast ,
                           int broadcast , int promisc , int allmulti )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  {
  a1 = 0ULL;
  wait = 1000;
  a0 = (u64 )(((((directed != 0) | (multicast != 0 ? 2 : 0)) | (broadcast != 0 ? 4 : 0)) | (promisc != 0 ? 8 : 0)) | (allmulti != 0 ? 16 : 0));
  err = vnic_dev_cmd(vdev, 1090535431, & a0, & a1, wait);
  if (err != 0) {
    printk("\venic: Can\'t set packet filter\n");
  } else {
  }
  return (err);
}
}
int vnic_dev_add_addr(struct vnic_dev *vdev , u8 *addr )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  int i ;
  {
  a0 = 0ULL;
  a1 = 0ULL;
  wait = 1000;
  i = 0;
  goto ldv_22337;
  ldv_22336:
  *((u8 *)(& a0) + (unsigned long )i) = *(addr + (unsigned long )i);
  i = i + 1;
  ldv_22337: ;
  if (i <= 5) {
    goto ldv_22336;
  } else {
  }
  err = vnic_dev_cmd(vdev, 1090568204, & a0, & a1, wait);
  if (err != 0) {
    printk("\venic: Can\'t add addr [%pM], %d\n", addr, err);
  } else {
  }
  return (err);
}
}
int vnic_dev_del_addr(struct vnic_dev *vdev , u8 *addr )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  int i ;
  {
  a0 = 0ULL;
  a1 = 0ULL;
  wait = 1000;
  i = 0;
  goto ldv_22349;
  ldv_22348:
  *((u8 *)(& a0) + (unsigned long )i) = *(addr + (unsigned long )i);
  i = i + 1;
  ldv_22349: ;
  if (i <= 5) {
    goto ldv_22348;
  } else {
  }
  err = vnic_dev_cmd(vdev, 1090568205, & a0, & a1, wait);
  if (err != 0) {
    printk("\venic: Can\'t del addr [%pM], %d\n", addr, err);
  } else {
  }
  return (err);
}
}
int vnic_dev_set_ig_vlan_rewrite_mode(struct vnic_dev *vdev , u8 ig_vlan_rewrite_mode )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int tmp ;
  int tmp___0 ;
  {
  a0 = (u64 )ig_vlan_rewrite_mode;
  a1 = 0ULL;
  wait = 1000;
  tmp___0 = vnic_dev_capable(vdev, 3221241897U);
  if (tmp___0 != 0) {
    tmp = vnic_dev_cmd(vdev, 3221241897U, & a0, & a1, wait);
    return (tmp);
  } else {
    return (0);
  }
}
}
static int vnic_dev_notify_setcmd(struct vnic_dev *vdev , void *notify_addr , dma_addr_t notify_pa ,
                                  u16 intr )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int r ;
  {
  wait = 1000;
  memset(notify_addr, 0, 40UL);
  vdev->notify = (struct vnic_devcmd_notify *)notify_addr;
  vdev->notify_pa = notify_pa;
  a0 = notify_pa;
  a1 = ((unsigned long long )intr << 32) & 281470681743360ULL;
  a1 = a1 + 40ULL;
  r = vnic_dev_cmd(vdev, 3221340181U, & a0, & a1, wait);
  vdev->notify_sz = r == 0 ? (unsigned int )a1 : 0U;
  return (r);
}
}
int vnic_dev_notify_set(struct vnic_dev *vdev , u16 intr )
{
  void *notify_addr ;
  dma_addr_t notify_pa ;
  int tmp ;
  {
  if ((unsigned long )vdev->notify != (unsigned long )((struct vnic_devcmd_notify *)0) || vdev->notify_pa != 0ULL) {
    printk("\venic: notify block %p still allocated", vdev->notify);
    return (-22);
  } else {
  }
  notify_addr = pci_alloc_consistent(vdev->pdev, 40UL, & notify_pa);
  if ((unsigned long )notify_addr == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  tmp = vnic_dev_notify_setcmd(vdev, notify_addr, notify_pa, (int )intr);
  return (tmp);
}
}
static int vnic_dev_notify_unsetcmd(struct vnic_dev *vdev )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int err ;
  {
  wait = 1000;
  a0 = 0ULL;
  a1 = 281470681743360ULL;
  a1 = a1 + 40ULL;
  err = vnic_dev_cmd(vdev, 3221340181U, & a0, & a1, wait);
  vdev->notify = 0;
  vdev->notify_pa = 0ULL;
  vdev->notify_sz = 0U;
  return (err);
}
}
int vnic_dev_notify_unset(struct vnic_dev *vdev )
{
  int tmp ;
  {
  if ((unsigned long )vdev->notify != (unsigned long )((struct vnic_devcmd_notify *)0)) {
    pci_free_consistent(vdev->pdev, 40UL, (void *)vdev->notify, vdev->notify_pa);
  } else {
  }
  tmp = vnic_dev_notify_unsetcmd(vdev);
  return (tmp);
}
}
static int vnic_dev_notify_ready(struct vnic_dev *vdev )
{
  u32 *words ;
  unsigned int nwords ;
  unsigned int i ;
  u32 csum ;
  size_t __len ;
  void *__ret ;
  {
  nwords = vdev->notify_sz / 4U;
  if ((unsigned long )vdev->notify == (unsigned long )((struct vnic_devcmd_notify *)0) || vdev->notify_sz == 0U) {
    return (0);
  } else {
  }
  ldv_22397:
  csum = 0U;
  __len = (size_t )vdev->notify_sz;
  __ret = __builtin_memcpy((void *)(& vdev->notify_copy), (void const *)vdev->notify,
                           __len);
  words = (u32 *)(& vdev->notify_copy);
  i = 1U;
  goto ldv_22395;
  ldv_22394:
  csum = *(words + (unsigned long )i) + csum;
  i = i + 1U;
  ldv_22395: ;
  if (i < nwords) {
    goto ldv_22394;
  } else {
  }
  if (*words != csum) {
    goto ldv_22397;
  } else {
  }
  return (1);
}
}
int vnic_dev_init(struct vnic_dev *vdev , int arg )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int r ;
  int tmp ;
  {
  a0 = (u64 )((unsigned int )arg);
  a1 = 0ULL;
  wait = 1000;
  r = 0;
  tmp = vnic_dev_capable(vdev, 1090633763);
  if (tmp != 0) {
    r = vnic_dev_cmd(vdev, 1090633763, & a0, & a1, wait);
  } else {
    vnic_dev_cmd(vdev, 2164375578U, & a0, & a1, wait);
    if ((int )a0 & 1) {
      vnic_dev_cmd(vdev, 2147532809U, & a0, & a1, wait);
      vnic_dev_cmd(vdev, 1090568204, & a0, & a1, wait);
    } else {
    }
  }
  return (r);
}
}
int vnic_dev_deinit(struct vnic_dev *vdev )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int tmp ;
  {
  a0 = 0ULL;
  a1 = 0ULL;
  wait = 1000;
  tmp = vnic_dev_cmd(vdev, 16891938, & a0, & a1, wait);
  return (tmp);
}
}
void vnic_dev_intr_coal_timer_info_default(struct vnic_dev *vdev )
{
  {
  vdev->intr_coal_timer_info.mul = 2U;
  vdev->intr_coal_timer_info.div = 3U;
  vdev->intr_coal_timer_info.max_usec = vnic_dev_intr_coal_timer_hw_to_usec(vdev,
                                                                            65535U);
  return;
}
}
int vnic_dev_intr_coal_timer_info(struct vnic_dev *vdev )
{
  int wait ;
  int err ;
  int tmp ;
  {
  wait = 1000;
  memset((void *)(& vdev->args), 0, 120UL);
  tmp = vnic_dev_capable(vdev, 2147598386U);
  if (tmp != 0) {
    err = _vnic_dev_cmd(vdev, 2147598386U, wait);
  } else {
    err = 5;
  }
  if (err == 5 || (err == 0 && ((vdev->args[0] == 0ULL || vdev->args[1] == 0ULL) || vdev->args[2] == 0ULL))) {
    printk("\fenic: Using default conversion factor for interrupt coalesce timer\n");
    vnic_dev_intr_coal_timer_info_default(vdev);
    return (0);
  } else {
  }
  if (err == 0) {
    vdev->intr_coal_timer_info.mul = (unsigned int )vdev->args[0];
    vdev->intr_coal_timer_info.div = (unsigned int )vdev->args[1];
    vdev->intr_coal_timer_info.max_usec = (unsigned int )vdev->args[2];
  } else {
  }
  return (err);
}
}
int vnic_dev_link_status(struct vnic_dev *vdev )
{
  int tmp ;
  {
  tmp = vnic_dev_notify_ready(vdev);
  if (tmp == 0) {
    return (0);
  } else {
  }
  return ((int )vdev->notify_copy.link_state);
}
}
u32 vnic_dev_port_speed(struct vnic_dev *vdev )
{
  int tmp ;
  {
  tmp = vnic_dev_notify_ready(vdev);
  if (tmp == 0) {
    return (0U);
  } else {
  }
  return (vdev->notify_copy.port_speed);
}
}
u32 vnic_dev_msg_lvl(struct vnic_dev *vdev )
{
  int tmp ;
  {
  tmp = vnic_dev_notify_ready(vdev);
  if (tmp == 0) {
    return (0U);
  } else {
  }
  return (vdev->notify_copy.msglvl);
}
}
u32 vnic_dev_mtu(struct vnic_dev *vdev )
{
  int tmp ;
  {
  tmp = vnic_dev_notify_ready(vdev);
  if (tmp == 0) {
    return (0U);
  } else {
  }
  return (vdev->notify_copy.mtu);
}
}
void vnic_dev_set_intr_mode(struct vnic_dev *vdev , enum vnic_dev_intr_mode intr_mode )
{
  {
  vdev->intr_mode = intr_mode;
  return;
}
}
enum vnic_dev_intr_mode vnic_dev_get_intr_mode(struct vnic_dev *vdev )
{
  {
  return (vdev->intr_mode);
}
}
u32 vnic_dev_intr_coal_timer_usec_to_hw(struct vnic_dev *vdev , u32 usec )
{
  {
  avoid_zero(vdev->intr_coal_timer_info.div != 0);
  return ((vdev->intr_coal_timer_info.mul * usec) / vdev->intr_coal_timer_info.div);
}
}
u32 vnic_dev_intr_coal_timer_hw_to_usec(struct vnic_dev *vdev , u32 hw_cycles )
{
  {
  return ((vdev->intr_coal_timer_info.div * hw_cycles) / vdev->intr_coal_timer_info.mul);
}
}
u32 vnic_dev_get_intr_coal_timer_max(struct vnic_dev *vdev )
{
  {
  return (vdev->intr_coal_timer_info.max_usec);
}
}
void vnic_dev_unregister(struct vnic_dev *vdev )
{
  {
  if ((unsigned long )vdev != (unsigned long )((struct vnic_dev *)0)) {
    if ((unsigned long )vdev->notify != (unsigned long )((struct vnic_devcmd_notify *)0)) {
      pci_free_consistent(vdev->pdev, 40UL, (void *)vdev->notify, vdev->notify_pa);
    } else {
    }
    if ((unsigned long )vdev->stats != (unsigned long )((struct vnic_stats *)0)) {
      pci_free_consistent(vdev->pdev, 512UL, (void *)vdev->stats, vdev->stats_pa);
    } else {
    }
    if ((unsigned long )vdev->fw_info != (unsigned long )((struct vnic_devcmd_fw_info *)0)) {
      pci_free_consistent(vdev->pdev, 132UL, (void *)vdev->fw_info, vdev->fw_info_pa);
    } else {
    }
    kfree((void const *)vdev);
  } else {
  }
  return;
}
}
struct vnic_dev *vnic_dev_register(struct vnic_dev *vdev , void *priv , struct pci_dev *pdev ,
                                   struct vnic_dev_bar *bar , unsigned int num_bars )
{
  void *tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  {
  if ((unsigned long )vdev == (unsigned long )((struct vnic_dev *)0)) {
    tmp = kzalloc(712UL, 32U);
    vdev = (struct vnic_dev *)tmp;
    if ((unsigned long )vdev == (unsigned long )((struct vnic_dev *)0)) {
      return (0);
    } else {
    }
  } else {
  }
  vdev->priv = priv;
  vdev->pdev = pdev;
  tmp___0 = vnic_dev_discover_res(vdev, bar, num_bars);
  if (tmp___0 != 0) {
    goto err_out;
  } else {
  }
  tmp___1 = vnic_dev_get_res(vdev, 16, 0U);
  vdev->devcmd = (struct vnic_devcmd *)tmp___1;
  if ((unsigned long )vdev->devcmd == (unsigned long )((struct vnic_devcmd *)0)) {
    goto err_out;
  } else {
  }
  return (vdev);
  err_out:
  vnic_dev_unregister(vdev);
  return (0);
}
}
int vnic_dev_init_prov2(struct vnic_dev *vdev , u8 *buf , u32 len )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  dma_addr_t prov_pa ;
  void *prov_buf ;
  int ret ;
  size_t __len ;
  void *__ret ;
  {
  a1 = (u64 )len;
  wait = 1000;
  prov_buf = pci_alloc_consistent(vdev->pdev, (size_t )len, & prov_pa);
  if ((unsigned long )prov_buf == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  __len = (size_t )len;
  __ret = __builtin_memcpy(prov_buf, (void const *)buf, __len);
  a0 = prov_pa;
  ret = vnic_dev_cmd(vdev, 1073758255, & a0, & a1, wait);
  pci_free_consistent(vdev->pdev, (size_t )len, prov_buf, prov_pa);
  return (ret);
}
}
int vnic_dev_enable2(struct vnic_dev *vdev , int active )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int tmp ;
  {
  a1 = 0ULL;
  wait = 1000;
  a0 = active != 0;
  tmp = vnic_dev_cmd(vdev, 1073758256, & a0, & a1, wait);
  return (tmp);
}
}
static int vnic_dev_cmd_status(struct vnic_dev *vdev , enum vnic_devcmd_cmd cmd ,
                               int *status )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int ret ;
  {
  a0 = (u64 )cmd;
  a1 = 0ULL;
  wait = 1000;
  ret = vnic_dev_cmd(vdev, 3221340209U, & a0, & a1, wait);
  if (ret == 0) {
    *status = (int )a0;
  } else {
  }
  return (ret);
}
}
int vnic_dev_enable2_done(struct vnic_dev *vdev , int *status )
{
  int tmp ;
  {
  tmp = vnic_dev_cmd_status(vdev, 1073758256, status);
  return (tmp);
}
}
int vnic_dev_deinit_done(struct vnic_dev *vdev , int *status )
{
  int tmp ;
  {
  tmp = vnic_dev_cmd_status(vdev, 16891938, status);
  return (tmp);
}
}
int vnic_dev_set_mac_addr(struct vnic_dev *vdev , u8 *mac_addr )
{
  u64 a0 ;
  u64 a1 ;
  int wait ;
  int i ;
  int tmp ;
  {
  wait = 1000;
  i = 0;
  goto ldv_22509;
  ldv_22508:
  *((u8 *)(& a0) + (unsigned long )i) = *(mac_addr + (unsigned long )i);
  i = i + 1;
  ldv_22509: ;
  if (i <= 5) {
    goto ldv_22508;
  } else {
  }
  tmp = vnic_dev_cmd(vdev, 1073758263, & a0, & a1, wait);
  return (tmp);
}
}
void ldv_mutex_lock_87(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_88(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_89(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_90(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_91(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_100(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_98(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_101(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_97(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_99(struct mutex *ldv_func_arg1 ) ;
static int vnic_rq_alloc_bufs(struct vnic_rq *rq )
{
  struct vnic_rq_buf *buf ;
  struct vnic_dev *vdev ;
  unsigned int i ;
  unsigned int j ;
  unsigned int count ;
  unsigned int blks ;
  void *tmp ;
  struct vnic_rq_buf *tmp___0 ;
  {
  count = rq->ring.desc_count;
  blks = (((count <= 63U ? 32U : 64U) + count) - 1U) / (count <= 63U ? 32U : 64U);
  vdev = rq->vdev;
  i = 0U;
  goto ldv_19510;
  ldv_19509:
  tmp = kzalloc(count <= 63U ? 1536UL : 3072UL, 32U);
  rq->bufs[i] = (struct vnic_rq_buf *)tmp;
  if ((unsigned long )rq->bufs[i] == (unsigned long )((struct vnic_rq_buf *)0)) {
    return (-12);
  } else {
  }
  i = i + 1U;
  ldv_19510: ;
  if (i < blks) {
    goto ldv_19509;
  } else {
  }
  i = 0U;
  goto ldv_19516;
  ldv_19515:
  buf = rq->bufs[i];
  j = 0U;
  goto ldv_19514;
  ldv_19513:
  buf->index = (count <= 63U ? 32U : 64U) * i + j;
  buf->desc = rq->ring.descs + (unsigned long )(rq->ring.desc_size * buf->index);
  if (buf->index + 1U == count) {
    buf->next = rq->bufs[0];
    goto ldv_19512;
  } else
  if (j + 1U == (count <= 63U ? 32U : 64U)) {
    buf->next = rq->bufs[i + 1U];
  } else {
    buf->next = buf + 1UL;
    buf = buf + 1;
  }
  j = j + 1U;
  ldv_19514: ;
  if ((count <= 63U ? 32U : 64U) > j) {
    goto ldv_19513;
  } else {
  }
  ldv_19512:
  i = i + 1U;
  ldv_19516: ;
  if (i < blks) {
    goto ldv_19515;
  } else {
  }
  tmp___0 = rq->bufs[0];
  rq->to_clean = tmp___0;
  rq->to_use = tmp___0;
  return (0);
}
}
void vnic_rq_free(struct vnic_rq *rq )
{
  struct vnic_dev *vdev ;
  unsigned int i ;
  {
  vdev = rq->vdev;
  vnic_dev_free_desc_ring(vdev, & rq->ring);
  i = 0U;
  goto ldv_19524;
  ldv_19523: ;
  if ((unsigned long )rq->bufs[i] != (unsigned long )((struct vnic_rq_buf *)0)) {
    kfree((void const *)rq->bufs[i]);
    rq->bufs[i] = 0;
  } else {
  }
  i = i + 1U;
  ldv_19524: ;
  if (i <= 63U) {
    goto ldv_19523;
  } else {
  }
  rq->ctrl = 0;
  return;
}
}
int vnic_rq_alloc(struct vnic_dev *vdev , struct vnic_rq *rq , unsigned int index ,
                  unsigned int desc_count , unsigned int desc_size )
{
  int err ;
  void *tmp ;
  {
  rq->index = index;
  rq->vdev = vdev;
  tmp = vnic_dev_get_res(vdev, 2, index);
  rq->ctrl = (struct vnic_rq_ctrl *)tmp;
  if ((unsigned long )rq->ctrl == (unsigned long )((struct vnic_rq_ctrl *)0)) {
    printk("\venic: Failed to hook RQ[%d] resource\n", index);
    return (-22);
  } else {
  }
  vnic_rq_disable(rq);
  err = vnic_dev_alloc_desc_ring(vdev, & rq->ring, desc_count, desc_size);
  if (err != 0) {
    return (err);
  } else {
  }
  err = vnic_rq_alloc_bufs(rq);
  if (err != 0) {
    vnic_rq_free(rq);
    return (err);
  } else {
  }
  return (0);
}
}
static void vnic_rq_init_start(struct vnic_rq *rq , unsigned int cq_index , unsigned int fetch_index ,
                               unsigned int posted_index , unsigned int error_interrupt_enable ,
                               unsigned int error_interrupt_offset )
{
  u64 paddr ;
  unsigned int count ;
  struct vnic_rq_buf *tmp ;
  {
  count = rq->ring.desc_count;
  paddr = rq->ring.base_addr;
  writeq((unsigned long )paddr, (void volatile *)(& (rq->ctrl)->ring_base));
  iowrite32(count, (void *)(& (rq->ctrl)->ring_size));
  iowrite32(cq_index, (void *)(& (rq->ctrl)->cq_index));
  iowrite32(error_interrupt_enable, (void *)(& (rq->ctrl)->error_interrupt_enable));
  iowrite32(error_interrupt_offset, (void *)(& (rq->ctrl)->error_interrupt_offset));
  iowrite32(0U, (void *)(& (rq->ctrl)->dropped_packet_count));
  iowrite32(0U, (void *)(& (rq->ctrl)->error_status));
  iowrite32(fetch_index, (void *)(& (rq->ctrl)->fetch_index));
  iowrite32(posted_index, (void *)(& (rq->ctrl)->posted_index));
  tmp = rq->bufs[fetch_index / (count <= 63U ? 32U : 64U)] + (unsigned long )(fetch_index % (count <= 63U ? 32U : 64U));
  rq->to_clean = tmp;
  rq->to_use = tmp;
  return;
}
}
void vnic_rq_init(struct vnic_rq *rq , unsigned int cq_index , unsigned int error_interrupt_enable ,
                  unsigned int error_interrupt_offset )
{
  u32 fetch_index ;
  {
  fetch_index = ioread32((void *)(& (rq->ctrl)->fetch_index));
  if (fetch_index == 4294967295U) {
    fetch_index = 0U;
  } else {
  }
  vnic_rq_init_start(rq, cq_index, fetch_index, fetch_index, error_interrupt_enable,
                     error_interrupt_offset);
  return;
}
}
unsigned int vnic_rq_error_status(struct vnic_rq *rq )
{
  unsigned int tmp ;
  {
  tmp = ioread32((void *)(& (rq->ctrl)->error_status));
  return (tmp);
}
}
void vnic_rq_enable(struct vnic_rq *rq )
{
  {
  iowrite32(1U, (void *)(& (rq->ctrl)->enable));
  return;
}
}
int vnic_rq_disable(struct vnic_rq *rq )
{
  unsigned int wait ;
  unsigned int tmp ;
  {
  iowrite32(0U, (void *)(& (rq->ctrl)->enable));
  wait = 0U;
  goto ldv_19562;
  ldv_19561:
  tmp = ioread32((void *)(& (rq->ctrl)->running));
  if (tmp == 0U) {
    return (0);
  } else {
  }
  __const_udelay(42950UL);
  wait = wait + 1U;
  ldv_19562: ;
  if (wait <= 999U) {
    goto ldv_19561;
  } else {
  }
  printk("\venic: Failed to disable RQ[%d]\n", rq->index);
  return (-110);
}
}
void vnic_rq_clean(struct vnic_rq *rq , void (*buf_clean)(struct vnic_rq * , struct vnic_rq_buf * ) )
{
  struct vnic_rq_buf *buf ;
  u32 fetch_index ;
  unsigned int count ;
  struct vnic_rq_buf *tmp ;
  unsigned int tmp___0 ;
  struct vnic_rq_buf *tmp___1 ;
  {
  count = rq->ring.desc_count;
  buf = rq->to_clean;
  goto ldv_19574;
  ldv_19573:
  (*buf_clean)(rq, buf);
  tmp = buf->next;
  rq->to_clean = tmp;
  buf = tmp;
  rq->ring.desc_avail = rq->ring.desc_avail + 1U;
  ldv_19574:
  tmp___0 = vnic_rq_desc_used(rq);
  if (tmp___0 != 0U) {
    goto ldv_19573;
  } else {
  }
  fetch_index = ioread32((void *)(& (rq->ctrl)->fetch_index));
  if (fetch_index == 4294967295U) {
    fetch_index = 0U;
  } else {
  }
  tmp___1 = rq->bufs[fetch_index / (count <= 63U ? 32U : 64U)] + (unsigned long )(fetch_index % (count <= 63U ? 32U : 64U));
  rq->to_clean = tmp___1;
  rq->to_use = tmp___1;
  iowrite32(fetch_index, (void *)(& (rq->ctrl)->posted_index));
  vnic_dev_clear_desc_ring(& rq->ring);
  return;
}
}
void ldv_mutex_lock_97(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_98(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_99(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_100(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_101(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_108(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_107(struct mutex *ldv_func_arg1 ) ;
struct vic_provinfo *vic_provinfo_alloc(gfp_t flags , u8 const *oui , u8 const type )
{
  struct vic_provinfo *vp ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  {
  if ((unsigned long )oui == (unsigned long )((u8 const *)0)) {
    return (0);
  } else {
  }
  tmp = kzalloc(1385UL, flags);
  vp = (struct vic_provinfo *)tmp;
  if ((unsigned long )vp == (unsigned long )((struct vic_provinfo *)0)) {
    return (0);
  } else {
  }
  __len = 3UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& vp->oui), (void const *)oui, __len);
  } else {
    __ret = __builtin_memcpy((void *)(& vp->oui), (void const *)oui, __len);
  }
  vp->type = type;
  vp->length = 67108864U;
  return (vp);
}
}
void vic_provinfo_free(struct vic_provinfo *vp )
{
  {
  kfree((void const *)vp);
  return;
}
}
int vic_provinfo_add_tlv(struct vic_provinfo *vp , u16 type , u16 length , void const *value )
{
  struct vic_provinfo_tlv *tlv ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u16 tmp___1 ;
  __u16 tmp___2 ;
  size_t __len ;
  void *__ret ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  {
  if ((unsigned long )vp == (unsigned long )((struct vic_provinfo *)0) || (unsigned long )value == (unsigned long )((void const *)0)) {
    return (-22);
  } else {
  }
  tmp = __fswab32(vp->length);
  if (((unsigned long )tmp + (unsigned long )length) + 4UL > 1373UL) {
    return (-12);
  } else {
  }
  tmp___0 = __fswab32(vp->length);
  tlv = (struct vic_provinfo_tlv *)(& vp->tlv) + ((unsigned long )tmp___0 + 0xfffffffffffffffcUL);
  tmp___1 = __fswab16((int )type);
  tlv->type = tmp___1;
  tmp___2 = __fswab16((int )length);
  tlv->length = tmp___2;
  __len = (size_t )length;
  __ret = __builtin_memcpy((void *)(& tlv->value), value, __len);
  tmp___3 = __fswab32(vp->num_tlvs);
  tmp___4 = __fswab32(tmp___3 + 1U);
  vp->num_tlvs = tmp___4;
  tmp___5 = __fswab32(vp->length);
  tmp___6 = __fswab32((tmp___5 + (__u32 )length) + 4U);
  vp->length = tmp___6;
  return (0);
}
}
size_t vic_provinfo_size(struct vic_provinfo *vp )
{
  __u32 tmp ;
  size_t tmp___0 ;
  {
  if ((unsigned long )vp != (unsigned long )((struct vic_provinfo *)0)) {
    tmp = __fswab32(vp->length);
    tmp___0 = (unsigned long )tmp + 8UL;
  } else {
    tmp___0 = 0UL;
  }
  return (tmp___0);
}
}
void ldv_mutex_lock_107(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_108(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
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
  ldv_mutex_lock = 1;
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
  if (ldv_mutex_lock == 1) {
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
void __const_udelay(unsigned long arg0) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __napi_schedule(struct napi_struct *arg0) {
  return;
}
void *external_alloc(void);
struct sk_buff *__netdev_alloc_skb(struct net_device *arg0, unsigned int arg1, gfp_t arg2) {
  return (struct sk_buff *)external_alloc();
}
void __netif_schedule(struct Qdisc *arg0) {
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
void *external_alloc(void);
unsigned char *__pskb_pull_tail(struct sk_buff *arg0, int arg1) {
  return (unsigned char *)external_alloc();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void *external_alloc(void);
struct net_device *alloc_etherdev_mqs(int arg0, unsigned int arg1, unsigned int arg2) {
  return (struct net_device *)external_alloc();
}
bool __VERIFIER_nondet_bool(void);
bool cancel_work_sync(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void consume_skb(struct sk_buff *arg0) {
  return;
}
unsigned short __VERIFIER_nondet_ushort(void);
__sum16 csum_ipv6_magic(const struct in6_addr *arg0, const struct in6_addr *arg1, __u32 arg2, unsigned short arg3, __wsum arg4) {
  return __VERIFIER_nondet_ushort();
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
void debug_dma_unmap_page(struct device *arg0, dma_addr_t arg1, size_t arg2, int arg3, bool arg4) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer_sync(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_err(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *dev_get_drvdata(const struct device *arg0) {
  return (void *)external_alloc();
}
void dev_kfree_skb_any(struct sk_buff *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int dev_set_drvdata(struct device *arg0, void *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int dma_supported(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
unsigned short __VERIFIER_nondet_ushort(void);
__be16 eth_type_trans(struct sk_buff *arg0, struct net_device *arg1) {
  return __VERIFIER_nondet_ushort();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void free_netdev(struct net_device *arg0) {
  return;
}
void get_random_bytes(void *arg0, int arg1) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread32(void *arg0) {
  return __VERIFIER_nondet_uint();
}
unsigned int __VERIFIER_nondet_uint(void);
unsigned int ioread8(void *arg0) {
  return __VERIFIER_nondet_uint();
}
void iounmap(volatile void *arg0) {
  return;
}
void iowrite32(u32 arg0, void *arg1) {
  return;
}
void kfree(const void *arg0) {
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
void local_bh_disable() {
  return;
}
void local_bh_enable() {
  return;
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
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
void napi_complete(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
gro_result_t napi_gro_receive(struct napi_struct *arg0, struct sk_buff *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_err(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_info(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netdev_warn(const struct net_device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void netif_carrier_off(struct net_device *arg0) {
  return;
}
void netif_carrier_on(struct net_device *arg0) {
  return;
}
void netif_napi_add(struct net_device *arg0, struct napi_struct *arg1, int (*arg2)(struct napi_struct *, int), int arg3) {
  return;
}
void netif_napi_del(struct napi_struct *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int netif_receive_skb(struct sk_buff *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int netpoll_trap() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int nla_put(struct sk_buff *arg0, int arg1, int arg2, const void *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_bus_read_config_word(struct pci_bus *arg0, unsigned int arg1, int arg2, u16 *arg3) {
  return __VERIFIER_nondet_int();
}
void pci_disable_device(struct pci_dev *arg0) {
  return;
}
void pci_disable_msi(struct pci_dev *arg0) {
  return;
}
void pci_disable_msix(struct pci_dev *arg0) {
  return;
}
void pci_disable_sriov(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int pci_enable_device_mem(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msi_block(struct pci_dev *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_msix(struct pci_dev *arg0, struct msix_entry *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_enable_sriov(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pci_find_ext_capability(struct pci_dev *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *pci_iomap(struct pci_dev *arg0, int arg1, unsigned long arg2) {
  return (void *)external_alloc();
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
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int register_netdev(struct net_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int round_jiffies(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
void rtnl_lock() {
  return;
}
void rtnl_unlock() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout_uninterruptible(long arg0) {
  return __VERIFIER_nondet_long();
}
bool __VERIFIER_nondet_bool(void);
bool schedule_work(struct work_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void *external_alloc(void);
unsigned char *skb_put(struct sk_buff *arg0, unsigned int arg1) {
  return (unsigned char *)external_alloc();
}
unsigned long __VERIFIER_nondet_ulong(void);
size_t strlcpy(char *arg0, const char *arg1, size_t arg2) {
  return __VERIFIER_nondet_ulong();
}
void synchronize_irq(unsigned int arg0) {
  return;
}
void unregister_netdev(struct net_device *arg0) {
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
