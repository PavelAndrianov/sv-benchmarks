extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
typedef unsigned char __u8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
typedef unsigned long long __u64;
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
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __u16 __le16;
typedef __u32 __le32;
typedef __u64 __le64;
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
typedef __s32 int32_t;
typedef __u32 uint32_t;
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
struct _ddebug {
   char const *modname ;
   char const *function ;
   char const *filename ;
   char const *format ;
   unsigned int lineno : 18 ;
   unsigned char flags ;
};
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
struct usb_device_id {
   __u16 match_flags ;
   __u16 idVendor ;
   __u16 idProduct ;
   __u16 bcdDevice_lo ;
   __u16 bcdDevice_hi ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 bInterfaceNumber ;
   kernel_ulong_t driver_info ;
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
struct resource {
   resource_size_t start ;
   resource_size_t end ;
   char const *name ;
   unsigned long flags ;
   struct resource *parent ;
   struct resource *sibling ;
   struct resource *child ;
};
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
struct vm_area_struct;
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
struct timespec;
struct compat_timespec;
struct __anonstruct_futex_33 {
   u32 *uaddr ;
   u32 val ;
   u32 flags ;
   u32 bitset ;
   u64 time ;
   u32 *uaddr2 ;
};
struct __anonstruct_nanosleep_34 {
   clockid_t clockid ;
   struct timespec *rmtp ;
   struct compat_timespec *compat_rmtp ;
   u64 expires ;
};
struct pollfd;
struct __anonstruct_poll_35 {
   struct pollfd *ufds ;
   int nfds ;
   int has_timeout ;
   unsigned long tv_sec ;
   unsigned long tv_nsec ;
};
union __anonunion_ldv_6620_32 {
   struct __anonstruct_futex_33 futex ;
   struct __anonstruct_nanosleep_34 nanosleep ;
   struct __anonstruct_poll_35 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_6620_32 ldv_6620 ;
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
struct kref {
   atomic_t refcount ;
};
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
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
struct klist_node;
struct klist_node {
   void *n_klist ;
   struct list_head n_node ;
   struct kref n_ref ;
};
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
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
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
};
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
struct pci_dev;
enum irqreturn {
    IRQ_NONE = 0,
    IRQ_HANDLED = 1,
    IRQ_WAKE_THREAD = 2
} ;
typedef enum irqreturn irqreturn_t;
struct pci_bus;
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
union __anonunion_ldv_10157_59 {
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
   union __anonunion_ldv_10157_59 ldv_10157 ;
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
struct dma_pool;
struct msix_entry {
   u32 vector ;
   u16 entry ;
};
struct __anonstruct_nodemask_t_60 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_60 nodemask_t;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
};
struct __anonstruct_mm_context_t_125 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_125 mm_context_t;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
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
union __anonunion_ldv_14747_131 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_14757_135 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_14759_134 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_14757_135 ldv_14757 ;
   int units ;
};
struct __anonstruct_ldv_14761_133 {
   union __anonunion_ldv_14759_134 ldv_14759 ;
   atomic_t _count ;
};
union __anonunion_ldv_14762_132 {
   unsigned long counters ;
   struct __anonstruct_ldv_14761_133 ldv_14761 ;
};
struct __anonstruct_ldv_14763_130 {
   union __anonunion_ldv_14747_131 ldv_14747 ;
   union __anonunion_ldv_14762_132 ldv_14762 ;
};
struct __anonstruct_ldv_14770_137 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_14774_136 {
   struct list_head lru ;
   struct __anonstruct_ldv_14770_137 ldv_14770 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_14779_138 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_14763_130 ldv_14763 ;
   union __anonunion_ldv_14774_136 ldv_14774 ;
   union __anonunion_ldv_14779_138 ldv_14779 ;
   unsigned long debug_flags ;
   int _last_nid ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_140 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_139 {
   struct __anonstruct_linear_140 linear ;
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
   union __anonunion_shared_139 shared ;
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
struct __anonstruct_ldv_17538_142 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_17539_141 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_17538_142 ldv_17538 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_17539_141 ldv_17539 ;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
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
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_21360_149 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_21360_149 ldv_21360 ;
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
struct usb_device_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 bcdUSB ;
   __u8 bDeviceClass ;
   __u8 bDeviceSubClass ;
   __u8 bDeviceProtocol ;
   __u8 bMaxPacketSize0 ;
   __le16 idVendor ;
   __le16 idProduct ;
   __le16 bcdDevice ;
   __u8 iManufacturer ;
   __u8 iProduct ;
   __u8 iSerialNumber ;
   __u8 bNumConfigurations ;
};
struct usb_config_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumInterfaces ;
   __u8 bConfigurationValue ;
   __u8 iConfiguration ;
   __u8 bmAttributes ;
   __u8 bMaxPower ;
};
struct usb_interface_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bInterfaceNumber ;
   __u8 bAlternateSetting ;
   __u8 bNumEndpoints ;
   __u8 bInterfaceClass ;
   __u8 bInterfaceSubClass ;
   __u8 bInterfaceProtocol ;
   __u8 iInterface ;
};
struct usb_endpoint_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bEndpointAddress ;
   __u8 bmAttributes ;
   __le16 wMaxPacketSize ;
   __u8 bInterval ;
   __u8 bRefresh ;
   __u8 bSynchAddress ;
};
struct usb_ss_ep_comp_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bMaxBurst ;
   __u8 bmAttributes ;
   __le16 wBytesPerInterval ;
};
struct usb_interface_assoc_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bFirstInterface ;
   __u8 bInterfaceCount ;
   __u8 bFunctionClass ;
   __u8 bFunctionSubClass ;
   __u8 bFunctionProtocol ;
   __u8 iFunction ;
};
struct usb_bos_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __le16 wTotalLength ;
   __u8 bNumDeviceCaps ;
};
struct usb_ext_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __le32 bmAttributes ;
};
struct usb_ss_cap_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bmAttributes ;
   __le16 wSpeedSupported ;
   __u8 bFunctionalitySupport ;
   __u8 bU1devExitLat ;
   __le16 bU2DevExitLat ;
};
struct usb_ss_container_id_descriptor {
   __u8 bLength ;
   __u8 bDescriptorType ;
   __u8 bDevCapabilityType ;
   __u8 bReserved ;
   __u8 ContainerID[16U] ;
};
enum usb_device_speed {
    USB_SPEED_UNKNOWN = 0,
    USB_SPEED_LOW = 1,
    USB_SPEED_FULL = 2,
    USB_SPEED_HIGH = 3,
    USB_SPEED_WIRELESS = 4,
    USB_SPEED_SUPER = 5
} ;
enum usb_device_state {
    USB_STATE_NOTATTACHED = 0,
    USB_STATE_ATTACHED = 1,
    USB_STATE_POWERED = 2,
    USB_STATE_RECONNECTING = 3,
    USB_STATE_UNAUTHENTICATED = 4,
    USB_STATE_DEFAULT = 5,
    USB_STATE_ADDRESS = 6,
    USB_STATE_CONFIGURED = 7,
    USB_STATE_SUSPENDED = 8
} ;
enum usb3_link_state {
    USB3_LPM_U0 = 0,
    USB3_LPM_U1 = 1,
    USB3_LPM_U2 = 2,
    USB3_LPM_U3 = 3
} ;
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
struct __anonstruct_ldv_23037_152 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_23039_151 {
   struct __anonstruct_ldv_23037_152 ldv_23037 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_23039_151 ldv_23039 ;
   unsigned char const *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_153 {
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
   union __anonunion_d_u_153 d_u ;
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
struct export_operations;
struct iovec;
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
union __anonunion_ldv_24043_155 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_24043_155 ldv_24043 ;
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
union __anonunion_arg_157 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_156 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_157 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_156 read_descriptor_t;
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
union __anonunion_ldv_24477_158 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_24497_159 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_24513_160 {
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
   union __anonunion_ldv_24477_158 ldv_24477 ;
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
   union __anonunion_ldv_24497_159 ldv_24497 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_24513_160 ldv_24513 ;
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
union __anonunion_f_u_161 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_161 f_u ;
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
struct fasync_struct;
struct __anonstruct_afs_163 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_162 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_163 afs ;
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
   union __anonunion_fl_u_162 fl_u ;
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
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_164 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_164 sigset_t;
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
struct __anonstruct__kill_166 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_167 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_168 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_169 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_170 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_171 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_172 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_165 {
   int _pad[28U] ;
   struct __anonstruct__kill_166 _kill ;
   struct __anonstruct__timer_167 _timer ;
   struct __anonstruct__rt_168 _rt ;
   struct __anonstruct__sigchld_169 _sigchld ;
   struct __anonstruct__sigfault_170 _sigfault ;
   struct __anonstruct__sigpoll_171 _sigpoll ;
   struct __anonstruct__sigsys_172 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_165 _sifields ;
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
union __anonunion_ldv_27185_175 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_27194_176 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_177 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_178 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_27185_175 ldv_27185 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_27194_176 ldv_27194 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_177 type_data ;
   union __anonunion_payload_178 payload ;
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
struct io_event {
   __u64 data ;
   __u64 obj ;
   __s64 res ;
   __s64 res2 ;
};
struct iovec {
   void *iov_base ;
   __kernel_size_t iov_len ;
};
struct kioctx;
union __anonunion_ki_obj_179 {
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
   union __anonunion_ki_obj_179 ki_obj ;
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
struct usb_device;
struct usb_driver;
struct wusb_dev;
struct ep_device;
struct usb_host_endpoint {
   struct usb_endpoint_descriptor desc ;
   struct usb_ss_ep_comp_descriptor ss_ep_comp ;
   struct list_head urb_list ;
   void *hcpriv ;
   struct ep_device *ep_dev ;
   unsigned char *extra ;
   int extralen ;
   int enabled ;
};
struct usb_host_interface {
   struct usb_interface_descriptor desc ;
   int extralen ;
   unsigned char *extra ;
   struct usb_host_endpoint *endpoint ;
   char *string ;
};
enum usb_interface_condition {
    USB_INTERFACE_UNBOUND = 0,
    USB_INTERFACE_BINDING = 1,
    USB_INTERFACE_BOUND = 2,
    USB_INTERFACE_UNBINDING = 3
} ;
struct usb_interface {
   struct usb_host_interface *altsetting ;
   struct usb_host_interface *cur_altsetting ;
   unsigned int num_altsetting ;
   struct usb_interface_assoc_descriptor *intf_assoc ;
   int minor ;
   enum usb_interface_condition condition ;
   unsigned char sysfs_files_created : 1 ;
   unsigned char ep_devs_created : 1 ;
   unsigned char unregistering : 1 ;
   unsigned char needs_remote_wakeup : 1 ;
   unsigned char needs_altsetting0 : 1 ;
   unsigned char needs_binding : 1 ;
   unsigned char reset_running : 1 ;
   unsigned char resetting_device : 1 ;
   struct device dev ;
   struct device *usb_dev ;
   atomic_t pm_usage_cnt ;
   struct work_struct reset_ws ;
};
struct usb_interface_cache {
   unsigned int num_altsetting ;
   struct kref ref ;
   struct usb_host_interface altsetting[0U] ;
};
struct usb_host_config {
   struct usb_config_descriptor desc ;
   char *string ;
   struct usb_interface_assoc_descriptor *intf_assoc[16U] ;
   struct usb_interface *interface[32U] ;
   struct usb_interface_cache *intf_cache[32U] ;
   unsigned char *extra ;
   int extralen ;
};
struct usb_host_bos {
   struct usb_bos_descriptor *desc ;
   struct usb_ext_cap_descriptor *ext_cap ;
   struct usb_ss_cap_descriptor *ss_cap ;
   struct usb_ss_container_id_descriptor *ss_id ;
};
struct usb_devmap {
   unsigned long devicemap[2U] ;
};
struct mon_bus;
struct usb_bus {
   struct device *controller ;
   int busnum ;
   char const *bus_name ;
   u8 uses_dma ;
   u8 uses_pio_for_control ;
   u8 otg_port ;
   unsigned char is_b_host : 1 ;
   unsigned char b_hnp_enable : 1 ;
   unsigned char no_stop_on_short : 1 ;
   unsigned int sg_tablesize ;
   int devnum_next ;
   struct usb_devmap devmap ;
   struct usb_device *root_hub ;
   struct usb_bus *hs_companion ;
   struct list_head bus_list ;
   int bandwidth_allocated ;
   int bandwidth_int_reqs ;
   int bandwidth_isoc_reqs ;
   struct mon_bus *mon_bus ;
   int monitored ;
};
struct usb_tt;
enum usb_device_removable {
    USB_DEVICE_REMOVABLE_UNKNOWN = 0,
    USB_DEVICE_REMOVABLE = 1,
    USB_DEVICE_FIXED = 2
} ;
struct usb3_lpm_parameters {
   unsigned int mel ;
   unsigned int pel ;
   unsigned int sel ;
   int timeout ;
};
struct usb_device {
   int devnum ;
   char devpath[16U] ;
   u32 route ;
   enum usb_device_state state ;
   enum usb_device_speed speed ;
   struct usb_tt *tt ;
   int ttport ;
   unsigned int toggle[2U] ;
   struct usb_device *parent ;
   struct usb_bus *bus ;
   struct usb_host_endpoint ep0 ;
   struct device dev ;
   struct usb_device_descriptor descriptor ;
   struct usb_host_bos *bos ;
   struct usb_host_config *config ;
   struct usb_host_config *actconfig ;
   struct usb_host_endpoint *ep_in[16U] ;
   struct usb_host_endpoint *ep_out[16U] ;
   char **rawdescriptors ;
   unsigned short bus_mA ;
   u8 portnum ;
   u8 level ;
   unsigned char can_submit : 1 ;
   unsigned char persist_enabled : 1 ;
   unsigned char have_langid : 1 ;
   unsigned char authorized : 1 ;
   unsigned char authenticated : 1 ;
   unsigned char wusb : 1 ;
   unsigned char lpm_capable : 1 ;
   unsigned char usb2_hw_lpm_capable : 1 ;
   unsigned char usb2_hw_lpm_enabled : 1 ;
   unsigned char usb3_lpm_enabled : 1 ;
   int string_langid ;
   char *product ;
   char *manufacturer ;
   char *serial ;
   struct list_head filelist ;
   int maxchild ;
   u32 quirks ;
   atomic_t urbnum ;
   unsigned long active_duration ;
   unsigned long connect_time ;
   unsigned char do_remote_wakeup : 1 ;
   unsigned char reset_resume : 1 ;
   unsigned char port_is_suspended : 1 ;
   struct wusb_dev *wusb_dev ;
   int slot_id ;
   enum usb_device_removable removable ;
   struct usb3_lpm_parameters u1_params ;
   struct usb3_lpm_parameters u2_params ;
   unsigned int lpm_disable_count ;
};
struct usb_dynids {
   spinlock_t lock ;
   struct list_head list ;
};
struct usbdrv_wrap {
   struct device_driver driver ;
   int for_devices ;
};
struct usb_driver {
   char const *name ;
   int (*probe)(struct usb_interface * , struct usb_device_id const * ) ;
   void (*disconnect)(struct usb_interface * ) ;
   int (*unlocked_ioctl)(struct usb_interface * , unsigned int , void * ) ;
   int (*suspend)(struct usb_interface * , pm_message_t ) ;
   int (*resume)(struct usb_interface * ) ;
   int (*reset_resume)(struct usb_interface * ) ;
   int (*pre_reset)(struct usb_interface * ) ;
   int (*post_reset)(struct usb_interface * ) ;
   struct usb_device_id const *id_table ;
   struct usb_dynids dynids ;
   struct usbdrv_wrap drvwrap ;
   unsigned char no_dynamic_id : 1 ;
   unsigned char supports_autosuspend : 1 ;
   unsigned char disable_hub_initiated_lpm : 1 ;
   unsigned char soft_unbind : 1 ;
};
struct usb_iso_packet_descriptor {
   unsigned int offset ;
   unsigned int length ;
   unsigned int actual_length ;
   int status ;
};
struct urb;
struct usb_anchor {
   struct list_head urb_list ;
   wait_queue_head_t wait ;
   spinlock_t lock ;
   unsigned char poisoned : 1 ;
};
struct urb {
   struct kref kref ;
   void *hcpriv ;
   atomic_t use_count ;
   atomic_t reject ;
   int unlinked ;
   struct list_head urb_list ;
   struct list_head anchor_list ;
   struct usb_anchor *anchor ;
   struct usb_device *dev ;
   struct usb_host_endpoint *ep ;
   unsigned int pipe ;
   unsigned int stream_id ;
   int status ;
   unsigned int transfer_flags ;
   void *transfer_buffer ;
   dma_addr_t transfer_dma ;
   struct scatterlist *sg ;
   int num_mapped_sgs ;
   int num_sgs ;
   u32 transfer_buffer_length ;
   u32 actual_length ;
   unsigned char *setup_packet ;
   dma_addr_t setup_dma ;
   int start_frame ;
   int number_of_packets ;
   int interval ;
   int error_count ;
   void *context ;
   void (*complete)(struct urb * ) ;
   struct usb_iso_packet_descriptor iso_frame_desc[0U] ;
};
struct hc_driver;
struct usb_phy;
struct usb_hcd {
   struct usb_bus self ;
   struct kref kref ;
   char const *product_desc ;
   int speed ;
   char irq_descr[24U] ;
   struct timer_list rh_timer ;
   struct urb *status_urb ;
   struct work_struct wakeup_work ;
   struct hc_driver const *driver ;
   struct usb_phy *phy ;
   unsigned long flags ;
   unsigned char rh_registered : 1 ;
   unsigned char rh_pollable : 1 ;
   unsigned char msix_enabled : 1 ;
   unsigned char uses_new_polling : 1 ;
   unsigned char wireless : 1 ;
   unsigned char authorized_default : 1 ;
   unsigned char has_tt : 1 ;
   unsigned int irq ;
   void *regs ;
   resource_size_t rsrc_start ;
   resource_size_t rsrc_len ;
   unsigned int power_budget ;
   struct mutex *bandwidth_mutex ;
   struct usb_hcd *shared_hcd ;
   struct usb_hcd *primary_hcd ;
   struct dma_pool *pool[4U] ;
   int state ;
   unsigned long hcd_priv[0U] ;
};
struct hc_driver {
   char const *description ;
   char const *product_desc ;
   size_t hcd_priv_size ;
   irqreturn_t (*irq)(struct usb_hcd * ) ;
   int flags ;
   int (*reset)(struct usb_hcd * ) ;
   int (*start)(struct usb_hcd * ) ;
   int (*pci_suspend)(struct usb_hcd * , bool ) ;
   int (*pci_resume)(struct usb_hcd * , bool ) ;
   void (*stop)(struct usb_hcd * ) ;
   void (*shutdown)(struct usb_hcd * ) ;
   int (*get_frame_number)(struct usb_hcd * ) ;
   int (*urb_enqueue)(struct usb_hcd * , struct urb * , gfp_t ) ;
   int (*urb_dequeue)(struct usb_hcd * , struct urb * , int ) ;
   int (*map_urb_for_dma)(struct usb_hcd * , struct urb * , gfp_t ) ;
   void (*unmap_urb_for_dma)(struct usb_hcd * , struct urb * ) ;
   void (*endpoint_disable)(struct usb_hcd * , struct usb_host_endpoint * ) ;
   void (*endpoint_reset)(struct usb_hcd * , struct usb_host_endpoint * ) ;
   int (*hub_status_data)(struct usb_hcd * , char * ) ;
   int (*hub_control)(struct usb_hcd * , u16 , u16 , u16 , char * , u16 ) ;
   int (*bus_suspend)(struct usb_hcd * ) ;
   int (*bus_resume)(struct usb_hcd * ) ;
   int (*start_port_reset)(struct usb_hcd * , unsigned int ) ;
   void (*relinquish_port)(struct usb_hcd * , int ) ;
   int (*port_handed_over)(struct usb_hcd * , int ) ;
   void (*clear_tt_buffer_complete)(struct usb_hcd * , struct usb_host_endpoint * ) ;
   int (*alloc_dev)(struct usb_hcd * , struct usb_device * ) ;
   void (*free_dev)(struct usb_hcd * , struct usb_device * ) ;
   int (*alloc_streams)(struct usb_hcd * , struct usb_device * , struct usb_host_endpoint ** ,
                        unsigned int , unsigned int , gfp_t ) ;
   int (*free_streams)(struct usb_hcd * , struct usb_device * , struct usb_host_endpoint ** ,
                       unsigned int , gfp_t ) ;
   int (*add_endpoint)(struct usb_hcd * , struct usb_device * , struct usb_host_endpoint * ) ;
   int (*drop_endpoint)(struct usb_hcd * , struct usb_device * , struct usb_host_endpoint * ) ;
   int (*check_bandwidth)(struct usb_hcd * , struct usb_device * ) ;
   void (*reset_bandwidth)(struct usb_hcd * , struct usb_device * ) ;
   int (*address_device)(struct usb_hcd * , struct usb_device * ) ;
   int (*update_hub_device)(struct usb_hcd * , struct usb_device * , struct usb_tt * ,
                            gfp_t ) ;
   int (*reset_device)(struct usb_hcd * , struct usb_device * ) ;
   int (*update_device)(struct usb_hcd * , struct usb_device * ) ;
   int (*set_usb2_hw_lpm)(struct usb_hcd * , struct usb_device * , int ) ;
   int (*enable_usb3_lpm_timeout)(struct usb_hcd * , struct usb_device * , enum usb3_link_state ) ;
   int (*disable_usb3_lpm_timeout)(struct usb_hcd * , struct usb_device * , enum usb3_link_state ) ;
};
struct usb_tt {
   struct usb_device *hub ;
   int multi ;
   unsigned int think_time ;
   spinlock_t lock ;
   struct list_head clear_list ;
   struct work_struct clear_work ;
};
struct xhci_cap_regs {
   __le32 hc_capbase ;
   __le32 hcs_params1 ;
   __le32 hcs_params2 ;
   __le32 hcs_params3 ;
   __le32 hcc_params ;
   __le32 db_off ;
   __le32 run_regs_off ;
};
struct xhci_op_regs {
   __le32 command ;
   __le32 status ;
   __le32 page_size ;
   __le32 reserved1 ;
   __le32 reserved2 ;
   __le32 dev_notification ;
   __le64 cmd_ring ;
   __le32 reserved3[4U] ;
   __le64 dcbaa_ptr ;
   __le32 config_reg ;
   __le32 reserved4[241U] ;
   __le32 port_status_base ;
   __le32 port_power_base ;
   __le32 port_link_base ;
   __le32 reserved5 ;
   __le32 reserved6[1016U] ;
};
struct xhci_intr_reg {
   __le32 irq_pending ;
   __le32 irq_control ;
   __le32 erst_size ;
   __le32 rsvd ;
   __le64 erst_base ;
   __le64 erst_dequeue ;
};
struct xhci_run_regs {
   __le32 microframe_index ;
   __le32 rsvd[7U] ;
   struct xhci_intr_reg ir_set[128U] ;
};
struct xhci_doorbell_array {
   __le32 doorbell[256U] ;
};
struct xhci_container_ctx {
   unsigned int type ;
   int size ;
   u8 *bytes ;
   dma_addr_t dma ;
};
struct xhci_slot_ctx {
   __le32 dev_info ;
   __le32 dev_info2 ;
   __le32 tt_info ;
   __le32 dev_state ;
   __le32 reserved[4U] ;
};
struct xhci_ep_ctx {
   __le32 ep_info ;
   __le32 ep_info2 ;
   __le64 deq ;
   __le32 tx_info ;
   __le32 reserved[3U] ;
};
struct xhci_input_control_ctx {
   __le32 drop_flags ;
   __le32 add_flags ;
   __le32 rsvd2[6U] ;
};
union xhci_trb;
struct xhci_command {
   struct xhci_container_ctx *in_ctx ;
   u32 status ;
   struct completion *completion ;
   union xhci_trb *command_trb ;
   struct list_head cmd_list ;
};
struct xhci_stream_ctx {
   __le64 stream_ring ;
   __le32 reserved[2U] ;
};
struct xhci_ring;
struct xhci_stream_info {
   struct xhci_ring **stream_rings ;
   unsigned int num_streams ;
   struct xhci_stream_ctx *stream_ctx_array ;
   unsigned int num_stream_ctxs ;
   dma_addr_t ctx_array_dma ;
   struct radix_tree_root trb_address_map ;
   struct xhci_command *free_streams_command ;
};
struct xhci_bw_info {
   unsigned int ep_interval ;
   unsigned int mult ;
   unsigned int num_packets ;
   unsigned int max_packet_size ;
   unsigned int max_esit_payload ;
   unsigned int type ;
};
struct xhci_td;
struct xhci_hcd;
struct xhci_segment;
struct xhci_virt_ep {
   struct xhci_ring *ring ;
   struct xhci_stream_info *stream_info ;
   struct xhci_ring *new_ring ;
   unsigned int ep_state ;
   struct list_head cancelled_td_list ;
   union xhci_trb *stopped_trb ;
   struct xhci_td *stopped_td ;
   unsigned int stopped_stream ;
   struct timer_list stop_cmd_timer ;
   int stop_cmds_pending ;
   struct xhci_hcd *xhci ;
   struct xhci_segment *queued_deq_seg ;
   union xhci_trb *queued_deq_ptr ;
   bool skip ;
   struct xhci_bw_info bw_info ;
   struct list_head bw_endpoint_list ;
};
struct xhci_interval_bw {
   unsigned int num_packets ;
   struct list_head endpoints ;
   unsigned int overhead[3U] ;
};
struct xhci_interval_bw_table {
   unsigned int interval0_esit_payload ;
   struct xhci_interval_bw interval_bw[16U] ;
   unsigned int bw_used ;
   unsigned int ss_bw_in ;
   unsigned int ss_bw_out ;
};
struct xhci_tt_bw_info;
struct xhci_virt_device {
   struct usb_device *udev ;
   struct xhci_container_ctx *out_ctx ;
   struct xhci_container_ctx *in_ctx ;
   struct xhci_ring **ring_cache ;
   int num_rings_cached ;
   int address ;
   struct xhci_virt_ep eps[31U] ;
   struct completion cmd_completion ;
   u32 cmd_status ;
   struct list_head cmd_list ;
   u8 fake_port ;
   u8 real_port ;
   struct xhci_interval_bw_table *bw_table ;
   struct xhci_tt_bw_info *tt_info ;
   u16 current_mel ;
};
struct xhci_root_port_bw_info {
   struct list_head tts ;
   unsigned int num_active_tts ;
   struct xhci_interval_bw_table bw_table ;
};
struct xhci_tt_bw_info {
   struct list_head tt_list ;
   int slot_id ;
   int ttport ;
   struct xhci_interval_bw_table bw_table ;
   int active_eps ;
};
struct xhci_device_context_array {
   __le64 dev_context_ptrs[256U] ;
   dma_addr_t dma ;
};
struct xhci_transfer_event {
   __le64 buffer ;
   __le32 transfer_len ;
   __le32 flags ;
};
struct xhci_link_trb {
   __le64 segment_ptr ;
   __le32 intr_target ;
   __le32 control ;
};
struct xhci_event_cmd {
   __le64 cmd_trb ;
   __le32 status ;
   __le32 flags ;
};
struct xhci_generic_trb {
   __le32 field[4U] ;
};
union xhci_trb {
   struct xhci_link_trb link ;
   struct xhci_transfer_event trans_event ;
   struct xhci_event_cmd event_cmd ;
   struct xhci_generic_trb generic ;
};
struct xhci_segment {
   union xhci_trb *trbs ;
   struct xhci_segment *next ;
   dma_addr_t dma ;
};
struct xhci_td {
   struct list_head td_list ;
   struct list_head cancelled_td_list ;
   struct urb *urb ;
   struct xhci_segment *start_seg ;
   union xhci_trb *first_trb ;
   union xhci_trb *last_trb ;
};
struct xhci_dequeue_state {
   struct xhci_segment *new_deq_seg ;
   union xhci_trb *new_deq_ptr ;
   int new_cycle_state ;
};
enum xhci_ring_type {
    TYPE_CTRL = 0,
    TYPE_ISOC = 1,
    TYPE_BULK = 2,
    TYPE_INTR = 3,
    TYPE_STREAM = 4,
    TYPE_COMMAND = 5,
    TYPE_EVENT = 6
} ;
struct xhci_ring {
   struct xhci_segment *first_seg ;
   struct xhci_segment *last_seg ;
   union xhci_trb *enqueue ;
   struct xhci_segment *enq_seg ;
   unsigned int enq_updates ;
   union xhci_trb *dequeue ;
   struct xhci_segment *deq_seg ;
   unsigned int deq_updates ;
   struct list_head td_list ;
   u32 cycle_state ;
   unsigned int stream_id ;
   unsigned int num_segs ;
   unsigned int num_trbs_free ;
   unsigned int num_trbs_free_temp ;
   enum xhci_ring_type type ;
   bool last_td_was_short ;
};
struct xhci_erst_entry {
   __le64 seg_addr ;
   __le32 seg_size ;
   __le32 rsvd ;
};
struct xhci_erst {
   struct xhci_erst_entry *entries ;
   unsigned int num_entries ;
   dma_addr_t erst_dma_addr ;
   unsigned int erst_size ;
};
struct xhci_scratchpad {
   u64 *sp_array ;
   dma_addr_t sp_dma ;
   void **sp_buffers ;
   dma_addr_t *sp_dma_buffers ;
};
struct urb_priv {
   int length ;
   int td_cnt ;
   struct xhci_td *td[0U] ;
};
struct s3_save {
   u32 command ;
   u32 dev_nt ;
   u64 dcbaa_ptr ;
   u32 config_reg ;
   u32 irq_pending ;
   u32 irq_control ;
   u32 erst_size ;
   u64 erst_base ;
   u64 erst_dequeue ;
};
struct dev_info {
   u32 dev_id ;
   struct list_head list ;
};
struct xhci_bus_state {
   unsigned long bus_suspended ;
   unsigned long next_statechange ;
   u32 port_c_suspend ;
   u32 suspended_ports ;
   u32 port_remote_wakeup ;
   unsigned long resume_done[31U] ;
   unsigned long resuming_ports ;
};
struct xhci_hcd {
   struct usb_hcd *main_hcd ;
   struct usb_hcd *shared_hcd ;
   struct xhci_cap_regs *cap_regs ;
   struct xhci_op_regs *op_regs ;
   struct xhci_run_regs *run_regs ;
   struct xhci_doorbell_array *dba ;
   struct xhci_intr_reg *ir_set ;
   __u32 hcs_params1 ;
   __u32 hcs_params2 ;
   __u32 hcs_params3 ;
   __u32 hcc_params ;
   spinlock_t lock ;
   u8 sbrn ;
   u16 hci_version ;
   u8 max_slots ;
   u8 max_interrupters ;
   u8 max_ports ;
   u8 isoc_threshold ;
   int event_ring_max ;
   int addr_64 ;
   int page_size ;
   int page_shift ;
   int msix_count ;
   struct msix_entry *msix_entries ;
   struct xhci_device_context_array *dcbaa ;
   struct xhci_ring *cmd_ring ;
   unsigned int cmd_ring_state ;
   struct list_head cancel_cmd_list ;
   unsigned int cmd_ring_reserved_trbs ;
   struct xhci_ring *event_ring ;
   struct xhci_erst erst ;
   struct xhci_scratchpad *scratchpad ;
   struct list_head lpm_failed_devs ;
   struct completion addr_dev ;
   int slot_id ;
   struct xhci_command *lpm_command ;
   struct xhci_virt_device *devs[256U] ;
   struct xhci_root_port_bw_info *rh_bw ;
   struct dma_pool *device_pool ;
   struct dma_pool *segment_pool ;
   struct dma_pool *small_streams_pool ;
   struct dma_pool *medium_streams_pool ;
   struct timer_list event_ring_timer ;
   int zombie ;
   unsigned int xhc_state ;
   u32 command ;
   struct s3_save s3 ;
   int error_bitmask ;
   unsigned int quirks ;
   unsigned int num_active_eps ;
   unsigned int limit_active_eps ;
   struct xhci_bus_state bus_state[2U] ;
   u8 *port_array ;
   __le32 **usb3_ports ;
   unsigned int num_usb3_ports ;
   __le32 **usb2_ports ;
   unsigned int num_usb2_ports ;
   unsigned char sw_lpm_support : 1 ;
   unsigned char hw_lpm_support : 1 ;
   struct timer_list comp_mode_recovery_timer ;
   u32 port_status_u0 ;
};
typedef int ldv_func_ret_type___2;
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
enum hrtimer_restart;
struct xhci_cd {
   struct list_head cancel_cmd_list ;
   struct xhci_command *command ;
   union xhci_trb *cmd_trb ;
};
struct __anonstruct_simple_test_vector_180 {
   dma_addr_t input_dma ;
   struct xhci_segment *result_seg ;
};
struct __anonstruct_complex_test_vector_182 {
   struct xhci_segment *input_seg ;
   union xhci_trb *start_trb ;
   union xhci_trb *end_trb ;
   dma_addr_t input_dma ;
   struct xhci_segment *result_seg ;
};
enum hrtimer_restart;
struct usb_ctrlrequest {
   __u8 bRequestType ;
   __u8 bRequest ;
   __le16 wValue ;
   __le16 wIndex ;
   __le16 wLength ;
};
struct ratelimit_state {
   raw_spinlock_t lock ;
   int interval ;
   int burst ;
   int printed ;
   int missed ;
   unsigned long begin ;
};
enum hrtimer_restart;
struct __anonstruct_hs_174 {
   __u8 DeviceRemovable[4U] ;
   __u8 PortPwrCtrlMask[4U] ;
};
struct __anonstruct_ss_175 {
   __u8 bHubHdrDecLat ;
   __le16 wHubDelay ;
   __le16 DeviceRemovable ;
};
union __anonunion_u_173 {
   struct __anonstruct_hs_174 hs ;
   struct __anonstruct_ss_175 ss ;
};
struct usb_hub_descriptor {
   __u8 bDescLength ;
   __u8 bDescriptorType ;
   __u8 bNbrPorts ;
   __le16 wHubCharacteristics ;
   __u8 bPwrOn2PwrGood ;
   __u8 bHubContrCurrent ;
   union __anonunion_u_173 u ;
};
enum hrtimer_restart;
enum hrtimer_restart;
enum hrtimer_restart;
struct pdev_archdata {
};
struct platform_device_id {
   char name[20U] ;
   kernel_ulong_t driver_data ;
};
struct mfd_cell;
struct platform_device {
   char const *name ;
   int id ;
   bool id_auto ;
   struct device dev ;
   u32 num_resources ;
   struct resource *resource ;
   struct platform_device_id const *id_entry ;
   struct mfd_cell *mfd_cell ;
   struct pdev_archdata archdata ;
};
struct platform_driver {
   int (*probe)(struct platform_device * ) ;
   int (*remove)(struct platform_device * ) ;
   void (*shutdown)(struct platform_device * ) ;
   int (*suspend)(struct platform_device * , pm_message_t ) ;
   int (*resume)(struct platform_device * ) ;
   struct device_driver driver ;
   struct platform_device_id const *id_table ;
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
__inline static int fls(int x )
{
  int r ;
  {
  __asm__ ("bsrl %1,%0": "=r" (r): "rm" (x), "0" (-1));
  return (r + 1);
}
}
__inline static int fls64(__u64 x )
{
  int bitpos ;
  {
  bitpos = -1;
  __asm__ ("bsrq %1,%q0": "+r" (bitpos): "rm" (x));
  return (bitpos + 1);
}
}
__inline static unsigned int __arch_hweight32(unsigned int w )
{
  unsigned int res ;
  {
  res = 0U;
  __asm__ ("661:\n\tcall __sw_hweight32\n662:\n.pushsection .altinstructions,\"a\"\n .long 661b - .\n .long 6631f - .\n .word (4*32+23)\n .byte 662b-661b\n .byte 6641f-6631f\n.popsection\n.pushsection .discard,\"aw\",@progbits\n .byte 0xff + (6641f-6631f) - (662b-661b)\n.popsection\n.pushsection .altinstr_replacement, \"ax\"\n6631:\n\t.byte 0xf3,0x40,0x0f,0xb8,0xc7\n6641:\n\t.popsection": "=a" (res): "D" (w));
  return (res);
}
}
__inline static unsigned int fls_long(unsigned long l )
{
  int tmp___0 ;
  {
  tmp___0 = fls64((__u64 )l);
  return ((unsigned int )tmp___0);
}
}
__inline static unsigned long __roundup_pow_of_two(unsigned long n )
{
  unsigned int tmp ;
  {
  tmp = fls_long(n - 1UL);
  return (1UL << (int )tmp);
}
}
extern int printk(char const * , ...) ;
extern int __dynamic_dev_dbg(struct _ddebug * , struct device const * , char const *
                             , ...) ;
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
extern void __list_del_entry(struct list_head * ) ;
extern void list_del(struct list_head * ) ;
__inline static void list_del_init(struct list_head *entry )
{
  {
  __list_del_entry(entry);
  INIT_LIST_HEAD(entry);
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern void __bad_percpu_size(void) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern void *memset(void * , int , size_t ) ;
extern char *strstr(char const * , char const * ) ;
extern int __bitmap_weight(unsigned long const * , int ) ;
__inline static int bitmap_weight(unsigned long const *src , int nbits )
{
  int tmp___0 ;
  {
  tmp___0 = __bitmap_weight(src, nbits);
  return (tmp___0);
}
}
extern void warn_slowpath_null(char const * , int const ) ;
extern int nr_cpu_ids ;
extern struct cpumask const * const cpu_online_mask ;
__inline static unsigned int cpumask_weight(struct cpumask const *srcp )
{
  int tmp ;
  {
  tmp = bitmap_weight((unsigned long const *)(& srcp->bits), nr_cpu_ids);
  return ((unsigned int )tmp);
}
}
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
  goto ldv_6643;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6643;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6643;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6643;
  default:
  __bad_percpu_size();
  }
  ldv_6643:
  ti = (struct thread_info *)(pfo_ret__ - 8152UL);
  return (ti);
}
}
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
extern void _raw_spin_lock_irq(raw_spinlock_t * ) ;
extern unsigned long _raw_spin_lock_irqsave(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irq(raw_spinlock_t * ) ;
extern void _raw_spin_unlock_irqrestore(raw_spinlock_t * , unsigned long ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_5961.rlock);
}
}
__inline static void spin_lock_irq(spinlock_t *lock )
{
  {
  _raw_spin_lock_irq(& lock->ldv_5961.rlock);
  return;
}
}
__inline static void spin_unlock_irq(spinlock_t *lock )
{
  {
  _raw_spin_unlock_irq(& lock->ldv_5961.rlock);
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
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern unsigned long volatile jiffies ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern int mod_timer(struct timer_list * , unsigned long ) ;
extern void set_timer_slack(struct timer_list * , int ) ;
extern void add_timer(struct timer_list * ) ;
extern int del_timer_sync(struct timer_list * ) ;
__inline static void init_completion(struct completion *x )
{
  struct lock_class_key __key ;
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  return;
}
}
extern long wait_for_completion_interruptible_timeout(struct completion * , unsigned long ) ;
extern int dev_err(struct device const * , char const * , ...) ;
extern int dev_warn(struct device const * , char const * , ...) ;
extern int _dev_info(struct device const * , char const * , ...) ;
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
extern int pci_enable_msi_block(struct pci_dev * , unsigned int ) ;
extern void pci_disable_msi(struct pci_dev * ) ;
extern int pci_enable_msix(struct pci_dev * , struct msix_entry * , int ) ;
extern void pci_disable_msix(struct pci_dev * ) ;
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
extern int dma_set_mask(struct device * , u64 ) ;
extern char const *dmi_get_system_info(int ) ;
__inline static int usb_endpoint_num(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )epd->bEndpointAddress & 15);
}
}
__inline static int usb_endpoint_type(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )epd->bmAttributes & 3);
}
}
__inline static int usb_endpoint_dir_in(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )((signed char )epd->bEndpointAddress) < 0);
}
}
__inline static int usb_endpoint_xfer_bulk(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 2);
}
}
__inline static int usb_endpoint_xfer_control(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 0);
}
}
__inline static int usb_endpoint_xfer_int(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 3);
}
}
__inline static int usb_endpoint_xfer_isoc(struct usb_endpoint_descriptor const *epd )
{
  {
  return (((int )epd->bmAttributes & 3) == 1);
}
}
__inline static int usb_endpoint_maxp(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )epd->wMaxPacketSize);
}
}
__inline static int usb_endpoint_interrupt_type(struct usb_endpoint_descriptor const *epd )
{
  {
  return ((int )epd->bmAttributes & 48);
}
}
__inline static int usb_ss_max_streams(struct usb_ss_ep_comp_descriptor const *comp )
{
  int max_streams ;
  {
  if ((unsigned long )comp == (unsigned long )((struct usb_ss_ep_comp_descriptor const *)0)) {
    return (0);
  } else {
  }
  max_streams = (int )comp->bmAttributes & 31;
  if (max_streams == 0) {
    return (0);
  } else {
  }
  max_streams = 1 << max_streams;
  return (max_streams);
}
}
extern void __const_udelay(unsigned long ) ;
extern void msleep(unsigned int ) ;
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
extern int usb_hcd_check_unlink_urb(struct usb_hcd * , struct urb * , int ) ;
extern void usb_hcd_unlink_urb_from_ep(struct usb_hcd * , struct urb * ) ;
extern void usb_hcd_giveback_urb(struct usb_hcd * , struct urb * , int ) ;
extern int usb_hcd_is_primary_hcd(struct usb_hcd * ) ;
extern irqreturn_t usb_hcd_irq(int , void * ) ;
extern void usb_hcd_poll_rh_status(struct usb_hcd * ) ;
extern void usb_root_hub_lost_power(struct usb_device * ) ;
extern void usb_hcd_resume_root_hub(struct usb_hcd * ) ;
extern void usb_amd_dev_put(void) ;
extern void usb_disable_xhci_ports(struct pci_dev * ) ;
__inline static struct xhci_hcd *hcd_to_xhci(struct usb_hcd *hcd )
{
  {
  return (*((struct xhci_hcd **)(& hcd->hcd_priv)));
}
}
__inline static struct usb_hcd *xhci_to_hcd(struct xhci_hcd *xhci )
{
  {
  return (xhci->main_hcd);
}
}
__inline static unsigned int xhci_readl(struct xhci_hcd const *xhci , __le32 *regs )
{
  unsigned int tmp ;
  {
  tmp = readl((void const volatile *)regs);
  return (tmp);
}
}
__inline static void xhci_writel(struct xhci_hcd *xhci , unsigned int const val ,
                                 __le32 *regs )
{
  {
  writel(val, (void volatile *)regs);
  return;
}
}
__inline static u64 xhci_read_64(struct xhci_hcd const *xhci , __le64 *regs )
{
  __u32 *ptr ;
  u64 val_lo ;
  unsigned int tmp ;
  u64 val_hi ;
  unsigned int tmp___0 ;
  {
  ptr = (__u32 *)regs;
  tmp = readl((void const volatile *)ptr);
  val_lo = (u64 )tmp;
  tmp___0 = readl((void const volatile *)ptr + 1U);
  val_hi = (u64 )tmp___0;
  return ((val_hi << 32) + val_lo);
}
}
__inline static void xhci_write_64(struct xhci_hcd *xhci , u64 const val , __le64 *regs )
{
  __u32 *ptr ;
  u32 val_lo ;
  u32 val_hi ;
  {
  ptr = (__u32 *)regs;
  val_lo = (unsigned int )val;
  val_hi = (unsigned int )(val >> 32ULL);
  writel(val_lo, (void volatile *)ptr);
  writel(val_hi, (void volatile *)ptr + 1U);
  return;
}
}
void xhci_print_ir_set(struct xhci_hcd *xhci , int set_num ) ;
void xhci_print_registers(struct xhci_hcd *xhci ) ;
void xhci_debug_segment(struct xhci_hcd *xhci , struct xhci_segment *seg ) ;
void xhci_debug_ring(struct xhci_hcd *xhci , struct xhci_ring *ring ) ;
void xhci_dbg_erst(struct xhci_hcd *xhci , struct xhci_erst *erst ) ;
void xhci_dbg_cmd_ptrs(struct xhci_hcd *xhci ) ;
void xhci_dbg_ring_ptrs(struct xhci_hcd *xhci , struct xhci_ring *ring ) ;
void xhci_dbg_ctx(struct xhci_hcd *xhci , struct xhci_container_ctx *ctx , unsigned int last_ep ) ;
char *xhci_get_slot_state(struct xhci_hcd *xhci , struct xhci_container_ctx *ctx ) ;
void xhci_dbg_ep_rings(struct xhci_hcd *xhci , unsigned int slot_id , unsigned int ep_index ,
                       struct xhci_virt_ep *ep ) ;
void xhci_mem_cleanup(struct xhci_hcd *xhci ) ;
int xhci_mem_init(struct xhci_hcd *xhci , gfp_t flags ) ;
void xhci_free_virt_device(struct xhci_hcd *xhci , int slot_id ) ;
int xhci_alloc_virt_device(struct xhci_hcd *xhci , int slot_id , struct usb_device *udev ,
                           gfp_t flags ) ;
int xhci_setup_addressable_virt_dev(struct xhci_hcd *xhci , struct usb_device *udev ) ;
void xhci_copy_ep0_dequeue_into_input_ctx(struct xhci_hcd *xhci , struct usb_device *udev ) ;
unsigned int xhci_get_endpoint_index(struct usb_endpoint_descriptor *desc ) ;
unsigned int xhci_get_endpoint_flag(struct usb_endpoint_descriptor *desc ) ;
unsigned int xhci_get_endpoint_flag_from_index(unsigned int ep_index ) ;
unsigned int xhci_last_valid_endpoint(u32 added_ctxs ) ;
void xhci_endpoint_zero(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                        struct usb_host_endpoint *ep ) ;
void xhci_drop_ep_from_interval_table(struct xhci_hcd *xhci , struct xhci_bw_info *ep_bw ,
                                      struct xhci_interval_bw_table *bw_table , struct usb_device *udev ,
                                      struct xhci_virt_ep *virt_ep , struct xhci_tt_bw_info *tt_info ) ;
void xhci_update_tt_active_eps(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                               int old_active_eps ) ;
void xhci_clear_endpoint_bw_info(struct xhci_bw_info *bw_info ) ;
void xhci_update_bw_info(struct xhci_hcd *xhci , struct xhci_container_ctx *in_ctx ,
                         struct xhci_input_control_ctx *ctrl_ctx , struct xhci_virt_device *virt_dev ) ;
void xhci_endpoint_copy(struct xhci_hcd *xhci , struct xhci_container_ctx *in_ctx ,
                        struct xhci_container_ctx *out_ctx , unsigned int ep_index ) ;
void xhci_slot_copy(struct xhci_hcd *xhci , struct xhci_container_ctx *in_ctx , struct xhci_container_ctx *out_ctx ) ;
int xhci_endpoint_init(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                       struct usb_device *udev , struct usb_host_endpoint *ep , gfp_t mem_flags ) ;
void xhci_ring_free(struct xhci_hcd *xhci , struct xhci_ring *ring ) ;
void xhci_free_or_cache_endpoint_ring(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                                      unsigned int ep_index ) ;
struct xhci_stream_info *xhci_alloc_stream_info(struct xhci_hcd *xhci , unsigned int num_stream_ctxs ,
                                                unsigned int num_streams , gfp_t mem_flags ) ;
void xhci_free_stream_info(struct xhci_hcd *xhci , struct xhci_stream_info *stream_info ) ;
void xhci_setup_streams_ep_input_ctx(struct xhci_hcd *xhci , struct xhci_ep_ctx *ep_ctx ,
                                     struct xhci_stream_info *stream_info ) ;
void xhci_setup_no_streams_ep_input_ctx(struct xhci_hcd *xhci , struct xhci_ep_ctx *ep_ctx ,
                                        struct xhci_virt_ep *ep ) ;
void xhci_free_device_endpoint_resources(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                                         bool drop_control_ep ) ;
struct xhci_command *xhci_alloc_command(struct xhci_hcd *xhci , bool allocate_in_ctx ,
                                        bool allocate_completion , gfp_t mem_flags ) ;
void xhci_urb_free_priv(struct xhci_hcd *xhci , struct urb_priv *urb_priv ) ;
void xhci_free_command(struct xhci_hcd *xhci , struct xhci_command *command ) ;
int xhci_register_pci(void) ;
void xhci_unregister_pci(void) ;
int xhci_register_plat(void) ;
void xhci_unregister_plat(void) ;
int xhci_handshake(struct xhci_hcd *xhci , void *ptr , u32 mask , u32 done , int usec ) ;
void xhci_quiesce(struct xhci_hcd *xhci ) ;
int xhci_halt(struct xhci_hcd *xhci ) ;
int xhci_reset(struct xhci_hcd *xhci ) ;
int xhci_init(struct usb_hcd *hcd ) ;
int xhci_run(struct usb_hcd *hcd ) ;
void xhci_stop(struct usb_hcd *hcd ) ;
void xhci_shutdown(struct usb_hcd *hcd ) ;
int xhci_gen_setup(struct usb_hcd *hcd , void (*get_quirks)(struct device * , struct xhci_hcd * ) ) ;
int xhci_suspend(struct xhci_hcd *xhci ) ;
int xhci_resume(struct xhci_hcd *xhci , bool hibernated ) ;
int xhci_get_frame(struct usb_hcd *hcd ) ;
irqreturn_t xhci_msi_irq(int irq , struct usb_hcd *hcd ) ;
int xhci_alloc_dev(struct usb_hcd *hcd , struct usb_device *udev ) ;
void xhci_free_dev(struct usb_hcd *hcd , struct usb_device *udev ) ;
int xhci_alloc_tt_info(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                       struct usb_device *hdev , struct usb_tt *tt , gfp_t mem_flags ) ;
int xhci_alloc_streams(struct usb_hcd *hcd , struct usb_device *udev , struct usb_host_endpoint **eps ,
                       unsigned int num_eps , unsigned int num_streams , gfp_t mem_flags ) ;
int xhci_free_streams(struct usb_hcd *hcd , struct usb_device *udev , struct usb_host_endpoint **eps ,
                      unsigned int num_eps , gfp_t mem_flags ) ;
int xhci_address_device(struct usb_hcd *hcd , struct usb_device *udev ) ;
int xhci_update_device(struct usb_hcd *hcd , struct usb_device *udev ) ;
int xhci_set_usb2_hardware_lpm(struct usb_hcd *hcd , struct usb_device *udev , int enable ) ;
int xhci_update_hub_device(struct usb_hcd *hcd , struct usb_device *hdev , struct usb_tt *tt ,
                           gfp_t mem_flags ) ;
int xhci_urb_enqueue(struct usb_hcd *hcd , struct urb *urb , gfp_t mem_flags ) ;
int xhci_urb_dequeue(struct usb_hcd *hcd , struct urb *urb , int status ) ;
int xhci_add_endpoint(struct usb_hcd *hcd , struct usb_device *udev , struct usb_host_endpoint *ep ) ;
int xhci_drop_endpoint(struct usb_hcd *hcd , struct usb_device *udev , struct usb_host_endpoint *ep ) ;
void xhci_endpoint_reset(struct usb_hcd *hcd , struct usb_host_endpoint *ep ) ;
int xhci_discover_or_reset_device(struct usb_hcd *hcd , struct usb_device *udev ) ;
int xhci_check_bandwidth(struct usb_hcd *hcd , struct usb_device *udev ) ;
void xhci_reset_bandwidth(struct usb_hcd *hcd , struct usb_device *udev ) ;
dma_addr_t xhci_trb_virt_to_dma(struct xhci_segment *seg , union xhci_trb *trb ) ;
int xhci_is_vendor_info_code(struct xhci_hcd *xhci , unsigned int trb_comp_code ) ;
void xhci_ring_cmd_db(struct xhci_hcd *xhci ) ;
int xhci_queue_slot_control(struct xhci_hcd *xhci , u32 trb_type , u32 slot_id ) ;
int xhci_queue_address_device(struct xhci_hcd *xhci , dma_addr_t in_ctx_ptr , u32 slot_id ) ;
int xhci_queue_vendor_command(struct xhci_hcd *xhci , u32 field1 , u32 field2 , u32 field3 ,
                              u32 field4 ) ;
int xhci_queue_stop_endpoint(struct xhci_hcd *xhci , int slot_id , unsigned int ep_index ,
                             int suspend ) ;
int xhci_queue_ctrl_tx(struct xhci_hcd *xhci , gfp_t mem_flags , struct urb *urb ,
                       int slot_id , unsigned int ep_index ) ;
int xhci_queue_bulk_tx(struct xhci_hcd *xhci , gfp_t mem_flags , struct urb *urb ,
                       int slot_id , unsigned int ep_index ) ;
int xhci_queue_intr_tx(struct xhci_hcd *xhci , gfp_t mem_flags , struct urb *urb ,
                       int slot_id , unsigned int ep_index ) ;
int xhci_queue_isoc_tx_prepare(struct xhci_hcd *xhci , gfp_t mem_flags , struct urb *urb ,
                               int slot_id , unsigned int ep_index ) ;
int xhci_queue_configure_endpoint(struct xhci_hcd *xhci , dma_addr_t in_ctx_ptr ,
                                  u32 slot_id , bool command_must_succeed ) ;
int xhci_queue_evaluate_context(struct xhci_hcd *xhci , dma_addr_t in_ctx_ptr , u32 slot_id ,
                                bool command_must_succeed ) ;
int xhci_queue_reset_ep(struct xhci_hcd *xhci , int slot_id , unsigned int ep_index ) ;
int xhci_queue_reset_device(struct xhci_hcd *xhci , u32 slot_id ) ;
void xhci_find_new_dequeue_state(struct xhci_hcd *xhci , unsigned int slot_id , unsigned int ep_index ,
                                 unsigned int stream_id , struct xhci_td *cur_td ,
                                 struct xhci_dequeue_state *state ) ;
void xhci_queue_new_dequeue_state(struct xhci_hcd *xhci , unsigned int slot_id , unsigned int ep_index ,
                                  unsigned int stream_id , struct xhci_dequeue_state *deq_state ) ;
void xhci_cleanup_stalled_ring(struct xhci_hcd *xhci , struct usb_device *udev , unsigned int ep_index ) ;
int xhci_cancel_cmd(struct xhci_hcd *xhci , struct xhci_command *command , union xhci_trb *cmd_trb ) ;
void xhci_set_link_state(struct xhci_hcd *xhci , __le32 **port_array , int port_id ,
                         u32 link_state ) ;
int xhci_enable_usb3_lpm_timeout(struct usb_hcd *hcd , struct usb_device *udev , enum usb3_link_state state ) ;
int xhci_disable_usb3_lpm_timeout(struct usb_hcd *hcd , struct usb_device *udev ,
                                  enum usb3_link_state state ) ;
void xhci_test_and_clear_bit(struct xhci_hcd *xhci , __le32 **port_array , int port_id ,
                             u32 port_bit ) ;
void xhci_ring_device(struct xhci_hcd *xhci , int slot_id ) ;
struct xhci_input_control_ctx *xhci_get_input_control_ctx(struct xhci_hcd *xhci ,
                                                          struct xhci_container_ctx *ctx ) ;
struct xhci_slot_ctx *xhci_get_slot_ctx(struct xhci_hcd *xhci , struct xhci_container_ctx *ctx ) ;
struct xhci_ep_ctx *xhci_get_ep_ctx(struct xhci_hcd *xhci , struct xhci_container_ctx *ctx ,
                                    unsigned int ep_index ) ;
static int link_quirk ;
int xhci_handshake(struct xhci_hcd *xhci , void *ptr , u32 mask , u32 done , int usec )
{
  u32 result ;
  {
  ldv_31056:
  result = xhci_readl((struct xhci_hcd const *)xhci, (__le32 *)ptr);
  if (result == 4294967295U) {
    return (-19);
  } else {
  }
  result = result & mask;
  if (result == done) {
    return (0);
  } else {
  }
  __const_udelay(4295UL);
  usec = usec - 1;
  if (usec > 0) {
    goto ldv_31056;
  } else {
  }
  return (-110);
}
}
void xhci_quiesce(struct xhci_hcd *xhci )
{
  u32 halted ;
  u32 cmd ;
  u32 mask ;
  unsigned int tmp ;
  {
  mask = 4294966259U;
  tmp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->status);
  halted = tmp & 1U;
  if (halted == 0U) {
    mask = mask & 4294967294U;
  } else {
  }
  cmd = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->command);
  cmd = cmd & mask;
  xhci_writel(xhci, cmd, & (xhci->op_regs)->command);
  return;
}
}
int xhci_halt(struct xhci_hcd *xhci )
{
  int ret ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct usb_hcd *tmp___1 ;
  {
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_halt";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "// Halt the HC\n";
  descriptor.lineno = 135U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "// Halt the HC\n");
  } else {
  }
  xhci_quiesce(xhci);
  ret = xhci_handshake(xhci, (void *)(& (xhci->op_regs)->status), 1U, 1U, 16000);
  if (ret == 0) {
    xhci->xhc_state = xhci->xhc_state | 2U;
    xhci->cmd_ring_state = 4U;
  } else {
    tmp___1 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___1->self.controller, "Host not halted after %u microseconds.\n",
             16000);
  }
  return (ret);
}
}
static int xhci_start(struct xhci_hcd *xhci )
{
  u32 temp ;
  int ret ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct usb_hcd *tmp___1 ;
  {
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->command);
  temp = temp | 1U;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_start";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "// Turn on HC, cmd = 0x%x.\n";
  descriptor.lineno = 160U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "// Turn on HC, cmd = 0x%x.\n", temp);
  } else {
  }
  xhci_writel(xhci, temp, & (xhci->op_regs)->command);
  ret = xhci_handshake(xhci, (void *)(& (xhci->op_regs)->status), 1U, 0U, 16000);
  if (ret == -110) {
    tmp___1 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___1->self.controller, "Host took too long to start, waited %u microseconds.\n",
            16000);
  } else {
  }
  if (ret == 0) {
    xhci->xhc_state = xhci->xhc_state & 4294967293U;
  } else {
  }
  return (ret);
}
}
int xhci_reset(struct xhci_hcd *xhci )
{
  u32 command ;
  u32 state ;
  int ret ;
  int i ;
  struct usb_hcd *tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  {
  state = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->status);
  if ((state & 1U) == 0U) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "Host controller not halted, aborting reset.\n");
    return (0);
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_reset";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "// Reset the HC\n";
  descriptor.lineno = 197U;
  descriptor.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "// Reset the HC\n");
  } else {
  }
  command = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->command);
  command = command | 2U;
  xhci_writel(xhci, command, & (xhci->op_regs)->command);
  ret = xhci_handshake(xhci, (void *)(& (xhci->op_regs)->command), 2U, 0U, 10000000);
  if (ret != 0) {
    return (ret);
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_reset";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___0.format = "Wait for controller to be ready for doorbell rings\n";
  descriptor___0.lineno = 207U;
  descriptor___0.flags = 1U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___2->self.controller,
                      "Wait for controller to be ready for doorbell rings\n");
  } else {
  }
  ret = xhci_handshake(xhci, (void *)(& (xhci->op_regs)->status), 2048U, 0U, 10000000);
  i = 0;
  goto ldv_31088;
  ldv_31087:
  xhci->bus_state[i].port_c_suspend = 0U;
  xhci->bus_state[i].suspended_ports = 0U;
  xhci->bus_state[i].resuming_ports = 0UL;
  i = i + 1;
  ldv_31088: ;
  if (i <= 1) {
    goto ldv_31087;
  } else {
  }
  return (ret);
}
}
static int xhci_free_msi(struct xhci_hcd *xhci )
{
  int i ;
  struct usb_hcd *tmp ;
  {
  if ((unsigned long )xhci->msix_entries == (unsigned long )((struct msix_entry *)0)) {
    return (-22);
  } else {
  }
  i = 0;
  goto ldv_31095;
  ldv_31094: ;
  if ((xhci->msix_entries + (unsigned long )i)->vector != 0U) {
    tmp = xhci_to_hcd(xhci);
    free_irq((xhci->msix_entries + (unsigned long )i)->vector, (void *)tmp);
  } else {
  }
  i = i + 1;
  ldv_31095: ;
  if (xhci->msix_count > i) {
    goto ldv_31094;
  } else {
  }
  return (0);
}
}
static int xhci_setup_msi(struct xhci_hcd *xhci )
{
  int ret ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct usb_hcd *tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct usb_hcd *tmp___2 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  {
  tmp = xhci_to_hcd(xhci);
  __mptr = (struct device const *)tmp->self.controller;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  ret = pci_enable_msi_block(pdev, 1U);
  if (ret != 0) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_setup_msi";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "failed to allocate MSI entry\n";
    descriptor.lineno = 249U;
    descriptor.flags = 1U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                        "failed to allocate MSI entry\n");
    } else {
    }
    return (ret);
  } else {
  }
  tmp___2 = xhci_to_hcd(xhci);
  ret = request_irq(pdev->irq, (irqreturn_t (*)(int , void * ))(& xhci_msi_irq),
                    0UL, "xhci_hcd", (void *)tmp___2);
  if (ret != 0) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_setup_msi";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___0.format = "disable MSI interrupt\n";
    descriptor___0.lineno = 256U;
    descriptor___0.flags = 1U;
    tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      tmp___3 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___3->self.controller,
                        "disable MSI interrupt\n");
    } else {
    }
    pci_disable_msi(pdev);
  } else {
  }
  return (ret);
}
}
static void xhci_free_irq(struct xhci_hcd *xhci )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct usb_hcd *tmp ;
  int ret ;
  struct usb_hcd *tmp___0 ;
  struct usb_hcd *tmp___1 ;
  {
  tmp = xhci_to_hcd(xhci);
  __mptr = (struct device const *)tmp->self.controller;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp___0 = xhci_to_hcd(xhci);
  if (tmp___0->irq != 0U) {
    return;
  } else {
  }
  ret = xhci_free_msi(xhci);
  if (ret == 0) {
    return;
  } else {
  }
  if (pdev->irq != 0U) {
    tmp___1 = xhci_to_hcd(xhci);
    free_irq(pdev->irq, (void *)tmp___1);
  } else {
  }
  return;
}
}
static int xhci_setup_msix(struct xhci_hcd *xhci )
{
  int i ;
  int ret ;
  struct usb_hcd *hcd ;
  struct usb_hcd *tmp ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  unsigned int _min1 ;
  unsigned int tmp___0 ;
  __u32 _min2 ;
  void *tmp___1 ;
  struct usb_hcd *tmp___2 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct usb_hcd *tmp___5 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  {
  ret = 0;
  tmp = xhci_to_hcd(xhci);
  hcd = tmp;
  __mptr = (struct device const *)hcd->self.controller;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  tmp___0 = cpumask_weight(cpu_online_mask);
  _min1 = tmp___0 + 1U;
  _min2 = (xhci->hcs_params1 >> 8) & 2047U;
  xhci->msix_count = (int )(_min1 < _min2 ? _min1 : _min2);
  tmp___1 = kmalloc((unsigned long )xhci->msix_count * 8UL, 208U);
  xhci->msix_entries = (struct msix_entry *)tmp___1;
  if ((unsigned long )xhci->msix_entries == (unsigned long )((struct msix_entry *)0)) {
    tmp___2 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___2->self.controller, "Failed to allocate MSI-X entries\n");
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_31127;
  ldv_31126:
  (xhci->msix_entries + (unsigned long )i)->entry = (u16 )i;
  (xhci->msix_entries + (unsigned long )i)->vector = 0U;
  i = i + 1;
  ldv_31127: ;
  if (xhci->msix_count > i) {
    goto ldv_31126;
  } else {
  }
  ret = pci_enable_msix(pdev, xhci->msix_entries, xhci->msix_count);
  if (ret != 0) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_setup_msix";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "Failed to enable MSI-X\n";
    descriptor.lineno = 319U;
    descriptor.flags = 1U;
    tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      tmp___3 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___3->self.controller,
                        "Failed to enable MSI-X\n");
    } else {
    }
    goto free_entries;
  } else {
  }
  i = 0;
  goto ldv_31134;
  ldv_31133:
  tmp___5 = xhci_to_hcd(xhci);
  ret = request_irq((xhci->msix_entries + (unsigned long )i)->vector, (irqreturn_t (*)(int ,
                                                                                       void * ))(& xhci_msi_irq),
                    0UL, "xhci_hcd", (void *)tmp___5);
  if (ret != 0) {
    goto disable_msix;
  } else {
  }
  i = i + 1;
  ldv_31134: ;
  if (xhci->msix_count > i) {
    goto ldv_31133;
  } else {
  }
  hcd->msix_enabled = 1U;
  return (ret);
  disable_msix:
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_setup_msix";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___0.format = "disable MSI-X interrupt\n";
  descriptor___0.lineno = 335U;
  descriptor___0.flags = 1U;
  tmp___7 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    tmp___6 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___6->self.controller,
                      "disable MSI-X interrupt\n");
  } else {
  }
  xhci_free_irq(xhci);
  pci_disable_msix(pdev);
  free_entries:
  kfree((void const *)xhci->msix_entries);
  xhci->msix_entries = 0;
  return (ret);
}
}
static void xhci_cleanup_msix(struct xhci_hcd *xhci )
{
  struct usb_hcd *hcd ;
  struct usb_hcd *tmp ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  {
  tmp = xhci_to_hcd(xhci);
  hcd = tmp;
  __mptr = (struct device const *)hcd->self.controller;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  xhci_free_irq(xhci);
  if ((unsigned long )xhci->msix_entries != (unsigned long )((struct msix_entry *)0)) {
    pci_disable_msix(pdev);
    kfree((void const *)xhci->msix_entries);
    xhci->msix_entries = 0;
  } else {
    pci_disable_msi(pdev);
  }
  hcd->msix_enabled = 0U;
  return;
}
}
static void xhci_msix_sync_irqs(struct xhci_hcd *xhci )
{
  int i ;
  {
  if ((unsigned long )xhci->msix_entries != (unsigned long )((struct msix_entry *)0)) {
    i = 0;
    goto ldv_31149;
    ldv_31148:
    synchronize_irq((xhci->msix_entries + (unsigned long )i)->vector);
    i = i + 1;
    ldv_31149: ;
    if (xhci->msix_count > i) {
      goto ldv_31148;
    } else {
    }
  } else {
  }
  return;
}
}
static int xhci_try_enable_msi(struct usb_hcd *hcd )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct usb_hcd *tmp___0 ;
  int ret ;
  struct usb_hcd *tmp___1 ;
  struct usb_hcd *tmp___2 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  tmp___0 = xhci_to_hcd(xhci);
  __mptr = (struct device const *)tmp___0->self.controller;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  if ((xhci->quirks & 64U) != 0U) {
    return (0);
  } else {
  }
  if (hcd->irq != 0U) {
    free_irq(hcd->irq, (void *)hcd);
  } else {
  }
  hcd->irq = 0U;
  ret = xhci_setup_msix(xhci);
  if (ret != 0) {
    ret = xhci_setup_msi(xhci);
  } else {
  }
  if (ret == 0) {
    return (0);
  } else {
  }
  if (pdev->irq == 0U) {
    tmp___1 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___1->self.controller, "No msi-x/msi found and no IRQ in BIOS\n");
    return (-22);
  } else {
  }
  ret = request_irq(pdev->irq, & usb_hcd_irq, 128UL, (char const *)(& hcd->irq_descr),
                    (void *)hcd);
  if (ret != 0) {
    tmp___2 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___2->self.controller, "request interrupt %d failed\n",
            pdev->irq);
    return (ret);
  } else {
  }
  hcd->irq = pdev->irq;
  return (0);
}
}
static void compliance_mode_recovery(unsigned long arg )
{
  struct xhci_hcd *xhci ;
  struct usb_hcd *hcd ;
  u32 temp ;
  int i ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  unsigned long tmp___3 ;
  {
  xhci = (struct xhci_hcd *)arg;
  i = 0;
  goto ldv_31170;
  ldv_31169:
  temp = xhci_readl((struct xhci_hcd const *)xhci, *(xhci->usb3_ports + (unsigned long )i));
  if ((temp & 480U) == 320U) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "compliance_mode_recovery";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "Compliance Mode Detected->Port %d!\n";
    descriptor.lineno = 452U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "Compliance Mode Detected->Port %d!\n", i + 1);
    } else {
    }
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "compliance_mode_recovery";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___0.format = "Attempting Recovery routine!\n";
    descriptor___0.lineno = 453U;
    descriptor___0.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                        "Attempting Recovery routine!\n");
    } else {
    }
    hcd = xhci->shared_hcd;
    if (hcd->state == 4) {
      usb_hcd_resume_root_hub(hcd);
    } else {
    }
    usb_hcd_poll_rh_status(hcd);
  } else {
  }
  i = i + 1;
  ldv_31170: ;
  if ((unsigned int )i < xhci->num_usb3_ports) {
    goto ldv_31169;
  } else {
  }
  if (xhci->port_status_u0 != (u32 )((1 << (int )xhci->num_usb3_ports) + -1)) {
    tmp___3 = msecs_to_jiffies(2000U);
    mod_timer(& xhci->comp_mode_recovery_timer, tmp___3 + (unsigned long )jiffies);
  } else {
  }
  return;
}
}
static void compliance_mode_recovery_timer_init(struct xhci_hcd *xhci )
{
  struct lock_class_key __key ;
  unsigned long tmp ;
  unsigned long tmp___0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  {
  xhci->port_status_u0 = 0U;
  init_timer_key(& xhci->comp_mode_recovery_timer, 0U, "(&xhci->comp_mode_recovery_timer)",
                 & __key);
  xhci->comp_mode_recovery_timer.data = (unsigned long )xhci;
  xhci->comp_mode_recovery_timer.function = & compliance_mode_recovery;
  tmp = msecs_to_jiffies(2000U);
  xhci->comp_mode_recovery_timer.expires = tmp + (unsigned long )jiffies;
  tmp___0 = msecs_to_jiffies(2000U);
  set_timer_slack(& xhci->comp_mode_recovery_timer, (int )tmp___0);
  add_timer(& xhci->comp_mode_recovery_timer);
  descriptor.modname = "xhci_hcd";
  descriptor.function = "compliance_mode_recovery_timer_init";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "Compliance Mode Recovery Timer Initialized.\n";
  descriptor.lineno = 491U;
  descriptor.flags = 1U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                      "Compliance Mode Recovery Timer Initialized.\n");
  } else {
  }
  return;
}
}
static bool compliance_mode_recovery_timer_quirk_check(void)
{
  char const *dmi_product_name ;
  char const *dmi_sys_vendor ;
  char *tmp ;
  char *tmp___0 ;
  char *tmp___1 ;
  char *tmp___2 ;
  char *tmp___3 ;
  {
  dmi_product_name = dmi_get_system_info(5);
  dmi_sys_vendor = dmi_get_system_info(4);
  if ((unsigned long )dmi_product_name == (unsigned long )((char const *)0) || (unsigned long )dmi_sys_vendor == (unsigned long )((char const *)0)) {
    return (0);
  } else {
  }
  tmp = strstr(dmi_sys_vendor, "Hewlett-Packard");
  if ((unsigned long )tmp == (unsigned long )((char *)0)) {
    return (0);
  } else {
  }
  tmp___0 = strstr(dmi_product_name, "Z420");
  if ((unsigned long )tmp___0 != (unsigned long )((char *)0)) {
    return (1);
  } else {
    tmp___1 = strstr(dmi_product_name, "Z620");
    if ((unsigned long )tmp___1 != (unsigned long )((char *)0)) {
      return (1);
    } else {
      tmp___2 = strstr(dmi_product_name, "Z820");
      if ((unsigned long )tmp___2 != (unsigned long )((char *)0)) {
        return (1);
      } else {
        tmp___3 = strstr(dmi_product_name, "Z1 Workstation");
        if ((unsigned long )tmp___3 != (unsigned long )((char *)0)) {
          return (1);
        } else {
        }
      }
    }
  }
  return (0);
}
}
static int xhci_all_ports_seen_u0(struct xhci_hcd *xhci )
{
  {
  return (xhci->port_status_u0 == (u32 )((1 << (int )xhci->num_usb3_ports) + -1));
}
}
int xhci_init(struct usb_hcd *hcd )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  int retval ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct lock_class_key __key ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  bool tmp___8 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  retval = 0;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_init";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "xhci_init\n";
  descriptor.lineno = 539U;
  descriptor.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "xhci_init\n");
  } else {
  }
  spinlock_check(& xhci->lock);
  __raw_spin_lock_init(& xhci->lock.ldv_5961.rlock, "&(&xhci->lock)->rlock", & __key);
  if ((unsigned int )xhci->hci_version == 149U && link_quirk != 0) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_init";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___0.format = "QUIRK: Not clearing Link TRB chain bits.\n";
    descriptor___0.lineno = 542U;
    descriptor___0.flags = 1U;
    tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      tmp___2 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___2->self.controller,
                        "QUIRK: Not clearing Link TRB chain bits.\n");
    } else {
    }
    xhci->quirks = xhci->quirks | 1U;
  } else {
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "xhci_init";
    descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___1.format = "xHCI doesn\'t need link TRB QUIRK\n";
    descriptor___1.lineno = 545U;
    descriptor___1.flags = 1U;
    tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      tmp___4 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___4->self.controller,
                        "xHCI doesn\'t need link TRB QUIRK\n");
    } else {
    }
  }
  retval = xhci_mem_init(xhci, 208U);
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_init";
  descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___2.format = "Finished xhci_init\n";
  descriptor___2.lineno = 548U;
  descriptor___2.flags = 1U;
  tmp___7 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    tmp___6 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___6->self.controller,
                      "Finished xhci_init\n");
  } else {
  }
  tmp___8 = compliance_mode_recovery_timer_quirk_check();
  if ((int )tmp___8) {
    xhci->quirks = xhci->quirks | 16384U;
    compliance_mode_recovery_timer_init(xhci);
  } else {
  }
  return (retval);
}
}
static void xhci_event_ring_work(unsigned long arg )
{
  unsigned long flags ;
  int temp ;
  u64 temp_64 ;
  struct xhci_hcd *xhci ;
  int i ;
  int j ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  unsigned int tmp___2 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  unsigned int tmp___7 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___8 ;
  long tmp___9 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___10 ;
  long tmp___11 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___12 ;
  long tmp___13 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___14 ;
  long tmp___15 ;
  struct _ddebug descriptor___6 ;
  struct usb_hcd *tmp___16 ;
  long tmp___17 ;
  struct _ddebug descriptor___7 ;
  struct usb_hcd *tmp___18 ;
  long tmp___19 ;
  {
  xhci = (struct xhci_hcd *)arg;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_event_ring_work";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "Poll event ring: %lu\n";
  descriptor.lineno = 571U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "Poll event ring: %lu\n", jiffies);
  } else {
  }
  tmp___1 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  tmp___2 = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->status);
  temp = (int )tmp___2;
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_event_ring_work";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___0.format = "op reg status = 0x%x\n";
  descriptor___0.lineno = 575U;
  descriptor___0.flags = 1U;
  tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___3->self.controller,
                      "op reg status = 0x%x\n", temp);
  } else {
  }
  if ((temp == -1 || (int )xhci->xhc_state & 1) || (xhci->xhc_state & 2U) != 0U) {
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "xhci_event_ring_work";
    descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___1.format = "HW died, polling stopped.\n";
    descriptor___1.lineno = 578U;
    descriptor___1.flags = 1U;
    tmp___6 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      tmp___5 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___5->self.controller,
                        "HW died, polling stopped.\n");
    } else {
    }
    spin_unlock_irqrestore(& xhci->lock, flags);
    return;
  } else {
  }
  tmp___7 = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->ir_set)->irq_pending);
  temp = (int )tmp___7;
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_event_ring_work";
  descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___2.format = "ir_set 0 pending = 0x%x\n";
  descriptor___2.lineno = 584U;
  descriptor___2.flags = 1U;
  tmp___9 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___9 != 0L) {
    tmp___8 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___8->self.controller,
                      "ir_set 0 pending = 0x%x\n", temp);
  } else {
  }
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_event_ring_work";
  descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___3.format = "HC error bitmask = 0x%x\n";
  descriptor___3.lineno = 585U;
  descriptor___3.flags = 1U;
  tmp___11 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___11 != 0L) {
    tmp___10 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___10->self.controller,
                      "HC error bitmask = 0x%x\n", xhci->error_bitmask);
  } else {
  }
  xhci->error_bitmask = 0;
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_event_ring_work";
  descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___4.format = "Event ring:\n";
  descriptor___4.lineno = 587U;
  descriptor___4.flags = 1U;
  tmp___13 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___13 != 0L) {
    tmp___12 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___12->self.controller,
                      "Event ring:\n");
  } else {
  }
  xhci_debug_segment(xhci, (xhci->event_ring)->deq_seg);
  xhci_dbg_ring_ptrs(xhci, xhci->event_ring);
  temp_64 = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->ir_set)->erst_dequeue);
  temp_64 = temp_64 & 0xfffffffffffffff0ULL;
  descriptor___5.modname = "xhci_hcd";
  descriptor___5.function = "xhci_event_ring_work";
  descriptor___5.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___5.format = "ERST deq = 64\'h%0lx\n";
  descriptor___5.lineno = 592U;
  descriptor___5.flags = 1U;
  tmp___15 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___15 != 0L) {
    tmp___14 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___14->self.controller,
                      "ERST deq = 64\'h%0lx\n", (unsigned long )temp_64);
  } else {
  }
  descriptor___6.modname = "xhci_hcd";
  descriptor___6.function = "xhci_event_ring_work";
  descriptor___6.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___6.format = "Command ring:\n";
  descriptor___6.lineno = 593U;
  descriptor___6.flags = 1U;
  tmp___17 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___17 != 0L) {
    tmp___16 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___6, (struct device const *)tmp___16->self.controller,
                      "Command ring:\n");
  } else {
  }
  xhci_debug_segment(xhci, (xhci->cmd_ring)->deq_seg);
  xhci_dbg_ring_ptrs(xhci, xhci->cmd_ring);
  xhci_dbg_cmd_ptrs(xhci);
  i = 0;
  goto ldv_31223;
  ldv_31222: ;
  if ((unsigned long )xhci->devs[i] == (unsigned long )((struct xhci_virt_device *)0)) {
    goto ldv_31218;
  } else {
  }
  j = 0;
  goto ldv_31220;
  ldv_31219:
  xhci_dbg_ep_rings(xhci, (unsigned int )i, (unsigned int )j, (struct xhci_virt_ep *)(& (xhci->devs[i])->eps) + (unsigned long )j);
  j = j + 1;
  ldv_31220: ;
  if (j <= 30) {
    goto ldv_31219;
  } else {
  }
  ldv_31218:
  i = i + 1;
  ldv_31223: ;
  if (i <= 255) {
    goto ldv_31222;
  } else {
  }
  spin_unlock_irqrestore(& xhci->lock, flags);
  if (xhci->zombie == 0) {
    mod_timer(& xhci->event_ring_timer, (unsigned long )jiffies + 15000UL);
  } else {
    descriptor___7.modname = "xhci_hcd";
    descriptor___7.function = "xhci_event_ring_work";
    descriptor___7.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___7.format = "Quit polling the event ring.\n";
    descriptor___7.lineno = 609U;
    descriptor___7.flags = 1U;
    tmp___19 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
    if (tmp___19 != 0L) {
      tmp___18 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___7, (struct device const *)tmp___18->self.controller,
                        "Quit polling the event ring.\n");
    } else {
    }
  }
  return;
}
}
static int xhci_run_finished(struct xhci_hcd *xhci )
{
  int tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  {
  tmp = xhci_start(xhci);
  if (tmp != 0) {
    xhci_halt(xhci);
    return (-19);
  } else {
  }
  (xhci->shared_hcd)->state = 1;
  xhci->cmd_ring_state = 1U;
  if ((xhci->quirks & 4U) != 0U) {
    xhci_ring_cmd_db(xhci);
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_run_finished";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "Finished xhci_run for USB3 roothub\n";
  descriptor.lineno = 625U;
  descriptor.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "Finished xhci_run for USB3 roothub\n");
  } else {
  }
  return (0);
}
}
int xhci_run(struct usb_hcd *hcd )
{
  u32 temp ;
  u64 temp_64 ;
  int ret ;
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  struct lock_class_key __key ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___8 ;
  long tmp___9 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___10 ;
  long tmp___11 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___12 ;
  long tmp___13 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___14 ;
  long tmp___15 ;
  struct _ddebug descriptor___6 ;
  struct usb_hcd *tmp___16 ;
  long tmp___17 ;
  struct _ddebug descriptor___7 ;
  struct usb_hcd *tmp___18 ;
  long tmp___19 ;
  struct _ddebug descriptor___8 ;
  struct usb_hcd *tmp___20 ;
  long tmp___21 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  hcd->uses_new_polling = 1U;
  tmp___1 = usb_hcd_is_primary_hcd(hcd);
  if (tmp___1 == 0) {
    tmp___0 = xhci_run_finished(xhci);
    return (tmp___0);
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_run";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "xhci_run\n";
  descriptor.lineno = 656U;
  descriptor.flags = 1U;
  tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___2->self.controller,
                      "xhci_run\n");
  } else {
  }
  ret = xhci_try_enable_msi(hcd);
  if (ret != 0) {
    return (ret);
  } else {
  }
  init_timer_key(& xhci->event_ring_timer, 0U, "(&xhci->event_ring_timer)", & __key);
  xhci->event_ring_timer.data = (unsigned long )xhci;
  xhci->event_ring_timer.function = & xhci_event_ring_work;
  xhci->event_ring_timer.expires = (unsigned long )jiffies + 15000UL;
  xhci->zombie = 0;
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_run";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___0.format = "Setting event ring polling timer\n";
  descriptor___0.lineno = 669U;
  descriptor___0.flags = 1U;
  tmp___5 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    tmp___4 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___4->self.controller,
                      "Setting event ring polling timer\n");
  } else {
  }
  add_timer(& xhci->event_ring_timer);
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_run";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___1.format = "Command ring memory map follows:\n";
  descriptor___1.lineno = 673U;
  descriptor___1.flags = 1U;
  tmp___7 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    tmp___6 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___6->self.controller,
                      "Command ring memory map follows:\n");
  } else {
  }
  xhci_debug_ring(xhci, xhci->cmd_ring);
  xhci_dbg_ring_ptrs(xhci, xhci->cmd_ring);
  xhci_dbg_cmd_ptrs(xhci);
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_run";
  descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___2.format = "ERST memory map follows:\n";
  descriptor___2.lineno = 678U;
  descriptor___2.flags = 1U;
  tmp___9 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___9 != 0L) {
    tmp___8 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___8->self.controller,
                      "ERST memory map follows:\n");
  } else {
  }
  xhci_dbg_erst(xhci, & xhci->erst);
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_run";
  descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___3.format = "Event ring:\n";
  descriptor___3.lineno = 680U;
  descriptor___3.flags = 1U;
  tmp___11 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___11 != 0L) {
    tmp___10 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___10->self.controller,
                      "Event ring:\n");
  } else {
  }
  xhci_debug_ring(xhci, xhci->event_ring);
  xhci_dbg_ring_ptrs(xhci, xhci->event_ring);
  temp_64 = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->ir_set)->erst_dequeue);
  temp_64 = temp_64 & 0xfffffffffffffff0ULL;
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_run";
  descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___4.format = "ERST deq = 64\'h%0lx\n";
  descriptor___4.lineno = 685U;
  descriptor___4.flags = 1U;
  tmp___13 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___13 != 0L) {
    tmp___12 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___12->self.controller,
                      "ERST deq = 64\'h%0lx\n", (unsigned long )temp_64);
  } else {
  }
  descriptor___5.modname = "xhci_hcd";
  descriptor___5.function = "xhci_run";
  descriptor___5.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___5.format = "// Set the interrupt modulation register\n";
  descriptor___5.lineno = 687U;
  descriptor___5.flags = 1U;
  tmp___15 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___15 != 0L) {
    tmp___14 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___14->self.controller,
                      "// Set the interrupt modulation register\n");
  } else {
  }
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->ir_set)->irq_control);
  temp = temp & 4294901760U;
  temp = temp | 160U;
  xhci_writel(xhci, temp, & (xhci->ir_set)->irq_control);
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->command);
  temp = temp | 4U;
  descriptor___6.modname = "xhci_hcd";
  descriptor___6.function = "xhci_run";
  descriptor___6.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___6.format = "// Enable interrupts, cmd = 0x%x.\n";
  descriptor___6.lineno = 697U;
  descriptor___6.flags = 1U;
  tmp___17 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___17 != 0L) {
    tmp___16 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___6, (struct device const *)tmp___16->self.controller,
                      "// Enable interrupts, cmd = 0x%x.\n", temp);
  } else {
  }
  xhci_writel(xhci, temp, & (xhci->op_regs)->command);
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->ir_set)->irq_pending);
  descriptor___7.modname = "xhci_hcd";
  descriptor___7.function = "xhci_run";
  descriptor___7.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___7.format = "// Enabling event ring interrupter %p by writing 0x%x to irq_pending\n";
  descriptor___7.lineno = 702U;
  descriptor___7.flags = 1U;
  tmp___19 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
  if (tmp___19 != 0L) {
    tmp___18 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___7, (struct device const *)tmp___18->self.controller,
                      "// Enabling event ring interrupter %p by writing 0x%x to irq_pending\n",
                      xhci->ir_set, (temp & 4294967292U) | 2U);
  } else {
  }
  xhci_writel(xhci, (temp & 4294967292U) | 2U, & (xhci->ir_set)->irq_pending);
  xhci_print_ir_set(xhci, 0);
  if ((xhci->quirks & 4U) != 0U) {
    xhci_queue_vendor_command(xhci, 0U, 0U, 0U, 50176U);
  } else {
  }
  descriptor___8.modname = "xhci_hcd";
  descriptor___8.function = "xhci_run";
  descriptor___8.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___8.format = "Finished xhci_run for USB2 roothub\n";
  descriptor___8.lineno = 711U;
  descriptor___8.flags = 1U;
  tmp___21 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
  if (tmp___21 != 0L) {
    tmp___20 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___8, (struct device const *)tmp___20->self.controller,
                      "Finished xhci_run for USB2 roothub\n");
  } else {
  }
  return (0);
}
}
static void xhci_only_stop_hcd(struct usb_hcd *hcd )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  spin_lock_irq(& xhci->lock);
  xhci_halt(xhci);
  xhci->shared_hcd = 0;
  spin_unlock_irq(& xhci->lock);
  return;
}
}
void xhci_stop(struct usb_hcd *hcd )
{
  u32 temp ;
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  int tmp___0 ;
  int tmp___1 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___1 ;
  unsigned int tmp___6 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  tmp___0 = usb_hcd_is_primary_hcd(hcd);
  if (tmp___0 == 0) {
    xhci_only_stop_hcd(xhci->shared_hcd);
    return;
  } else {
  }
  spin_lock_irq(& xhci->lock);
  xhci_halt(xhci);
  xhci_reset(xhci);
  spin_unlock_irq(& xhci->lock);
  xhci_cleanup_msix(xhci);
  xhci->zombie = 1;
  del_timer_sync(& xhci->event_ring_timer);
  if ((xhci->quirks & 16384U) != 0U) {
    tmp___1 = xhci_all_ports_seen_u0(xhci);
    if (tmp___1 == 0) {
      del_timer_sync(& xhci->comp_mode_recovery_timer);
    } else {
    }
  } else {
  }
  if ((xhci->quirks & 8U) != 0U) {
    usb_amd_dev_put();
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_stop";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "// Disabling event ring interrupts\n";
  descriptor.lineno = 773U;
  descriptor.flags = 1U;
  tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___2->self.controller,
                      "// Disabling event ring interrupts\n");
  } else {
  }
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->status);
  xhci_writel(xhci, temp & 4294967287U, & (xhci->op_regs)->status);
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->ir_set)->irq_pending);
  xhci_writel(xhci, temp & 4294967292U, & (xhci->ir_set)->irq_pending);
  xhci_print_ir_set(xhci, 0);
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_stop";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___0.format = "cleaning up memory\n";
  descriptor___0.lineno = 781U;
  descriptor___0.flags = 1U;
  tmp___5 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    tmp___4 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___4->self.controller,
                      "cleaning up memory\n");
  } else {
  }
  xhci_mem_cleanup(xhci);
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_stop";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___1.format = "xhci_stop completed - status = %x\n";
  descriptor___1.lineno = 784U;
  descriptor___1.flags = 1U;
  tmp___8 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    tmp___6 = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->status);
    tmp___7 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___7->self.controller,
                      "xhci_stop completed - status = %x\n", tmp___6);
  } else {
  }
  return;
}
}
void xhci_shutdown(struct usb_hcd *hcd )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  struct device const *__mptr ;
  struct _ddebug descriptor ;
  unsigned int tmp___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  if ((xhci->quirks & 8192U) != 0U) {
    __mptr = (struct device const *)hcd->self.controller;
    usb_disable_xhci_ports((struct pci_dev *)__mptr + 0xffffffffffffff68UL);
  } else {
  }
  spin_lock_irq(& xhci->lock);
  xhci_halt(xhci);
  spin_unlock_irq(& xhci->lock);
  xhci_cleanup_msix(xhci);
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_shutdown";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "xhci_shutdown completed - status = %x\n";
  descriptor.lineno = 810U;
  descriptor.flags = 1U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___0 = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->status);
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                      "xhci_shutdown completed - status = %x\n", tmp___0);
  } else {
  }
  return;
}
}
static void xhci_save_registers(struct xhci_hcd *xhci )
{
  {
  xhci->s3.command = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->command);
  xhci->s3.dev_nt = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->dev_notification);
  xhci->s3.dcbaa_ptr = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->op_regs)->dcbaa_ptr);
  xhci->s3.config_reg = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->config_reg);
  xhci->s3.erst_size = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->ir_set)->erst_size);
  xhci->s3.erst_base = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->ir_set)->erst_base);
  xhci->s3.erst_dequeue = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->ir_set)->erst_dequeue);
  xhci->s3.irq_pending = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->ir_set)->irq_pending);
  xhci->s3.irq_control = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->ir_set)->irq_control);
  return;
}
}
static void xhci_restore_registers(struct xhci_hcd *xhci )
{
  {
  xhci_writel(xhci, xhci->s3.command, & (xhci->op_regs)->command);
  xhci_writel(xhci, xhci->s3.dev_nt, & (xhci->op_regs)->dev_notification);
  xhci_write_64(xhci, xhci->s3.dcbaa_ptr, & (xhci->op_regs)->dcbaa_ptr);
  xhci_writel(xhci, xhci->s3.config_reg, & (xhci->op_regs)->config_reg);
  xhci_writel(xhci, xhci->s3.erst_size, & (xhci->ir_set)->erst_size);
  xhci_write_64(xhci, xhci->s3.erst_base, & (xhci->ir_set)->erst_base);
  xhci_write_64(xhci, xhci->s3.erst_dequeue, & (xhci->ir_set)->erst_dequeue);
  xhci_writel(xhci, xhci->s3.irq_pending, & (xhci->ir_set)->irq_pending);
  xhci_writel(xhci, xhci->s3.irq_control, & (xhci->ir_set)->irq_control);
  return;
}
}
static void xhci_set_cmd_ring_deq(struct xhci_hcd *xhci )
{
  u64 val_64 ;
  dma_addr_t tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  {
  val_64 = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->op_regs)->cmd_ring);
  tmp = xhci_trb_virt_to_dma((xhci->cmd_ring)->deq_seg, (xhci->cmd_ring)->dequeue);
  val_64 = ((val_64 & 63ULL) | (tmp & 0xffffffffffffffc0ULL)) | (unsigned long long )(xhci->cmd_ring)->cycle_state;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_set_cmd_ring_deq";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "// Setting command ring address to 0x%llx\n";
  descriptor.lineno = 852U;
  descriptor.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "// Setting command ring address to 0x%llx\n", val_64);
  } else {
  }
  xhci_write_64(xhci, val_64, & (xhci->op_regs)->cmd_ring);
  return;
}
}
static void xhci_clear_command_ring(struct xhci_hcd *xhci )
{
  struct xhci_ring *ring ;
  struct xhci_segment *seg ;
  {
  ring = xhci->cmd_ring;
  seg = ring->deq_seg;
  ldv_31288:
  memset((void *)seg->trbs, 0, 1008UL);
  (seg->trbs + 63UL)->link.control = (seg->trbs + 63UL)->link.control & 4294967294U;
  seg = seg->next;
  if ((unsigned long )ring->deq_seg != (unsigned long )seg) {
    goto ldv_31288;
  } else {
  }
  ring->deq_seg = ring->first_seg;
  ring->dequeue = (ring->first_seg)->trbs;
  ring->enq_seg = ring->deq_seg;
  ring->enqueue = ring->dequeue;
  ring->num_trbs_free = ring->num_segs * 63U - 1U;
  ring->cycle_state = 1U;
  xhci_set_cmd_ring_deq(xhci);
  return;
}
}
int xhci_suspend(struct xhci_hcd *xhci )
{
  int rc ;
  struct usb_hcd *hcd ;
  struct usb_hcd *tmp ;
  u32 command ;
  struct usb_hcd *tmp___0 ;
  int tmp___1 ;
  struct usb_hcd *tmp___2 ;
  int tmp___3 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  int tmp___6 ;
  {
  rc = 0;
  tmp = xhci_to_hcd(xhci);
  hcd = tmp;
  if (hcd->state != 4 || (xhci->shared_hcd)->state != 4) {
    return (-22);
  } else {
  }
  spin_lock_irq(& xhci->lock);
  clear_bit(0, (unsigned long volatile *)(& hcd->flags));
  clear_bit(0, (unsigned long volatile *)(& (xhci->shared_hcd)->flags));
  command = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->command);
  command = command & 4294967294U;
  xhci_writel(xhci, command, & (xhci->op_regs)->command);
  tmp___1 = xhci_handshake(xhci, (void *)(& (xhci->op_regs)->status), 1U, 1U, 16000);
  if (tmp___1 != 0) {
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "WARN: xHC CMD_RUN timeout\n");
    spin_unlock_irq(& xhci->lock);
    return (-110);
  } else {
  }
  xhci_clear_command_ring(xhci);
  xhci_save_registers(xhci);
  command = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->command);
  command = command | 256U;
  xhci_writel(xhci, command, & (xhci->op_regs)->command);
  tmp___3 = xhci_handshake(xhci, (void *)(& (xhci->op_regs)->status), 256U, 0U, 10000);
  if (tmp___3 != 0) {
    tmp___2 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___2->self.controller, "WARN: xHC save state timeout\n");
    spin_unlock_irq(& xhci->lock);
    return (-110);
  } else {
  }
  spin_unlock_irq(& xhci->lock);
  if ((xhci->quirks & 16384U) != 0U) {
    tmp___6 = xhci_all_ports_seen_u0(xhci);
    if (tmp___6 == 0) {
      del_timer_sync(& xhci->comp_mode_recovery_timer);
      descriptor.modname = "xhci_hcd";
      descriptor.function = "xhci_suspend";
      descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
      descriptor.format = "Compliance Mode Recovery Timer Deleted!\n";
      descriptor.lineno = 959U;
      descriptor.flags = 1U;
      tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___5 != 0L) {
        tmp___4 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___4->self.controller,
                          "Compliance Mode Recovery Timer Deleted!\n");
      } else {
      }
    } else {
    }
  } else {
  }
  xhci_msix_sync_irqs(xhci);
  return (rc);
}
}
int xhci_resume(struct xhci_hcd *xhci , bool hibernated )
{
  u32 command ;
  u32 temp ;
  struct usb_hcd *hcd ;
  struct usb_hcd *tmp ;
  struct usb_hcd *secondary_hcd ;
  int retval ;
  struct usb_hcd *tmp___0 ;
  int tmp___1 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___2 ;
  unsigned int tmp___8 ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  int tmp___11 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___12 ;
  long tmp___13 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___14 ;
  long tmp___15 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___16 ;
  long tmp___17 ;
  {
  temp = 0U;
  tmp = xhci_to_hcd(xhci);
  hcd = tmp;
  retval = 0;
  if ((long )jiffies - (long )xhci->bus_state[0].next_statechange < 0L || (long )jiffies - (long )xhci->bus_state[1].next_statechange < 0L) {
    msleep(100U);
  } else {
  }
  set_bit(0U, (unsigned long volatile *)(& hcd->flags));
  set_bit(0U, (unsigned long volatile *)(& (xhci->shared_hcd)->flags));
  spin_lock_irq(& xhci->lock);
  if ((xhci->quirks & 128U) != 0U) {
    hibernated = 1;
  } else {
  }
  if (! hibernated) {
    xhci_restore_registers(xhci);
    xhci_set_cmd_ring_deq(xhci);
    command = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->command);
    command = command | 512U;
    xhci_writel(xhci, command, & (xhci->op_regs)->command);
    tmp___1 = xhci_handshake(xhci, (void *)(& (xhci->op_regs)->status), 512U, 0U,
                             10000);
    if (tmp___1 != 0) {
      tmp___0 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___0->self.controller, "WARN: xHC restore state timeout\n");
      spin_unlock_irq(& xhci->lock);
      return (-110);
    } else {
    }
    temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->status);
  } else {
  }
  if ((temp & 1024U) != 0U || (int )hibernated) {
    usb_root_hub_lost_power((xhci->main_hcd)->self.root_hub);
    usb_root_hub_lost_power((xhci->shared_hcd)->self.root_hub);
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_resume";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "Stop HCD\n";
    descriptor.lineno = 1022U;
    descriptor.flags = 1U;
    tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      tmp___2 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___2->self.controller,
                        "Stop HCD\n");
    } else {
    }
    xhci_halt(xhci);
    xhci_reset(xhci);
    spin_unlock_irq(& xhci->lock);
    xhci_cleanup_msix(xhci);
    xhci->zombie = 1;
    del_timer_sync(& xhci->event_ring_timer);
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_resume";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___0.format = "// Disabling event ring interrupts\n";
    descriptor___0.lineno = 1034U;
    descriptor___0.flags = 1U;
    tmp___5 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      tmp___4 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___4->self.controller,
                        "// Disabling event ring interrupts\n");
    } else {
    }
    temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->status);
    xhci_writel(xhci, temp & 4294967287U, & (xhci->op_regs)->status);
    temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->ir_set)->irq_pending);
    xhci_writel(xhci, temp & 4294967292U, & (xhci->ir_set)->irq_pending);
    xhci_print_ir_set(xhci, 0);
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "xhci_resume";
    descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___1.format = "cleaning up memory\n";
    descriptor___1.lineno = 1042U;
    descriptor___1.flags = 1U;
    tmp___7 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      tmp___6 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___6->self.controller,
                        "cleaning up memory\n");
    } else {
    }
    xhci_mem_cleanup(xhci);
    descriptor___2.modname = "xhci_hcd";
    descriptor___2.function = "xhci_resume";
    descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___2.format = "xhci_stop completed - status = %x\n";
    descriptor___2.lineno = 1045U;
    descriptor___2.flags = 1U;
    tmp___10 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___10 != 0L) {
      tmp___8 = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->status);
      tmp___9 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___9->self.controller,
                        "xhci_stop completed - status = %x\n", tmp___8);
    } else {
    }
    tmp___11 = usb_hcd_is_primary_hcd(hcd);
    if (tmp___11 == 0) {
      secondary_hcd = hcd;
    } else {
      secondary_hcd = xhci->shared_hcd;
    }
    descriptor___3.modname = "xhci_hcd";
    descriptor___3.function = "xhci_resume";
    descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___3.format = "Initialize the xhci_hcd\n";
    descriptor___3.lineno = 1056U;
    descriptor___3.flags = 1U;
    tmp___13 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___13 != 0L) {
      tmp___12 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___12->self.controller,
                        "Initialize the xhci_hcd\n");
    } else {
    }
    retval = xhci_init(hcd->primary_hcd);
    if (retval != 0) {
      return (retval);
    } else {
    }
    descriptor___4.modname = "xhci_hcd";
    descriptor___4.function = "xhci_resume";
    descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___4.format = "Start the primary HCD\n";
    descriptor___4.lineno = 1060U;
    descriptor___4.flags = 1U;
    tmp___15 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___15 != 0L) {
      tmp___14 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___14->self.controller,
                        "Start the primary HCD\n");
    } else {
    }
    retval = xhci_run(hcd->primary_hcd);
    if (retval == 0) {
      descriptor___5.modname = "xhci_hcd";
      descriptor___5.function = "xhci_resume";
      descriptor___5.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
      descriptor___5.format = "Start the secondary HCD\n";
      descriptor___5.lineno = 1063U;
      descriptor___5.flags = 1U;
      tmp___17 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
      if (tmp___17 != 0L) {
        tmp___16 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___16->self.controller,
                          "Start the secondary HCD\n");
      } else {
      }
      retval = xhci_run(secondary_hcd);
    } else {
    }
    hcd->state = 4;
    (xhci->shared_hcd)->state = 4;
    goto done;
  } else {
  }
  command = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->command);
  command = command | 1U;
  xhci_writel(xhci, command, & (xhci->op_regs)->command);
  xhci_handshake(xhci, (void *)(& (xhci->op_regs)->status), 1U, 0U, 250000);
  spin_unlock_irq(& xhci->lock);
  done: ;
  if (retval == 0) {
    usb_hcd_resume_root_hub(hcd);
    usb_hcd_resume_root_hub(xhci->shared_hcd);
  } else {
  }
  if ((xhci->quirks & 16384U) != 0U) {
    compliance_mode_recovery_timer_init(xhci);
  } else {
  }
  return (retval);
}
}
unsigned int xhci_get_endpoint_index(struct usb_endpoint_descriptor *desc )
{
  unsigned int index ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp___2 = usb_endpoint_xfer_control((struct usb_endpoint_descriptor const *)desc);
  if (tmp___2 != 0) {
    tmp = usb_endpoint_num((struct usb_endpoint_descriptor const *)desc);
    index = (unsigned int )(tmp * 2);
  } else {
    tmp___0 = usb_endpoint_num((struct usb_endpoint_descriptor const *)desc);
    tmp___1 = usb_endpoint_dir_in((struct usb_endpoint_descriptor const *)desc);
    index = ((unsigned int )(tmp___0 * 2) + (tmp___1 != 0 ? 1U : 0U)) - 1U;
  }
  return (index);
}
}
unsigned int xhci_get_endpoint_flag(struct usb_endpoint_descriptor *desc )
{
  unsigned int tmp ;
  {
  tmp = xhci_get_endpoint_index(desc);
  return ((unsigned int )(1 << (int )(tmp + 1U)));
}
}
unsigned int xhci_get_endpoint_flag_from_index(unsigned int ep_index )
{
  {
  return ((unsigned int )(1 << (int )(ep_index + 1U)));
}
}
unsigned int xhci_last_valid_endpoint(u32 added_ctxs )
{
  int tmp ;
  {
  tmp = fls((int )added_ctxs);
  return ((unsigned int )(tmp + -1));
}
}
static int xhci_check_args(struct usb_hcd *hcd , struct usb_device *udev , struct usb_host_endpoint *ep ,
                           int check_ep , bool check_virt_dev , char const *func )
{
  struct xhci_hcd *xhci ;
  struct xhci_virt_device *virt_dev ;
  {
  if (((unsigned long )hcd == (unsigned long )((struct usb_hcd *)0) || (check_ep != 0 && (unsigned long )ep == (unsigned long )((struct usb_host_endpoint *)0))) || (unsigned long )udev == (unsigned long )((struct usb_device *)0)) {
    printk("\017xHCI %s called with invalid args\n", func);
    return (-22);
  } else {
  }
  if ((unsigned long )udev->parent == (unsigned long )((struct usb_device *)0)) {
    printk("\017xHCI %s called for root hub\n", func);
    return (0);
  } else {
  }
  xhci = hcd_to_xhci(hcd);
  if ((xhci->xhc_state & 2U) != 0U) {
    return (-19);
  } else {
  }
  if ((int )check_virt_dev) {
    if (udev->slot_id == 0 || (unsigned long )xhci->devs[udev->slot_id] == (unsigned long )((struct xhci_virt_device *)0)) {
      printk("\017xHCI %s called with unaddressed device\n", func);
      return (-22);
    } else {
    }
    virt_dev = xhci->devs[udev->slot_id];
    if ((unsigned long )virt_dev->udev != (unsigned long )udev) {
      printk("\017xHCI %s called with udev and virt_dev does not match\n", func);
      return (-22);
    } else {
    }
  } else {
  }
  return (1);
}
}
static int xhci_configure_endpoint(struct xhci_hcd *xhci , struct usb_device *udev ,
                                   struct xhci_command *command , bool ctx_change ,
                                   bool must_succeed ) ;
static int xhci_check_maxpacket(struct xhci_hcd *xhci , unsigned int slot_id , unsigned int ep_index ,
                                struct urb *urb )
{
  struct xhci_container_ctx *in_ctx ;
  struct xhci_container_ctx *out_ctx ;
  struct xhci_input_control_ctx *ctrl_ctx ;
  struct xhci_ep_ctx *ep_ctx ;
  int max_packet_size ;
  int hw_max_packet_size ;
  int ret ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  {
  ret = 0;
  out_ctx = (xhci->devs[slot_id])->out_ctx;
  ep_ctx = xhci_get_ep_ctx(xhci, out_ctx, ep_index);
  hw_max_packet_size = (int )(ep_ctx->ep_info2 >> 16);
  max_packet_size = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& (urb->dev)->ep0.desc));
  if (hw_max_packet_size != max_packet_size) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_check_maxpacket";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "Max Packet Size for ep 0 changed.\n";
    descriptor.lineno = 1228U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "Max Packet Size for ep 0 changed.\n");
    } else {
    }
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_check_maxpacket";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___0.format = "Max packet size in usb_device = %d\n";
    descriptor___0.lineno = 1230U;
    descriptor___0.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                        "Max packet size in usb_device = %d\n", max_packet_size);
    } else {
    }
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "xhci_check_maxpacket";
    descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___1.format = "Max packet size in xHCI HW = %d\n";
    descriptor___1.lineno = 1232U;
    descriptor___1.flags = 1U;
    tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      tmp___3 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___3->self.controller,
                        "Max packet size in xHCI HW = %d\n", hw_max_packet_size);
    } else {
    }
    descriptor___2.modname = "xhci_hcd";
    descriptor___2.function = "xhci_check_maxpacket";
    descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___2.format = "Issuing evaluate context command.\n";
    descriptor___2.lineno = 1233U;
    descriptor___2.flags = 1U;
    tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      tmp___5 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___5->self.controller,
                        "Issuing evaluate context command.\n");
    } else {
    }
    xhci_endpoint_copy(xhci, (xhci->devs[slot_id])->in_ctx, (xhci->devs[slot_id])->out_ctx,
                       ep_index);
    in_ctx = (xhci->devs[slot_id])->in_ctx;
    ep_ctx = xhci_get_ep_ctx(xhci, in_ctx, ep_index);
    ep_ctx->ep_info2 = ep_ctx->ep_info2 & 65535U;
    ep_ctx->ep_info2 = ep_ctx->ep_info2 | (__le32 )(max_packet_size << 16);
    ctrl_ctx = xhci_get_input_control_ctx(xhci, in_ctx);
    ctrl_ctx->add_flags = 2U;
    ctrl_ctx->drop_flags = 0U;
    descriptor___3.modname = "xhci_hcd";
    descriptor___3.function = "xhci_check_maxpacket";
    descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___3.format = "Slot %d input context\n";
    descriptor___3.lineno = 1251U;
    descriptor___3.flags = 1U;
    tmp___8 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___8 != 0L) {
      tmp___7 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___7->self.controller,
                        "Slot %d input context\n", slot_id);
    } else {
    }
    xhci_dbg_ctx(xhci, in_ctx, ep_index);
    descriptor___4.modname = "xhci_hcd";
    descriptor___4.function = "xhci_check_maxpacket";
    descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___4.format = "Slot %d output context\n";
    descriptor___4.lineno = 1253U;
    descriptor___4.flags = 1U;
    tmp___10 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___10 != 0L) {
      tmp___9 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___9->self.controller,
                        "Slot %d output context\n", slot_id);
    } else {
    }
    xhci_dbg_ctx(xhci, out_ctx, ep_index);
    ret = xhci_configure_endpoint(xhci, urb->dev, 0, 1, 0);
    ctrl_ctx->add_flags = 1U;
  } else {
  }
  return (ret);
}
}
int xhci_urb_enqueue(struct usb_hcd *hcd , struct urb *urb , gfp_t mem_flags )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  struct xhci_td *buffer ;
  unsigned long flags ;
  int ret ;
  unsigned int slot_id ;
  unsigned int ep_index ;
  struct urb_priv *urb_priv ;
  int size ;
  int i ;
  int tmp___0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct thread_info *tmp___3 ;
  int tmp___4 ;
  void *tmp___5 ;
  void *tmp___6 ;
  raw_spinlock_t *tmp___7 ;
  raw_spinlock_t *tmp___8 ;
  struct usb_hcd *tmp___9 ;
  struct usb_hcd *tmp___10 ;
  raw_spinlock_t *tmp___11 ;
  raw_spinlock_t *tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___16 ;
  long tmp___17 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  ret = 0;
  if ((unsigned long )urb == (unsigned long )((struct urb *)0)) {
    return (-22);
  } else {
    tmp___0 = xhci_check_args(hcd, urb->dev, urb->ep, 1, 1, "xhci_urb_enqueue");
    if (tmp___0 <= 0) {
      return (-22);
    } else {
    }
  }
  slot_id = (unsigned int )(urb->dev)->slot_id;
  ep_index = xhci_get_endpoint_index(& (urb->ep)->desc);
  if ((hcd->flags & 1UL) == 0UL) {
    tmp___3 = current_thread_info();
    if (((unsigned long )tmp___3->preempt_count & 134217472UL) == 0UL) {
      descriptor.modname = "xhci_hcd";
      descriptor.function = "xhci_urb_enqueue";
      descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
      descriptor.format = "urb submitted during PCI suspend\n";
      descriptor.lineno = 1290U;
      descriptor.flags = 1U;
      tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___2 != 0L) {
        tmp___1 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                          "urb submitted during PCI suspend\n");
      } else {
      }
    } else {
    }
    ret = -108;
    goto exit;
  } else {
  }
  tmp___4 = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
  if (tmp___4 != 0) {
    size = urb->number_of_packets;
  } else {
    size = 1;
  }
  tmp___5 = kzalloc(((unsigned long )size + 1UL) * 8UL, mem_flags);
  urb_priv = (struct urb_priv *)tmp___5;
  if ((unsigned long )urb_priv == (unsigned long )((struct urb_priv *)0)) {
    return (-12);
  } else {
  }
  tmp___6 = kzalloc((unsigned long )size * 64UL, mem_flags);
  buffer = (struct xhci_td *)tmp___6;
  if ((unsigned long )buffer == (unsigned long )((struct xhci_td *)0)) {
    kfree((void const *)urb_priv);
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_31395;
  ldv_31394:
  urb_priv->td[i] = buffer;
  buffer = buffer + 1;
  i = i + 1;
  ldv_31395: ;
  if (i < size) {
    goto ldv_31394;
  } else {
  }
  urb_priv->length = size;
  urb_priv->td_cnt = 0;
  urb->hcpriv = (void *)urb_priv;
  tmp___15 = usb_endpoint_xfer_control((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
  if (tmp___15 != 0) {
    if ((unsigned int )(urb->dev)->speed == 2U) {
      ret = xhci_check_maxpacket(xhci, slot_id, ep_index, urb);
      if (ret < 0) {
        xhci_urb_free_priv(xhci, urb_priv);
        urb->hcpriv = 0;
        return (ret);
      } else {
      }
    } else {
    }
    tmp___7 = spinlock_check(& xhci->lock);
    flags = _raw_spin_lock_irqsave(tmp___7);
    if ((int )xhci->xhc_state & 1) {
      goto dying;
    } else {
    }
    ret = xhci_queue_ctrl_tx(xhci, 32U, urb, (int )slot_id, ep_index);
    if (ret != 0) {
      goto free_priv;
    } else {
    }
    spin_unlock_irqrestore(& xhci->lock, flags);
  } else {
    tmp___14 = usb_endpoint_xfer_bulk((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
    if (tmp___14 != 0) {
      tmp___8 = spinlock_check(& xhci->lock);
      flags = _raw_spin_lock_irqsave(tmp___8);
      if ((int )xhci->xhc_state & 1) {
        goto dying;
      } else {
      }
      if (((xhci->devs[slot_id])->eps[ep_index].ep_state & 8U) != 0U) {
        tmp___9 = xhci_to_hcd(xhci);
        dev_warn((struct device const *)tmp___9->self.controller, "WARN: Can\'t enqueue URB while bulk ep is transitioning to using streams.\n");
        ret = -22;
      } else
      if (((xhci->devs[slot_id])->eps[ep_index].ep_state & 32U) != 0U) {
        tmp___10 = xhci_to_hcd(xhci);
        dev_warn((struct device const *)tmp___10->self.controller, "WARN: Can\'t enqueue URB while bulk ep is transitioning to not having streams.\n");
        ret = -22;
      } else {
        ret = xhci_queue_bulk_tx(xhci, 32U, urb, (int )slot_id, ep_index);
      }
      if (ret != 0) {
        goto free_priv;
      } else {
      }
      spin_unlock_irqrestore(& xhci->lock, flags);
    } else {
      tmp___13 = usb_endpoint_xfer_int((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
      if (tmp___13 != 0) {
        tmp___11 = spinlock_check(& xhci->lock);
        flags = _raw_spin_lock_irqsave(tmp___11);
        if ((int )xhci->xhc_state & 1) {
          goto dying;
        } else {
        }
        ret = xhci_queue_intr_tx(xhci, 32U, urb, (int )slot_id, ep_index);
        if (ret != 0) {
          goto free_priv;
        } else {
        }
        spin_unlock_irqrestore(& xhci->lock, flags);
      } else {
        tmp___12 = spinlock_check(& xhci->lock);
        flags = _raw_spin_lock_irqsave(tmp___12);
        if ((int )xhci->xhc_state & 1) {
          goto dying;
        } else {
        }
        ret = xhci_queue_isoc_tx_prepare(xhci, 32U, urb, (int )slot_id, ep_index);
        if (ret != 0) {
          goto free_priv;
        } else {
        }
        spin_unlock_irqrestore(& xhci->lock, flags);
      }
    }
  }
  exit: ;
  return (ret);
  dying:
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_urb_enqueue";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___0.format = "Ep 0x%x: URB %p submitted for non-responsive xHCI host.\n";
  descriptor___0.lineno = 1391U;
  descriptor___0.flags = 1U;
  tmp___17 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___17 != 0L) {
    tmp___16 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___16->self.controller,
                      "Ep 0x%x: URB %p submitted for non-responsive xHCI host.\n",
                      (int )(urb->ep)->desc.bEndpointAddress, urb);
  } else {
  }
  ret = -108;
  free_priv:
  xhci_urb_free_priv(xhci, urb_priv);
  urb->hcpriv = 0;
  spin_unlock_irqrestore(& xhci->lock, flags);
  return (ret);
}
}
static struct xhci_ring *xhci_urb_to_transfer_ring(struct xhci_hcd *xhci , struct urb *urb )
{
  unsigned int slot_id ;
  unsigned int ep_index ;
  unsigned int stream_id ;
  struct xhci_virt_ep *ep ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  {
  slot_id = (unsigned int )(urb->dev)->slot_id;
  ep_index = xhci_get_endpoint_index(& (urb->ep)->desc);
  stream_id = urb->stream_id;
  ep = (struct xhci_virt_ep *)(& (xhci->devs[slot_id])->eps) + (unsigned long )ep_index;
  if ((ep->ep_state & 16U) == 0U) {
    return (ep->ring);
  } else {
  }
  if (stream_id == 0U) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "WARN: Slot ID %u, ep index %u has streams, but URB has no stream ID.\n",
             slot_id, ep_index);
    return (0);
  } else {
  }
  if ((ep->stream_info)->num_streams > stream_id) {
    return (*((ep->stream_info)->stream_rings + (unsigned long )stream_id));
  } else {
  }
  tmp___0 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___0->self.controller, "WARN: Slot ID %u, ep index %u has stream IDs 1 to %u allocated, but stream ID %u is requested.\n",
           slot_id, ep_index, (ep->stream_info)->num_streams - 1U, stream_id);
  return (0);
}
}
int xhci_urb_dequeue(struct usb_hcd *hcd , struct urb *urb , int status )
{
  unsigned long flags ;
  int ret ;
  int i ;
  u32 temp ;
  struct xhci_hcd *xhci ;
  struct urb_priv *urb_priv ;
  struct xhci_td *td ;
  unsigned int ep_index ;
  struct xhci_ring *ep_ring ;
  struct xhci_virt_ep *ep ;
  raw_spinlock_t *tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___1 ;
  dma_addr_t tmp___6 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  {
  xhci = hcd_to_xhci(hcd);
  tmp = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  ret = usb_hcd_check_unlink_urb(hcd, urb, status);
  if (ret != 0 || (unsigned long )urb->hcpriv == (unsigned long )((void *)0)) {
    goto done;
  } else {
  }
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->status);
  if (temp == 4294967295U || (xhci->xhc_state & 2U) != 0U) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_urb_dequeue";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "HW died, freeing TD.\n";
    descriptor.lineno = 1492U;
    descriptor.flags = 1U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                        "HW died, freeing TD.\n");
    } else {
    }
    urb_priv = (struct urb_priv *)urb->hcpriv;
    i = urb_priv->td_cnt;
    goto ldv_31442;
    ldv_31441:
    td = urb_priv->td[i];
    tmp___2 = list_empty((struct list_head const *)(& td->td_list));
    if (tmp___2 == 0) {
      list_del_init(& td->td_list);
    } else {
    }
    tmp___3 = list_empty((struct list_head const *)(& td->cancelled_td_list));
    if (tmp___3 == 0) {
      list_del_init(& td->cancelled_td_list);
    } else {
    }
    i = i + 1;
    ldv_31442: ;
    if (urb_priv->length > i) {
      goto ldv_31441;
    } else {
    }
    usb_hcd_unlink_urb_from_ep(hcd, urb);
    spin_unlock_irqrestore(& xhci->lock, flags);
    usb_hcd_giveback_urb(hcd, urb, -108);
    xhci_urb_free_priv(xhci, urb_priv);
    return (ret);
  } else {
  }
  if ((int )xhci->xhc_state & 1 || (xhci->xhc_state & 2U) != 0U) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_urb_dequeue";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___0.format = "Ep 0x%x: URB %p to be canceled on non-responsive xHCI host.\n";
    descriptor___0.lineno = 1512U;
    descriptor___0.flags = 1U;
    tmp___5 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      tmp___4 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___4->self.controller,
                        "Ep 0x%x: URB %p to be canceled on non-responsive xHCI host.\n",
                        (int )(urb->ep)->desc.bEndpointAddress, urb);
    } else {
    }
    goto done;
  } else {
  }
  ep_index = xhci_get_endpoint_index(& (urb->ep)->desc);
  ep = (struct xhci_virt_ep *)(& (xhci->devs[(urb->dev)->slot_id])->eps) + (unsigned long )ep_index;
  ep_ring = xhci_urb_to_transfer_ring(xhci, urb);
  if ((unsigned long )ep_ring == (unsigned long )((struct xhci_ring *)0)) {
    ret = -22;
    goto done;
  } else {
  }
  urb_priv = (struct urb_priv *)urb->hcpriv;
  i = urb_priv->td_cnt;
  if (urb_priv->length > i) {
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "xhci_urb_dequeue";
    descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___1.format = "Cancel URB %p, dev %s, ep 0x%x, starting at offset 0x%llx\n";
    descriptor___1.lineno = 1538U;
    descriptor___1.flags = 1U;
    tmp___8 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___8 != 0L) {
      tmp___6 = xhci_trb_virt_to_dma((urb_priv->td[i])->start_seg, (urb_priv->td[i])->first_trb);
      tmp___7 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___7->self.controller,
                        "Cancel URB %p, dev %s, ep 0x%x, starting at offset 0x%llx\n",
                        urb, (char *)(& (urb->dev)->devpath), (int )(urb->ep)->desc.bEndpointAddress,
                        tmp___6);
    } else {
    }
  } else {
  }
  goto ldv_31447;
  ldv_31446:
  td = urb_priv->td[i];
  list_add_tail(& td->cancelled_td_list, & ep->cancelled_td_list);
  i = i + 1;
  ldv_31447: ;
  if (urb_priv->length > i) {
    goto ldv_31446;
  } else {
  }
  if ((ep->ep_state & 4U) == 0U) {
    ep->ep_state = ep->ep_state | 4U;
    ep->stop_cmds_pending = ep->stop_cmds_pending + 1;
    ep->stop_cmd_timer.expires = (unsigned long )jiffies + 1250UL;
    add_timer(& ep->stop_cmd_timer);
    xhci_queue_stop_endpoint(xhci, (urb->dev)->slot_id, ep_index, 0);
    xhci_ring_cmd_db(xhci);
  } else {
  }
  done:
  spin_unlock_irqrestore(& xhci->lock, flags);
  return (ret);
}
}
int xhci_drop_endpoint(struct usb_hcd *hcd , struct usb_device *udev , struct usb_host_endpoint *ep )
{
  struct xhci_hcd *xhci ;
  struct xhci_container_ctx *in_ctx ;
  struct xhci_container_ctx *out_ctx ;
  struct xhci_input_control_ctx *ctrl_ctx ;
  struct xhci_slot_ctx *slot_ctx ;
  unsigned int last_ctx ;
  unsigned int ep_index ;
  struct xhci_ep_ctx *ep_ctx ;
  u32 drop_flag ;
  u32 new_add_flags ;
  u32 new_drop_flags ;
  u32 new_slot_info ;
  int ret ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct usb_hcd *tmp___3 ;
  unsigned int tmp___4 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  {
  ret = xhci_check_args(hcd, udev, ep, 1, 1, "xhci_drop_endpoint");
  if (ret <= 0) {
    return (ret);
  } else {
  }
  xhci = hcd_to_xhci(hcd);
  if ((int )xhci->xhc_state & 1) {
    return (-19);
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_drop_endpoint";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "%s called for udev %p\n";
  descriptor.lineno = 1596U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "%s called for udev %p\n", "xhci_drop_endpoint", udev);
  } else {
  }
  drop_flag = xhci_get_endpoint_flag(& ep->desc);
  if (drop_flag == 1U || drop_flag == 2U) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_drop_endpoint";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___0.format = "xHCI %s - can\'t drop slot or ep 0 %#x\n";
    descriptor___0.lineno = 1600U;
    descriptor___0.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                        "xHCI %s - can\'t drop slot or ep 0 %#x\n", "xhci_drop_endpoint",
                        drop_flag);
    } else {
    }
    return (0);
  } else {
  }
  in_ctx = (xhci->devs[udev->slot_id])->in_ctx;
  out_ctx = (xhci->devs[udev->slot_id])->out_ctx;
  ctrl_ctx = xhci_get_input_control_ctx(xhci, in_ctx);
  ep_index = xhci_get_endpoint_index(& ep->desc);
  ep_ctx = xhci_get_ep_ctx(xhci, out_ctx, ep_index);
  if ((ep_ctx->ep_info & 15U) == 0U) {
    tmp___3 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___3->self.controller, "xHCI %s called with disabled ep %p\n",
             "xhci_drop_endpoint", ep);
    return (0);
  } else {
    tmp___4 = xhci_get_endpoint_flag(& ep->desc);
    if ((ctrl_ctx->drop_flags & tmp___4) != 0U) {
      tmp___3 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___3->self.controller, "xHCI %s called with disabled ep %p\n",
               "xhci_drop_endpoint", ep);
      return (0);
    } else {
    }
  }
  ctrl_ctx->drop_flags = ctrl_ctx->drop_flags | drop_flag;
  new_drop_flags = ctrl_ctx->drop_flags;
  ctrl_ctx->add_flags = ctrl_ctx->add_flags & ~ drop_flag;
  new_add_flags = ctrl_ctx->add_flags;
  last_ctx = xhci_last_valid_endpoint(ctrl_ctx->add_flags);
  slot_ctx = xhci_get_slot_ctx(xhci, in_ctx);
  if ((slot_ctx->dev_info & 4160749568U) > last_ctx << 27) {
    slot_ctx->dev_info = slot_ctx->dev_info & 134217727U;
    slot_ctx->dev_info = slot_ctx->dev_info | (last_ctx << 27);
  } else {
  }
  new_slot_info = slot_ctx->dev_info;
  xhci_endpoint_zero(xhci, xhci->devs[udev->slot_id], ep);
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_drop_endpoint";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___1.format = "drop ep 0x%x, slot id %d, new drop flags = %#x, new add flags = %#x, new slot info = %#x\n";
  descriptor___1.lineno = 1644U;
  descriptor___1.flags = 1U;
  tmp___6 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___5->self.controller,
                      "drop ep 0x%x, slot id %d, new drop flags = %#x, new add flags = %#x, new slot info = %#x\n",
                      (unsigned int )ep->desc.bEndpointAddress, udev->slot_id, new_drop_flags,
                      new_add_flags, new_slot_info);
  } else {
  }
  return (0);
}
}
int xhci_add_endpoint(struct usb_hcd *hcd , struct usb_device *udev , struct usb_host_endpoint *ep )
{
  struct xhci_hcd *xhci ;
  struct xhci_container_ctx *in_ctx ;
  struct xhci_container_ctx *out_ctx ;
  unsigned int ep_index ;
  struct xhci_slot_ctx *slot_ctx ;
  struct xhci_input_control_ctx *ctrl_ctx ;
  u32 added_ctxs ;
  unsigned int last_ctx ;
  u32 new_add_flags ;
  u32 new_drop_flags ;
  u32 new_slot_info ;
  struct xhci_virt_device *virt_dev ;
  int ret ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct usb_hcd *tmp___1 ;
  unsigned int tmp___2 ;
  struct usb_hcd *tmp___3 ;
  unsigned int tmp___4 ;
  struct _ddebug descriptor___0 ;
  long tmp___5 ;
  int tmp___6 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  {
  ret = 0;
  ret = xhci_check_args(hcd, udev, ep, 1, 1, "xhci_add_endpoint");
  if (ret <= 0) {
    ep->hcpriv = 0;
    return (ret);
  } else {
  }
  xhci = hcd_to_xhci(hcd);
  if ((int )xhci->xhc_state & 1) {
    return (-19);
  } else {
  }
  added_ctxs = xhci_get_endpoint_flag(& ep->desc);
  last_ctx = xhci_last_valid_endpoint(added_ctxs);
  if (added_ctxs == 1U || added_ctxs == 2U) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_add_endpoint";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "xHCI %s - can\'t add slot or ep 0 %#x\n";
    descriptor.lineno = 1693U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "xHCI %s - can\'t add slot or ep 0 %#x\n", "xhci_add_endpoint",
                        added_ctxs);
    } else {
    }
    return (0);
  } else {
  }
  virt_dev = xhci->devs[udev->slot_id];
  in_ctx = virt_dev->in_ctx;
  out_ctx = virt_dev->out_ctx;
  ctrl_ctx = xhci_get_input_control_ctx(xhci, in_ctx);
  ep_index = xhci_get_endpoint_index(& ep->desc);
  if ((unsigned long )virt_dev->eps[ep_index].ring != (unsigned long )((struct xhci_ring *)0)) {
    tmp___2 = xhci_get_endpoint_flag(& ep->desc);
    if ((ctrl_ctx->drop_flags & tmp___2) == 0U) {
      tmp___1 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___1->self.controller, "Trying to add endpoint 0x%x without dropping it.\n",
               (unsigned int )ep->desc.bEndpointAddress);
      return (-22);
    } else {
    }
  } else {
  }
  tmp___4 = xhci_get_endpoint_flag(& ep->desc);
  if ((ctrl_ctx->add_flags & tmp___4) != 0U) {
    tmp___3 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___3->self.controller, "xHCI %s called with enabled ep %p\n",
             "xhci_add_endpoint", ep);
    return (0);
  } else {
  }
  tmp___6 = xhci_endpoint_init(xhci, virt_dev, udev, ep, 16U);
  if (tmp___6 < 0) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_add_endpoint";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___0.format = "%s - could not initialize ep %#x\n";
    descriptor___0.lineno = 1732U;
    descriptor___0.flags = 1U;
    tmp___5 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& udev->dev),
                        "%s - could not initialize ep %#x\n", "xhci_add_endpoint",
                        (int )ep->desc.bEndpointAddress);
    } else {
    }
    return (-12);
  } else {
  }
  ctrl_ctx->add_flags = ctrl_ctx->add_flags | added_ctxs;
  new_add_flags = ctrl_ctx->add_flags;
  new_drop_flags = ctrl_ctx->drop_flags;
  slot_ctx = xhci_get_slot_ctx(xhci, in_ctx);
  if ((slot_ctx->dev_info & 4160749568U) < last_ctx << 27) {
    slot_ctx->dev_info = slot_ctx->dev_info & 134217727U;
    slot_ctx->dev_info = slot_ctx->dev_info | (last_ctx << 27);
  } else {
  }
  new_slot_info = slot_ctx->dev_info;
  ep->hcpriv = (void *)udev;
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_add_endpoint";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___1.format = "add ep 0x%x, slot id %d, new drop flags = %#x, new add flags = %#x, new slot info = %#x\n";
  descriptor___1.lineno = 1764U;
  descriptor___1.flags = 1U;
  tmp___8 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    tmp___7 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___7->self.controller,
                      "add ep 0x%x, slot id %d, new drop flags = %#x, new add flags = %#x, new slot info = %#x\n",
                      (unsigned int )ep->desc.bEndpointAddress, udev->slot_id, new_drop_flags,
                      new_add_flags, new_slot_info);
  } else {
  }
  return (0);
}
}
static void xhci_zero_in_ctx(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev )
{
  struct xhci_input_control_ctx *ctrl_ctx ;
  struct xhci_ep_ctx *ep_ctx ;
  struct xhci_slot_ctx *slot_ctx ;
  int i ;
  {
  ctrl_ctx = xhci_get_input_control_ctx(xhci, virt_dev->in_ctx);
  ctrl_ctx->drop_flags = 0U;
  ctrl_ctx->add_flags = 0U;
  slot_ctx = xhci_get_slot_ctx(xhci, virt_dev->in_ctx);
  slot_ctx->dev_info = slot_ctx->dev_info & 134217727U;
  slot_ctx->dev_info = slot_ctx->dev_info | 134217728U;
  i = 1;
  goto ldv_31502;
  ldv_31501:
  ep_ctx = xhci_get_ep_ctx(xhci, virt_dev->in_ctx, (unsigned int )i);
  ep_ctx->ep_info = 0U;
  ep_ctx->ep_info2 = 0U;
  ep_ctx->deq = 0ULL;
  ep_ctx->tx_info = 0U;
  i = i + 1;
  ldv_31502: ;
  if (i <= 30) {
    goto ldv_31501;
  } else {
  }
  return;
}
}
static int xhci_configure_endpoint_result(struct xhci_hcd *xhci , struct usb_device *udev ,
                                          u32 *cmd_status )
{
  int ret ;
  struct _ddebug descriptor ;
  long tmp ;
  struct usb_hcd *tmp___0 ;
  {
  switch (*cmd_status) {
  case 7U:
  dev_warn((struct device const *)(& udev->dev), "Not enough host controller resources for new device state.\n");
  ret = -12;
  goto ldv_31511;
  case 8U: ;
  case 35U:
  dev_warn((struct device const *)(& udev->dev), "Not enough bandwidth for new device state.\n");
  ret = -28;
  goto ldv_31511;
  case 5U:
  dev_warn((struct device const *)(& udev->dev), "ERROR: Endpoint drop flag = 0, add flag = 1, and endpoint is not disabled.\n");
  ret = -22;
  goto ldv_31511;
  case 22U:
  dev_warn((struct device const *)(& udev->dev), "ERROR: Incompatible device for endpoint configure command.\n");
  ret = -19;
  goto ldv_31511;
  case 1U:
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_configure_endpoint_result";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "Successful Endpoint Configure command\n";
  descriptor.lineno = 1828U;
  descriptor.flags = 1U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& udev->dev), "Successful Endpoint Configure command\n");
  } else {
  }
  ret = 0;
  goto ldv_31511;
  default:
  tmp___0 = xhci_to_hcd(xhci);
  dev_err((struct device const *)tmp___0->self.controller, "ERROR: unexpected command completion code 0x%x.\n",
          *cmd_status);
  ret = -22;
  goto ldv_31511;
  }
  ldv_31511: ;
  return (ret);
}
}
static int xhci_evaluate_context_result(struct xhci_hcd *xhci , struct usb_device *udev ,
                                        u32 *cmd_status )
{
  int ret ;
  struct xhci_virt_device *virt_dev ;
  struct _ddebug descriptor ;
  long tmp ;
  struct usb_hcd *tmp___0 ;
  {
  virt_dev = xhci->devs[udev->slot_id];
  switch (*cmd_status) {
  case 17U:
  dev_warn((struct device const *)(& udev->dev), "WARN: xHCI driver setup invalid evaluate context command.\n");
  ret = -22;
  goto ldv_31528;
  case 11U:
  dev_warn((struct device const *)(& udev->dev), "WARN: slot not enabled forevaluate context command.\n");
  ret = -22;
  goto ldv_31528;
  case 19U:
  dev_warn((struct device const *)(& udev->dev), "WARN: invalid context state for evaluate context command.\n");
  xhci_dbg_ctx(xhci, virt_dev->out_ctx, 1U);
  ret = -22;
  goto ldv_31528;
  case 22U:
  dev_warn((struct device const *)(& udev->dev), "ERROR: Incompatible device for evaluate context command.\n");
  ret = -19;
  goto ldv_31528;
  case 29U:
  dev_warn((struct device const *)(& udev->dev), "WARN: Max Exit Latency too large\n");
  ret = -22;
  goto ldv_31528;
  case 1U:
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_evaluate_context_result";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "Successful evaluate context command\n";
  descriptor.lineno = 1874U;
  descriptor.flags = 1U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& udev->dev), "Successful evaluate context command\n");
  } else {
  }
  ret = 0;
  goto ldv_31528;
  default:
  tmp___0 = xhci_to_hcd(xhci);
  dev_err((struct device const *)tmp___0->self.controller, "ERROR: unexpected command completion code 0x%x.\n",
          *cmd_status);
  ret = -22;
  goto ldv_31528;
  }
  ldv_31528: ;
  return (ret);
}
}
static u32 xhci_count_num_new_endpoints(struct xhci_hcd *xhci , struct xhci_container_ctx *in_ctx )
{
  struct xhci_input_control_ctx *ctrl_ctx ;
  u32 valid_add_flags ;
  u32 valid_drop_flags ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  ctrl_ctx = xhci_get_input_control_ctx(xhci, in_ctx);
  valid_add_flags = ctrl_ctx->add_flags >> 2;
  valid_drop_flags = ctrl_ctx->drop_flags >> 2;
  tmp = __arch_hweight32(valid_add_flags);
  tmp___0 = __arch_hweight32(valid_add_flags & valid_drop_flags);
  return (tmp - tmp___0);
}
}
static unsigned int xhci_count_num_dropped_endpoints(struct xhci_hcd *xhci , struct xhci_container_ctx *in_ctx )
{
  struct xhci_input_control_ctx *ctrl_ctx ;
  u32 valid_add_flags ;
  u32 valid_drop_flags ;
  unsigned int tmp ;
  unsigned int tmp___0 ;
  {
  ctrl_ctx = xhci_get_input_control_ctx(xhci, in_ctx);
  valid_add_flags = ctrl_ctx->add_flags >> 2;
  valid_drop_flags = ctrl_ctx->drop_flags >> 2;
  tmp = __arch_hweight32(valid_drop_flags);
  tmp___0 = __arch_hweight32(valid_add_flags & valid_drop_flags);
  return (tmp - tmp___0);
}
}
static int xhci_reserve_host_resources(struct xhci_hcd *xhci , struct xhci_container_ctx *in_ctx )
{
  u32 added_eps ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  {
  added_eps = xhci_count_num_new_endpoints(xhci, in_ctx);
  if (xhci->num_active_eps + added_eps > xhci->limit_active_eps) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_reserve_host_resources";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "Not enough ep ctxs: %u active, need to add %u, limit is %u.\n";
    descriptor.lineno = 1947U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "Not enough ep ctxs: %u active, need to add %u, limit is %u.\n",
                        xhci->num_active_eps, added_eps, xhci->limit_active_eps);
    } else {
    }
    return (-12);
  } else {
  }
  xhci->num_active_eps = xhci->num_active_eps + added_eps;
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_reserve_host_resources";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___0.format = "Adding %u ep ctxs, %u now active.\n";
  descriptor___0.lineno = 1952U;
  descriptor___0.flags = 1U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                      "Adding %u ep ctxs, %u now active.\n", added_eps, xhci->num_active_eps);
  } else {
  }
  return (0);
}
}
static void xhci_free_host_resources(struct xhci_hcd *xhci , struct xhci_container_ctx *in_ctx )
{
  u32 num_failed_eps ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  num_failed_eps = xhci_count_num_new_endpoints(xhci, in_ctx);
  xhci->num_active_eps = xhci->num_active_eps - num_failed_eps;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_free_host_resources";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "Removing %u failed ep ctxs, %u now active.\n";
  descriptor.lineno = 1971U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "Removing %u failed ep ctxs, %u now active.\n", num_failed_eps,
                      xhci->num_active_eps);
  } else {
  }
  return;
}
}
static void xhci_finish_resource_reservation(struct xhci_hcd *xhci , struct xhci_container_ctx *in_ctx )
{
  u32 num_dropped_eps ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  num_dropped_eps = xhci_count_num_dropped_endpoints(xhci, in_ctx);
  xhci->num_active_eps = xhci->num_active_eps - num_dropped_eps;
  if (num_dropped_eps != 0U) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_finish_resource_reservation";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "Removing %u dropped ep ctxs, %u now active.\n";
    descriptor.lineno = 1990U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "Removing %u dropped ep ctxs, %u now active.\n", num_dropped_eps,
                        xhci->num_active_eps);
    } else {
    }
  } else {
  }
  return;
}
}
static unsigned int xhci_get_block_size(struct usb_device *udev )
{
  {
  switch ((unsigned int )udev->speed) {
  case 1U: ;
  case 2U: ;
  return (1U);
  case 3U: ;
  return (4U);
  case 5U: ;
  return (16U);
  case 0U: ;
  case 4U: ;
  default: ;
  return (1U);
  }
}
}
static unsigned int xhci_get_largest_overhead(struct xhci_interval_bw *interval_bw )
{
  {
  if (interval_bw->overhead[0] != 0U) {
    return (128U);
  } else {
  }
  if (interval_bw->overhead[1] != 0U) {
    return (20U);
  } else {
  }
  return (26U);
}
}
static int xhci_check_tt_bw_table(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                                  int old_active_eps )
{
  struct xhci_interval_bw_table *bw_table ;
  struct xhci_tt_bw_info *tt_info ;
  {
  bw_table = & (xhci->rh_bw + ((unsigned long )virt_dev->real_port + 0xffffffffffffffffUL))->bw_table;
  tt_info = virt_dev->tt_info;
  if (old_active_eps != 0) {
    return (0);
  } else {
  }
  if (old_active_eps == 0 && tt_info->active_eps != 0) {
    if (bw_table->bw_used + 125U > 1607U) {
      return (-12);
    } else {
    }
    return (0);
  } else {
  }
  return (0);
}
}
static int xhci_check_ss_bw(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev )
{
  unsigned int bw_reserved ;
  {
  bw_reserved = 391U;
  if ((virt_dev->bw_table)->ss_bw_in > 3906U - bw_reserved) {
    return (-12);
  } else {
  }
  bw_reserved = 391U;
  if ((virt_dev->bw_table)->ss_bw_out > 3906U - bw_reserved) {
    return (-12);
  } else {
  }
  return (0);
}
}
static int xhci_check_bw_table(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                               int old_active_eps )
{
  unsigned int bw_reserved ;
  unsigned int max_bandwidth ;
  unsigned int bw_used ;
  unsigned int block_size ;
  struct xhci_interval_bw_table *bw_table ;
  unsigned int packet_size ;
  unsigned int overhead ;
  unsigned int packets_transmitted ;
  unsigned int packets_remaining ;
  unsigned int i ;
  int tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct usb_hcd *tmp___2 ;
  int tmp___3 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  unsigned int tmp___8 ;
  unsigned int bw_added ;
  unsigned int largest_mps ;
  unsigned int interval_overhead ;
  struct xhci_virt_ep *virt_ep ;
  struct list_head *ep_entry ;
  struct list_head const *__mptr ;
  int tmp___9 ;
  struct usb_hcd *tmp___10 ;
  unsigned int port_index ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___11 ;
  long tmp___12 ;
  struct usb_hcd *tmp___13 ;
  {
  packet_size = 0U;
  overhead = 0U;
  packets_transmitted = 0U;
  packets_remaining = 0U;
  if ((unsigned int )(virt_dev->udev)->speed == 5U) {
    tmp = xhci_check_ss_bw(xhci, virt_dev);
    return (tmp);
  } else {
  }
  if ((unsigned int )(virt_dev->udev)->speed == 3U) {
    max_bandwidth = 1607U;
    bw_reserved = (max_bandwidth * 20U + 99U) / 100U;
  } else {
    max_bandwidth = 1285U;
    bw_reserved = (max_bandwidth * 10U + 99U) / 100U;
  }
  bw_table = virt_dev->bw_table;
  block_size = xhci_get_block_size(virt_dev->udev);
  if ((unsigned long )virt_dev->tt_info != (unsigned long )((struct xhci_tt_bw_info *)0)) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_check_bw_table";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "Recalculating BW for rootport %u\n";
    descriptor.lineno = 2150U;
    descriptor.flags = 1U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                        "Recalculating BW for rootport %u\n", (int )virt_dev->real_port);
    } else {
    }
    tmp___3 = xhci_check_tt_bw_table(xhci, virt_dev, old_active_eps);
    if (tmp___3 != 0) {
      tmp___2 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___2->self.controller, "Not enough bandwidth on HS bus for newly activated TT.\n");
      return (-12);
    } else {
    }
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_check_bw_table";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___0.format = "Recalculating BW for TT slot %u port %u\n";
    descriptor___0.lineno = 2158U;
    descriptor___0.flags = 1U;
    tmp___5 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      tmp___4 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___4->self.controller,
                        "Recalculating BW for TT slot %u port %u\n", (virt_dev->tt_info)->slot_id,
                        (virt_dev->tt_info)->ttport);
    } else {
    }
  } else {
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "xhci_check_bw_table";
    descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___1.format = "Recalculating BW for rootport %u\n";
    descriptor___1.lineno = 2161U;
    descriptor___1.flags = 1U;
    tmp___7 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      tmp___6 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___6->self.controller,
                        "Recalculating BW for rootport %u\n", (int )virt_dev->real_port);
    } else {
    }
  }
  tmp___8 = xhci_get_largest_overhead((struct xhci_interval_bw *)(& bw_table->interval_bw));
  bw_used = ((bw_table->interval0_esit_payload + block_size) - 1U) / block_size + bw_table->interval_bw[0].num_packets * tmp___8;
  i = 1U;
  goto ldv_31625;
  ldv_31624:
  packets_remaining = packets_remaining * 2U + bw_table->interval_bw[i].num_packets;
  tmp___9 = list_empty((struct list_head const *)(& bw_table->interval_bw[i].endpoints));
  if (tmp___9 != 0) {
    largest_mps = 0U;
  } else {
    ep_entry = bw_table->interval_bw[i].endpoints.next;
    __mptr = (struct list_head const *)ep_entry;
    virt_ep = (struct xhci_virt_ep *)__mptr + 0xfffffffffffffef8UL;
    largest_mps = ((virt_ep->bw_info.max_packet_size + block_size) - 1U) / block_size;
  }
  if (largest_mps > packet_size) {
    packet_size = largest_mps;
  } else {
  }
  interval_overhead = xhci_get_largest_overhead((struct xhci_interval_bw *)(& bw_table->interval_bw) + (unsigned long )i);
  if (interval_overhead > overhead) {
    overhead = interval_overhead;
  } else {
  }
  packets_transmitted = packets_remaining >> (int )(i + 1U);
  bw_added = (overhead + packet_size) * packets_transmitted;
  packets_remaining = (unsigned int )((1 << (int )(i + 1U)) + -1) & packets_remaining;
  if (packets_remaining == 0U) {
    packet_size = 0U;
    overhead = 0U;
  } else
  if (packets_transmitted != 0U) {
    packet_size = largest_mps;
    overhead = interval_overhead;
  } else {
  }
  bw_used = bw_used + bw_added;
  if (bw_used > max_bandwidth) {
    tmp___10 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___10->self.controller, "Not enough bandwidth. Proposed: %u, Max: %u\n",
             bw_used, max_bandwidth);
    return (-12);
  } else {
  }
  i = i + 1U;
  ldv_31625: ;
  if (i <= 15U) {
    goto ldv_31624;
  } else {
  }
  if (packets_remaining != 0U) {
    bw_used = (overhead + packet_size) + bw_used;
  } else {
  }
  if ((unsigned long )virt_dev->tt_info == (unsigned long )((struct xhci_tt_bw_info *)0) && (unsigned int )(virt_dev->udev)->speed == 3U) {
    port_index = (unsigned int )((int )virt_dev->real_port + -1);
    bw_used = (xhci->rh_bw + (unsigned long )port_index)->num_active_tts * 125U + bw_used;
  } else {
  }
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_check_bw_table";
  descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___2.format = "Final bandwidth: %u, Limit: %u, Reserved: %u, Available: %u percent\n";
  descriptor___2.lineno = 2272U;
  descriptor___2.flags = 1U;
  tmp___12 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___12 != 0L) {
    tmp___11 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___11->self.controller,
                      "Final bandwidth: %u, Limit: %u, Reserved: %u, Available: %u percent\n",
                      bw_used, max_bandwidth, bw_reserved, (((max_bandwidth - bw_used) - bw_reserved) * 100U) / max_bandwidth);
  } else {
  }
  bw_used = bw_used + bw_reserved;
  if (bw_used > max_bandwidth) {
    tmp___13 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___13->self.controller, "Not enough bandwidth. Proposed: %u, Max: %u\n",
             bw_used, max_bandwidth);
    return (-12);
  } else {
  }
  bw_table->bw_used = bw_used;
  return (0);
}
}
static bool xhci_is_async_ep(unsigned int ep_type )
{
  {
  return ((bool )(((ep_type != 1U && ep_type != 3U) && ep_type != 5U) && ep_type != 7U));
}
}
static bool xhci_is_sync_in_ep(unsigned int ep_type )
{
  {
  return ((bool )(ep_type == 5U || ep_type == 7U));
}
}
static unsigned int xhci_get_ss_bw_consumed(struct xhci_bw_info *ep_bw )
{
  unsigned int mps ;
  {
  mps = (ep_bw->max_packet_size + 15U) / 16U;
  if (ep_bw->ep_interval == 0U) {
    return ((ep_bw->mult * ep_bw->num_packets) * (mps + 8U) + 32U);
  } else {
  }
  return ((((ep_bw->mult * ep_bw->num_packets) * (mps + 40U) + (unsigned int )(1 << (int )ep_bw->ep_interval)) - 1U) >> (int )ep_bw->ep_interval);
}
}
void xhci_drop_ep_from_interval_table(struct xhci_hcd *xhci , struct xhci_bw_info *ep_bw ,
                                      struct xhci_interval_bw_table *bw_table , struct usb_device *udev ,
                                      struct xhci_virt_ep *virt_ep , struct xhci_tt_bw_info *tt_info )
{
  struct xhci_interval_bw *interval_bw ;
  int normalized_interval ;
  bool tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  bool tmp___2 ;
  int tmp___3 ;
  {
  tmp = xhci_is_async_ep(ep_bw->type);
  if ((int )tmp) {
    return;
  } else {
  }
  if ((unsigned int )udev->speed == 5U) {
    tmp___2 = xhci_is_sync_in_ep(ep_bw->type);
    if ((int )tmp___2) {
      tmp___0 = xhci_get_ss_bw_consumed(ep_bw);
      ((xhci->devs[udev->slot_id])->bw_table)->ss_bw_in = ((xhci->devs[udev->slot_id])->bw_table)->ss_bw_in - tmp___0;
    } else {
      tmp___1 = xhci_get_ss_bw_consumed(ep_bw);
      ((xhci->devs[udev->slot_id])->bw_table)->ss_bw_out = ((xhci->devs[udev->slot_id])->bw_table)->ss_bw_out - tmp___1;
    }
    return;
  } else {
  }
  tmp___3 = list_empty((struct list_head const *)(& virt_ep->bw_endpoint_list));
  if (tmp___3 != 0) {
    return;
  } else {
  }
  if ((unsigned int )udev->speed == 3U) {
    normalized_interval = (int )ep_bw->ep_interval;
  } else {
    normalized_interval = (int )(ep_bw->ep_interval - 3U);
  }
  if (normalized_interval == 0) {
    bw_table->interval0_esit_payload = bw_table->interval0_esit_payload - ep_bw->max_esit_payload;
  } else {
  }
  interval_bw = (struct xhci_interval_bw *)(& bw_table->interval_bw) + (unsigned long )normalized_interval;
  interval_bw->num_packets = interval_bw->num_packets - ep_bw->num_packets;
  switch ((unsigned int )udev->speed) {
  case 1U:
  interval_bw->overhead[0] = interval_bw->overhead[0] - 1U;
  goto ldv_31650;
  case 2U:
  interval_bw->overhead[1] = interval_bw->overhead[1] - 1U;
  goto ldv_31650;
  case 3U:
  interval_bw->overhead[2] = interval_bw->overhead[2] - 1U;
  goto ldv_31650;
  case 5U: ;
  case 0U: ;
  case 4U: ;
  return;
  }
  ldv_31650: ;
  if ((unsigned long )tt_info != (unsigned long )((struct xhci_tt_bw_info *)0)) {
    tt_info->active_eps = tt_info->active_eps + -1;
  } else {
  }
  list_del_init(& virt_ep->bw_endpoint_list);
  return;
}
}
static void xhci_add_ep_to_interval_table(struct xhci_hcd *xhci , struct xhci_bw_info *ep_bw ,
                                          struct xhci_interval_bw_table *bw_table ,
                                          struct usb_device *udev , struct xhci_virt_ep *virt_ep ,
                                          struct xhci_tt_bw_info *tt_info )
{
  struct xhci_interval_bw *interval_bw ;
  struct xhci_virt_ep *smaller_ep ;
  int normalized_interval ;
  bool tmp ;
  unsigned int tmp___0 ;
  unsigned int tmp___1 ;
  bool tmp___2 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  tmp = xhci_is_async_ep(ep_bw->type);
  if ((int )tmp) {
    return;
  } else {
  }
  if ((unsigned int )udev->speed == 5U) {
    tmp___2 = xhci_is_sync_in_ep(ep_bw->type);
    if ((int )tmp___2) {
      tmp___0 = xhci_get_ss_bw_consumed(ep_bw);
      ((xhci->devs[udev->slot_id])->bw_table)->ss_bw_in = ((xhci->devs[udev->slot_id])->bw_table)->ss_bw_in + tmp___0;
    } else {
      tmp___1 = xhci_get_ss_bw_consumed(ep_bw);
      ((xhci->devs[udev->slot_id])->bw_table)->ss_bw_out = ((xhci->devs[udev->slot_id])->bw_table)->ss_bw_out + tmp___1;
    }
    return;
  } else {
  }
  if ((unsigned int )udev->speed == 3U) {
    normalized_interval = (int )ep_bw->ep_interval;
  } else {
    normalized_interval = (int )(ep_bw->ep_interval - 3U);
  }
  if (normalized_interval == 0) {
    bw_table->interval0_esit_payload = bw_table->interval0_esit_payload + ep_bw->max_esit_payload;
  } else {
  }
  interval_bw = (struct xhci_interval_bw *)(& bw_table->interval_bw) + (unsigned long )normalized_interval;
  interval_bw->num_packets = interval_bw->num_packets + ep_bw->num_packets;
  switch ((unsigned int )udev->speed) {
  case 1U:
  interval_bw->overhead[0] = interval_bw->overhead[0] + 1U;
  goto ldv_31668;
  case 2U:
  interval_bw->overhead[1] = interval_bw->overhead[1] + 1U;
  goto ldv_31668;
  case 3U:
  interval_bw->overhead[2] = interval_bw->overhead[2] + 1U;
  goto ldv_31668;
  case 5U: ;
  case 0U: ;
  case 4U: ;
  return;
  }
  ldv_31668: ;
  if ((unsigned long )tt_info != (unsigned long )((struct xhci_tt_bw_info *)0)) {
    tt_info->active_eps = tt_info->active_eps + 1;
  } else {
  }
  __mptr = (struct list_head const *)interval_bw->endpoints.next;
  smaller_ep = (struct xhci_virt_ep *)__mptr + 0xfffffffffffffef8UL;
  goto ldv_31679;
  ldv_31678: ;
  if (ep_bw->max_packet_size >= smaller_ep->bw_info.max_packet_size) {
    list_add_tail(& virt_ep->bw_endpoint_list, & smaller_ep->bw_endpoint_list);
    return;
  } else {
  }
  __mptr___0 = (struct list_head const *)smaller_ep->bw_endpoint_list.next;
  smaller_ep = (struct xhci_virt_ep *)__mptr___0 + 0xfffffffffffffef8UL;
  ldv_31679: ;
  if ((unsigned long )(& smaller_ep->bw_endpoint_list) != (unsigned long )(& interval_bw->endpoints)) {
    goto ldv_31678;
  } else {
  }
  list_add_tail(& virt_ep->bw_endpoint_list, & interval_bw->endpoints);
  return;
}
}
void xhci_update_tt_active_eps(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                               int old_active_eps )
{
  struct xhci_root_port_bw_info *rh_bw_info ;
  {
  if ((unsigned long )virt_dev->tt_info == (unsigned long )((struct xhci_tt_bw_info *)0)) {
    return;
  } else {
  }
  rh_bw_info = xhci->rh_bw + ((unsigned long )virt_dev->real_port + 0xffffffffffffffffUL);
  if (old_active_eps == 0 && (virt_dev->tt_info)->active_eps != 0) {
    rh_bw_info->num_active_tts = rh_bw_info->num_active_tts + 1U;
    rh_bw_info->bw_table.bw_used = rh_bw_info->bw_table.bw_used + 125U;
  } else
  if (old_active_eps != 0 && (virt_dev->tt_info)->active_eps == 0) {
    rh_bw_info->num_active_tts = rh_bw_info->num_active_tts - 1U;
    rh_bw_info->bw_table.bw_used = rh_bw_info->bw_table.bw_used - 125U;
  } else {
  }
  return;
}
}
static int xhci_reserve_bandwidth(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                                  struct xhci_container_ctx *in_ctx )
{
  struct xhci_bw_info ep_bw_info[31U] ;
  int i ;
  struct xhci_input_control_ctx *ctrl_ctx ;
  int old_active_eps ;
  size_t __len ;
  void *__ret ;
  int tmp ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  old_active_eps = 0;
  if ((unsigned long )virt_dev->tt_info != (unsigned long )((struct xhci_tt_bw_info *)0)) {
    old_active_eps = (virt_dev->tt_info)->active_eps;
  } else {
  }
  ctrl_ctx = xhci_get_input_control_ctx(xhci, in_ctx);
  i = 0;
  goto ldv_31701;
  ldv_31700: ;
  if ((ctrl_ctx->add_flags & (__le32 )(1 << (i + 1))) == 0U && (ctrl_ctx->drop_flags & (__le32 )(1 << (i + 1))) == 0U) {
    goto ldv_31696;
  } else {
  }
  __len = 24UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& ep_bw_info) + (unsigned long )i, (void const *)(& virt_dev->eps[i].bw_info),
                     __len);
  } else {
    __ret = __builtin_memcpy((void *)(& ep_bw_info) + (unsigned long )i, (void const *)(& virt_dev->eps[i].bw_info),
                             __len);
  }
  if ((ctrl_ctx->drop_flags & (__le32 )(1 << (i + 1))) != 0U) {
    xhci_drop_ep_from_interval_table(xhci, & virt_dev->eps[i].bw_info, virt_dev->bw_table,
                                     virt_dev->udev, (struct xhci_virt_ep *)(& virt_dev->eps) + (unsigned long )i,
                                     virt_dev->tt_info);
  } else {
  }
  ldv_31696:
  i = i + 1;
  ldv_31701: ;
  if (i <= 30) {
    goto ldv_31700;
  } else {
  }
  xhci_update_bw_info(xhci, virt_dev->in_ctx, ctrl_ctx, virt_dev);
  i = 0;
  goto ldv_31704;
  ldv_31703: ;
  if ((ctrl_ctx->add_flags & (__le32 )(1 << (i + 1))) != 0U) {
    xhci_add_ep_to_interval_table(xhci, & virt_dev->eps[i].bw_info, virt_dev->bw_table,
                                  virt_dev->udev, (struct xhci_virt_ep *)(& virt_dev->eps) + (unsigned long )i,
                                  virt_dev->tt_info);
  } else {
  }
  i = i + 1;
  ldv_31704: ;
  if (i <= 30) {
    goto ldv_31703;
  } else {
  }
  tmp = xhci_check_bw_table(xhci, virt_dev, old_active_eps);
  if (tmp == 0) {
    xhci_update_tt_active_eps(xhci, virt_dev, old_active_eps);
    return (0);
  } else {
  }
  i = 0;
  goto ldv_31711;
  ldv_31710: ;
  if ((ctrl_ctx->add_flags & (__le32 )(1 << (i + 1))) == 0U && (ctrl_ctx->drop_flags & (__le32 )(1 << (i + 1))) == 0U) {
    goto ldv_31706;
  } else {
  }
  if ((ctrl_ctx->add_flags & (__le32 )(1 << (i + 1))) != 0U) {
    xhci_drop_ep_from_interval_table(xhci, & virt_dev->eps[i].bw_info, virt_dev->bw_table,
                                     virt_dev->udev, (struct xhci_virt_ep *)(& virt_dev->eps) + (unsigned long )i,
                                     virt_dev->tt_info);
  } else {
  }
  __len___0 = 24UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)(& virt_dev->eps[i].bw_info), (void const *)(& ep_bw_info) + (unsigned long )i,
                         __len___0);
  } else {
    __ret___0 = __builtin_memcpy((void *)(& virt_dev->eps[i].bw_info), (void const *)(& ep_bw_info) + (unsigned long )i,
                                 __len___0);
  }
  if ((ctrl_ctx->drop_flags & (__le32 )(1 << (i + 1))) != 0U) {
    xhci_add_ep_to_interval_table(xhci, & virt_dev->eps[i].bw_info, virt_dev->bw_table,
                                  virt_dev->udev, (struct xhci_virt_ep *)(& virt_dev->eps) + (unsigned long )i,
                                  virt_dev->tt_info);
  } else {
  }
  ldv_31706:
  i = i + 1;
  ldv_31711: ;
  if (i <= 30) {
    goto ldv_31710;
  } else {
  }
  return (-12);
}
}
static int xhci_configure_endpoint(struct xhci_hcd *xhci , struct usb_device *udev ,
                                   struct xhci_command *command , bool ctx_change ,
                                   bool must_succeed )
{
  int ret ;
  int timeleft ;
  unsigned long flags ;
  struct xhci_container_ctx *in_ctx ;
  struct completion *cmd_completion ;
  u32 *cmd_status ;
  struct xhci_virt_device *virt_dev ;
  union xhci_trb *cmd_trb ;
  raw_spinlock_t *tmp ;
  struct usb_hcd *tmp___0 ;
  int tmp___1 ;
  struct usb_hcd *tmp___2 ;
  int tmp___3 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  struct usb_hcd *tmp___7 ;
  raw_spinlock_t *tmp___8 ;
  {
  tmp = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  virt_dev = xhci->devs[udev->slot_id];
  if ((unsigned long )command != (unsigned long )((struct xhci_command *)0)) {
    in_ctx = command->in_ctx;
  } else {
    in_ctx = virt_dev->in_ctx;
  }
  if ((xhci->quirks & 32U) != 0U) {
    tmp___1 = xhci_reserve_host_resources(xhci, in_ctx);
    if (tmp___1 != 0) {
      spin_unlock_irqrestore(& xhci->lock, flags);
      tmp___0 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___0->self.controller, "Not enough host resources, active endpoint contexts = %u\n",
               xhci->num_active_eps);
      return (-12);
    } else {
    }
  } else {
  }
  if ((xhci->quirks & 256U) != 0U) {
    tmp___3 = xhci_reserve_bandwidth(xhci, virt_dev, in_ctx);
    if (tmp___3 != 0) {
      if ((xhci->quirks & 32U) != 0U) {
        xhci_free_host_resources(xhci, in_ctx);
      } else {
      }
      spin_unlock_irqrestore(& xhci->lock, flags);
      tmp___2 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___2->self.controller, "Not enough bandwidth\n");
      return (-12);
    } else {
    }
  } else {
  }
  if ((unsigned long )command != (unsigned long )((struct xhci_command *)0)) {
    cmd_completion = command->completion;
    cmd_status = & command->status;
    command->command_trb = (xhci->cmd_ring)->enqueue;
    if (((command->command_trb)->link.control & 64512U) == 6144U) {
      command->command_trb = (((xhci->cmd_ring)->enq_seg)->next)->trbs;
    } else {
    }
    list_add_tail(& command->cmd_list, & virt_dev->cmd_list);
  } else {
    cmd_completion = & virt_dev->cmd_completion;
    cmd_status = & virt_dev->cmd_status;
  }
  init_completion(cmd_completion);
  cmd_trb = (xhci->cmd_ring)->dequeue;
  if (! ctx_change) {
    ret = xhci_queue_configure_endpoint(xhci, in_ctx->dma, (u32 )udev->slot_id, (int )must_succeed);
  } else {
    ret = xhci_queue_evaluate_context(xhci, in_ctx->dma, (u32 )udev->slot_id, (int )must_succeed);
  }
  if (ret < 0) {
    if ((unsigned long )command != (unsigned long )((struct xhci_command *)0)) {
      list_del(& command->cmd_list);
    } else {
    }
    if ((xhci->quirks & 32U) != 0U) {
      xhci_free_host_resources(xhci, in_ctx);
    } else {
    }
    spin_unlock_irqrestore(& xhci->lock, flags);
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_configure_endpoint";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "FIXME allocate a new ring segment\n";
    descriptor.lineno = 2626U;
    descriptor.flags = 1U;
    tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      tmp___4 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___4->self.controller,
                        "FIXME allocate a new ring segment\n");
    } else {
    }
    return (-12);
  } else {
  }
  xhci_ring_cmd_db(xhci);
  spin_unlock_irqrestore(& xhci->lock, flags);
  tmp___6 = wait_for_completion_interruptible_timeout(cmd_completion, 1250UL);
  timeleft = (int )tmp___6;
  if (timeleft <= 0) {
    tmp___7 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___7->self.controller, "%s while waiting for %s command\n",
             timeleft == 0 ? (char *)"Timeout" : (char *)"Signal", ! ctx_change ? (char *)"configure endpoint" : (char *)"evaluate context");
    ret = xhci_cancel_cmd(xhci, command, cmd_trb);
    if (ret < 0) {
      return (ret);
    } else {
    }
    return (-62);
  } else {
  }
  if (! ctx_change) {
    ret = xhci_configure_endpoint_result(xhci, udev, cmd_status);
  } else {
    ret = xhci_evaluate_context_result(xhci, udev, cmd_status);
  }
  if ((xhci->quirks & 32U) != 0U) {
    tmp___8 = spinlock_check(& xhci->lock);
    flags = _raw_spin_lock_irqsave(tmp___8);
    if (ret != 0) {
      xhci_free_host_resources(xhci, in_ctx);
    } else {
      xhci_finish_resource_reservation(xhci, in_ctx);
    }
    spin_unlock_irqrestore(& xhci->lock, flags);
  } else {
  }
  return (ret);
}
}
int xhci_check_bandwidth(struct usb_hcd *hcd , struct usb_device *udev )
{
  int i ;
  int ret ;
  struct xhci_hcd *xhci ;
  struct xhci_virt_device *virt_dev ;
  struct xhci_input_control_ctx *ctrl_ctx ;
  struct xhci_slot_ctx *slot_ctx ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  {
  ret = 0;
  ret = xhci_check_args(hcd, udev, 0, 0, 1, "xhci_check_bandwidth");
  if (ret <= 0) {
    return (ret);
  } else {
  }
  xhci = hcd_to_xhci(hcd);
  if ((int )xhci->xhc_state & 1) {
    return (-19);
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_check_bandwidth";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "%s called for udev %p\n";
  descriptor.lineno = 2694U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "%s called for udev %p\n", "xhci_check_bandwidth", udev);
  } else {
  }
  virt_dev = xhci->devs[udev->slot_id];
  ctrl_ctx = xhci_get_input_control_ctx(xhci, virt_dev->in_ctx);
  ctrl_ctx->add_flags = ctrl_ctx->add_flags | 1U;
  ctrl_ctx->add_flags = ctrl_ctx->add_flags & 4294967293U;
  ctrl_ctx->drop_flags = ctrl_ctx->drop_flags & 4294967292U;
  if (ctrl_ctx->add_flags == 1U && ctrl_ctx->drop_flags == 0U) {
    return (0);
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_check_bandwidth";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___0.format = "New Input Control Context:\n";
  descriptor___0.lineno = 2708U;
  descriptor___0.flags = 1U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                      "New Input Control Context:\n");
  } else {
  }
  slot_ctx = xhci_get_slot_ctx(xhci, virt_dev->in_ctx);
  xhci_dbg_ctx(xhci, virt_dev->in_ctx, (slot_ctx->dev_info >> 27) - 1U);
  ret = xhci_configure_endpoint(xhci, udev, 0, 0, 0);
  if (ret != 0) {
    return (ret);
  } else {
  }
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_check_bandwidth";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___1.format = "Output context after successful config ep cmd:\n";
  descriptor___1.lineno = 2720U;
  descriptor___1.flags = 1U;
  tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___3->self.controller,
                      "Output context after successful config ep cmd:\n");
  } else {
  }
  xhci_dbg_ctx(xhci, virt_dev->out_ctx, (slot_ctx->dev_info >> 27) - 1U);
  i = 1;
  goto ldv_31751;
  ldv_31750: ;
  if ((ctrl_ctx->drop_flags & (__le32 )(1 << (i + 1))) != 0U && (ctrl_ctx->add_flags & (__le32 )(1 << (i + 1))) == 0U) {
    xhci_free_or_cache_endpoint_ring(xhci, virt_dev, (unsigned int )i);
  } else {
  }
  i = i + 1;
  ldv_31751: ;
  if (i <= 30) {
    goto ldv_31750;
  } else {
  }
  xhci_zero_in_ctx(xhci, virt_dev);
  i = 1;
  goto ldv_31755;
  ldv_31754: ;
  if ((unsigned long )virt_dev->eps[i].new_ring == (unsigned long )((struct xhci_ring *)0)) {
    goto ldv_31753;
  } else {
  }
  if ((unsigned long )virt_dev->eps[i].ring != (unsigned long )((struct xhci_ring *)0)) {
    xhci_free_or_cache_endpoint_ring(xhci, virt_dev, (unsigned int )i);
  } else {
  }
  virt_dev->eps[i].ring = virt_dev->eps[i].new_ring;
  virt_dev->eps[i].new_ring = 0;
  ldv_31753:
  i = i + 1;
  ldv_31755: ;
  if (i <= 30) {
    goto ldv_31754;
  } else {
  }
  return (ret);
}
}
void xhci_reset_bandwidth(struct usb_hcd *hcd , struct usb_device *udev )
{
  struct xhci_hcd *xhci ;
  struct xhci_virt_device *virt_dev ;
  int i ;
  int ret ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  ret = xhci_check_args(hcd, udev, 0, 0, 1, "xhci_reset_bandwidth");
  if (ret <= 0) {
    return;
  } else {
  }
  xhci = hcd_to_xhci(hcd);
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_reset_bandwidth";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "%s called for udev %p\n";
  descriptor.lineno = 2762U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "%s called for udev %p\n", "xhci_reset_bandwidth", udev);
  } else {
  }
  virt_dev = xhci->devs[udev->slot_id];
  i = 0;
  goto ldv_31768;
  ldv_31767: ;
  if ((unsigned long )virt_dev->eps[i].new_ring != (unsigned long )((struct xhci_ring *)0)) {
    xhci_ring_free(xhci, virt_dev->eps[i].new_ring);
    virt_dev->eps[i].new_ring = 0;
  } else {
  }
  i = i + 1;
  ldv_31768: ;
  if (i <= 30) {
    goto ldv_31767;
  } else {
  }
  xhci_zero_in_ctx(xhci, virt_dev);
  return;
}
}
static void xhci_setup_input_ctx_for_config_ep(struct xhci_hcd *xhci , struct xhci_container_ctx *in_ctx ,
                                               struct xhci_container_ctx *out_ctx ,
                                               u32 add_flags , u32 drop_flags )
{
  struct xhci_input_control_ctx *ctrl_ctx ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  unsigned int tmp___1 ;
  {
  ctrl_ctx = xhci_get_input_control_ctx(xhci, in_ctx);
  ctrl_ctx->add_flags = add_flags;
  ctrl_ctx->drop_flags = drop_flags;
  xhci_slot_copy(xhci, in_ctx, out_ctx);
  ctrl_ctx->add_flags = ctrl_ctx->add_flags | 1U;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_setup_input_ctx_for_config_ep";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "Input Context:\n";
  descriptor.lineno = 2786U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "Input Context:\n");
  } else {
  }
  tmp___1 = xhci_last_valid_endpoint(add_flags);
  xhci_dbg_ctx(xhci, in_ctx, tmp___1);
  return;
}
}
static void xhci_setup_input_ctx_for_quirk(struct xhci_hcd *xhci , unsigned int slot_id ,
                                           unsigned int ep_index , struct xhci_dequeue_state *deq_state )
{
  struct xhci_container_ctx *in_ctx ;
  struct xhci_ep_ctx *ep_ctx ;
  u32 added_ctxs ;
  dma_addr_t addr ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  {
  xhci_endpoint_copy(xhci, (xhci->devs[slot_id])->in_ctx, (xhci->devs[slot_id])->out_ctx,
                     ep_index);
  in_ctx = (xhci->devs[slot_id])->in_ctx;
  ep_ctx = xhci_get_ep_ctx(xhci, in_ctx, ep_index);
  addr = xhci_trb_virt_to_dma(deq_state->new_deq_seg, deq_state->new_deq_ptr);
  if (addr == 0ULL) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "WARN Cannot submit config ep after reset ep command\n");
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "WARN deq seg = %p, deq ptr = %p\n",
             deq_state->new_deq_seg, deq_state->new_deq_ptr);
    return;
  } else {
  }
  ep_ctx->deq = (dma_addr_t )deq_state->new_cycle_state | addr;
  added_ctxs = xhci_get_endpoint_flag_from_index(ep_index);
  xhci_setup_input_ctx_for_config_ep(xhci, (xhci->devs[slot_id])->in_ctx, (xhci->devs[slot_id])->out_ctx,
                                     added_ctxs, added_ctxs);
  return;
}
}
void xhci_cleanup_stalled_ring(struct xhci_hcd *xhci , struct usb_device *udev , unsigned int ep_index )
{
  struct xhci_dequeue_state deq_state ;
  struct xhci_virt_ep *ep ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  {
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_cleanup_stalled_ring";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "Cleaning up stalled endpoint ring\n";
  descriptor.lineno = 2826U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "Cleaning up stalled endpoint ring\n");
  } else {
  }
  ep = (struct xhci_virt_ep *)(& (xhci->devs[udev->slot_id])->eps) + (unsigned long )ep_index;
  xhci_find_new_dequeue_state(xhci, (unsigned int )udev->slot_id, ep_index, ep->stopped_stream,
                              ep->stopped_td, & deq_state);
  if ((xhci->quirks & 2U) == 0U) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_cleanup_stalled_ring";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___0.format = "Queueing new dequeue state\n";
    descriptor___0.lineno = 2839U;
    descriptor___0.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                        "Queueing new dequeue state\n");
    } else {
    }
    xhci_queue_new_dequeue_state(xhci, (unsigned int )udev->slot_id, ep_index, ep->stopped_stream,
                                 & deq_state);
  } else {
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "xhci_cleanup_stalled_ring";
    descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___1.format = "Setting up input context for configure endpoint command\n";
    descriptor___1.lineno = 2849U;
    descriptor___1.flags = 1U;
    tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      tmp___3 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___3->self.controller,
                        "Setting up input context for configure endpoint command\n");
    } else {
    }
    xhci_setup_input_ctx_for_quirk(xhci, (unsigned int )udev->slot_id, ep_index, & deq_state);
  }
  return;
}
}
void xhci_endpoint_reset(struct usb_hcd *hcd , struct usb_host_endpoint *ep )
{
  struct xhci_hcd *xhci ;
  struct usb_device *udev ;
  unsigned int ep_index ;
  unsigned long flags ;
  int ret ;
  struct xhci_virt_ep *virt_ep ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  raw_spinlock_t *tmp___6 ;
  struct usb_hcd *tmp___7 ;
  {
  xhci = hcd_to_xhci(hcd);
  udev = (struct usb_device *)ep->hcpriv;
  if ((unsigned long )ep->hcpriv == (unsigned long )((void *)0)) {
    return;
  } else {
  }
  ep_index = xhci_get_endpoint_index(& ep->desc);
  virt_ep = (struct xhci_virt_ep *)(& (xhci->devs[udev->slot_id])->eps) + (unsigned long )ep_index;
  if ((unsigned long )virt_ep->stopped_td == (unsigned long )((struct xhci_td *)0)) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_endpoint_reset";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "Endpoint 0x%x not halted, refusing to reset.\n";
    descriptor.lineno = 2882U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "Endpoint 0x%x not halted, refusing to reset.\n", (int )ep->desc.bEndpointAddress);
    } else {
    }
    return;
  } else {
  }
  tmp___3 = usb_endpoint_xfer_control((struct usb_endpoint_descriptor const *)(& ep->desc));
  if (tmp___3 != 0) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_endpoint_reset";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___0.format = "Control endpoint stall already handled.\n";
    descriptor___0.lineno = 2886U;
    descriptor___0.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                        "Control endpoint stall already handled.\n");
    } else {
    }
    return;
  } else {
  }
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_endpoint_reset";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___1.format = "Queueing reset endpoint command\n";
  descriptor___1.lineno = 2890U;
  descriptor___1.flags = 1U;
  tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    tmp___4 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___4->self.controller,
                      "Queueing reset endpoint command\n");
  } else {
  }
  tmp___6 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___6);
  ret = xhci_queue_reset_ep(xhci, udev->slot_id, ep_index);
  if (ret == 0) {
    xhci_cleanup_stalled_ring(xhci, udev, ep_index);
    kfree((void const *)virt_ep->stopped_td);
    xhci_ring_cmd_db(xhci);
  } else {
  }
  virt_ep->stopped_td = 0;
  virt_ep->stopped_trb = 0;
  virt_ep->stopped_stream = 0U;
  spin_unlock_irqrestore(& xhci->lock, flags);
  if (ret != 0) {
    tmp___7 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___7->self.controller, "FIXME allocate a new ring segment\n");
  } else {
  }
  return;
}
}
static int xhci_check_streams_endpoint(struct xhci_hcd *xhci , struct usb_device *udev ,
                                       struct usb_host_endpoint *ep , unsigned int slot_id )
{
  int ret ;
  unsigned int ep_index ;
  unsigned int ep_state ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  struct usb_hcd *tmp___1 ;
  struct usb_hcd *tmp___2 ;
  struct usb_hcd *tmp___3 ;
  int tmp___4 ;
  {
  if ((unsigned long )ep == (unsigned long )((struct usb_host_endpoint *)0)) {
    return (-22);
  } else {
  }
  tmp = xhci_to_hcd(xhci);
  ret = xhci_check_args(tmp, udev, ep, 1, 1, "xhci_check_streams_endpoint");
  if (ret <= 0) {
    return (-22);
  } else {
  }
  if ((unsigned int )ep->ss_ep_comp.bmAttributes == 0U) {
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "WARN: SuperSpeed Endpoint Companion descriptor for ep 0x%x does not support streams\n",
             (int )ep->desc.bEndpointAddress);
    return (-22);
  } else {
  }
  ep_index = xhci_get_endpoint_index(& ep->desc);
  ep_state = (xhci->devs[slot_id])->eps[ep_index].ep_state;
  if ((ep_state & 16U) != 0U || (ep_state & 8U) != 0U) {
    tmp___1 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___1->self.controller, "WARN: SuperSpeed bulk endpoint 0x%x already has streams set up.\n",
             (int )ep->desc.bEndpointAddress);
    tmp___2 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___2->self.controller, "Send email to xHCI maintainer and ask for dynamic stream context array reallocation.\n");
    return (-22);
  } else {
  }
  tmp___4 = list_empty((struct list_head const *)(& ((xhci->devs[slot_id])->eps[ep_index].ring)->td_list));
  if (tmp___4 == 0) {
    tmp___3 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___3->self.controller, "Cannot setup streams for SuperSpeed bulk endpoint 0x%x; URBs are pending.\n",
             (int )ep->desc.bEndpointAddress);
    return (-22);
  } else {
  }
  return (0);
}
}
static void xhci_calculate_streams_entries(struct xhci_hcd *xhci , unsigned int *num_streams ,
                                           unsigned int *num_stream_ctxs )
{
  unsigned int max_streams ;
  unsigned long tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  {
  tmp = __roundup_pow_of_two((unsigned long )*num_streams);
  *num_stream_ctxs = (unsigned int )tmp;
  max_streams = (unsigned int )(1 << (int )(((xhci->hcc_params >> 12) & 15U) + 1U));
  if (*num_stream_ctxs > max_streams) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_calculate_streams_entries";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "xHCI HW only supports %u stream ctx entries.\n";
    descriptor.lineno = 2968U;
    descriptor.flags = 1U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                        "xHCI HW only supports %u stream ctx entries.\n", max_streams);
    } else {
    }
    *num_stream_ctxs = max_streams;
    *num_streams = max_streams;
  } else {
  }
  return;
}
}
static int xhci_calculate_streams_and_bitmask(struct xhci_hcd *xhci , struct usb_device *udev ,
                                              struct usb_host_endpoint **eps , unsigned int num_eps ,
                                              unsigned int *num_streams , u32 *changed_ep_bitmask )
{
  unsigned int max_streams ;
  unsigned int endpoint_flag ;
  int i ;
  int ret ;
  int tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  {
  i = 0;
  goto ldv_31851;
  ldv_31850:
  ret = xhci_check_streams_endpoint(xhci, udev, *(eps + (unsigned long )i), (unsigned int )udev->slot_id);
  if (ret < 0) {
    return (ret);
  } else {
  }
  tmp = usb_ss_max_streams((struct usb_ss_ep_comp_descriptor const *)(& (*(eps + (unsigned long )i))->ss_ep_comp));
  max_streams = (unsigned int )tmp;
  if (*num_streams - 1U > max_streams) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_calculate_streams_and_bitmask";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "Ep 0x%x only supports %u stream IDs.\n";
    descriptor.lineno = 2998U;
    descriptor.flags = 1U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                        "Ep 0x%x only supports %u stream IDs.\n", (int )(*(eps + (unsigned long )i))->desc.bEndpointAddress,
                        max_streams);
    } else {
    }
    *num_streams = max_streams + 1U;
  } else {
  }
  endpoint_flag = xhci_get_endpoint_flag(& (*(eps + (unsigned long )i))->desc);
  if ((*changed_ep_bitmask & endpoint_flag) != 0U) {
    return (-22);
  } else {
  }
  *changed_ep_bitmask = *changed_ep_bitmask | endpoint_flag;
  i = i + 1;
  ldv_31851: ;
  if ((unsigned int )i < num_eps) {
    goto ldv_31850;
  } else {
  }
  return (0);
}
}
static u32 xhci_calculate_no_streams_bitmask(struct xhci_hcd *xhci , struct usb_device *udev ,
                                             struct usb_host_endpoint **eps , unsigned int num_eps )
{
  u32 changed_ep_bitmask ;
  unsigned int slot_id ;
  unsigned int ep_index ;
  unsigned int ep_state ;
  int i ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  struct usb_hcd *tmp___1 ;
  unsigned int tmp___2 ;
  {
  changed_ep_bitmask = 0U;
  slot_id = (unsigned int )udev->slot_id;
  if ((unsigned long )xhci->devs[slot_id] == (unsigned long )((struct xhci_virt_device *)0)) {
    return (0U);
  } else {
  }
  i = 0;
  goto ldv_31865;
  ldv_31864:
  ep_index = xhci_get_endpoint_index(& (*(eps + (unsigned long )i))->desc);
  ep_state = (xhci->devs[slot_id])->eps[ep_index].ep_state;
  if ((ep_state & 32U) != 0U) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "WARN Can\'t disable streams for endpoint 0x%x\n, streams are being disabled already.",
             (int )(*(eps + (unsigned long )i))->desc.bEndpointAddress);
    return (0U);
  } else {
  }
  if ((ep_state & 16U) == 0U && (ep_state & 8U) == 0U) {
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "WARN Can\'t disable streams for endpoint 0x%x\n, streams are already disabled!",
             (int )(*(eps + (unsigned long )i))->desc.bEndpointAddress);
    tmp___1 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___1->self.controller, "WARN xhci_free_streams() called with non-streams endpoint\n");
    return (0U);
  } else {
  }
  tmp___2 = xhci_get_endpoint_flag(& (*(eps + (unsigned long )i))->desc);
  changed_ep_bitmask = tmp___2 | changed_ep_bitmask;
  i = i + 1;
  ldv_31865: ;
  if ((unsigned int )i < num_eps) {
    goto ldv_31864;
  } else {
  }
  return (changed_ep_bitmask);
}
}
int xhci_alloc_streams(struct usb_hcd *hcd , struct usb_device *udev , struct usb_host_endpoint **eps ,
                       unsigned int num_eps , unsigned int num_streams , gfp_t mem_flags )
{
  int i ;
  int ret ;
  struct xhci_hcd *xhci ;
  struct xhci_virt_device *vdev ;
  struct xhci_command *config_cmd ;
  unsigned int ep_index ;
  unsigned int num_stream_ctxs ;
  unsigned long flags ;
  u32 changed_ep_bitmask ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  raw_spinlock_t *tmp___3 ;
  struct usb_hcd *tmp___4 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  struct xhci_ep_ctx *ep_ctx ;
  raw_spinlock_t *tmp___7 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___8 ;
  long tmp___9 ;
  {
  changed_ep_bitmask = 0U;
  if ((unsigned long )eps == (unsigned long )((struct usb_host_endpoint **)0)) {
    return (-22);
  } else {
  }
  num_streams = num_streams + 1U;
  xhci = hcd_to_xhci(hcd);
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_alloc_streams";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "Driver wants %u stream IDs (including stream 0).\n";
  descriptor.lineno = 3089U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "Driver wants %u stream IDs (including stream 0).\n", num_streams);
  } else {
  }
  config_cmd = xhci_alloc_command(xhci, 1, 1, mem_flags);
  if ((unsigned long )config_cmd == (unsigned long )((struct xhci_command *)0)) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_alloc_streams";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___0.format = "Could not allocate xHCI command structure.\n";
    descriptor___0.lineno = 3093U;
    descriptor___0.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                        "Could not allocate xHCI command structure.\n");
    } else {
    }
    return (-12);
  } else {
  }
  tmp___3 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___3);
  ret = xhci_calculate_streams_and_bitmask(xhci, udev, eps, num_eps, & num_streams,
                                           & changed_ep_bitmask);
  if (ret < 0) {
    xhci_free_command(xhci, config_cmd);
    spin_unlock_irqrestore(& xhci->lock, flags);
    return (ret);
  } else {
  }
  if (num_streams <= 1U) {
    tmp___4 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___4->self.controller, "WARN: endpoints can\'t handle more than one stream.\n");
    xhci_free_command(xhci, config_cmd);
    spin_unlock_irqrestore(& xhci->lock, flags);
    return (-22);
  } else {
  }
  vdev = xhci->devs[udev->slot_id];
  i = 0;
  goto ldv_31891;
  ldv_31890:
  ep_index = xhci_get_endpoint_index(& (*(eps + (unsigned long )i))->desc);
  vdev->eps[ep_index].ep_state = vdev->eps[ep_index].ep_state | 8U;
  i = i + 1;
  ldv_31891: ;
  if ((unsigned int )i < num_eps) {
    goto ldv_31890;
  } else {
  }
  spin_unlock_irqrestore(& xhci->lock, flags);
  xhci_calculate_streams_entries(xhci, & num_streams, & num_stream_ctxs);
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_alloc_streams";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___1.format = "Need %u stream ctx entries for %u stream IDs.\n";
  descriptor___1.lineno = 3132U;
  descriptor___1.flags = 1U;
  tmp___6 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___5->self.controller,
                      "Need %u stream ctx entries for %u stream IDs.\n", num_stream_ctxs,
                      num_streams);
  } else {
  }
  i = 0;
  goto ldv_31896;
  ldv_31895:
  ep_index = xhci_get_endpoint_index(& (*(eps + (unsigned long )i))->desc);
  vdev->eps[ep_index].stream_info = xhci_alloc_stream_info(xhci, num_stream_ctxs,
                                                           num_streams, mem_flags);
  if ((unsigned long )vdev->eps[ep_index].stream_info == (unsigned long )((struct xhci_stream_info *)0)) {
    goto cleanup;
  } else {
  }
  i = i + 1;
  ldv_31896: ;
  if ((unsigned int )i < num_eps) {
    goto ldv_31895;
  } else {
  }
  i = 0;
  goto ldv_31900;
  ldv_31899:
  ep_index = xhci_get_endpoint_index(& (*(eps + (unsigned long )i))->desc);
  ep_ctx = xhci_get_ep_ctx(xhci, config_cmd->in_ctx, ep_index);
  xhci_endpoint_copy(xhci, config_cmd->in_ctx, vdev->out_ctx, ep_index);
  xhci_setup_streams_ep_input_ctx(xhci, ep_ctx, vdev->eps[ep_index].stream_info);
  i = i + 1;
  ldv_31900: ;
  if ((unsigned int )i < num_eps) {
    goto ldv_31899;
  } else {
  }
  xhci_setup_input_ctx_for_config_ep(xhci, config_cmd->in_ctx, vdev->out_ctx, changed_ep_bitmask,
                                     changed_ep_bitmask);
  ret = xhci_configure_endpoint(xhci, udev, config_cmd, 0, 0);
  if (ret < 0) {
    goto cleanup;
  } else {
  }
  tmp___7 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___7);
  i = 0;
  goto ldv_31907;
  ldv_31906:
  ep_index = xhci_get_endpoint_index(& (*(eps + (unsigned long )i))->desc);
  vdev->eps[ep_index].ep_state = vdev->eps[ep_index].ep_state & 4294967287U;
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_alloc_streams";
  descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___2.format = "Slot %u ep ctx %u now has streams.\n";
  descriptor___2.lineno = 3180U;
  descriptor___2.flags = 1U;
  tmp___9 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___9 != 0L) {
    tmp___8 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___8->self.controller,
                      "Slot %u ep ctx %u now has streams.\n", udev->slot_id, ep_index);
  } else {
  }
  vdev->eps[ep_index].ep_state = vdev->eps[ep_index].ep_state | 16U;
  i = i + 1;
  ldv_31907: ;
  if ((unsigned int )i < num_eps) {
    goto ldv_31906;
  } else {
  }
  xhci_free_command(xhci, config_cmd);
  spin_unlock_irqrestore(& xhci->lock, flags);
  return ((int )(num_streams - 1U));
  cleanup:
  i = 0;
  goto ldv_31910;
  ldv_31909:
  ep_index = xhci_get_endpoint_index(& (*(eps + (unsigned long )i))->desc);
  xhci_free_stream_info(xhci, vdev->eps[ep_index].stream_info);
  vdev->eps[ep_index].stream_info = 0;
  vdev->eps[ep_index].ep_state = vdev->eps[ep_index].ep_state & 4294967287U;
  vdev->eps[ep_index].ep_state = vdev->eps[ep_index].ep_state & 4294967279U;
  xhci_endpoint_zero(xhci, vdev, *(eps + (unsigned long )i));
  i = i + 1;
  ldv_31910: ;
  if ((unsigned int )i < num_eps) {
    goto ldv_31909;
  } else {
  }
  xhci_free_command(xhci, config_cmd);
  return (-12);
}
}
int xhci_free_streams(struct usb_hcd *hcd , struct usb_device *udev , struct usb_host_endpoint **eps ,
                      unsigned int num_eps , gfp_t mem_flags )
{
  int i ;
  int ret ;
  struct xhci_hcd *xhci ;
  struct xhci_virt_device *vdev ;
  struct xhci_command *command ;
  unsigned int ep_index ;
  unsigned long flags ;
  u32 changed_ep_bitmask ;
  raw_spinlock_t *tmp ;
  struct xhci_ep_ctx *ep_ctx ;
  raw_spinlock_t *tmp___0 ;
  {
  xhci = hcd_to_xhci(hcd);
  vdev = xhci->devs[udev->slot_id];
  tmp = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  changed_ep_bitmask = xhci_calculate_no_streams_bitmask(xhci, udev, eps, num_eps);
  if (changed_ep_bitmask == 0U) {
    spin_unlock_irqrestore(& xhci->lock, flags);
    return (-22);
  } else {
  }
  ep_index = xhci_get_endpoint_index(& (*eps)->desc);
  command = (vdev->eps[ep_index].stream_info)->free_streams_command;
  i = 0;
  goto ldv_31932;
  ldv_31931:
  ep_index = xhci_get_endpoint_index(& (*(eps + (unsigned long )i))->desc);
  ep_ctx = xhci_get_ep_ctx(xhci, command->in_ctx, ep_index);
  (xhci->devs[udev->slot_id])->eps[ep_index].ep_state = (xhci->devs[udev->slot_id])->eps[ep_index].ep_state | 32U;
  xhci_endpoint_copy(xhci, command->in_ctx, vdev->out_ctx, ep_index);
  xhci_setup_no_streams_ep_input_ctx(xhci, ep_ctx, (struct xhci_virt_ep *)(& vdev->eps) + (unsigned long )ep_index);
  i = i + 1;
  ldv_31932: ;
  if ((unsigned int )i < num_eps) {
    goto ldv_31931;
  } else {
  }
  xhci_setup_input_ctx_for_config_ep(xhci, command->in_ctx, vdev->out_ctx, changed_ep_bitmask,
                                     changed_ep_bitmask);
  spin_unlock_irqrestore(& xhci->lock, flags);
  ret = xhci_configure_endpoint(xhci, udev, command, 0, 1);
  if (ret < 0) {
    return (ret);
  } else {
  }
  tmp___0 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  i = 0;
  goto ldv_31938;
  ldv_31937:
  ep_index = xhci_get_endpoint_index(& (*(eps + (unsigned long )i))->desc);
  xhci_free_stream_info(xhci, vdev->eps[ep_index].stream_info);
  vdev->eps[ep_index].stream_info = 0;
  vdev->eps[ep_index].ep_state = vdev->eps[ep_index].ep_state & 4294967263U;
  vdev->eps[ep_index].ep_state = vdev->eps[ep_index].ep_state & 4294967279U;
  i = i + 1;
  ldv_31938: ;
  if ((unsigned int )i < num_eps) {
    goto ldv_31937;
  } else {
  }
  spin_unlock_irqrestore(& xhci->lock, flags);
  return (0);
}
}
void xhci_free_device_endpoint_resources(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                                         bool drop_control_ep )
{
  int i ;
  unsigned int num_dropped_eps ;
  unsigned int drop_flags ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  num_dropped_eps = 0U;
  drop_flags = 0U;
  i = (int )drop_control_ep ? 0 : 1;
  goto ldv_31949;
  ldv_31948: ;
  if ((unsigned long )virt_dev->eps[i].ring != (unsigned long )((struct xhci_ring *)0)) {
    drop_flags = (unsigned int )(1 << i) | drop_flags;
    num_dropped_eps = num_dropped_eps + 1U;
  } else {
  }
  i = i + 1;
  ldv_31949: ;
  if (i <= 30) {
    goto ldv_31948;
  } else {
  }
  xhci->num_active_eps = xhci->num_active_eps - num_dropped_eps;
  if (num_dropped_eps != 0U) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_free_device_endpoint_resources";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "Dropped %u ep ctxs, flags = 0x%x, %u now active.\n";
    descriptor.lineno = 3312U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "Dropped %u ep ctxs, flags = 0x%x, %u now active.\n", num_dropped_eps,
                        drop_flags, xhci->num_active_eps);
    } else {
    }
  } else {
  }
  return;
}
}
int xhci_discover_or_reset_device(struct usb_hcd *hcd , struct usb_device *udev )
{
  int ret ;
  int i ;
  unsigned long flags ;
  struct xhci_hcd *xhci ;
  unsigned int slot_id ;
  struct xhci_virt_device *virt_dev ;
  struct xhci_command *reset_device_cmd ;
  int timeleft ;
  int last_freed_endpoint ;
  struct xhci_slot_ctx *slot_ctx ;
  int old_active_eps ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  raw_spinlock_t *tmp___7 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  struct usb_hcd *tmp___11 ;
  raw_spinlock_t *tmp___12 ;
  char *tmp___13 ;
  struct usb_hcd *tmp___14 ;
  struct usb_hcd *tmp___15 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___16 ;
  long tmp___17 ;
  int tmp___18 ;
  struct usb_hcd *tmp___19 ;
  raw_spinlock_t *tmp___20 ;
  struct xhci_virt_ep *ep ;
  int tmp___21 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___22 ;
  long tmp___23 ;
  {
  old_active_eps = 0;
  ret = xhci_check_args(hcd, udev, 0, 0, 0, "xhci_discover_or_reset_device");
  if (ret <= 0) {
    return (ret);
  } else {
  }
  xhci = hcd_to_xhci(hcd);
  slot_id = (unsigned int )udev->slot_id;
  virt_dev = xhci->devs[slot_id];
  if ((unsigned long )virt_dev == (unsigned long )((struct xhci_virt_device *)0)) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_discover_or_reset_device";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "The device to be reset with slot ID %u does not exist. Re-allocate the device\n";
    descriptor.lineno = 3354U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "The device to be reset with slot ID %u does not exist. Re-allocate the device\n",
                        slot_id);
    } else {
    }
    ret = xhci_alloc_dev(hcd, udev);
    if (ret == 1) {
      return (0);
    } else {
      return (-22);
    }
  } else {
  }
  if ((unsigned long )virt_dev->udev != (unsigned long )udev) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_discover_or_reset_device";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___0.format = "The device to be reset with slot ID %u does not match the udev. Re-allocate the device\n";
    descriptor___0.lineno = 3369U;
    descriptor___0.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                        "The device to be reset with slot ID %u does not match the udev. Re-allocate the device\n",
                        slot_id);
    } else {
    }
    ret = xhci_alloc_dev(hcd, udev);
    if (ret == 1) {
      return (0);
    } else {
      return (-22);
    }
  } else {
  }
  slot_ctx = xhci_get_slot_ctx(xhci, virt_dev->out_ctx);
  if (slot_ctx->dev_state >> 27 == 0U) {
    return (0);
  } else {
  }
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_discover_or_reset_device";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___1.format = "Resetting device with slot ID %u\n";
  descriptor___1.lineno = 3383U;
  descriptor___1.flags = 1U;
  tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___3->self.controller,
                      "Resetting device with slot ID %u\n", slot_id);
  } else {
  }
  reset_device_cmd = xhci_alloc_command(xhci, 0, 1, 16U);
  if ((unsigned long )reset_device_cmd == (unsigned long )((struct xhci_command *)0)) {
    descriptor___2.modname = "xhci_hcd";
    descriptor___2.function = "xhci_discover_or_reset_device";
    descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___2.format = "Couldn\'t allocate command structure.\n";
    descriptor___2.lineno = 3392U;
    descriptor___2.flags = 1U;
    tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      tmp___5 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___5->self.controller,
                        "Couldn\'t allocate command structure.\n");
    } else {
    }
    return (-12);
  } else {
  }
  tmp___7 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___7);
  reset_device_cmd->command_trb = (xhci->cmd_ring)->enqueue;
  if (((reset_device_cmd->command_trb)->link.control & 64512U) == 6144U) {
    reset_device_cmd->command_trb = (((xhci->cmd_ring)->enq_seg)->next)->trbs;
  } else {
  }
  list_add_tail(& reset_device_cmd->cmd_list, & virt_dev->cmd_list);
  ret = xhci_queue_reset_device(xhci, slot_id);
  if (ret != 0) {
    descriptor___3.modname = "xhci_hcd";
    descriptor___3.function = "xhci_discover_or_reset_device";
    descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___3.format = "FIXME: allocate a command ring segment\n";
    descriptor___3.lineno = 3410U;
    descriptor___3.flags = 1U;
    tmp___9 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___9 != 0L) {
      tmp___8 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___8->self.controller,
                        "FIXME: allocate a command ring segment\n");
    } else {
    }
    list_del(& reset_device_cmd->cmd_list);
    spin_unlock_irqrestore(& xhci->lock, flags);
    goto command_cleanup;
  } else {
  }
  xhci_ring_cmd_db(xhci);
  spin_unlock_irqrestore(& xhci->lock, flags);
  tmp___10 = wait_for_completion_interruptible_timeout(reset_device_cmd->completion,
                                                       5000UL);
  timeleft = (int )tmp___10;
  if (timeleft <= 0) {
    tmp___11 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___11->self.controller, "%s while waiting for reset device command\n",
             timeleft == 0 ? (char *)"Timeout" : (char *)"Signal");
    tmp___12 = spinlock_check(& xhci->lock);
    flags = _raw_spin_lock_irqsave(tmp___12);
    if ((unsigned long )((void *)reset_device_cmd->cmd_list.next) != 0xdead000000100100UL) {
      list_del(& reset_device_cmd->cmd_list);
    } else {
    }
    spin_unlock_irqrestore(& xhci->lock, flags);
    ret = -62;
    goto command_cleanup;
  } else {
  }
  ret = (int )reset_device_cmd->status;
  switch (ret) {
  case 11: ;
  case 19:
  tmp___13 = xhci_get_slot_state(xhci, virt_dev->out_ctx);
  tmp___14 = xhci_to_hcd(xhci);
  _dev_info((struct device const *)tmp___14->self.controller, "Can\'t reset device (slot ID %u) in %s state\n",
            slot_id, tmp___13);
  tmp___15 = xhci_to_hcd(xhci);
  _dev_info((struct device const *)tmp___15->self.controller, "Not freeing device rings.\n");
  ret = 0;
  goto command_cleanup;
  case 1:
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_discover_or_reset_device";
  descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___4.format = "Successful reset device command.\n";
  descriptor___4.lineno = 3452U;
  descriptor___4.flags = 1U;
  tmp___17 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___17 != 0L) {
    tmp___16 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___16->self.controller,
                      "Successful reset device command.\n");
  } else {
  }
  goto ldv_31985;
  default:
  tmp___18 = xhci_is_vendor_info_code(xhci, (unsigned int )ret);
  if (tmp___18 != 0) {
    goto ldv_31985;
  } else {
  }
  tmp___19 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___19->self.controller, "Unknown completion code %u for reset device command.\n",
           ret);
  ret = -22;
  goto command_cleanup;
  }
  ldv_31985: ;
  if ((xhci->quirks & 32U) != 0U) {
    tmp___20 = spinlock_check(& xhci->lock);
    flags = _raw_spin_lock_irqsave(tmp___20);
    xhci_free_device_endpoint_resources(xhci, virt_dev, 0);
    spin_unlock_irqrestore(& xhci->lock, flags);
  } else {
  }
  last_freed_endpoint = 1;
  i = 1;
  goto ldv_31992;
  ldv_31991:
  ep = (struct xhci_virt_ep *)(& virt_dev->eps) + (unsigned long )i;
  if ((ep->ep_state & 16U) != 0U) {
    xhci_free_stream_info(xhci, ep->stream_info);
    ep->stream_info = 0;
    ep->ep_state = ep->ep_state & 4294967279U;
  } else {
  }
  if ((unsigned long )ep->ring != (unsigned long )((struct xhci_ring *)0)) {
    xhci_free_or_cache_endpoint_ring(xhci, virt_dev, (unsigned int )i);
    last_freed_endpoint = i;
  } else {
  }
  tmp___21 = list_empty((struct list_head const *)(& virt_dev->eps[i].bw_endpoint_list));
  if (tmp___21 == 0) {
    xhci_drop_ep_from_interval_table(xhci, & virt_dev->eps[i].bw_info, virt_dev->bw_table,
                                     udev, (struct xhci_virt_ep *)(& virt_dev->eps) + (unsigned long )i,
                                     virt_dev->tt_info);
  } else {
  }
  xhci_clear_endpoint_bw_info(& virt_dev->eps[i].bw_info);
  i = i + 1;
  ldv_31992: ;
  if (i <= 30) {
    goto ldv_31991;
  } else {
  }
  xhci_update_tt_active_eps(xhci, virt_dev, old_active_eps);
  descriptor___5.modname = "xhci_hcd";
  descriptor___5.function = "xhci_discover_or_reset_device";
  descriptor___5.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___5.format = "Output context after successful reset device cmd:\n";
  descriptor___5.lineno = 3498U;
  descriptor___5.flags = 1U;
  tmp___23 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___23 != 0L) {
    tmp___22 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___22->self.controller,
                      "Output context after successful reset device cmd:\n");
  } else {
  }
  xhci_dbg_ctx(xhci, virt_dev->out_ctx, (unsigned int )last_freed_endpoint);
  ret = 0;
  command_cleanup:
  xhci_free_command(xhci, reset_device_cmd);
  return (ret);
}
}
void xhci_free_dev(struct usb_hcd *hcd , struct usb_device *udev )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  struct xhci_virt_device *virt_dev ;
  unsigned long flags ;
  u32 state ;
  int i ;
  int ret ;
  raw_spinlock_t *tmp___0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  ret = xhci_check_args(hcd, udev, 0, 0, 1, "xhci_free_dev");
  if (ret <= 0 && ret != -19) {
    return;
  } else {
  }
  virt_dev = xhci->devs[udev->slot_id];
  i = 0;
  goto ldv_32007;
  ldv_32006:
  virt_dev->eps[i].ep_state = virt_dev->eps[i].ep_state & 4294967291U;
  del_timer_sync(& virt_dev->eps[i].stop_cmd_timer);
  i = i + 1;
  ldv_32007: ;
  if (i <= 30) {
    goto ldv_32006;
  } else {
  }
  if ((unsigned int )*((unsigned char *)udev + 1589UL) != 0U) {
    xhci_set_usb2_hardware_lpm(hcd, udev, 0);
    udev->usb2_hw_lpm_enabled = 0U;
  } else {
  }
  tmp___0 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  state = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->status);
  if ((state == 4294967295U || (int )xhci->xhc_state & 1) || (xhci->xhc_state & 2U) != 0U) {
    xhci_free_virt_device(xhci, udev->slot_id);
    spin_unlock_irqrestore(& xhci->lock, flags);
    return;
  } else {
  }
  tmp___3 = xhci_queue_slot_control(xhci, 10U, (u32 )udev->slot_id);
  if (tmp___3 != 0) {
    spin_unlock_irqrestore(& xhci->lock, flags);
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_free_dev";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "FIXME: allocate a command ring segment\n";
    descriptor.lineno = 3552U;
    descriptor.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                        "FIXME: allocate a command ring segment\n");
    } else {
    }
    return;
  } else {
  }
  xhci_ring_cmd_db(xhci);
  spin_unlock_irqrestore(& xhci->lock, flags);
  return;
}
}
static int xhci_reserve_host_control_ep_resources(struct xhci_hcd *xhci )
{
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  {
  if (xhci->num_active_eps + 1U > xhci->limit_active_eps) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_reserve_host_control_ep_resources";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "Not enough ep ctxs: %u active, need to add 1, limit is %u.\n";
    descriptor.lineno = 3574U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "Not enough ep ctxs: %u active, need to add 1, limit is %u.\n",
                        xhci->num_active_eps, xhci->limit_active_eps);
    } else {
    }
    return (-12);
  } else {
  }
  xhci->num_active_eps = xhci->num_active_eps + 1U;
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_reserve_host_control_ep_resources";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___0.format = "Adding 1 ep ctx, %u now active.\n";
  descriptor___0.lineno = 3579U;
  descriptor___0.flags = 1U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                      "Adding 1 ep ctx, %u now active.\n", xhci->num_active_eps);
  } else {
  }
  return (0);
}
}
int xhci_alloc_dev(struct usb_hcd *hcd , struct usb_device *udev )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  unsigned long flags ;
  int timeleft ;
  int ret ;
  union xhci_trb *cmd_trb ;
  raw_spinlock_t *tmp___0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  struct usb_hcd *tmp___4 ;
  int tmp___5 ;
  struct usb_hcd *tmp___6 ;
  raw_spinlock_t *tmp___7 ;
  struct usb_hcd *tmp___8 ;
  struct usb_hcd *tmp___9 ;
  int tmp___10 ;
  raw_spinlock_t *tmp___11 ;
  int tmp___12 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  tmp___0 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  cmd_trb = (xhci->cmd_ring)->dequeue;
  ret = xhci_queue_slot_control(xhci, 9U, 0U);
  if (ret != 0) {
    spin_unlock_irqrestore(& xhci->lock, flags);
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_alloc_dev";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "FIXME: allocate a command ring segment\n";
    descriptor.lineno = 3601U;
    descriptor.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                        "FIXME: allocate a command ring segment\n");
    } else {
    }
    return (0);
  } else {
  }
  xhci_ring_cmd_db(xhci);
  spin_unlock_irqrestore(& xhci->lock, flags);
  tmp___3 = wait_for_completion_interruptible_timeout(& xhci->addr_dev, 1250UL);
  timeleft = (int )tmp___3;
  if (timeleft <= 0) {
    tmp___4 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___4->self.controller, "%s while waiting for a slot\n",
             timeleft == 0 ? (char *)"Timeout" : (char *)"Signal");
    tmp___5 = xhci_cancel_cmd(xhci, 0, cmd_trb);
    return (tmp___5);
  } else {
  }
  if (xhci->slot_id == 0) {
    tmp___6 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___6->self.controller, "Error while assigning device slot ID\n");
    return (0);
  } else {
  }
  if ((xhci->quirks & 32U) != 0U) {
    tmp___7 = spinlock_check(& xhci->lock);
    flags = _raw_spin_lock_irqsave(tmp___7);
    ret = xhci_reserve_host_control_ep_resources(xhci);
    if (ret != 0) {
      spin_unlock_irqrestore(& xhci->lock, flags);
      tmp___8 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___8->self.controller, "Not enough host resources, active endpoint contexts = %u\n",
               xhci->num_active_eps);
      goto disable_slot;
    } else {
    }
    spin_unlock_irqrestore(& xhci->lock, flags);
  } else {
  }
  tmp___10 = xhci_alloc_virt_device(xhci, xhci->slot_id, udev, 16U);
  if (tmp___10 == 0) {
    tmp___9 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___9->self.controller, "Could not allocate xHCI USB device data structures\n");
    goto disable_slot;
  } else {
  }
  udev->slot_id = xhci->slot_id;
  return (1);
  disable_slot:
  tmp___11 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___11);
  tmp___12 = xhci_queue_slot_control(xhci, 10U, (u32 )udev->slot_id);
  if (tmp___12 == 0) {
    xhci_ring_cmd_db(xhci);
  } else {
  }
  spin_unlock_irqrestore(& xhci->lock, flags);
  return (0);
}
}
int xhci_address_device(struct usb_hcd *hcd , struct usb_device *udev )
{
  unsigned long flags ;
  int timeleft ;
  struct xhci_virt_device *virt_dev ;
  int ret ;
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  struct xhci_slot_ctx *slot_ctx ;
  struct xhci_input_control_ctx *ctrl_ctx ;
  u64 temp_64 ;
  union xhci_trb *cmd_trb ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct usb_hcd *tmp___2 ;
  int __ret_warn_on ;
  long tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  raw_spinlock_t *tmp___7 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___8 ;
  long tmp___9 ;
  long tmp___10 ;
  struct usb_hcd *tmp___11 ;
  struct usb_hcd *tmp___12 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___13 ;
  long tmp___14 ;
  struct usb_hcd *tmp___15 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___16 ;
  long tmp___17 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___18 ;
  long tmp___19 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___20 ;
  long tmp___21 ;
  struct _ddebug descriptor___6 ;
  struct usb_hcd *tmp___22 ;
  long tmp___23 ;
  struct _ddebug descriptor___7 ;
  struct usb_hcd *tmp___24 ;
  long tmp___25 ;
  struct _ddebug descriptor___8 ;
  struct usb_hcd *tmp___26 ;
  long tmp___27 ;
  struct _ddebug descriptor___9 ;
  struct usb_hcd *tmp___28 ;
  long tmp___29 ;
  {
  ret = 0;
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  if (udev->slot_id == 0) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_address_device";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "Bad Slot ID %d\n";
    descriptor.lineno = 3678U;
    descriptor.flags = 1U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                        "Bad Slot ID %d\n", udev->slot_id);
    } else {
    }
    return (-22);
  } else {
  }
  virt_dev = xhci->devs[udev->slot_id];
  __ret_warn_on = (unsigned long )virt_dev == (unsigned long )((struct xhci_virt_device *)0);
  tmp___3 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___3 != 0L) {
    warn_slowpath_null("/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared",
                       3684);
  } else {
  }
  tmp___4 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
  if (tmp___4 != 0L) {
    tmp___2 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___2->self.controller, "Virt dev invalid for slot_id 0x%x!\n",
             udev->slot_id);
    return (-22);
  } else {
  }
  slot_ctx = xhci_get_slot_ctx(xhci, virt_dev->in_ctx);
  if (slot_ctx->dev_info == 0U) {
    xhci_setup_addressable_virt_dev(xhci, udev);
  } else {
    xhci_copy_ep0_dequeue_into_input_ctx(xhci, udev);
  }
  ctrl_ctx = xhci_get_input_control_ctx(xhci, virt_dev->in_ctx);
  ctrl_ctx->add_flags = 3U;
  ctrl_ctx->drop_flags = 0U;
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_address_device";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___0.format = "Slot ID %d Input Context:\n";
  descriptor___0.lineno = 3710U;
  descriptor___0.flags = 1U;
  tmp___6 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___5->self.controller,
                      "Slot ID %d Input Context:\n", udev->slot_id);
  } else {
  }
  xhci_dbg_ctx(xhci, virt_dev->in_ctx, 2U);
  tmp___7 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___7);
  cmd_trb = (xhci->cmd_ring)->dequeue;
  ret = xhci_queue_address_device(xhci, (virt_dev->in_ctx)->dma, (u32 )udev->slot_id);
  if (ret != 0) {
    spin_unlock_irqrestore(& xhci->lock, flags);
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "xhci_address_device";
    descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___1.format = "FIXME: allocate a command ring segment\n";
    descriptor___1.lineno = 3719U;
    descriptor___1.flags = 1U;
    tmp___9 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___9 != 0L) {
      tmp___8 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___8->self.controller,
                        "FIXME: allocate a command ring segment\n");
    } else {
    }
    return (ret);
  } else {
  }
  xhci_ring_cmd_db(xhci);
  spin_unlock_irqrestore(& xhci->lock, flags);
  tmp___10 = wait_for_completion_interruptible_timeout(& xhci->addr_dev, 1250UL);
  timeleft = (int )tmp___10;
  if (timeleft <= 0) {
    tmp___11 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___11->self.controller, "%s while waiting for address device command\n",
             timeleft == 0 ? (char *)"Timeout" : (char *)"Signal");
    ret = xhci_cancel_cmd(xhci, 0, cmd_trb);
    if (ret < 0) {
      return (ret);
    } else {
    }
    return (-62);
  } else {
  }
  switch (virt_dev->cmd_status) {
  case 19U: ;
  case 11U:
  tmp___12 = xhci_to_hcd(xhci);
  dev_err((struct device const *)tmp___12->self.controller, "Setup ERROR: address device command for slot %d.\n",
          udev->slot_id);
  ret = -22;
  goto ldv_32064;
  case 4U:
  dev_warn((struct device const *)(& udev->dev), "Device not responding to set address.\n");
  ret = -71;
  goto ldv_32064;
  case 22U:
  dev_warn((struct device const *)(& udev->dev), "ERROR: Incompatible device for address device command.\n");
  ret = -19;
  goto ldv_32064;
  case 1U:
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_address_device";
  descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___2.format = "Successful Address Device command\n";
  descriptor___2.lineno = 3759U;
  descriptor___2.flags = 1U;
  tmp___14 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___14 != 0L) {
    tmp___13 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___13->self.controller,
                      "Successful Address Device command\n");
  } else {
  }
  goto ldv_32064;
  default:
  tmp___15 = xhci_to_hcd(xhci);
  dev_err((struct device const *)tmp___15->self.controller, "ERROR: unexpected command completion code 0x%x.\n",
          virt_dev->cmd_status);
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_address_device";
  descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___3.format = "Slot ID %d Output Context:\n";
  descriptor___3.lineno = 3764U;
  descriptor___3.flags = 1U;
  tmp___17 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___17 != 0L) {
    tmp___16 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___16->self.controller,
                      "Slot ID %d Output Context:\n", udev->slot_id);
  } else {
  }
  xhci_dbg_ctx(xhci, virt_dev->out_ctx, 2U);
  ret = -22;
  goto ldv_32064;
  }
  ldv_32064: ;
  if (ret != 0) {
    return (ret);
  } else {
  }
  temp_64 = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->op_regs)->dcbaa_ptr);
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_address_device";
  descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___4.format = "Op regs DCBAA ptr = %#016llx\n";
  descriptor___4.lineno = 3773U;
  descriptor___4.flags = 1U;
  tmp___19 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___19 != 0L) {
    tmp___18 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___18->self.controller,
                      "Op regs DCBAA ptr = %#016llx\n", temp_64);
  } else {
  }
  descriptor___5.modname = "xhci_hcd";
  descriptor___5.function = "xhci_address_device";
  descriptor___5.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___5.format = "Slot ID %d dcbaa entry @%p = %#016llx\n";
  descriptor___5.lineno = 3778U;
  descriptor___5.flags = 1U;
  tmp___21 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___21 != 0L) {
    tmp___20 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___20->self.controller,
                      "Slot ID %d dcbaa entry @%p = %#016llx\n", udev->slot_id, (__le64 *)(& (xhci->dcbaa)->dev_context_ptrs) + (unsigned long )udev->slot_id,
                      (xhci->dcbaa)->dev_context_ptrs[udev->slot_id]);
  } else {
  }
  descriptor___6.modname = "xhci_hcd";
  descriptor___6.function = "xhci_address_device";
  descriptor___6.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___6.format = "Output Context DMA address = %#08llx\n";
  descriptor___6.lineno = 3780U;
  descriptor___6.flags = 1U;
  tmp___23 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___23 != 0L) {
    tmp___22 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___6, (struct device const *)tmp___22->self.controller,
                      "Output Context DMA address = %#08llx\n", (virt_dev->out_ctx)->dma);
  } else {
  }
  descriptor___7.modname = "xhci_hcd";
  descriptor___7.function = "xhci_address_device";
  descriptor___7.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___7.format = "Slot ID %d Input Context:\n";
  descriptor___7.lineno = 3781U;
  descriptor___7.flags = 1U;
  tmp___25 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
  if (tmp___25 != 0L) {
    tmp___24 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___7, (struct device const *)tmp___24->self.controller,
                      "Slot ID %d Input Context:\n", udev->slot_id);
  } else {
  }
  xhci_dbg_ctx(xhci, virt_dev->in_ctx, 2U);
  descriptor___8.modname = "xhci_hcd";
  descriptor___8.function = "xhci_address_device";
  descriptor___8.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___8.format = "Slot ID %d Output Context:\n";
  descriptor___8.lineno = 3783U;
  descriptor___8.flags = 1U;
  tmp___27 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
  if (tmp___27 != 0L) {
    tmp___26 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___8, (struct device const *)tmp___26->self.controller,
                      "Slot ID %d Output Context:\n", udev->slot_id);
  } else {
  }
  xhci_dbg_ctx(xhci, virt_dev->out_ctx, 2U);
  slot_ctx = xhci_get_slot_ctx(xhci, virt_dev->out_ctx);
  virt_dev->address = (int )((slot_ctx->dev_state & 255U) + 1U);
  ctrl_ctx->add_flags = 0U;
  ctrl_ctx->drop_flags = 0U;
  descriptor___9.modname = "xhci_hcd";
  descriptor___9.function = "xhci_address_device";
  descriptor___9.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___9.format = "Internal device address = %d\n";
  descriptor___9.lineno = 3798U;
  descriptor___9.flags = 1U;
  tmp___29 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
  if (tmp___29 != 0L) {
    tmp___28 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___9, (struct device const *)tmp___28->self.controller,
                      "Internal device address = %d\n", virt_dev->address);
  } else {
  }
  return (0);
}
}
static int xhci_besl_encoding[16U] =
  { 125, 150, 200, 300,
        400, 500, 1000, 2000,
        3000, 4000, 5000, 6000,
        7000, 8000, 9000, 10000};
static int xhci_calculate_hird_besl(struct xhci_hcd *xhci , struct usb_device *udev )
{
  int u2del ;
  int besl ;
  int besl_host ;
  int besl_device ;
  u32 field ;
  {
  besl_device = 0;
  u2del = (int )(xhci->hcs_params3 >> 16);
  field = ((udev->bos)->ext_cap)->bmAttributes;
  if ((field & 4U) != 0U) {
    besl_host = 0;
    goto ldv_32089;
    ldv_32088: ;
    if (xhci_besl_encoding[besl_host] >= u2del) {
      goto ldv_32087;
    } else {
    }
    besl_host = besl_host + 1;
    ldv_32089: ;
    if (besl_host <= 15) {
      goto ldv_32088;
    } else {
    }
    ldv_32087: ;
    if ((field & 8U) != 0U) {
      besl_device = (int )((field & 3840U) >> 8);
    } else
    if ((field & 16U) != 0U) {
      besl_device = (int )((field & 61440U) >> 12);
    } else {
    }
  } else
  if (u2del <= 50) {
    besl_host = 0;
  } else {
    besl_host = (u2del + -51) / 75 + 1;
  }
  besl = besl_host + besl_device;
  if (besl > 15) {
    besl = 15;
  } else {
  }
  return (besl);
}
}
static int xhci_usb2_software_lpm_test(struct usb_hcd *hcd , struct usb_device *udev )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  struct dev_info *dev_info ;
  __le32 **port_array ;
  __le32 *addr ;
  __le32 *pm_addr ;
  u32 temp ;
  u32 dev_id ;
  unsigned int port_num ;
  unsigned long flags ;
  int hird ;
  int ret ;
  raw_spinlock_t *tmp___0 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  raw_spinlock_t *tmp___5 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___8 ;
  long tmp___9 ;
  raw_spinlock_t *tmp___10 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___11 ;
  long tmp___12 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___13 ;
  long tmp___14 ;
  struct usb_hcd *tmp___15 ;
  void *tmp___16 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  if ((hcd->speed == 64 || (unsigned int )*((unsigned char *)xhci + 3316UL) == 0U) || (unsigned int )*((unsigned char *)udev + 1588UL) == 0U) {
    return (-22);
  } else {
  }
  if (((unsigned long )udev->parent == (unsigned long )((struct usb_device *)0) || (unsigned long )(udev->parent)->parent != (unsigned long )((struct usb_device *)0)) || (unsigned int )udev->descriptor.bDeviceClass == 9U) {
    return (-22);
  } else {
  }
  tmp___0 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  dev_id = (u32 )(((int )udev->descriptor.idVendor << 16) | (int )udev->descriptor.idProduct);
  __mptr = (struct list_head const *)xhci->lpm_failed_devs.next;
  dev_info = (struct dev_info *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_32114;
  ldv_32113: ;
  if (dev_info->dev_id == dev_id) {
    ret = -22;
    goto finish;
  } else {
  }
  __mptr___0 = (struct list_head const *)dev_info->list.next;
  dev_info = (struct dev_info *)__mptr___0 + 0xfffffffffffffff8UL;
  ldv_32114: ;
  if ((unsigned long )(& dev_info->list) != (unsigned long )(& xhci->lpm_failed_devs)) {
    goto ldv_32113;
  } else {
  }
  port_array = xhci->usb2_ports;
  port_num = (unsigned int )((int )udev->portnum + -1);
  if (((xhci->hcs_params1 >> 24) & 127U) < port_num) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_usb2_software_lpm_test";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "invalid port number %d\n";
    descriptor.lineno = 3882U;
    descriptor.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                        "invalid port number %d\n", (int )udev->portnum);
    } else {
    }
    ret = -22;
    goto finish;
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_usb2_software_lpm_test";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___0.format = "test port %d software LPM\n";
  descriptor___0.lineno = 3893U;
  descriptor___0.flags = 1U;
  tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___3->self.controller,
                      "test port %d software LPM\n", port_num);
  } else {
  }
  pm_addr = *(port_array + (unsigned long )port_num) + 1UL;
  hird = xhci_calculate_hird_besl(xhci, udev);
  temp = (u32 )(((udev->slot_id << 8) & 65535) | ((hird << 4) & 255));
  xhci_writel(xhci, temp, pm_addr);
  addr = *(port_array + (unsigned long )port_num);
  xhci_set_link_state(xhci, port_array, (int )port_num, 64U);
  spin_unlock_irqrestore(& xhci->lock, flags);
  msleep(10U);
  tmp___5 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___5);
  ret = xhci_handshake(xhci, (void *)pm_addr, 7U, 1U, 125);
  if (ret != -110) {
    temp = xhci_readl((struct xhci_hcd const *)xhci, addr);
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "xhci_usb2_software_lpm_test";
    descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___1.format = "port %d entered L1 state, port status 0x%x\n";
    descriptor___1.lineno = 3920U;
    descriptor___1.flags = 1U;
    tmp___7 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      tmp___6 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___6->self.controller,
                        "port %d entered L1 state, port status 0x%x\n", port_num,
                        temp);
    } else {
    }
    ret = 0;
  } else {
    temp = xhci_readl((struct xhci_hcd const *)xhci, pm_addr);
    descriptor___2.modname = "xhci_hcd";
    descriptor___2.function = "xhci_usb2_software_lpm_test";
    descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___2.format = "port %d software lpm failed, L1 status %d\n";
    descriptor___2.lineno = 3925U;
    descriptor___2.flags = 1U;
    tmp___9 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___9 != 0L) {
      tmp___8 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___8->self.controller,
                        "port %d software lpm failed, L1 status %d\n", port_num, temp & 7U);
    } else {
    }
    ret = -22;
  }
  xhci_set_link_state(xhci, port_array, (int )port_num, 0U);
  spin_unlock_irqrestore(& xhci->lock, flags);
  msleep(10U);
  tmp___10 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___10);
  xhci_test_and_clear_bit(xhci, port_array, (int )port_num, 4194304U);
  if (ret == 0) {
    temp = xhci_readl((struct xhci_hcd const *)xhci, addr);
    descriptor___3.modname = "xhci_hcd";
    descriptor___3.function = "xhci_usb2_software_lpm_test";
    descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___3.format = "resumed port %d status 0x%x\n";
    descriptor___3.lineno = 3942U;
    descriptor___3.flags = 1U;
    tmp___12 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___12 != 0L) {
      tmp___11 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___11->self.controller,
                        "resumed port %d status 0x%x\n", port_num, temp);
    } else {
    }
    if (((temp & 1U) == 0U || (temp & 2U) == 0U) || (temp & 480U) != 0U) {
      descriptor___4.modname = "xhci_hcd";
      descriptor___4.function = "xhci_usb2_software_lpm_test";
      descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
      descriptor___4.format = "port L1 resume fail\n";
      descriptor___4.lineno = 3945U;
      descriptor___4.flags = 1U;
      tmp___14 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
      if (tmp___14 != 0L) {
        tmp___13 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___13->self.controller,
                          "port L1 resume fail\n");
      } else {
      }
      ret = -22;
    } else {
    }
  } else {
  }
  if (ret != 0) {
    tmp___15 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___15->self.controller, "device LPM test failed, may disconnect and re-enumerate\n");
    tmp___16 = kzalloc(24UL, 32U);
    dev_info = (struct dev_info *)tmp___16;
    if ((unsigned long )dev_info == (unsigned long )((struct dev_info *)0)) {
      ret = -12;
      goto finish;
    } else {
    }
    dev_info->dev_id = dev_id;
    INIT_LIST_HEAD(& dev_info->list);
    list_add(& dev_info->list, & xhci->lpm_failed_devs);
  } else {
    xhci_ring_device(xhci, udev->slot_id);
  }
  finish:
  spin_unlock_irqrestore(& xhci->lock, flags);
  return (ret);
}
}
int xhci_set_usb2_hardware_lpm(struct usb_hcd *hcd , struct usb_device *udev , int enable )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  __le32 **port_array ;
  __le32 *pm_addr ;
  u32 temp ;
  unsigned int port_num ;
  unsigned long flags ;
  int hird ;
  raw_spinlock_t *tmp___0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  if ((hcd->speed == 64 || (unsigned int )*((unsigned char *)xhci + 3316UL) == 0U) || (unsigned int )*((unsigned char *)udev + 1588UL) == 0U) {
    return (-1);
  } else {
  }
  if (((unsigned long )udev->parent == (unsigned long )((struct usb_device *)0) || (unsigned long )(udev->parent)->parent != (unsigned long )((struct usb_device *)0)) || (unsigned int )udev->descriptor.bDeviceClass == 9U) {
    return (-1);
  } else {
  }
  if ((unsigned int )*((unsigned char *)udev + 1588UL) == 0U) {
    return (-1);
  } else {
  }
  tmp___0 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___0);
  port_array = xhci->usb2_ports;
  port_num = (unsigned int )((int )udev->portnum + -1);
  pm_addr = *(port_array + (unsigned long )port_num) + 1UL;
  temp = xhci_readl((struct xhci_hcd const *)xhci, pm_addr);
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_set_usb2_hardware_lpm";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "%s port %d USB2 hardware LPM\n";
  descriptor.lineno = 4001U;
  descriptor.flags = 1U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                      "%s port %d USB2 hardware LPM\n", enable != 0 ? (char *)"enable" : (char *)"disable",
                      port_num);
  } else {
  }
  hird = xhci_calculate_hird_besl(xhci, udev);
  if (enable != 0) {
    temp = temp & 4294967055U;
    temp = (((u32 )(hird << 4) & 255U) | temp) | 8U;
    xhci_writel(xhci, temp, pm_addr);
    temp = xhci_readl((struct xhci_hcd const *)xhci, pm_addr);
    temp = temp | 65536U;
    xhci_writel(xhci, temp, pm_addr);
  } else {
    temp = temp & 4294901511U;
    xhci_writel(xhci, temp, pm_addr);
  }
  spin_unlock_irqrestore(& xhci->lock, flags);
  return (0);
}
}
int xhci_update_device(struct usb_hcd *hcd , struct usb_device *udev )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  int ret ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  ret = xhci_usb2_software_lpm_test(hcd, udev);
  if (ret == 0) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_update_device";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "software LPM test succeed\n";
    descriptor.lineno = 4028U;
    descriptor.flags = 1U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                        "software LPM test succeed\n");
    } else {
    }
    if ((unsigned int )*((unsigned char *)xhci + 3316UL) != 0U) {
      udev->usb2_hw_lpm_capable = 1U;
      ret = xhci_set_usb2_hardware_lpm(hcd, udev, 1);
      if (ret == 0) {
        udev->usb2_hw_lpm_enabled = 1U;
      } else {
      }
    } else {
    }
  } else {
  }
  return (0);
}
}
static unsigned long long xhci_service_interval_to_ns(struct usb_endpoint_descriptor *desc )
{
  {
  return ((125ULL << ((int )desc->bInterval + -1)) * 1000ULL);
}
}
static u16 xhci_get_timeout_no_hub_lpm(struct usb_device *udev , enum usb3_link_state state )
{
  unsigned long long sel ;
  unsigned long long pel ;
  unsigned int max_sel_pel ;
  char *state_name ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  switch ((unsigned int )state) {
  case 1U:
  sel = (unsigned long long )((udev->u1_params.sel + 999U) / 1000U);
  pel = (unsigned long long )((udev->u1_params.pel + 999U) / 1000U);
  max_sel_pel = 255U;
  state_name = (char *)"U1";
  goto ldv_32166;
  case 2U:
  sel = (unsigned long long )((udev->u2_params.sel + 999U) / 1000U);
  pel = (unsigned long long )((udev->u2_params.pel + 999U) / 1000U);
  max_sel_pel = 65535U;
  state_name = (char *)"U2";
  goto ldv_32166;
  default:
  dev_warn((struct device const *)(& udev->dev), "%s: Can\'t get timeout for non-U1 or U2 state.\n",
           "xhci_get_timeout_no_hub_lpm");
  return (0U);
  }
  ldv_32166: ;
  if ((unsigned long long )max_sel_pel >= sel && (unsigned long long )max_sel_pel >= pel) {
    return (255U);
  } else {
  }
  if ((unsigned long long )max_sel_pel < sel) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_get_timeout_no_hub_lpm";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "Device-initiated %s disabled due to long SEL %llu ms\n";
    descriptor.lineno = 4099U;
    descriptor.flags = 1U;
    tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& udev->dev), "Device-initiated %s disabled due to long SEL %llu ms\n",
                        state_name, sel);
    } else {
    }
  } else {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_get_timeout_no_hub_lpm";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___0.format = "Device-initiated %s disabled due to long PEL %llu\n ms";
    descriptor___0.lineno = 4103U;
    descriptor___0.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& udev->dev),
                        "Device-initiated %s disabled due to long PEL %llu\n ms",
                        state_name, pel);
    } else {
    }
  }
  return (0U);
}
}
static u16 xhci_calculate_intel_u1_timeout(struct usb_device *udev , struct usb_endpoint_descriptor *desc )
{
  unsigned long long timeout_ns ;
  int ep_type ;
  int intr_type ;
  unsigned long long _tmp ;
  uint32_t __base ;
  uint32_t __rem ;
  unsigned long long _tmp___0 ;
  uint32_t __base___0 ;
  uint32_t __rem___0 ;
  struct _ddebug descriptor ;
  long tmp ;
  u16 tmp___0 ;
  {
  ep_type = usb_endpoint_type((struct usb_endpoint_descriptor const *)desc);
  switch (ep_type) {
  case 0:
  timeout_ns = (unsigned long long )(udev->u1_params.sel * 3U);
  goto ldv_32180;
  case 2:
  timeout_ns = (unsigned long long )(udev->u1_params.sel * 5U);
  goto ldv_32180;
  case 3:
  intr_type = usb_endpoint_interrupt_type((struct usb_endpoint_descriptor const *)desc);
  if (intr_type == 16) {
    timeout_ns = (unsigned long long )(udev->u1_params.sel * 3U);
    goto ldv_32180;
  } else {
  }
  case 1:
  timeout_ns = xhci_service_interval_to_ns(desc);
  _tmp = timeout_ns * 105ULL + 99ULL;
  __base = 100U;
  __rem = (uint32_t )(_tmp % (unsigned long long )__base);
  _tmp = _tmp / (unsigned long long )__base;
  timeout_ns = _tmp;
  if ((unsigned long long )(udev->u1_params.sel * 2U) > timeout_ns) {
    timeout_ns = (unsigned long long )(udev->u1_params.sel * 2U);
  } else {
  }
  goto ldv_32180;
  default: ;
  return (0U);
  }
  ldv_32180:
  _tmp___0 = timeout_ns + 999ULL;
  __base___0 = 1000U;
  __rem___0 = (uint32_t )(_tmp___0 % (unsigned long long )__base___0);
  _tmp___0 = _tmp___0 / (unsigned long long )__base___0;
  timeout_ns = _tmp___0;
  if (timeout_ns == 0ULL) {
    timeout_ns = timeout_ns + 1ULL;
  } else {
  }
  if (timeout_ns <= 127ULL) {
    return ((u16 )timeout_ns);
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_calculate_intel_u1_timeout";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "Hub-initiated U1 disabled due to long timeout %llu ms\n";
  descriptor.lineno = 4160U;
  descriptor.flags = 1U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& udev->dev), "Hub-initiated U1 disabled due to long timeout %llu ms\n",
                      timeout_ns);
  } else {
  }
  tmp___0 = xhci_get_timeout_no_hub_lpm(udev, 1);
  return (tmp___0);
}
}
static u16 xhci_calculate_intel_u2_timeout(struct usb_device *udev , struct usb_endpoint_descriptor *desc )
{
  unsigned long long timeout_ns ;
  unsigned long long u2_del_ns ;
  int tmp ;
  int tmp___0 ;
  unsigned long long tmp___1 ;
  unsigned long long _tmp ;
  uint32_t __base ;
  uint32_t __rem ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  u16 tmp___3 ;
  {
  timeout_ns = 10000000ULL;
  tmp = usb_endpoint_xfer_int((struct usb_endpoint_descriptor const *)desc);
  if (tmp != 0) {
    goto _L;
  } else {
    tmp___0 = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)desc);
    if (tmp___0 != 0) {
      _L:
      tmp___1 = xhci_service_interval_to_ns(desc);
      if (tmp___1 > timeout_ns) {
        timeout_ns = xhci_service_interval_to_ns(desc);
      } else {
      }
    } else {
    }
  }
  u2_del_ns = (unsigned long long )((udev->bos)->ss_cap)->bU2DevExitLat * 1000ULL;
  if (u2_del_ns > timeout_ns) {
    timeout_ns = u2_del_ns;
  } else {
  }
  _tmp = timeout_ns + 255999ULL;
  __base = 256000U;
  __rem = (uint32_t )(_tmp % (unsigned long long )__base);
  _tmp = _tmp / (unsigned long long )__base;
  timeout_ns = _tmp;
  if (timeout_ns <= 254ULL) {
    return ((u16 )timeout_ns);
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_calculate_intel_u2_timeout";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "Hub-initiated U2 disabled due to long timeout %llu ms\n";
  descriptor.lineno = 4195U;
  descriptor.flags = 1U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& udev->dev), "Hub-initiated U2 disabled due to long timeout %llu ms\n",
                      timeout_ns);
  } else {
  }
  tmp___3 = xhci_get_timeout_no_hub_lpm(udev, 2);
  return (tmp___3);
}
}
static u16 xhci_call_host_update_timeout_for_endpoint(struct xhci_hcd *xhci , struct usb_device *udev ,
                                                      struct usb_endpoint_descriptor *desc ,
                                                      enum usb3_link_state state ,
                                                      u16 *timeout )
{
  u16 tmp ;
  u16 tmp___0 ;
  {
  if ((unsigned int )state == 1U) {
    if ((xhci->quirks & 4096U) != 0U) {
      tmp = xhci_calculate_intel_u1_timeout(udev, desc);
      return (tmp);
    } else
    if ((xhci->quirks & 4096U) != 0U) {
      tmp___0 = xhci_calculate_intel_u2_timeout(udev, desc);
      return (tmp___0);
    } else {
    }
  } else {
  }
  return (0U);
}
}
static int xhci_update_timeout_for_endpoint(struct xhci_hcd *xhci , struct usb_device *udev ,
                                            struct usb_endpoint_descriptor *desc ,
                                            enum usb3_link_state state , u16 *timeout )
{
  u16 alt_timeout ;
  {
  alt_timeout = xhci_call_host_update_timeout_for_endpoint(xhci, udev, desc, state,
                                                           timeout);
  if ((unsigned int )alt_timeout == 0U || (unsigned int )alt_timeout == 255U) {
    *timeout = alt_timeout;
    return (-7);
  } else {
  }
  if ((int )*timeout < (int )alt_timeout) {
    *timeout = alt_timeout;
  } else {
  }
  return (0);
}
}
static int xhci_update_timeout_for_interface(struct xhci_hcd *xhci , struct usb_device *udev ,
                                             struct usb_host_interface *alt , enum usb3_link_state state ,
                                             u16 *timeout )
{
  int j ;
  int tmp ;
  {
  j = 0;
  goto ldv_32235;
  ldv_32234:
  tmp = xhci_update_timeout_for_endpoint(xhci, udev, & (alt->endpoint + (unsigned long )j)->desc,
                                         state, timeout);
  if (tmp != 0) {
    return (-7);
  } else {
  }
  goto ldv_32233;
  ldv_32233:
  j = j + 1;
  ldv_32235: ;
  if ((int )alt->desc.bNumEndpoints > j) {
    goto ldv_32234;
  } else {
  }
  return (0);
}
}
static int xhci_check_intel_tier_policy(struct usb_device *udev , enum usb3_link_state state )
{
  struct usb_device *parent ;
  unsigned int num_hubs ;
  struct _ddebug descriptor ;
  long tmp ;
  struct _ddebug descriptor___0 ;
  long tmp___0 ;
  {
  if ((unsigned int )state == 2U) {
    return (0);
  } else {
  }
  parent = udev->parent;
  num_hubs = 0U;
  goto ldv_32244;
  ldv_32243:
  num_hubs = num_hubs + 1U;
  parent = parent->parent;
  ldv_32244: ;
  if ((unsigned long )parent->parent != (unsigned long )((struct usb_device *)0)) {
    goto ldv_32243;
  } else {
  }
  if (num_hubs <= 1U) {
    return (0);
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_check_intel_tier_policy";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "Disabling U1 link state for device below second-tier hub.\n";
  descriptor.lineno = 4276U;
  descriptor.flags = 1U;
  tmp = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp != 0L) {
    __dynamic_dev_dbg(& descriptor, (struct device const *)(& udev->dev), "Disabling U1 link state for device below second-tier hub.\n");
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_check_intel_tier_policy";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___0.format = "Plug device into first-tier hub to decrease power consumption.\n";
  descriptor___0.lineno = 4278U;
  descriptor___0.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& udev->dev), "Plug device into first-tier hub to decrease power consumption.\n");
  } else {
  }
  return (-7);
}
}
static int xhci_check_tier_policy(struct xhci_hcd *xhci , struct usb_device *udev ,
                                  enum usb3_link_state state )
{
  int tmp ;
  {
  if ((xhci->quirks & 4096U) != 0U) {
    tmp = xhci_check_intel_tier_policy(udev, state);
    return (tmp);
  } else {
  }
  return (-22);
}
}
static u16 xhci_calculate_lpm_timeout(struct usb_hcd *hcd , struct usb_device *udev ,
                                      enum usb3_link_state state )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  struct usb_host_config *config ;
  char *state_name ;
  int i ;
  u16 timeout ;
  int tmp___0 ;
  int tmp___1 ;
  struct usb_driver *driver ;
  struct usb_interface *intf ;
  struct device_driver const *__mptr ;
  struct _ddebug descriptor ;
  long tmp___2 ;
  u16 tmp___3 ;
  int tmp___4 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  timeout = 0U;
  if ((unsigned int )state == 1U) {
    state_name = (char *)"U1";
  } else
  if ((unsigned int )state == 2U) {
    state_name = (char *)"U2";
  } else {
    dev_warn((struct device const *)(& udev->dev), "Can\'t enable unknown link state %i\n",
             (unsigned int )state);
    return (timeout);
  }
  tmp___0 = xhci_check_tier_policy(xhci, udev, state);
  if (tmp___0 < 0) {
    return (timeout);
  } else {
  }
  tmp___1 = xhci_update_timeout_for_endpoint(xhci, udev, & udev->ep0.desc, state,
                                             & timeout);
  if (tmp___1 != 0) {
    return (timeout);
  } else {
  }
  config = udev->actconfig;
  if ((unsigned long )config == (unsigned long )((struct usb_host_config *)0)) {
    return (timeout);
  } else {
  }
  i = 0;
  goto ldv_32272;
  ldv_32271:
  intf = config->interface[i];
  if ((unsigned long )intf == (unsigned long )((struct usb_interface *)0)) {
    goto ldv_32266;
  } else {
  }
  if ((unsigned long )intf->dev.driver != (unsigned long )((struct device_driver *)0)) {
    __mptr = (struct device_driver const *)intf->dev.driver;
    driver = (struct usb_driver *)__mptr + 0xffffffffffffff58UL;
    if ((unsigned long )driver != (unsigned long )((struct usb_driver *)0) && (unsigned int )*((unsigned char *)driver + 296UL) != 0U) {
      descriptor.modname = "xhci_hcd";
      descriptor.function = "xhci_calculate_lpm_timeout";
      descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
      descriptor.format = "Hub-initiated %s disabled at request of driver %s\n";
      descriptor.lineno = 4344U;
      descriptor.flags = 1U;
      tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___2 != 0L) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(& udev->dev), "Hub-initiated %s disabled at request of driver %s\n",
                          state_name, driver->name);
      } else {
      }
      tmp___3 = xhci_get_timeout_no_hub_lpm(udev, state);
      return (tmp___3);
    } else {
    }
  } else {
  }
  if ((unsigned long )intf->cur_altsetting == (unsigned long )((struct usb_host_interface *)0)) {
    goto ldv_32266;
  } else {
  }
  tmp___4 = xhci_update_timeout_for_interface(xhci, udev, intf->cur_altsetting, state,
                                              & timeout);
  if (tmp___4 != 0) {
    return (timeout);
  } else {
  }
  ldv_32266:
  i = i + 1;
  ldv_32272: ;
  if (i <= 31) {
    goto ldv_32271;
  } else {
  }
  return (timeout);
}
}
static int xhci_change_max_exit_latency(struct xhci_hcd *xhci , struct usb_device *udev ,
                                        u16 max_exit_latency )
{
  struct xhci_virt_device *virt_dev ;
  struct xhci_command *command ;
  struct xhci_input_control_ctx *ctrl_ctx ;
  struct xhci_slot_ctx *slot_ctx ;
  unsigned long flags ;
  int ret ;
  raw_spinlock_t *tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  raw_spinlock_t *tmp___6 ;
  {
  tmp = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((int )(xhci->devs[udev->slot_id])->current_mel == (int )max_exit_latency) {
    spin_unlock_irqrestore(& xhci->lock, flags);
    return (0);
  } else {
  }
  virt_dev = xhci->devs[udev->slot_id];
  command = xhci->lpm_command;
  xhci_slot_copy(xhci, command->in_ctx, virt_dev->out_ctx);
  spin_unlock_irqrestore(& xhci->lock, flags);
  ctrl_ctx = xhci_get_input_control_ctx(xhci, command->in_ctx);
  ctrl_ctx->add_flags = ctrl_ctx->add_flags | 1U;
  slot_ctx = xhci_get_slot_ctx(xhci, command->in_ctx);
  slot_ctx->dev_info2 = slot_ctx->dev_info2 & 4294901760U;
  slot_ctx->dev_info2 = slot_ctx->dev_info2 | (__le32 )max_exit_latency;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_change_max_exit_latency";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor.format = "Set up evaluate context for LPM MEL change.\n";
  descriptor.lineno = 4393U;
  descriptor.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "Set up evaluate context for LPM MEL change.\n");
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_change_max_exit_latency";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___0.format = "Slot %u Input Context:\n";
  descriptor___0.lineno = 4394U;
  descriptor___0.flags = 1U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___2->self.controller,
                      "Slot %u Input Context:\n", udev->slot_id);
  } else {
  }
  xhci_dbg_ctx(xhci, command->in_ctx, 0U);
  ret = xhci_configure_endpoint(xhci, udev, command, 1, 1);
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_change_max_exit_latency";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___1.format = "Slot %u Output Context:\n";
  descriptor___1.lineno = 4400U;
  descriptor___1.flags = 1U;
  tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    tmp___4 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___4->self.controller,
                      "Slot %u Output Context:\n", udev->slot_id);
  } else {
  }
  xhci_dbg_ctx(xhci, virt_dev->out_ctx, 0U);
  if (ret == 0) {
    tmp___6 = spinlock_check(& xhci->lock);
    flags = _raw_spin_lock_irqsave(tmp___6);
    virt_dev->current_mel = max_exit_latency;
    spin_unlock_irqrestore(& xhci->lock, flags);
  } else {
  }
  return (ret);
}
}
static int calculate_max_exit_latency(struct usb_device *udev , enum usb3_link_state state_changed ,
                                      u16 hub_encoded_timeout )
{
  unsigned long long u1_mel_us ;
  unsigned long long u2_mel_us ;
  unsigned long long mel_us ;
  bool disabling_u1 ;
  bool disabling_u2 ;
  bool enabling_u1 ;
  bool enabling_u2 ;
  {
  u1_mel_us = 0ULL;
  u2_mel_us = 0ULL;
  mel_us = 0ULL;
  disabling_u1 = (bool )((unsigned int )state_changed == 1U && (unsigned int )hub_encoded_timeout == 0U);
  disabling_u2 = (bool )((unsigned int )state_changed == 2U && (unsigned int )hub_encoded_timeout == 0U);
  enabling_u1 = (bool )((unsigned int )state_changed == 1U && (unsigned int )hub_encoded_timeout != 0U);
  enabling_u2 = (bool )((unsigned int )state_changed == 2U && (unsigned int )hub_encoded_timeout != 0U);
  if ((udev->u1_params.timeout != 0 && ! disabling_u1) || (int )enabling_u1) {
    u1_mel_us = (unsigned long long )((udev->u1_params.mel + 999U) / 1000U);
  } else {
  }
  if ((udev->u2_params.timeout != 0 && ! disabling_u2) || (int )enabling_u2) {
    u2_mel_us = (unsigned long long )((udev->u2_params.mel + 999U) / 1000U);
  } else {
  }
  if (u1_mel_us > u2_mel_us) {
    mel_us = u1_mel_us;
  } else {
    mel_us = u2_mel_us;
  }
  if (mel_us > 65535ULL) {
    dev_warn((struct device const *)(& udev->dev), "Link PM max exit latency of %lluus is too big.\n",
             mel_us);
    return (-7);
  } else {
  }
  return ((int )mel_us);
}
}
int xhci_enable_usb3_lpm_timeout(struct usb_hcd *hcd , struct usb_device *udev , enum usb3_link_state state )
{
  struct xhci_hcd *xhci ;
  u16 hub_encoded_timeout ;
  int mel ;
  int ret ;
  {
  xhci = hcd_to_xhci(hcd);
  if (((unsigned long )xhci == (unsigned long )((struct xhci_hcd *)0) || (xhci->quirks & 2048U) == 0U) || (unsigned long )xhci->devs[udev->slot_id] == (unsigned long )((struct xhci_virt_device *)0)) {
    return (0);
  } else {
  }
  hub_encoded_timeout = xhci_calculate_lpm_timeout(hcd, udev, state);
  mel = calculate_max_exit_latency(udev, state, (int )hub_encoded_timeout);
  if (mel < 0) {
    hub_encoded_timeout = 0U;
    mel = 0;
  } else {
  }
  ret = xhci_change_max_exit_latency(xhci, udev, (int )((u16 )mel));
  if (ret != 0) {
    return (ret);
  } else {
  }
  return ((int )hub_encoded_timeout);
}
}
int xhci_disable_usb3_lpm_timeout(struct usb_hcd *hcd , struct usb_device *udev ,
                                  enum usb3_link_state state )
{
  struct xhci_hcd *xhci ;
  u16 mel ;
  int ret ;
  int tmp ;
  {
  xhci = hcd_to_xhci(hcd);
  if (((unsigned long )xhci == (unsigned long )((struct xhci_hcd *)0) || (xhci->quirks & 2048U) == 0U) || (unsigned long )xhci->devs[udev->slot_id] == (unsigned long )((struct xhci_virt_device *)0)) {
    return (0);
  } else {
  }
  tmp = calculate_max_exit_latency(udev, state, 0);
  mel = (u16 )tmp;
  ret = xhci_change_max_exit_latency(xhci, udev, (int )mel);
  if (ret != 0) {
    return (ret);
  } else {
  }
  return (0);
}
}
int xhci_update_hub_device(struct usb_hcd *hcd , struct usb_device *hdev , struct usb_tt *tt ,
                           gfp_t mem_flags )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  struct xhci_virt_device *vdev ;
  struct xhci_command *config_cmd ;
  struct xhci_input_control_ctx *ctrl_ctx ;
  struct xhci_slot_ctx *slot_ctx ;
  unsigned long flags ;
  unsigned int think_time ;
  int ret ;
  struct usb_hcd *tmp___0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  raw_spinlock_t *tmp___3 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  int tmp___6 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___11 ;
  long tmp___12 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___13 ;
  long tmp___14 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___15 ;
  long tmp___16 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  if ((unsigned long )hdev->parent == (unsigned long )((struct usb_device *)0)) {
    return (0);
  } else {
  }
  vdev = xhci->devs[hdev->slot_id];
  if ((unsigned long )vdev == (unsigned long )((struct xhci_virt_device *)0)) {
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "Cannot update hub desc for unknown device.\n");
    return (-22);
  } else {
  }
  config_cmd = xhci_alloc_command(xhci, 1, 1, mem_flags);
  if ((unsigned long )config_cmd == (unsigned long )((struct xhci_command *)0)) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_update_hub_device";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor.format = "Could not allocate xHCI command structure.\n";
    descriptor.lineno = 4549U;
    descriptor.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                        "Could not allocate xHCI command structure.\n");
    } else {
    }
    return (-12);
  } else {
  }
  tmp___3 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___3);
  if ((unsigned int )hdev->speed == 3U) {
    tmp___6 = xhci_alloc_tt_info(xhci, vdev, hdev, tt, 32U);
    if (tmp___6 != 0) {
      descriptor___0.modname = "xhci_hcd";
      descriptor___0.function = "xhci_update_hub_device";
      descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
      descriptor___0.format = "Could not allocate xHCI TT structure.\n";
      descriptor___0.lineno = 4556U;
      descriptor___0.flags = 1U;
      tmp___5 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___5 != 0L) {
        tmp___4 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___4->self.controller,
                          "Could not allocate xHCI TT structure.\n");
      } else {
      }
      xhci_free_command(xhci, config_cmd);
      spin_unlock_irqrestore(& xhci->lock, flags);
      return (-12);
    } else {
    }
  } else {
  }
  xhci_slot_copy(xhci, config_cmd->in_ctx, vdev->out_ctx);
  ctrl_ctx = xhci_get_input_control_ctx(xhci, config_cmd->in_ctx);
  ctrl_ctx->add_flags = ctrl_ctx->add_flags | 1U;
  slot_ctx = xhci_get_slot_ctx(xhci, config_cmd->in_ctx);
  slot_ctx->dev_info = slot_ctx->dev_info | 67108864U;
  if (tt->multi != 0) {
    slot_ctx->dev_info = slot_ctx->dev_info | 33554432U;
  } else {
  }
  if ((unsigned int )xhci->hci_version > 149U) {
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "xhci_update_hub_device";
    descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___1.format = "xHCI version %x needs hub TT think time and number of ports\n";
    descriptor___1.lineno = 4572U;
    descriptor___1.flags = 1U;
    tmp___8 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___8 != 0L) {
      tmp___7 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___7->self.controller,
                        "xHCI version %x needs hub TT think time and number of ports\n",
                        (unsigned int )xhci->hci_version);
    } else {
    }
    slot_ctx->dev_info2 = slot_ctx->dev_info2 | (__le32 )(hdev->maxchild << 24);
    think_time = tt->think_time;
    if (think_time != 0U) {
      think_time = think_time / 666U - 1U;
    } else {
    }
    if ((unsigned int )xhci->hci_version <= 255U || (unsigned int )hdev->speed == 3U) {
      slot_ctx->tt_info = slot_ctx->tt_info | ((think_time & 3U) << 16);
    } else {
    }
  } else {
    descriptor___2.modname = "xhci_hcd";
    descriptor___2.function = "xhci_update_hub_device";
    descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___2.format = "xHCI version %x doesn\'t need hub TT think time or number of ports\n";
    descriptor___2.lineno = 4590U;
    descriptor___2.flags = 1U;
    tmp___10 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___10 != 0L) {
      tmp___9 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___9->self.controller,
                        "xHCI version %x doesn\'t need hub TT think time or number of ports\n",
                        (unsigned int )xhci->hci_version);
    } else {
    }
  }
  slot_ctx->dev_state = 0U;
  spin_unlock_irqrestore(& xhci->lock, flags);
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_update_hub_device";
  descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___3.format = "Set up %s for hub device.\n";
  descriptor___3.lineno = 4597U;
  descriptor___3.flags = 1U;
  tmp___12 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___12 != 0L) {
    tmp___11 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___11->self.controller,
                      "Set up %s for hub device.\n", (unsigned int )xhci->hci_version > 149U ? (char *)"configure endpoint" : (char *)"evaluate context");
  } else {
  }
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_update_hub_device";
  descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___4.format = "Slot %u Input Context:\n";
  descriptor___4.lineno = 4598U;
  descriptor___4.flags = 1U;
  tmp___14 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___14 != 0L) {
    tmp___13 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___13->self.controller,
                      "Slot %u Input Context:\n", hdev->slot_id);
  } else {
  }
  xhci_dbg_ctx(xhci, config_cmd->in_ctx, 0U);
  if ((unsigned int )xhci->hci_version > 149U) {
    ret = xhci_configure_endpoint(xhci, hdev, config_cmd, 0, 0);
  } else {
    ret = xhci_configure_endpoint(xhci, hdev, config_cmd, 1, 0);
  }
  descriptor___5.modname = "xhci_hcd";
  descriptor___5.function = "xhci_update_hub_device";
  descriptor___5.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___5.format = "Slot %u Output Context:\n";
  descriptor___5.lineno = 4611U;
  descriptor___5.flags = 1U;
  tmp___16 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___16 != 0L) {
    tmp___15 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___15->self.controller,
                      "Slot %u Output Context:\n", hdev->slot_id);
  } else {
  }
  xhci_dbg_ctx(xhci, vdev->out_ctx, 0U);
  xhci_free_command(xhci, config_cmd);
  return (ret);
}
}
int xhci_get_frame(struct usb_hcd *hcd )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  unsigned int tmp___0 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  tmp___0 = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->run_regs)->microframe_index);
  return ((int )(tmp___0 >> 3));
}
}
int xhci_gen_setup(struct usb_hcd *hcd , void (*get_quirks)(struct device * , struct xhci_hcd * ) )
{
  struct xhci_hcd *xhci ;
  struct device *dev ;
  int retval ;
  u32 temp ;
  void *tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  unsigned int tmp___3 ;
  unsigned int tmp___4 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___11 ;
  long tmp___12 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___13 ;
  long tmp___14 ;
  {
  dev = hcd->self.controller;
  hcd->self.sg_tablesize = 4294967295U;
  hcd->self.no_stop_on_short = 1U;
  tmp___2 = usb_hcd_is_primary_hcd(hcd);
  if (tmp___2 != 0) {
    tmp = kzalloc(3456UL, 208U);
    xhci = (struct xhci_hcd *)tmp;
    if ((unsigned long )xhci == (unsigned long )((struct xhci_hcd *)0)) {
      return (-12);
    } else {
    }
    *((struct xhci_hcd **)(& hcd->hcd_priv)) = xhci;
    xhci->main_hcd = hcd;
    hcd->speed = 32;
    (hcd->self.root_hub)->speed = 3;
    hcd->has_tt = 1U;
  } else {
    xhci = hcd_to_xhci(hcd);
    temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->cap_regs)->hcc_params);
    if ((int )temp & 1) {
      descriptor.modname = "xhci_hcd";
      descriptor.function = "xhci_gen_setup";
      descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
      descriptor.format = "Enabling 64-bit DMA addresses.\n";
      descriptor.lineno = 4661U;
      descriptor.flags = 1U;
      tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___1 != 0L) {
        tmp___0 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                          "Enabling 64-bit DMA addresses.\n");
      } else {
      }
      dma_set_mask(hcd->self.controller, 0xffffffffffffffffULL);
    } else {
      dma_set_mask(hcd->self.controller, 4294967295ULL);
    }
    return (0);
  }
  xhci->cap_regs = (struct xhci_cap_regs *)hcd->regs;
  tmp___3 = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->cap_regs)->hc_capbase);
  xhci->op_regs = (struct xhci_op_regs *)(hcd->regs + ((unsigned long )tmp___3 & 255UL));
  tmp___4 = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->cap_regs)->run_regs_off);
  xhci->run_regs = (struct xhci_run_regs *)(hcd->regs + ((unsigned long )tmp___4 & 4294967264UL));
  xhci->hcs_params1 = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->cap_regs)->hcs_params1);
  xhci->hcs_params2 = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->cap_regs)->hcs_params2);
  xhci->hcs_params3 = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->cap_regs)->hcs_params3);
  xhci->hcc_params = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->cap_regs)->hc_capbase);
  xhci->hci_version = (u16 )(xhci->hcc_params >> 16);
  xhci->hcc_params = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->cap_regs)->hcc_params);
  xhci_print_registers(xhci);
  (*get_quirks)(dev, xhci);
  retval = xhci_halt(xhci);
  if (retval != 0) {
    goto error;
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_gen_setup";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___0.format = "Resetting HCD\n";
  descriptor___0.lineno = 4690U;
  descriptor___0.flags = 1U;
  tmp___6 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___5->self.controller,
                      "Resetting HCD\n");
  } else {
  }
  retval = xhci_reset(xhci);
  if (retval != 0) {
    goto error;
  } else {
  }
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_gen_setup";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___1.format = "Reset complete\n";
  descriptor___1.lineno = 4695U;
  descriptor___1.flags = 1U;
  tmp___8 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    tmp___7 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___7->self.controller,
                      "Reset complete\n");
  } else {
  }
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->cap_regs)->hcc_params);
  if ((int )temp & 1) {
    descriptor___2.modname = "xhci_hcd";
    descriptor___2.function = "xhci_gen_setup";
    descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
    descriptor___2.format = "Enabling 64-bit DMA addresses.\n";
    descriptor___2.lineno = 4699U;
    descriptor___2.flags = 1U;
    tmp___10 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___10 != 0L) {
      tmp___9 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___9->self.controller,
                        "Enabling 64-bit DMA addresses.\n");
    } else {
    }
    dma_set_mask(hcd->self.controller, 0xffffffffffffffffULL);
  } else {
    dma_set_mask(hcd->self.controller, 4294967295ULL);
  }
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_gen_setup";
  descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___3.format = "Calling HCD init\n";
  descriptor___3.lineno = 4705U;
  descriptor___3.flags = 1U;
  tmp___12 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___12 != 0L) {
    tmp___11 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___11->self.controller,
                      "Calling HCD init\n");
  } else {
  }
  retval = xhci_init(hcd);
  if (retval != 0) {
    goto error;
  } else {
  }
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_gen_setup";
  descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci.c.prepared";
  descriptor___4.format = "Called HCD init\n";
  descriptor___4.lineno = 4710U;
  descriptor___4.flags = 1U;
  tmp___14 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___14 != 0L) {
    tmp___13 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___13->self.controller,
                      "Called HCD init\n");
  } else {
  }
  return (0);
  error:
  kfree((void const *)xhci);
  return (retval);
}
}
static int xhci_hcd_init(void)
{
  int retval ;
  {
  retval = xhci_register_pci();
  if (retval < 0) {
    printk("\017Problem registering PCI driver.");
    return (retval);
  } else {
  }
  retval = xhci_register_plat();
  if (retval < 0) {
    printk("\017Problem registering platform driver.");
    goto unreg_pci;
  } else {
  }
  return (0);
  unreg_pci:
  xhci_unregister_pci();
  return (retval);
}
}
static void xhci_hcd_cleanup(void)
{
  {
  xhci_unregister_pci();
  xhci_unregister_plat();
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
  unsigned long var_compliance_mode_recovery_15_p0 ;
  unsigned long var_xhci_event_ring_work_20_p0 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = xhci_hcd_init();
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_32414;
  ldv_32413:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0:
  ldv_handler_precall();
  compliance_mode_recovery(var_compliance_mode_recovery_15_p0);
  goto ldv_32410;
  case 1:
  ldv_handler_precall();
  xhci_event_ring_work(var_xhci_event_ring_work_20_p0);
  goto ldv_32410;
  default: ;
  goto ldv_32410;
  }
  ldv_32410: ;
  ldv_32414:
  tmp___1 = __VERIFIER_nondet_int();
  if (tmp___1 != 0) {
    goto ldv_32413;
  } else {
  }
  ldv_handler_precall();
  xhci_hcd_cleanup();
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
__inline static unsigned long __ffs(unsigned long word )
{
  {
  __asm__ ("rep; bsf %1,%0": "=r" (word): "rm" (word));
  return (word);
}
}
extern struct pv_irq_ops pv_irq_ops ;
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
int ldv_mutex_trylock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 ) ;
__inline static struct thread_info *current_thread_info___0(void)
{
  struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6627;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6627;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6627;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6627;
  default:
  __bad_percpu_size();
  }
  ldv_6627:
  ti = (struct thread_info *)(pfo_ret__ - 8152UL);
  return (ti);
}
}
extern int radix_tree_insert(struct radix_tree_root * , unsigned long , void * ) ;
extern void *radix_tree_lookup(struct radix_tree_root * , unsigned long ) ;
extern void *radix_tree_delete(struct radix_tree_root * , unsigned long ) ;
extern struct dma_pool *dma_pool_create(char const * , struct device * , size_t ,
                                        size_t , size_t ) ;
extern void dma_pool_destroy(struct dma_pool * ) ;
extern void *dma_pool_alloc(struct dma_pool * , gfp_t , dma_addr_t * ) ;
extern void dma_pool_free(struct dma_pool * , void * , dma_addr_t ) ;
__inline static int is_device_dma_capable(struct device *dev )
{
  {
  return ((unsigned long )dev->dma_mask != (unsigned long )((u64 *)0) && *(dev->dma_mask) != 0ULL);
}
}
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
__inline static int xhci_link_trb_quirk(struct xhci_hcd *xhci )
{
  {
  return ((int )xhci->quirks & 1);
}
}
void xhci_dbg_regs(struct xhci_hcd *xhci ) ;
void xhci_print_run_regs(struct xhci_hcd *xhci ) ;
int xhci_ring_expansion(struct xhci_hcd *xhci , struct xhci_ring *ring , unsigned int num_trbs ,
                        gfp_t flags ) ;
struct xhci_ring *xhci_dma_to_transfer_ring(struct xhci_virt_ep *ep , u64 address ) ;
struct xhci_ring *xhci_stream_id_to_ring(struct xhci_virt_device *dev , unsigned int ep_index ,
                                         unsigned int stream_id ) ;
struct xhci_segment *trb_in_td(struct xhci_segment *start_seg , union xhci_trb *start_trb ,
                               union xhci_trb *end_trb , dma_addr_t suspect_dma ) ;
void xhci_stop_endpoint_command_watchdog(unsigned long arg ) ;
static struct xhci_segment *xhci_segment_alloc(struct xhci_hcd *xhci , unsigned int cycle_state ,
                                               gfp_t flags )
{
  struct xhci_segment *seg ;
  dma_addr_t dma ;
  int i ;
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = kzalloc(24UL, flags);
  seg = (struct xhci_segment *)tmp;
  if ((unsigned long )seg == (unsigned long )((struct xhci_segment *)0)) {
    return (0);
  } else {
  }
  tmp___0 = dma_pool_alloc(xhci->segment_pool, flags, & dma);
  seg->trbs = (union xhci_trb *)tmp___0;
  if ((unsigned long )seg->trbs == (unsigned long )((union xhci_trb *)0)) {
    kfree((void const *)seg);
    return (0);
  } else {
  }
  memset((void *)seg->trbs, 0, 1024UL);
  if (cycle_state == 0U) {
    i = 0;
    goto ldv_30104;
    ldv_30103:
    (seg->trbs + (unsigned long )i)->link.control = (seg->trbs + (unsigned long )i)->link.control | 1U;
    i = i + 1;
    ldv_30104: ;
    if (i <= 63) {
      goto ldv_30103;
    } else {
    }
  } else {
  }
  seg->dma = dma;
  seg->next = 0;
  return (seg);
}
}
static void xhci_segment_free(struct xhci_hcd *xhci , struct xhci_segment *seg )
{
  {
  if ((unsigned long )seg->trbs != (unsigned long )((union xhci_trb *)0)) {
    dma_pool_free(xhci->segment_pool, (void *)seg->trbs, seg->dma);
    seg->trbs = 0;
  } else {
  }
  kfree((void const *)seg);
  return;
}
}
static void xhci_free_segments_for_ring(struct xhci_hcd *xhci , struct xhci_segment *first )
{
  struct xhci_segment *seg ;
  struct xhci_segment *next ;
  {
  seg = first->next;
  goto ldv_30117;
  ldv_30116:
  next = seg->next;
  xhci_segment_free(xhci, seg);
  seg = next;
  ldv_30117: ;
  if ((unsigned long )seg != (unsigned long )first) {
    goto ldv_30116;
  } else {
  }
  xhci_segment_free(xhci, first);
  return;
}
}
static void xhci_link_segments(struct xhci_hcd *xhci , struct xhci_segment *prev ,
                               struct xhci_segment *next , enum xhci_ring_type type )
{
  u32 val ;
  int tmp ;
  {
  if ((unsigned long )prev == (unsigned long )((struct xhci_segment *)0) || (unsigned long )next == (unsigned long )((struct xhci_segment *)0)) {
    return;
  } else {
  }
  prev->next = next;
  if ((unsigned int )type != 6U) {
    (prev->trbs + 63UL)->link.segment_ptr = next->dma;
    val = (prev->trbs + 63UL)->link.control;
    val = val & 4294902783U;
    val = val | 6144U;
    tmp = xhci_link_trb_quirk(xhci);
    if (tmp != 0 || ((unsigned int )type == 1U && (xhci->quirks & 512U) != 0U)) {
      val = val | 16U;
    } else {
    }
    (prev->trbs + 63UL)->link.control = val;
  } else {
  }
  return;
}
}
static void xhci_link_rings(struct xhci_hcd *xhci , struct xhci_ring *ring , struct xhci_segment *first ,
                            struct xhci_segment *last , unsigned int num_segs )
{
  struct xhci_segment *next ;
  {
  if (((unsigned long )ring == (unsigned long )((struct xhci_ring *)0) || (unsigned long )first == (unsigned long )((struct xhci_segment *)0)) || (unsigned long )last == (unsigned long )((struct xhci_segment *)0)) {
    return;
  } else {
  }
  next = (ring->enq_seg)->next;
  xhci_link_segments(xhci, ring->enq_seg, first, ring->type);
  xhci_link_segments(xhci, last, next, ring->type);
  ring->num_segs = ring->num_segs + num_segs;
  ring->num_trbs_free = ring->num_trbs_free + num_segs * 63U;
  if ((unsigned int )ring->type != 6U && (unsigned long )ring->enq_seg == (unsigned long )ring->last_seg) {
    ((ring->last_seg)->trbs + 63UL)->link.control = ((ring->last_seg)->trbs + 63UL)->link.control & 4294967293U;
    (last->trbs + 63UL)->link.control = (last->trbs + 63UL)->link.control | 2U;
    ring->last_seg = last;
  } else {
  }
  return;
}
}
void xhci_ring_free(struct xhci_hcd *xhci , struct xhci_ring *ring )
{
  {
  if ((unsigned long )ring == (unsigned long )((struct xhci_ring *)0)) {
    return;
  } else {
  }
  if ((unsigned long )ring->first_seg != (unsigned long )((struct xhci_segment *)0)) {
    xhci_free_segments_for_ring(xhci, ring->first_seg);
  } else {
  }
  kfree((void const *)ring);
  return;
}
}
static void xhci_initialize_ring_info(struct xhci_ring *ring , unsigned int cycle_state )
{
  {
  ring->enqueue = (ring->first_seg)->trbs;
  ring->enq_seg = ring->first_seg;
  ring->dequeue = ring->enqueue;
  ring->deq_seg = ring->first_seg;
  ring->cycle_state = cycle_state;
  ring->enq_updates = 0U;
  ring->deq_updates = 0U;
  ring->num_trbs_free = ring->num_segs * 63U - 1U;
  return;
}
}
static int xhci_alloc_segments_for_ring(struct xhci_hcd *xhci , struct xhci_segment **first ,
                                        struct xhci_segment **last , unsigned int num_segs ,
                                        unsigned int cycle_state , enum xhci_ring_type type ,
                                        gfp_t flags )
{
  struct xhci_segment *prev ;
  struct xhci_segment *next ;
  {
  prev = xhci_segment_alloc(xhci, cycle_state, flags);
  if ((unsigned long )prev == (unsigned long )((struct xhci_segment *)0)) {
    return (-12);
  } else {
  }
  num_segs = num_segs - 1U;
  *first = prev;
  goto ldv_30157;
  ldv_30156:
  next = xhci_segment_alloc(xhci, cycle_state, flags);
  if ((unsigned long )next == (unsigned long )((struct xhci_segment *)0)) {
    prev = *first;
    goto ldv_30154;
    ldv_30153:
    next = prev->next;
    xhci_segment_free(xhci, prev);
    prev = next;
    ldv_30154: ;
    if ((unsigned long )prev != (unsigned long )((struct xhci_segment *)0)) {
      goto ldv_30153;
    } else {
    }
    return (-12);
  } else {
  }
  xhci_link_segments(xhci, prev, next, type);
  prev = next;
  num_segs = num_segs - 1U;
  ldv_30157: ;
  if (num_segs != 0U) {
    goto ldv_30156;
  } else {
  }
  xhci_link_segments(xhci, prev, *first, type);
  *last = prev;
  return (0);
}
}
static struct xhci_ring *xhci_ring_alloc(struct xhci_hcd *xhci , unsigned int num_segs ,
                                         unsigned int cycle_state , enum xhci_ring_type type ,
                                         gfp_t flags )
{
  struct xhci_ring *ring ;
  int ret ;
  void *tmp ;
  {
  tmp = kzalloc(112UL, flags);
  ring = (struct xhci_ring *)tmp;
  if ((unsigned long )ring == (unsigned long )((struct xhci_ring *)0)) {
    return (0);
  } else {
  }
  ring->num_segs = num_segs;
  INIT_LIST_HEAD(& ring->td_list);
  ring->type = type;
  if (num_segs == 0U) {
    return (ring);
  } else {
  }
  ret = xhci_alloc_segments_for_ring(xhci, & ring->first_seg, & ring->last_seg, num_segs,
                                     cycle_state, type, flags);
  if (ret != 0) {
    goto fail;
  } else {
  }
  if ((unsigned int )type != 6U) {
    ((ring->last_seg)->trbs + 63UL)->link.control = ((ring->last_seg)->trbs + 63UL)->link.control | 2U;
  } else {
  }
  xhci_initialize_ring_info(ring, cycle_state);
  return (ring);
  fail:
  kfree((void const *)ring);
  return (0);
}
}
void xhci_free_or_cache_endpoint_ring(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                                      unsigned int ep_index )
{
  int rings_cached ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  {
  rings_cached = virt_dev->num_rings_cached;
  if (rings_cached <= 30) {
    *(virt_dev->ring_cache + (unsigned long )rings_cached) = virt_dev->eps[ep_index].ring;
    virt_dev->num_rings_cached = virt_dev->num_rings_cached + 1;
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_free_or_cache_endpoint_ring";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
    descriptor.format = "Cached old ring, %d ring%s cached\n";
    descriptor.lineno = 315U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "Cached old ring, %d ring%s cached\n", virt_dev->num_rings_cached,
                        virt_dev->num_rings_cached > 1 ? (char *)"s" : (char *)"");
    } else {
    }
  } else {
    xhci_ring_free(xhci, virt_dev->eps[ep_index].ring);
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_free_or_cache_endpoint_ring";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
    descriptor___0.format = "Ring cache full (%d rings), freeing ring\n";
    descriptor___0.lineno = 320U;
    descriptor___0.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                        "Ring cache full (%d rings), freeing ring\n", virt_dev->num_rings_cached);
    } else {
    }
  }
  virt_dev->eps[ep_index].ring = 0;
  return;
}
}
static void xhci_reinit_cached_ring(struct xhci_hcd *xhci , struct xhci_ring *ring ,
                                    unsigned int cycle_state , enum xhci_ring_type type )
{
  struct xhci_segment *seg ;
  int i ;
  {
  seg = ring->first_seg;
  ldv_30189:
  memset((void *)seg->trbs, 0, 1024UL);
  if (cycle_state == 0U) {
    i = 0;
    goto ldv_30187;
    ldv_30186:
    (seg->trbs + (unsigned long )i)->link.control = (seg->trbs + (unsigned long )i)->link.control | 1U;
    i = i + 1;
    ldv_30187: ;
    if (i <= 63) {
      goto ldv_30186;
    } else {
    }
  } else {
  }
  xhci_link_segments(xhci, seg, seg->next, type);
  seg = seg->next;
  if ((unsigned long )ring->first_seg != (unsigned long )seg) {
    goto ldv_30189;
  } else {
  }
  ring->type = type;
  xhci_initialize_ring_info(ring, cycle_state);
  INIT_LIST_HEAD(& ring->td_list);
  return;
}
}
int xhci_ring_expansion(struct xhci_hcd *xhci , struct xhci_ring *ring , unsigned int num_trbs ,
                        gfp_t flags )
{
  struct xhci_segment *first ;
  struct xhci_segment *last ;
  unsigned int num_segs ;
  unsigned int num_segs_needed ;
  int ret ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  num_segs_needed = (num_trbs + 62U) / 63U;
  num_segs = num_segs_needed > ring->num_segs ? num_segs_needed : ring->num_segs;
  ret = xhci_alloc_segments_for_ring(xhci, & first, & last, num_segs, ring->cycle_state,
                                     ring->type, flags);
  if (ret != 0) {
    return (-12);
  } else {
  }
  xhci_link_rings(xhci, ring, first, last, num_segs);
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_ring_expansion";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor.format = "ring expansion succeed, now has %d segments\n";
  descriptor.lineno = 382U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "ring expansion succeed, now has %d segments\n", ring->num_segs);
  } else {
  }
  return (0);
}
}
static struct xhci_container_ctx *xhci_alloc_container_ctx(struct xhci_hcd *xhci ,
                                                           int type , gfp_t flags )
{
  struct xhci_container_ctx *ctx ;
  void *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  void *tmp___2 ;
  {
  tmp = kzalloc(24UL, flags);
  ctx = (struct xhci_container_ctx *)tmp;
  if ((unsigned long )ctx == (unsigned long )((struct xhci_container_ctx *)0)) {
    return (0);
  } else {
  }
  tmp___0 = ldv__builtin_expect(type != 1, 0L);
  if (tmp___0 != 0L) {
    tmp___1 = ldv__builtin_expect(type != 2, 0L);
    if (tmp___1 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared"),
                           "i" (396), "i" (12UL));
      ldv_30210: ;
      goto ldv_30210;
    } else {
    }
  } else {
  }
  ctx->type = (unsigned int )type;
  ctx->size = (xhci->hcc_params & 4U) != 0U ? 2048 : 1024;
  if (type == 2) {
    ctx->size = ctx->size + ((xhci->hcc_params & 4U) != 0U ? 64 : 32);
  } else {
  }
  tmp___2 = dma_pool_alloc(xhci->device_pool, flags, & ctx->dma);
  ctx->bytes = (u8 *)tmp___2;
  memset((void *)ctx->bytes, 0, (size_t )ctx->size);
  return (ctx);
}
}
static void xhci_free_container_ctx(struct xhci_hcd *xhci , struct xhci_container_ctx *ctx )
{
  {
  if ((unsigned long )ctx == (unsigned long )((struct xhci_container_ctx *)0)) {
    return;
  } else {
  }
  dma_pool_free(xhci->device_pool, (void *)ctx->bytes, ctx->dma);
  kfree((void const *)ctx);
  return;
}
}
struct xhci_input_control_ctx *xhci_get_input_control_ctx(struct xhci_hcd *xhci ,
                                                          struct xhci_container_ctx *ctx )
{
  long tmp ;
  {
  tmp = ldv__builtin_expect(ctx->type != 2U, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared"),
                         "i" (419), "i" (12UL));
    ldv_30219: ;
    goto ldv_30219;
  } else {
  }
  return ((struct xhci_input_control_ctx *)ctx->bytes);
}
}
struct xhci_slot_ctx *xhci_get_slot_ctx(struct xhci_hcd *xhci , struct xhci_container_ctx *ctx )
{
  {
  if (ctx->type == 1U) {
    return ((struct xhci_slot_ctx *)ctx->bytes);
  } else {
  }
  return ((struct xhci_slot_ctx *)(ctx->bytes + ((xhci->hcc_params & 4U) != 0U ? 64UL : 32UL)));
}
}
struct xhci_ep_ctx *xhci_get_ep_ctx(struct xhci_hcd *xhci , struct xhci_container_ctx *ctx ,
                                    unsigned int ep_index )
{
  {
  ep_index = ep_index + 1U;
  if (ctx->type == 2U) {
    ep_index = ep_index + 1U;
  } else {
  }
  return ((struct xhci_ep_ctx *)ctx->bytes + (unsigned long )(((xhci->hcc_params & 4U) != 0U ? 64U : 32U) * ep_index));
}
}
static void xhci_free_stream_ctx(struct xhci_hcd *xhci , unsigned int num_stream_ctxs ,
                                 struct xhci_stream_ctx *stream_ctx , dma_addr_t dma )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct usb_hcd *tmp ;
  {
  tmp = xhci_to_hcd(xhci);
  __mptr = (struct device const *)tmp->self.controller;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  if (num_stream_ctxs > 1024U) {
    dma_free_attrs(& pdev->dev, (unsigned long )num_stream_ctxs * 16UL, (void *)stream_ctx,
                   dma, 0);
  } else
  if (num_stream_ctxs <= 256U) {
    return;
  } else {
    return;
  }
  return;
}
}
static struct xhci_stream_ctx *xhci_alloc_stream_ctx(struct xhci_hcd *xhci , unsigned int num_stream_ctxs ,
                                                     dma_addr_t *dma , gfp_t mem_flags )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct usb_hcd *tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  tmp = xhci_to_hcd(xhci);
  __mptr = (struct device const *)tmp->self.controller;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  if (num_stream_ctxs > 1024U) {
    tmp___0 = dma_alloc_attrs(& pdev->dev, (unsigned long )num_stream_ctxs * 16UL,
                              dma, mem_flags, 0);
    return ((struct xhci_stream_ctx *)tmp___0);
  } else
  if (num_stream_ctxs <= 256U) {
    tmp___1 = dma_pool_alloc(xhci->small_streams_pool, mem_flags, dma);
    return ((struct xhci_stream_ctx *)tmp___1);
  } else {
    tmp___2 = dma_pool_alloc(xhci->medium_streams_pool, mem_flags, dma);
    return ((struct xhci_stream_ctx *)tmp___2);
  }
}
}
struct xhci_ring *xhci_dma_to_transfer_ring(struct xhci_virt_ep *ep , u64 address )
{
  unsigned long tmp ;
  void *tmp___0 ;
  {
  if ((ep->ep_state & 16U) != 0U) {
    tmp = __ffs(1024UL);
    tmp___0 = radix_tree_lookup(& (ep->stream_info)->trb_address_map, (unsigned long )(address >> (int )tmp));
    return ((struct xhci_ring *)tmp___0);
  } else {
  }
  return (ep->ring);
}
}
static struct xhci_ring *dma_to_stream_ring(struct xhci_stream_info *stream_info ,
                                            u64 address )
{
  unsigned long tmp ;
  void *tmp___0 ;
  {
  tmp = __ffs(1024UL);
  tmp___0 = radix_tree_lookup(& stream_info->trb_address_map, (unsigned long )(address >> (int )tmp));
  return ((struct xhci_ring *)tmp___0);
}
}
struct xhci_ring *xhci_stream_id_to_ring(struct xhci_virt_device *dev , unsigned int ep_index ,
                                         unsigned int stream_id )
{
  struct xhci_virt_ep *ep ;
  {
  ep = (struct xhci_virt_ep *)(& dev->eps) + (unsigned long )ep_index;
  if (stream_id == 0U) {
    return (ep->ring);
  } else {
  }
  if ((unsigned long )ep->stream_info == (unsigned long )((struct xhci_stream_info *)0)) {
    return (0);
  } else {
  }
  if ((ep->stream_info)->num_streams < stream_id) {
    return (0);
  } else {
  }
  return (*((ep->stream_info)->stream_rings + (unsigned long )stream_id));
}
}
static int xhci_test_radix_tree(struct xhci_hcd *xhci , unsigned int num_streams ,
                                struct xhci_stream_info *stream_info )
{
  u32 cur_stream ;
  struct xhci_ring *cur_ring ;
  u64 addr ;
  struct xhci_ring *mapped_ring ;
  int trb_size ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  {
  cur_stream = 1U;
  goto ldv_30275;
  ldv_30274:
  trb_size = 16;
  cur_ring = *(stream_info->stream_rings + (unsigned long )cur_stream);
  addr = (cur_ring->first_seg)->dma;
  goto ldv_30272;
  ldv_30271:
  mapped_ring = dma_to_stream_ring(stream_info, addr);
  if ((unsigned long )cur_ring != (unsigned long )mapped_ring) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "WARN: DMA address 0x%08llx didn\'t map to stream ID %u; mapped to ring %p\n",
             addr, cur_stream, mapped_ring);
    return (-22);
  } else {
  }
  addr = (u64 )trb_size + addr;
  ldv_30272: ;
  if ((cur_ring->first_seg)->dma + 1024ULL > addr) {
    goto ldv_30271;
  } else {
  }
  mapped_ring = dma_to_stream_ring(stream_info, addr);
  if ((unsigned long )mapped_ring != (unsigned long )cur_ring) {
    addr = (cur_ring->first_seg)->dma - (dma_addr_t )trb_size;
    mapped_ring = dma_to_stream_ring(stream_info, addr);
  } else {
  }
  if ((unsigned long )mapped_ring == (unsigned long )cur_ring) {
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "WARN: Bad DMA address 0x%08llx mapped to valid stream ID %u; mapped ring = %p\n",
             addr, cur_stream, mapped_ring);
    return (-22);
  } else {
  }
  cur_stream = cur_stream + 1U;
  ldv_30275: ;
  if (cur_stream < num_streams) {
    goto ldv_30274;
  } else {
  }
  return (0);
}
}
struct xhci_stream_info *xhci_alloc_stream_info(struct xhci_hcd *xhci , unsigned int num_stream_ctxs ,
                                                unsigned int num_streams , gfp_t mem_flags )
{
  struct xhci_stream_info *stream_info ;
  u32 cur_stream ;
  struct xhci_ring *cur_ring ;
  unsigned long key ;
  u64 addr ;
  int ret ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  unsigned long tmp___7 ;
  int tmp___8 ;
  unsigned long tmp___9 ;
  {
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_alloc_stream_info";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor.format = "Allocating %u streams and %u stream context array entries.\n";
  descriptor.lineno = 637U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "Allocating %u streams and %u stream context array entries.\n",
                      num_streams, num_stream_ctxs);
  } else {
  }
  if (xhci->cmd_ring_reserved_trbs == 61U) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_alloc_stream_info";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
    descriptor___0.format = "Command ring has no reserved TRBs available\n";
    descriptor___0.lineno = 639U;
    descriptor___0.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                        "Command ring has no reserved TRBs available\n");
    } else {
    }
    return (0);
  } else {
  }
  xhci->cmd_ring_reserved_trbs = xhci->cmd_ring_reserved_trbs + 1U;
  tmp___3 = kzalloc(64UL, mem_flags);
  stream_info = (struct xhci_stream_info *)tmp___3;
  if ((unsigned long )stream_info == (unsigned long )((struct xhci_stream_info *)0)) {
    goto cleanup_trbs;
  } else {
  }
  stream_info->num_streams = num_streams;
  stream_info->num_stream_ctxs = num_stream_ctxs;
  tmp___4 = kzalloc((unsigned long )num_streams * 8UL, mem_flags);
  stream_info->stream_rings = (struct xhci_ring **)tmp___4;
  if ((unsigned long )stream_info->stream_rings == (unsigned long )((struct xhci_ring **)0)) {
    goto cleanup_info;
  } else {
  }
  stream_info->stream_ctx_array = xhci_alloc_stream_ctx(xhci, num_stream_ctxs, & stream_info->ctx_array_dma,
                                                        mem_flags);
  if ((unsigned long )stream_info->stream_ctx_array == (unsigned long )((struct xhci_stream_ctx *)0)) {
    goto cleanup_ctx;
  } else {
  }
  memset((void *)stream_info->stream_ctx_array, 0, (unsigned long )num_stream_ctxs * 16UL);
  stream_info->free_streams_command = xhci_alloc_command(xhci, 1, 1, mem_flags);
  if ((unsigned long )stream_info->free_streams_command == (unsigned long )((struct xhci_command *)0)) {
    goto cleanup_ctx;
  } else {
  }
  stream_info->trb_address_map.height = 0U;
  stream_info->trb_address_map.gfp_mask = 32U;
  stream_info->trb_address_map.rnode = 0;
  cur_stream = 1U;
  goto ldv_30298;
  ldv_30297:
  *(stream_info->stream_rings + (unsigned long )cur_stream) = xhci_ring_alloc(xhci,
                                                                              2U,
                                                                              1U,
                                                                              4, mem_flags);
  cur_ring = *(stream_info->stream_rings + (unsigned long )cur_stream);
  if ((unsigned long )cur_ring == (unsigned long )((struct xhci_ring *)0)) {
    goto cleanup_rings;
  } else {
  }
  cur_ring->stream_id = cur_stream;
  addr = ((cur_ring->first_seg)->dma | (dma_addr_t )cur_ring->cycle_state) | 2ULL;
  (stream_info->stream_ctx_array + (unsigned long )cur_stream)->stream_ring = addr;
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_alloc_stream_info";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___1.format = "Setting stream %d ring ptr to 0x%08llx\n";
  descriptor___1.lineno = 693U;
  descriptor___1.flags = 1U;
  tmp___6 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___5->self.controller,
                      "Setting stream %d ring ptr to 0x%08llx\n", cur_stream, addr);
  } else {
  }
  tmp___7 = __ffs(1024UL);
  key = (unsigned long )((cur_ring->first_seg)->dma >> (int )tmp___7);
  ret = radix_tree_insert(& stream_info->trb_address_map, key, (void *)cur_ring);
  if (ret != 0) {
    xhci_ring_free(xhci, cur_ring);
    *(stream_info->stream_rings + (unsigned long )cur_stream) = 0;
    goto cleanup_rings;
  } else {
  }
  cur_stream = cur_stream + 1U;
  ldv_30298: ;
  if (cur_stream < num_streams) {
    goto ldv_30297;
  } else {
  }
  tmp___8 = xhci_test_radix_tree(xhci, num_streams, stream_info);
  if (tmp___8 != 0) {
    goto cleanup_rings;
  } else {
  }
  return (stream_info);
  cleanup_rings:
  cur_stream = 1U;
  goto ldv_30301;
  ldv_30300:
  cur_ring = *(stream_info->stream_rings + (unsigned long )cur_stream);
  if ((unsigned long )cur_ring != (unsigned long )((struct xhci_ring *)0)) {
    addr = (cur_ring->first_seg)->dma;
    tmp___9 = __ffs(1024UL);
    radix_tree_delete(& stream_info->trb_address_map, (unsigned long )(addr >> (int )tmp___9));
    xhci_ring_free(xhci, cur_ring);
    *(stream_info->stream_rings + (unsigned long )cur_stream) = 0;
  } else {
  }
  cur_stream = cur_stream + 1U;
  ldv_30301: ;
  if (cur_stream < num_streams) {
    goto ldv_30300;
  } else {
  }
  xhci_free_command(xhci, stream_info->free_streams_command);
  cleanup_ctx:
  kfree((void const *)stream_info->stream_rings);
  cleanup_info:
  kfree((void const *)stream_info);
  cleanup_trbs:
  xhci->cmd_ring_reserved_trbs = xhci->cmd_ring_reserved_trbs - 1U;
  return (0);
}
}
void xhci_setup_streams_ep_input_ctx(struct xhci_hcd *xhci , struct xhci_ep_ctx *ep_ctx ,
                                     struct xhci_stream_info *stream_info )
{
  u32 max_primary_streams ;
  int tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  {
  tmp = fls((int )stream_info->num_stream_ctxs);
  max_primary_streams = (u32 )(tmp + -2);
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_setup_streams_ep_input_ctx";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor.format = "Setting number of stream ctx array entries to %u\n";
  descriptor.lineno = 756U;
  descriptor.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "Setting number of stream ctx array entries to %u\n", 1 << (int )(max_primary_streams + 1U));
  } else {
  }
  ep_ctx->ep_info = ep_ctx->ep_info & 4294935551U;
  ep_ctx->ep_info = (ep_ctx->ep_info | ((max_primary_streams << 10) & 31744U)) | 32768U;
  ep_ctx->deq = stream_info->ctx_array_dma;
  return;
}
}
void xhci_setup_no_streams_ep_input_ctx(struct xhci_hcd *xhci , struct xhci_ep_ctx *ep_ctx ,
                                        struct xhci_virt_ep *ep )
{
  dma_addr_t addr ;
  {
  ep_ctx->ep_info = ep_ctx->ep_info & 4294902783U;
  addr = xhci_trb_virt_to_dma((ep->ring)->deq_seg, (ep->ring)->dequeue);
  ep_ctx->deq = (dma_addr_t )(ep->ring)->cycle_state | addr;
  return;
}
}
void xhci_free_stream_info(struct xhci_hcd *xhci , struct xhci_stream_info *stream_info )
{
  int cur_stream ;
  struct xhci_ring *cur_ring ;
  dma_addr_t addr ;
  unsigned long tmp ;
  {
  if ((unsigned long )stream_info == (unsigned long )((struct xhci_stream_info *)0)) {
    return;
  } else {
  }
  cur_stream = 1;
  goto ldv_30325;
  ldv_30324:
  cur_ring = *(stream_info->stream_rings + (unsigned long )cur_stream);
  if ((unsigned long )cur_ring != (unsigned long )((struct xhci_ring *)0)) {
    addr = (cur_ring->first_seg)->dma;
    tmp = __ffs(1024UL);
    radix_tree_delete(& stream_info->trb_address_map, (unsigned long )(addr >> (int )tmp));
    xhci_ring_free(xhci, cur_ring);
    *(stream_info->stream_rings + (unsigned long )cur_stream) = 0;
  } else {
  }
  cur_stream = cur_stream + 1;
  ldv_30325: ;
  if ((unsigned int )cur_stream < stream_info->num_streams) {
    goto ldv_30324;
  } else {
  }
  xhci_free_command(xhci, stream_info->free_streams_command);
  xhci->cmd_ring_reserved_trbs = xhci->cmd_ring_reserved_trbs - 1U;
  if ((unsigned long )stream_info->stream_ctx_array != (unsigned long )((struct xhci_stream_ctx *)0)) {
    xhci_free_stream_ctx(xhci, stream_info->num_stream_ctxs, stream_info->stream_ctx_array,
                         stream_info->ctx_array_dma);
  } else {
  }
  if ((unsigned long )stream_info != (unsigned long )((struct xhci_stream_info *)0)) {
    kfree((void const *)stream_info->stream_rings);
  } else {
  }
  kfree((void const *)stream_info);
  return;
}
}
static void xhci_init_endpoint_timer(struct xhci_hcd *xhci , struct xhci_virt_ep *ep )
{
  struct lock_class_key __key ;
  {
  init_timer_key(& ep->stop_cmd_timer, 0U, "(&ep->stop_cmd_timer)", & __key);
  ep->stop_cmd_timer.data = (unsigned long )ep;
  ep->stop_cmd_timer.function = & xhci_stop_endpoint_command_watchdog;
  ep->xhci = xhci;
  return;
}
}
static void xhci_free_tt_info(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                              int slot_id )
{
  struct list_head *tt_list_head ;
  struct xhci_tt_bw_info *tt_info ;
  struct xhci_tt_bw_info *next ;
  bool slot_found ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  slot_found = 0;
  if ((unsigned int )virt_dev->real_port == 0U || (__u32 )virt_dev->real_port > ((xhci->hcs_params1 >> 24) & 127U)) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_free_tt_info";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
    descriptor.format = "Bad real port.\n";
    descriptor.lineno = 841U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "Bad real port.\n");
    } else {
    }
    return;
  } else {
  }
  tt_list_head = & (xhci->rh_bw + ((unsigned long )virt_dev->real_port + 0xffffffffffffffffUL))->tts;
  __mptr = (struct list_head const *)tt_list_head->next;
  tt_info = (struct xhci_tt_bw_info *)__mptr;
  __mptr___0 = (struct list_head const *)tt_info->tt_list.next;
  next = (struct xhci_tt_bw_info *)__mptr___0;
  goto ldv_30351;
  ldv_30350: ;
  if (tt_info->slot_id == slot_id) {
    slot_found = 1;
    list_del(& tt_info->tt_list);
    kfree((void const *)tt_info);
  } else
  if ((int )slot_found) {
    goto ldv_30349;
  } else {
  }
  tt_info = next;
  __mptr___1 = (struct list_head const *)next->tt_list.next;
  next = (struct xhci_tt_bw_info *)__mptr___1;
  ldv_30351: ;
  if ((unsigned long )(& tt_info->tt_list) != (unsigned long )tt_list_head) {
    goto ldv_30350;
  } else {
  }
  ldv_30349: ;
  return;
}
}
int xhci_alloc_tt_info(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                       struct usb_device *hdev , struct usb_tt *tt , gfp_t mem_flags )
{
  struct xhci_tt_bw_info *tt_info ;
  unsigned int num_ports ;
  int i ;
  int j ;
  struct xhci_interval_bw_table *bw_table ;
  void *tmp ;
  {
  if (tt->multi == 0) {
    num_ports = 1U;
  } else {
    num_ports = (unsigned int )hdev->maxchild;
  }
  i = 0;
  goto ldv_30369;
  ldv_30368:
  tmp = kzalloc(696UL, mem_flags);
  tt_info = (struct xhci_tt_bw_info *)tmp;
  if ((unsigned long )tt_info == (unsigned long )((struct xhci_tt_bw_info *)0)) {
    goto free_tts;
  } else {
  }
  INIT_LIST_HEAD(& tt_info->tt_list);
  list_add(& tt_info->tt_list, & (xhci->rh_bw + ((unsigned long )virt_dev->real_port + 0xffffffffffffffffUL))->tts);
  tt_info->slot_id = (virt_dev->udev)->slot_id;
  if (tt->multi != 0) {
    tt_info->ttport = i + 1;
  } else {
  }
  bw_table = & tt_info->bw_table;
  j = 0;
  goto ldv_30366;
  ldv_30365:
  INIT_LIST_HEAD(& bw_table->interval_bw[j].endpoints);
  j = j + 1;
  ldv_30366: ;
  if (j <= 15) {
    goto ldv_30365;
  } else {
  }
  i = i + 1;
  tt_info = tt_info + 1;
  ldv_30369: ;
  if ((unsigned int )i < num_ports) {
    goto ldv_30368;
  } else {
  }
  return (0);
  free_tts:
  xhci_free_tt_info(xhci, virt_dev, (virt_dev->udev)->slot_id);
  return (-12);
}
}
void xhci_free_virt_device(struct xhci_hcd *xhci , int slot_id )
{
  struct xhci_virt_device *dev ;
  int i ;
  int old_active_eps ;
  struct usb_hcd *tmp ;
  int tmp___0 ;
  {
  old_active_eps = 0;
  if (slot_id == 0 || (unsigned long )xhci->devs[slot_id] == (unsigned long )((struct xhci_virt_device *)0)) {
    return;
  } else {
  }
  dev = xhci->devs[slot_id];
  (xhci->dcbaa)->dev_context_ptrs[slot_id] = 0ULL;
  if ((unsigned long )dev == (unsigned long )((struct xhci_virt_device *)0)) {
    return;
  } else {
  }
  if ((unsigned long )dev->tt_info != (unsigned long )((struct xhci_tt_bw_info *)0)) {
    old_active_eps = (dev->tt_info)->active_eps;
  } else {
  }
  i = 0;
  goto ldv_30379;
  ldv_30378: ;
  if ((unsigned long )dev->eps[i].ring != (unsigned long )((struct xhci_ring *)0)) {
    xhci_ring_free(xhci, dev->eps[i].ring);
  } else {
  }
  if ((unsigned long )dev->eps[i].stream_info != (unsigned long )((struct xhci_stream_info *)0)) {
    xhci_free_stream_info(xhci, dev->eps[i].stream_info);
  } else {
  }
  tmp___0 = list_empty((struct list_head const *)(& dev->eps[i].bw_endpoint_list));
  if (tmp___0 == 0) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "Slot %u endpoint %u not removed from BW list!\n",
             slot_id, i);
  } else {
  }
  i = i + 1;
  ldv_30379: ;
  if (i <= 30) {
    goto ldv_30378;
  } else {
  }
  xhci_free_tt_info(xhci, dev, slot_id);
  xhci_update_tt_active_eps(xhci, dev, old_active_eps);
  if ((unsigned long )dev->ring_cache != (unsigned long )((struct xhci_ring **)0)) {
    i = 0;
    goto ldv_30382;
    ldv_30381:
    xhci_ring_free(xhci, *(dev->ring_cache + (unsigned long )i));
    i = i + 1;
    ldv_30382: ;
    if (dev->num_rings_cached > i) {
      goto ldv_30381;
    } else {
    }
    kfree((void const *)dev->ring_cache);
  } else {
  }
  if ((unsigned long )dev->in_ctx != (unsigned long )((struct xhci_container_ctx *)0)) {
    xhci_free_container_ctx(xhci, dev->in_ctx);
  } else {
  }
  if ((unsigned long )dev->out_ctx != (unsigned long )((struct xhci_container_ctx *)0)) {
    xhci_free_container_ctx(xhci, dev->out_ctx);
  } else {
  }
  kfree((void const *)xhci->devs[slot_id]);
  xhci->devs[slot_id] = 0;
  return;
}
}
int xhci_alloc_virt_device(struct xhci_hcd *xhci , int slot_id , struct usb_device *udev ,
                           gfp_t flags )
{
  struct xhci_virt_device *dev ;
  int i ;
  struct usb_hcd *tmp ;
  void *tmp___0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  void *tmp___5 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  {
  if (slot_id == 0 || (unsigned long )xhci->devs[slot_id] != (unsigned long )((struct xhci_virt_device *)0)) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "Bad Slot ID %d\n", slot_id);
    return (0);
  } else {
  }
  tmp___0 = kzalloc(8872UL, flags);
  xhci->devs[slot_id] = (struct xhci_virt_device *)tmp___0;
  if ((unsigned long )xhci->devs[slot_id] == (unsigned long )((struct xhci_virt_device *)0)) {
    return (0);
  } else {
  }
  dev = xhci->devs[slot_id];
  dev->out_ctx = xhci_alloc_container_ctx(xhci, 1, flags);
  if ((unsigned long )dev->out_ctx == (unsigned long )((struct xhci_container_ctx *)0)) {
    goto fail;
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_alloc_virt_device";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor.format = "Slot %d output ctx = 0x%llx (dma)\n";
  descriptor.lineno = 978U;
  descriptor.flags = 1U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                      "Slot %d output ctx = 0x%llx (dma)\n", slot_id, (dev->out_ctx)->dma);
  } else {
  }
  dev->in_ctx = xhci_alloc_container_ctx(xhci, 2, flags);
  if ((unsigned long )dev->in_ctx == (unsigned long )((struct xhci_container_ctx *)0)) {
    goto fail;
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_alloc_virt_device";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___0.format = "Slot %d input ctx = 0x%llx (dma)\n";
  descriptor___0.lineno = 986U;
  descriptor___0.flags = 1U;
  tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___3->self.controller,
                      "Slot %d input ctx = 0x%llx (dma)\n", slot_id, (dev->in_ctx)->dma);
  } else {
  }
  i = 0;
  goto ldv_30397;
  ldv_30396:
  xhci_init_endpoint_timer(xhci, (struct xhci_virt_ep *)(& dev->eps) + (unsigned long )i);
  INIT_LIST_HEAD(& dev->eps[i].cancelled_td_list);
  INIT_LIST_HEAD(& dev->eps[i].bw_endpoint_list);
  i = i + 1;
  ldv_30397: ;
  if (i <= 30) {
    goto ldv_30396;
  } else {
  }
  dev->eps[0].ring = xhci_ring_alloc(xhci, 2U, 1U, 0, flags);
  if ((unsigned long )dev->eps[0].ring == (unsigned long )((struct xhci_ring *)0)) {
    goto fail;
  } else {
  }
  tmp___5 = kzalloc(248UL, flags);
  dev->ring_cache = (struct xhci_ring **)tmp___5;
  if ((unsigned long )dev->ring_cache == (unsigned long )((struct xhci_ring **)0)) {
    goto fail;
  } else {
  }
  dev->num_rings_cached = 0;
  init_completion(& dev->cmd_completion);
  INIT_LIST_HEAD(& dev->cmd_list);
  dev->udev = udev;
  (xhci->dcbaa)->dev_context_ptrs[slot_id] = (dev->out_ctx)->dma;
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_alloc_virt_device";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___1.format = "Set slot id %d dcbaa entry %p to 0x%llx\n";
  descriptor___1.lineno = 1017U;
  descriptor___1.flags = 1U;
  tmp___7 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    tmp___6 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___6->self.controller,
                      "Set slot id %d dcbaa entry %p to 0x%llx\n", slot_id, (__le64 *)(& (xhci->dcbaa)->dev_context_ptrs) + (unsigned long )slot_id,
                      (xhci->dcbaa)->dev_context_ptrs[slot_id]);
  } else {
  }
  return (1);
  fail:
  xhci_free_virt_device(xhci, slot_id);
  return (0);
}
}
void xhci_copy_ep0_dequeue_into_input_ctx(struct xhci_hcd *xhci , struct usb_device *udev )
{
  struct xhci_virt_device *virt_dev ;
  struct xhci_ep_ctx *ep0_ctx ;
  struct xhci_ring *ep_ring ;
  dma_addr_t tmp ;
  {
  virt_dev = xhci->devs[udev->slot_id];
  ep0_ctx = xhci_get_ep_ctx(xhci, virt_dev->in_ctx, 0U);
  ep_ring = virt_dev->eps[0].ring;
  tmp = xhci_trb_virt_to_dma(ep_ring->enq_seg, ep_ring->enqueue);
  ep0_ctx->deq = tmp | (dma_addr_t )ep_ring->cycle_state;
  return;
}
}
static u32 xhci_find_real_port_number(struct xhci_hcd *xhci , struct usb_device *udev )
{
  struct usb_device *top_dev ;
  unsigned int num_similar_speed_ports ;
  unsigned int faked_port_num ;
  int i ;
  u8 port_speed ;
  {
  top_dev = udev;
  goto ldv_30416;
  ldv_30415:
  top_dev = top_dev->parent;
  ldv_30416: ;
  if ((unsigned long )top_dev->parent != (unsigned long )((struct usb_device *)0) && (unsigned long )(top_dev->parent)->parent != (unsigned long )((struct usb_device *)0)) {
    goto ldv_30415;
  } else {
  }
  faked_port_num = (unsigned int )top_dev->portnum;
  i = 0;
  num_similar_speed_ports = 0U;
  goto ldv_30421;
  ldv_30420:
  port_speed = *(xhci->port_array + (unsigned long )i);
  if ((unsigned int )port_speed == 0U || (unsigned int )port_speed == 255U) {
    goto ldv_30419;
  } else {
  }
  if (((unsigned int )port_speed != 3U) ^ ((unsigned int )udev->speed == 5U)) {
    num_similar_speed_ports = num_similar_speed_ports + 1U;
  } else {
  }
  if (num_similar_speed_ports == faked_port_num) {
    return ((u32 )(i + 1));
  } else {
  }
  ldv_30419:
  i = i + 1;
  ldv_30421: ;
  if ((__u32 )i < ((xhci->hcs_params1 >> 24) & 127U)) {
    goto ldv_30420;
  } else {
  }
  return (0U);
}
}
int xhci_setup_addressable_virt_dev(struct xhci_hcd *xhci , struct usb_device *udev )
{
  struct xhci_virt_device *dev ;
  struct xhci_ep_ctx *ep0_ctx ;
  struct xhci_slot_ctx *slot_ctx ;
  u32 port_num ;
  struct usb_device *top_dev ;
  struct usb_hcd *tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  struct xhci_root_port_bw_info *rh_bw ;
  struct xhci_tt_bw_info *tt_bw ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct usb_hcd *tmp___6 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___11 ;
  long tmp___12 ;
  {
  dev = xhci->devs[udev->slot_id];
  if (udev->slot_id == 0 || (unsigned long )dev == (unsigned long )((struct xhci_virt_device *)0)) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "Slot ID %d is not assigned to this device\n",
             udev->slot_id);
    return (-22);
  } else {
  }
  ep0_ctx = xhci_get_ep_ctx(xhci, dev->in_ctx, 0U);
  slot_ctx = xhci_get_slot_ctx(xhci, dev->in_ctx);
  slot_ctx->dev_info = (slot_ctx->dev_info | udev->route) | 134217728U;
  switch ((unsigned int )udev->speed) {
  case 5U:
  slot_ctx->dev_info = slot_ctx->dev_info | 4194304U;
  goto ldv_30433;
  case 3U:
  slot_ctx->dev_info = slot_ctx->dev_info | 3145728U;
  goto ldv_30433;
  case 2U:
  slot_ctx->dev_info = slot_ctx->dev_info | 1048576U;
  goto ldv_30433;
  case 1U:
  slot_ctx->dev_info = slot_ctx->dev_info | 2097152U;
  goto ldv_30433;
  case 4U:
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_setup_addressable_virt_dev";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor.format = "FIXME xHCI doesn\'t support wireless speeds\n";
  descriptor.lineno = 1131U;
  descriptor.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "FIXME xHCI doesn\'t support wireless speeds\n");
  } else {
  }
  return (-22);
  default:
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared"),
                       "i" (1136), "i" (12UL));
  ldv_30441: ;
  goto ldv_30441;
  }
  ldv_30433:
  port_num = xhci_find_real_port_number(xhci, udev);
  if (port_num == 0U) {
    return (-22);
  } else {
  }
  slot_ctx->dev_info2 = slot_ctx->dev_info2 | ((port_num & 255U) << 16);
  top_dev = udev;
  goto ldv_30443;
  ldv_30442:
  top_dev = top_dev->parent;
  ldv_30443: ;
  if ((unsigned long )top_dev->parent != (unsigned long )((struct usb_device *)0) && (unsigned long )(top_dev->parent)->parent != (unsigned long )((struct usb_device *)0)) {
    goto ldv_30442;
  } else {
  }
  dev->fake_port = top_dev->portnum;
  dev->real_port = (u8 )port_num;
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_setup_addressable_virt_dev";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___0.format = "Set root hub portnum to %d\n";
  descriptor___0.lineno = 1149U;
  descriptor___0.flags = 1U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___2->self.controller,
                      "Set root hub portnum to %d\n", port_num);
  } else {
  }
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_setup_addressable_virt_dev";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___1.format = "Set fake root hub portnum to %d\n";
  descriptor___1.lineno = 1150U;
  descriptor___1.flags = 1U;
  tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    tmp___4 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___4->self.controller,
                      "Set fake root hub portnum to %d\n", (int )dev->fake_port);
  } else {
  }
  if ((unsigned long )udev->tt == (unsigned long )((struct usb_tt *)0) || (unsigned long )((udev->tt)->hub)->parent == (unsigned long )((struct usb_device *)0)) {
    dev->bw_table = & (xhci->rh_bw + (unsigned long )(port_num - 1U))->bw_table;
  } else {
    rh_bw = xhci->rh_bw + (unsigned long )(port_num - 1U);
    __mptr = (struct list_head const *)rh_bw->tts.next;
    tt_bw = (struct xhci_tt_bw_info *)__mptr;
    goto ldv_30456;
    ldv_30455: ;
    if (tt_bw->slot_id != ((udev->tt)->hub)->slot_id) {
      goto ldv_30453;
    } else {
    }
    if (((dev->udev)->tt)->multi == 0 || ((udev->tt)->multi != 0 && tt_bw->ttport == (dev->udev)->ttport)) {
      dev->bw_table = & tt_bw->bw_table;
      dev->tt_info = tt_bw;
      goto ldv_30454;
    } else {
    }
    ldv_30453:
    __mptr___0 = (struct list_head const *)tt_bw->tt_list.next;
    tt_bw = (struct xhci_tt_bw_info *)__mptr___0;
    ldv_30456: ;
    if ((unsigned long )tt_bw != (unsigned long )rh_bw) {
      goto ldv_30455;
    } else {
    }
    ldv_30454: ;
    if ((unsigned long )dev->tt_info == (unsigned long )((struct xhci_tt_bw_info *)0)) {
      tmp___6 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___6->self.controller, "WARN: Didn\'t find a matching TT\n");
    } else {
    }
  }
  if ((unsigned long )udev->tt != (unsigned long )((struct usb_tt *)0) && (unsigned long )((udev->tt)->hub)->parent != (unsigned long )((struct usb_device *)0)) {
    slot_ctx->tt_info = (unsigned int )(((udev->tt)->hub)->slot_id | (udev->ttport << 8));
    if ((udev->tt)->multi != 0) {
      slot_ctx->dev_info = slot_ctx->dev_info | 33554432U;
    } else {
    }
  } else {
  }
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_setup_addressable_virt_dev";
  descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___2.format = "udev->tt = %p\n";
  descriptor___2.lineno = 1189U;
  descriptor___2.flags = 1U;
  tmp___8 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    tmp___7 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___7->self.controller,
                      "udev->tt = %p\n", udev->tt);
  } else {
  }
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_setup_addressable_virt_dev";
  descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___3.format = "udev->ttport = 0x%x\n";
  descriptor___3.lineno = 1190U;
  descriptor___3.flags = 1U;
  tmp___10 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    tmp___9 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___9->self.controller,
                      "udev->ttport = 0x%x\n", udev->ttport);
  } else {
  }
  ep0_ctx->ep_info2 = 32U;
  switch ((unsigned int )udev->speed) {
  case 5U:
  ep0_ctx->ep_info2 = ep0_ctx->ep_info2 | 33554432U;
  goto ldv_30460;
  case 3U: ;
  case 2U:
  ep0_ctx->ep_info2 = ep0_ctx->ep_info2 | 4194304U;
  goto ldv_30460;
  case 1U:
  ep0_ctx->ep_info2 = ep0_ctx->ep_info2 | 524288U;
  goto ldv_30460;
  case 4U:
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_setup_addressable_virt_dev";
  descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___4.format = "FIXME xHCI doesn\'t support wireless speeds\n";
  descriptor___4.lineno = 1211U;
  descriptor___4.flags = 1U;
  tmp___12 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___12 != 0L) {
    tmp___11 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___11->self.controller,
                      "FIXME xHCI doesn\'t support wireless speeds\n");
  } else {
  }
  return (-22);
  default:
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared"),
                       "i" (1216), "i" (12UL));
  ldv_30467: ;
  goto ldv_30467;
  }
  ldv_30460:
  ep0_ctx->ep_info2 = ep0_ctx->ep_info2 | 6U;
  ep0_ctx->deq = ((dev->eps[0].ring)->first_seg)->dma | (dma_addr_t )(dev->eps[0].ring)->cycle_state;
  return (0);
}
}
static unsigned int xhci_parse_exponent_interval(struct usb_device *udev , struct usb_host_endpoint *ep )
{
  unsigned int interval ;
  __u8 __val ;
  __u8 __min ;
  __u8 __max ;
  {
  __val = ep->desc.bInterval;
  __min = 1U;
  __max = 16U;
  __val = (__u8 )((int )__min > (int )__val ? __min : __val);
  interval = (unsigned int )(((int )__max < (int )__val ? __max : __val) + -1);
  if ((unsigned int )((int )ep->desc.bInterval + -1) != interval) {
    dev_warn((struct device const *)(& udev->dev), "ep %#x - rounding interval to %d %sframes\n",
             (int )ep->desc.bEndpointAddress, 1 << (int )interval, (unsigned int )udev->speed == 2U ? (char *)"" : (char *)"micro");
  } else {
  }
  if ((unsigned int )udev->speed == 2U) {
    interval = interval + 3U;
  } else {
  }
  return (interval);
}
}
static unsigned int xhci_microframes_to_exponent(struct usb_device *udev , struct usb_host_endpoint *ep ,
                                                 unsigned int desc_interval , unsigned int min_exponent ,
                                                 unsigned int max_exponent )
{
  unsigned int interval ;
  int tmp ;
  unsigned int __val ;
  unsigned int __min ;
  unsigned int __max ;
  {
  tmp = fls((int )desc_interval);
  interval = (unsigned int )(tmp + -1);
  __val = interval;
  __min = min_exponent;
  __max = max_exponent;
  __val = __min > __val ? __min : __val;
  interval = __max < __val ? __max : __val;
  if ((unsigned int )(1 << (int )interval) != desc_interval) {
    dev_warn((struct device const *)(& udev->dev), "ep %#x - rounding interval to %d microframes, ep desc says %d microframes\n",
             (int )ep->desc.bEndpointAddress, 1 << (int )interval, desc_interval);
  } else {
  }
  return (interval);
}
}
static unsigned int xhci_parse_microframe_interval(struct usb_device *udev , struct usb_host_endpoint *ep )
{
  unsigned int tmp ;
  {
  tmp = xhci_microframes_to_exponent(udev, ep, (unsigned int )ep->desc.bInterval,
                                     0U, 15U);
  return (tmp);
}
}
static unsigned int xhci_parse_frame_interval(struct usb_device *udev , struct usb_host_endpoint *ep )
{
  unsigned int tmp ;
  {
  tmp = xhci_microframes_to_exponent(udev, ep, (unsigned int )((int )ep->desc.bInterval * 8),
                                     3U, 10U);
  return (tmp);
}
}
static unsigned int xhci_get_endpoint_interval(struct usb_device *udev , struct usb_host_endpoint *ep )
{
  unsigned int interval ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  {
  interval = 0U;
  switch ((unsigned int )udev->speed) {
  case 3U:
  tmp = usb_endpoint_xfer_control((struct usb_endpoint_descriptor const *)(& ep->desc));
  if (tmp != 0) {
    interval = xhci_parse_microframe_interval(udev, ep);
    goto ldv_30503;
  } else {
    tmp___0 = usb_endpoint_xfer_bulk((struct usb_endpoint_descriptor const *)(& ep->desc));
    if (tmp___0 != 0) {
      interval = xhci_parse_microframe_interval(udev, ep);
      goto ldv_30503;
    } else {
    }
  }
  case 5U:
  tmp___1 = usb_endpoint_xfer_int((struct usb_endpoint_descriptor const *)(& ep->desc));
  if (tmp___1 != 0) {
    interval = xhci_parse_exponent_interval(udev, ep);
  } else {
    tmp___2 = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)(& ep->desc));
    if (tmp___2 != 0) {
      interval = xhci_parse_exponent_interval(udev, ep);
    } else {
    }
  }
  goto ldv_30503;
  case 2U:
  tmp___3 = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)(& ep->desc));
  if (tmp___3 != 0) {
    interval = xhci_parse_exponent_interval(udev, ep);
    goto ldv_30503;
  } else {
  }
  case 1U:
  tmp___4 = usb_endpoint_xfer_int((struct usb_endpoint_descriptor const *)(& ep->desc));
  if (tmp___4 != 0) {
    interval = xhci_parse_frame_interval(udev, ep);
  } else {
    tmp___5 = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)(& ep->desc));
    if (tmp___5 != 0) {
      interval = xhci_parse_frame_interval(udev, ep);
    } else {
    }
  }
  goto ldv_30503;
  default:
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared"),
                       "i" (1346), "i" (12UL));
  ldv_30508: ;
  goto ldv_30508;
  }
  ldv_30503: ;
  return ((interval & 255U) << 16);
}
}
static u32 xhci_get_endpoint_mult(struct usb_device *udev , struct usb_host_endpoint *ep )
{
  int tmp ;
  {
  if ((unsigned int )udev->speed != 5U) {
    return (0U);
  } else {
    tmp = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)(& ep->desc));
    if (tmp == 0) {
      return (0U);
    } else {
    }
  }
  return ((u32 )ep->ss_ep_comp.bmAttributes);
}
}
static u32 xhci_get_endpoint_type(struct usb_device *udev , struct usb_host_endpoint *ep )
{
  int in ;
  u32 type ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  in = usb_endpoint_dir_in((struct usb_endpoint_descriptor const *)(& ep->desc));
  tmp___2 = usb_endpoint_xfer_control((struct usb_endpoint_descriptor const *)(& ep->desc));
  if (tmp___2 != 0) {
    type = 32U;
  } else {
    tmp___1 = usb_endpoint_xfer_bulk((struct usb_endpoint_descriptor const *)(& ep->desc));
    if (tmp___1 != 0) {
      if (in != 0) {
        type = 48U;
      } else {
        type = 16U;
      }
    } else {
      tmp___0 = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)(& ep->desc));
      if (tmp___0 != 0) {
        if (in != 0) {
          type = 40U;
        } else {
          type = 8U;
        }
      } else {
        tmp = usb_endpoint_xfer_int((struct usb_endpoint_descriptor const *)(& ep->desc));
        if (tmp != 0) {
          if (in != 0) {
            type = 56U;
          } else {
            type = 24U;
          }
        } else {
          __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared"),
                               "i" (1390), "i" (12UL));
          ldv_30519: ;
          goto ldv_30519;
        }
      }
    }
  }
  return (type);
}
}
static u32 xhci_get_max_esit_payload(struct xhci_hcd *xhci , struct usb_device *udev ,
                                     struct usb_host_endpoint *ep )
{
  int max_burst ;
  int max_packet ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = usb_endpoint_xfer_control((struct usb_endpoint_descriptor const *)(& ep->desc));
  if (tmp != 0) {
    return (0U);
  } else {
    tmp___0 = usb_endpoint_xfer_bulk((struct usb_endpoint_descriptor const *)(& ep->desc));
    if (tmp___0 != 0) {
      return (0U);
    } else {
    }
  }
  if ((unsigned int )udev->speed == 5U) {
    return ((u32 )ep->ss_ep_comp.wBytesPerInterval);
  } else {
  }
  tmp___1 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& ep->desc));
  max_packet = tmp___1 & 2047;
  tmp___2 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& ep->desc));
  max_burst = (tmp___2 & 6144) >> 11;
  return ((u32 )((max_burst + 1) * max_packet));
}
}
int xhci_endpoint_init(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                       struct usb_device *udev , struct usb_host_endpoint *ep , gfp_t mem_flags )
{
  unsigned int ep_index ;
  struct xhci_ep_ctx *ep_ctx ;
  struct xhci_ring *ep_ring ;
  unsigned int max_packet ;
  unsigned int max_burst ;
  enum xhci_ring_type type ;
  u32 max_esit_payload ;
  int tmp ;
  unsigned int tmp___0 ;
  u32 tmp___1 ;
  int tmp___2 ;
  u32 tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  {
  ep_index = xhci_get_endpoint_index(& ep->desc);
  ep_ctx = xhci_get_ep_ctx(xhci, virt_dev->in_ctx, ep_index);
  tmp = usb_endpoint_type((struct usb_endpoint_descriptor const *)(& ep->desc));
  type = (enum xhci_ring_type )tmp;
  virt_dev->eps[ep_index].new_ring = xhci_ring_alloc(xhci, 2U, 1U, type, mem_flags);
  if ((unsigned long )virt_dev->eps[ep_index].new_ring == (unsigned long )((struct xhci_ring *)0)) {
    if (virt_dev->num_rings_cached == 0) {
      return (-12);
    } else {
    }
    virt_dev->eps[ep_index].new_ring = *(virt_dev->ring_cache + (unsigned long )virt_dev->num_rings_cached);
    *(virt_dev->ring_cache + (unsigned long )virt_dev->num_rings_cached) = 0;
    virt_dev->num_rings_cached = virt_dev->num_rings_cached - 1;
    xhci_reinit_cached_ring(xhci, virt_dev->eps[ep_index].new_ring, 1U, type);
  } else {
  }
  virt_dev->eps[ep_index].skip = 0;
  ep_ring = virt_dev->eps[ep_index].new_ring;
  ep_ctx->deq = (ep_ring->first_seg)->dma | (dma_addr_t )ep_ring->cycle_state;
  tmp___0 = xhci_get_endpoint_interval(udev, ep);
  tmp___1 = xhci_get_endpoint_mult(udev, ep);
  ep_ctx->ep_info = tmp___0 | ((tmp___1 & 3U) << 8);
  tmp___2 = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)(& ep->desc));
  if (tmp___2 == 0) {
    ep_ctx->ep_info2 = 6U;
  } else {
    ep_ctx->ep_info2 = 0U;
  }
  tmp___3 = xhci_get_endpoint_type(udev, ep);
  ep_ctx->ep_info2 = ep_ctx->ep_info2 | tmp___3;
  switch ((unsigned int )udev->speed) {
  case 5U:
  tmp___4 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& ep->desc));
  max_packet = (unsigned int )tmp___4;
  ep_ctx->ep_info2 = ep_ctx->ep_info2 | (max_packet << 16);
  max_packet = (unsigned int )ep->ss_ep_comp.bMaxBurst;
  ep_ctx->ep_info2 = ep_ctx->ep_info2 | ((max_packet << 8) & 65535U);
  goto ldv_30542;
  case 3U:
  tmp___6 = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)(& ep->desc));
  if (tmp___6 != 0) {
    tmp___5 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& ep->desc));
    max_burst = (unsigned int )((tmp___5 & 6144) >> 11);
    ep_ctx->ep_info2 = ep_ctx->ep_info2 | ((max_burst << 8) & 65535U);
  } else {
    tmp___7 = usb_endpoint_xfer_int((struct usb_endpoint_descriptor const *)(& ep->desc));
    if (tmp___7 != 0) {
      tmp___5 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& ep->desc));
      max_burst = (unsigned int )((tmp___5 & 6144) >> 11);
      ep_ctx->ep_info2 = ep_ctx->ep_info2 | ((max_burst << 8) & 65535U);
    } else {
    }
  }
  case 2U: ;
  case 1U:
  tmp___8 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& ep->desc));
  max_packet = (unsigned int )tmp___8 & 2047U;
  ep_ctx->ep_info2 = ep_ctx->ep_info2 | (max_packet << 16);
  goto ldv_30542;
  default:
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared"),
                       "i" (1500), "i" (12UL));
  ldv_30547: ;
  goto ldv_30547;
  }
  ldv_30542:
  max_esit_payload = xhci_get_max_esit_payload(xhci, udev, ep);
  ep_ctx->tx_info = max_esit_payload << 16;
  tmp___9 = usb_endpoint_xfer_control((struct usb_endpoint_descriptor const *)(& ep->desc));
  if (tmp___9 != 0 && (unsigned int )xhci->hci_version == 256U) {
    ep_ctx->tx_info = ep_ctx->tx_info | 8U;
  } else {
    ep_ctx->tx_info = ep_ctx->tx_info | (max_esit_payload & 65535U);
  }
  return (0);
}
}
void xhci_endpoint_zero(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                        struct usb_host_endpoint *ep )
{
  unsigned int ep_index ;
  struct xhci_ep_ctx *ep_ctx ;
  {
  ep_index = xhci_get_endpoint_index(& ep->desc);
  ep_ctx = xhci_get_ep_ctx(xhci, virt_dev->in_ctx, ep_index);
  ep_ctx->ep_info = 0U;
  ep_ctx->ep_info2 = 0U;
  ep_ctx->deq = 0ULL;
  ep_ctx->tx_info = 0U;
  return;
}
}
void xhci_clear_endpoint_bw_info(struct xhci_bw_info *bw_info )
{
  {
  bw_info->ep_interval = 0U;
  bw_info->mult = 0U;
  bw_info->num_packets = 0U;
  bw_info->max_packet_size = 0U;
  bw_info->type = 0U;
  bw_info->max_esit_payload = 0U;
  return;
}
}
void xhci_update_bw_info(struct xhci_hcd *xhci , struct xhci_container_ctx *in_ctx ,
                         struct xhci_input_control_ctx *ctrl_ctx , struct xhci_virt_device *virt_dev )
{
  struct xhci_bw_info *bw_info ;
  struct xhci_ep_ctx *ep_ctx ;
  unsigned int ep_type ;
  int i ;
  {
  i = 1;
  goto ldv_30570;
  ldv_30569:
  bw_info = & virt_dev->eps[i].bw_info;
  if ((ctrl_ctx->add_flags & (__le32 )(1 << (i + 1))) == 0U && (ctrl_ctx->drop_flags & (__le32 )(1 << (i + 1))) != 0U) {
    xhci_clear_endpoint_bw_info(bw_info);
    goto ldv_30568;
  } else {
  }
  if ((ctrl_ctx->add_flags & (__le32 )(1 << (i + 1))) != 0U) {
    ep_ctx = xhci_get_ep_ctx(xhci, in_ctx, (unsigned int )i);
    ep_type = (ep_ctx->ep_info2 >> 3) & 7U;
    if (((ep_type != 1U && ep_type != 3U) && ep_type != 5U) && ep_type != 7U) {
      goto ldv_30568;
    } else {
    }
    bw_info->ep_interval = (ep_ctx->ep_info >> 16) & 255U;
    bw_info->mult = ((ep_ctx->ep_info >> 8) & 3U) + 1U;
    bw_info->num_packets = ((ep_ctx->ep_info2 >> 8) & 255U) + 1U;
    bw_info->max_packet_size = ep_ctx->ep_info2 >> 16;
    bw_info->type = ep_type;
    bw_info->max_esit_payload = ep_ctx->tx_info >> 16;
  } else {
  }
  ldv_30568:
  i = i + 1;
  ldv_30570: ;
  if (i <= 30) {
    goto ldv_30569;
  } else {
  }
  return;
}
}
void xhci_endpoint_copy(struct xhci_hcd *xhci , struct xhci_container_ctx *in_ctx ,
                        struct xhci_container_ctx *out_ctx , unsigned int ep_index )
{
  struct xhci_ep_ctx *out_ep_ctx ;
  struct xhci_ep_ctx *in_ep_ctx ;
  {
  out_ep_ctx = xhci_get_ep_ctx(xhci, out_ctx, ep_index);
  in_ep_ctx = xhci_get_ep_ctx(xhci, in_ctx, ep_index);
  in_ep_ctx->ep_info = out_ep_ctx->ep_info;
  in_ep_ctx->ep_info2 = out_ep_ctx->ep_info2;
  in_ep_ctx->deq = out_ep_ctx->deq;
  in_ep_ctx->tx_info = out_ep_ctx->tx_info;
  return;
}
}
void xhci_slot_copy(struct xhci_hcd *xhci , struct xhci_container_ctx *in_ctx , struct xhci_container_ctx *out_ctx )
{
  struct xhci_slot_ctx *in_slot_ctx ;
  struct xhci_slot_ctx *out_slot_ctx ;
  {
  in_slot_ctx = xhci_get_slot_ctx(xhci, in_ctx);
  out_slot_ctx = xhci_get_slot_ctx(xhci, out_ctx);
  in_slot_ctx->dev_info = out_slot_ctx->dev_info;
  in_slot_ctx->dev_info2 = out_slot_ctx->dev_info2;
  in_slot_ctx->tt_info = out_slot_ctx->tt_info;
  in_slot_ctx->dev_state = out_slot_ctx->dev_state;
  return;
}
}
static int scratchpad_alloc(struct xhci_hcd *xhci , gfp_t flags )
{
  int i ;
  struct device *dev ;
  struct usb_hcd *tmp ;
  int num_sp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  void *tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  void *tmp___5 ;
  dma_addr_t dma ;
  void *buf ;
  void *tmp___6 ;
  {
  tmp = xhci_to_hcd(xhci);
  dev = tmp->self.controller;
  num_sp = (int )(xhci->hcs_params2 >> 27);
  descriptor.modname = "xhci_hcd";
  descriptor.function = "scratchpad_alloc";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor.format = "Allocating %d scratchpad buffers\n";
  descriptor.lineno = 1665U;
  descriptor.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "Allocating %d scratchpad buffers\n", num_sp);
  } else {
  }
  if (num_sp == 0) {
    return (0);
  } else {
  }
  tmp___2 = kzalloc(32UL, flags);
  xhci->scratchpad = (struct xhci_scratchpad *)tmp___2;
  if ((unsigned long )xhci->scratchpad == (unsigned long )((struct xhci_scratchpad *)0)) {
    goto fail_sp;
  } else {
  }
  tmp___3 = dma_alloc_attrs(dev, (unsigned long )num_sp * 8UL, & (xhci->scratchpad)->sp_dma,
                            flags, 0);
  (xhci->scratchpad)->sp_array = (u64 *)tmp___3;
  if ((unsigned long )(xhci->scratchpad)->sp_array == (unsigned long )((u64 *)0)) {
    goto fail_sp2;
  } else {
  }
  tmp___4 = kzalloc((unsigned long )num_sp * 8UL, flags);
  (xhci->scratchpad)->sp_buffers = (void **)tmp___4;
  if ((unsigned long )(xhci->scratchpad)->sp_buffers == (unsigned long )((void **)0)) {
    goto fail_sp3;
  } else {
  }
  tmp___5 = kzalloc((unsigned long )num_sp * 8UL, flags);
  (xhci->scratchpad)->sp_dma_buffers = (dma_addr_t *)tmp___5;
  if ((unsigned long )(xhci->scratchpad)->sp_dma_buffers == (unsigned long )((dma_addr_t *)0)) {
    goto fail_sp4;
  } else {
  }
  (xhci->dcbaa)->dev_context_ptrs[0] = (xhci->scratchpad)->sp_dma;
  i = 0;
  goto ldv_30604;
  ldv_30603:
  tmp___6 = dma_alloc_attrs(dev, (size_t )xhci->page_size, & dma, flags, 0);
  buf = tmp___6;
  if ((unsigned long )buf == (unsigned long )((void *)0)) {
    goto fail_sp5;
  } else {
  }
  *((xhci->scratchpad)->sp_array + (unsigned long )i) = dma;
  *((xhci->scratchpad)->sp_buffers + (unsigned long )i) = buf;
  *((xhci->scratchpad)->sp_dma_buffers + (unsigned long )i) = dma;
  i = i + 1;
  ldv_30604: ;
  if (i < num_sp) {
    goto ldv_30603;
  } else {
  }
  return (0);
  fail_sp5:
  i = i + -1;
  goto ldv_30607;
  ldv_30606:
  dma_free_attrs(dev, (size_t )xhci->page_size, *((xhci->scratchpad)->sp_buffers + (unsigned long )i),
                 *((xhci->scratchpad)->sp_dma_buffers + (unsigned long )i), 0);
  i = i - 1;
  ldv_30607: ;
  if (i >= 0) {
    goto ldv_30606;
  } else {
  }
  kfree((void const *)(xhci->scratchpad)->sp_dma_buffers);
  fail_sp4:
  kfree((void const *)(xhci->scratchpad)->sp_buffers);
  fail_sp3:
  dma_free_attrs(dev, (unsigned long )num_sp * 8UL, (void *)(xhci->scratchpad)->sp_array,
                 (xhci->scratchpad)->sp_dma, 0);
  fail_sp2:
  kfree((void const *)xhci->scratchpad);
  xhci->scratchpad = 0;
  fail_sp: ;
  return (-12);
}
}
static void scratchpad_free(struct xhci_hcd *xhci )
{
  int num_sp ;
  int i ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct usb_hcd *tmp ;
  {
  tmp = xhci_to_hcd(xhci);
  __mptr = (struct device const *)tmp->self.controller;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  if ((unsigned long )xhci->scratchpad == (unsigned long )((struct xhci_scratchpad *)0)) {
    return;
  } else {
  }
  num_sp = (int )(xhci->hcs_params2 >> 27);
  i = 0;
  goto ldv_30618;
  ldv_30617:
  dma_free_attrs(& pdev->dev, (size_t )xhci->page_size, *((xhci->scratchpad)->sp_buffers + (unsigned long )i),
                 *((xhci->scratchpad)->sp_dma_buffers + (unsigned long )i), 0);
  i = i + 1;
  ldv_30618: ;
  if (i < num_sp) {
    goto ldv_30617;
  } else {
  }
  kfree((void const *)(xhci->scratchpad)->sp_dma_buffers);
  kfree((void const *)(xhci->scratchpad)->sp_buffers);
  dma_free_attrs(& pdev->dev, (unsigned long )num_sp * 8UL, (void *)(xhci->scratchpad)->sp_array,
                 (xhci->scratchpad)->sp_dma, 0);
  kfree((void const *)xhci->scratchpad);
  xhci->scratchpad = 0;
  return;
}
}
struct xhci_command *xhci_alloc_command(struct xhci_hcd *xhci , bool allocate_in_ctx ,
                                        bool allocate_completion , gfp_t mem_flags )
{
  struct xhci_command *command ;
  void *tmp ;
  void *tmp___0 ;
  {
  tmp = kzalloc(48UL, mem_flags);
  command = (struct xhci_command *)tmp;
  if ((unsigned long )command == (unsigned long )((struct xhci_command *)0)) {
    return (0);
  } else {
  }
  if ((int )allocate_in_ctx) {
    command->in_ctx = xhci_alloc_container_ctx(xhci, 2, mem_flags);
    if ((unsigned long )command->in_ctx == (unsigned long )((struct xhci_container_ctx *)0)) {
      kfree((void const *)command);
      return (0);
    } else {
    }
  } else {
  }
  if ((int )allocate_completion) {
    tmp___0 = kzalloc(96UL, mem_flags);
    command->completion = (struct completion *)tmp___0;
    if ((unsigned long )command->completion == (unsigned long )((struct completion *)0)) {
      xhci_free_container_ctx(xhci, command->in_ctx);
      kfree((void const *)command);
      return (0);
    } else {
    }
    init_completion(command->completion);
  } else {
  }
  command->status = 0U;
  INIT_LIST_HEAD(& command->cmd_list);
  return (command);
}
}
void xhci_urb_free_priv(struct xhci_hcd *xhci , struct urb_priv *urb_priv )
{
  {
  if ((unsigned long )urb_priv != (unsigned long )((struct urb_priv *)0)) {
    kfree((void const *)urb_priv->td[0]);
    kfree((void const *)urb_priv);
  } else {
  }
  return;
}
}
void xhci_free_command(struct xhci_hcd *xhci , struct xhci_command *command )
{
  {
  xhci_free_container_ctx(xhci, command->in_ctx);
  kfree((void const *)command->completion);
  kfree((void const *)command);
  return;
}
}
void xhci_mem_cleanup(struct xhci_hcd *xhci )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct usb_hcd *tmp ;
  struct dev_info *dev_info ;
  struct dev_info *next ;
  struct xhci_cd *cur_cd ;
  struct xhci_cd *next_cd ;
  unsigned long flags ;
  int size ;
  int i ;
  int j ;
  int num_ports ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___8 ;
  long tmp___9 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___10 ;
  long tmp___11 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___12 ;
  long tmp___13 ;
  raw_spinlock_t *tmp___14 ;
  struct list_head const *__mptr___3 ;
  struct list_head const *__mptr___4 ;
  struct list_head const *__mptr___5 ;
  struct xhci_interval_bw_table *bwt ;
  struct list_head *ep ;
  int tmp___15 ;
  struct xhci_tt_bw_info *tt ;
  struct xhci_tt_bw_info *n ;
  struct list_head const *__mptr___6 ;
  struct list_head const *__mptr___7 ;
  struct list_head const *__mptr___8 ;
  {
  tmp = xhci_to_hcd(xhci);
  __mptr = (struct device const *)tmp->self.controller;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  size = (int )(xhci->erst.num_entries * 16U);
  if ((unsigned long )xhci->erst.entries != (unsigned long )((struct xhci_erst_entry *)0)) {
    dma_free_attrs(& pdev->dev, (size_t )size, (void *)xhci->erst.entries, xhci->erst.erst_dma_addr,
                   0);
  } else {
  }
  xhci->erst.entries = 0;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_mem_cleanup";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor.format = "Freed ERST\n";
  descriptor.lineno = 1822U;
  descriptor.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "Freed ERST\n");
  } else {
  }
  if ((unsigned long )xhci->event_ring != (unsigned long )((struct xhci_ring *)0)) {
    xhci_ring_free(xhci, xhci->event_ring);
  } else {
  }
  xhci->event_ring = 0;
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_mem_cleanup";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___0.format = "Freed event ring\n";
  descriptor___0.lineno = 1826U;
  descriptor___0.flags = 1U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___2->self.controller,
                      "Freed event ring\n");
  } else {
  }
  if ((unsigned long )xhci->lpm_command != (unsigned long )((struct xhci_command *)0)) {
    xhci_free_command(xhci, xhci->lpm_command);
  } else {
  }
  xhci->cmd_ring_reserved_trbs = 0U;
  if ((unsigned long )xhci->cmd_ring != (unsigned long )((struct xhci_ring *)0)) {
    xhci_ring_free(xhci, xhci->cmd_ring);
  } else {
  }
  xhci->cmd_ring = 0;
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_mem_cleanup";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___1.format = "Freed command ring\n";
  descriptor___1.lineno = 1834U;
  descriptor___1.flags = 1U;
  tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    tmp___4 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___4->self.controller,
                      "Freed command ring\n");
  } else {
  }
  __mptr___0 = (struct list_head const *)xhci->cancel_cmd_list.next;
  cur_cd = (struct xhci_cd *)__mptr___0;
  __mptr___1 = (struct list_head const *)cur_cd->cancel_cmd_list.next;
  next_cd = (struct xhci_cd *)__mptr___1;
  goto ldv_30661;
  ldv_30660:
  list_del(& cur_cd->cancel_cmd_list);
  kfree((void const *)cur_cd);
  cur_cd = next_cd;
  __mptr___2 = (struct list_head const *)next_cd->cancel_cmd_list.next;
  next_cd = (struct xhci_cd *)__mptr___2;
  ldv_30661: ;
  if ((unsigned long )(& cur_cd->cancel_cmd_list) != (unsigned long )(& xhci->cancel_cmd_list)) {
    goto ldv_30660;
  } else {
  }
  i = 1;
  goto ldv_30664;
  ldv_30663:
  xhci_free_virt_device(xhci, i);
  i = i + 1;
  ldv_30664: ;
  if (i <= 255) {
    goto ldv_30663;
  } else {
  }
  if ((unsigned long )xhci->segment_pool != (unsigned long )((struct dma_pool *)0)) {
    dma_pool_destroy(xhci->segment_pool);
  } else {
  }
  xhci->segment_pool = 0;
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_mem_cleanup";
  descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___2.format = "Freed segment pool\n";
  descriptor___2.lineno = 1847U;
  descriptor___2.flags = 1U;
  tmp___7 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    tmp___6 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___6->self.controller,
                      "Freed segment pool\n");
  } else {
  }
  if ((unsigned long )xhci->device_pool != (unsigned long )((struct dma_pool *)0)) {
    dma_pool_destroy(xhci->device_pool);
  } else {
  }
  xhci->device_pool = 0;
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_mem_cleanup";
  descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___3.format = "Freed device context pool\n";
  descriptor___3.lineno = 1852U;
  descriptor___3.flags = 1U;
  tmp___9 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___9 != 0L) {
    tmp___8 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___8->self.controller,
                      "Freed device context pool\n");
  } else {
  }
  if ((unsigned long )xhci->small_streams_pool != (unsigned long )((struct dma_pool *)0)) {
    dma_pool_destroy(xhci->small_streams_pool);
  } else {
  }
  xhci->small_streams_pool = 0;
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_mem_cleanup";
  descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___4.format = "Freed small stream array pool\n";
  descriptor___4.lineno = 1857U;
  descriptor___4.flags = 1U;
  tmp___11 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___11 != 0L) {
    tmp___10 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___10->self.controller,
                      "Freed small stream array pool\n");
  } else {
  }
  if ((unsigned long )xhci->medium_streams_pool != (unsigned long )((struct dma_pool *)0)) {
    dma_pool_destroy(xhci->medium_streams_pool);
  } else {
  }
  xhci->medium_streams_pool = 0;
  descriptor___5.modname = "xhci_hcd";
  descriptor___5.function = "xhci_mem_cleanup";
  descriptor___5.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___5.format = "Freed medium stream array pool\n";
  descriptor___5.lineno = 1862U;
  descriptor___5.flags = 1U;
  tmp___13 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___13 != 0L) {
    tmp___12 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___12->self.controller,
                      "Freed medium stream array pool\n");
  } else {
  }
  if ((unsigned long )xhci->dcbaa != (unsigned long )((struct xhci_device_context_array *)0)) {
    dma_free_attrs(& pdev->dev, 2056UL, (void *)xhci->dcbaa, (xhci->dcbaa)->dma, 0);
  } else {
  }
  xhci->dcbaa = 0;
  scratchpad_free(xhci);
  tmp___14 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___14);
  __mptr___3 = (struct list_head const *)xhci->lpm_failed_devs.next;
  dev_info = (struct dev_info *)__mptr___3 + 0xfffffffffffffff8UL;
  __mptr___4 = (struct list_head const *)dev_info->list.next;
  next = (struct dev_info *)__mptr___4 + 0xfffffffffffffff8UL;
  goto ldv_30680;
  ldv_30679:
  list_del(& dev_info->list);
  kfree((void const *)dev_info);
  dev_info = next;
  __mptr___5 = (struct list_head const *)next->list.next;
  next = (struct dev_info *)__mptr___5 + 0xfffffffffffffff8UL;
  ldv_30680: ;
  if ((unsigned long )(& dev_info->list) != (unsigned long )(& xhci->lpm_failed_devs)) {
    goto ldv_30679;
  } else {
  }
  spin_unlock_irqrestore(& xhci->lock, flags);
  num_ports = (int )(xhci->hcs_params1 >> 24) & 127;
  i = 0;
  goto ldv_30691;
  ldv_30690:
  bwt = & (xhci->rh_bw + (unsigned long )i)->bw_table;
  j = 0;
  goto ldv_30688;
  ldv_30687:
  ep = & bwt->interval_bw[j].endpoints;
  goto ldv_30685;
  ldv_30684:
  list_del_init(ep->next);
  ldv_30685:
  tmp___15 = list_empty((struct list_head const *)ep);
  if (tmp___15 == 0) {
    goto ldv_30684;
  } else {
  }
  j = j + 1;
  ldv_30688: ;
  if (j <= 15) {
    goto ldv_30687;
  } else {
  }
  i = i + 1;
  ldv_30691: ;
  if (i < num_ports) {
    goto ldv_30690;
  } else {
  }
  i = 0;
  goto ldv_30705;
  ldv_30704:
  __mptr___6 = (struct list_head const *)(xhci->rh_bw + (unsigned long )i)->tts.next;
  tt = (struct xhci_tt_bw_info *)__mptr___6;
  __mptr___7 = (struct list_head const *)tt->tt_list.next;
  n = (struct xhci_tt_bw_info *)__mptr___7;
  goto ldv_30702;
  ldv_30701:
  list_del(& tt->tt_list);
  kfree((void const *)tt);
  tt = n;
  __mptr___8 = (struct list_head const *)n->tt_list.next;
  n = (struct xhci_tt_bw_info *)__mptr___8;
  ldv_30702: ;
  if ((unsigned long )(xhci->rh_bw + (unsigned long )i) != (unsigned long )tt) {
    goto ldv_30701;
  } else {
  }
  i = i + 1;
  ldv_30705: ;
  if (i < num_ports) {
    goto ldv_30704;
  } else {
  }
  xhci->num_usb2_ports = 0U;
  xhci->num_usb3_ports = 0U;
  xhci->num_active_eps = 0U;
  kfree((void const *)xhci->usb2_ports);
  kfree((void const *)xhci->usb3_ports);
  kfree((void const *)xhci->port_array);
  kfree((void const *)xhci->rh_bw);
  xhci->page_size = 0;
  xhci->page_shift = 0;
  xhci->bus_state[0].bus_suspended = 0UL;
  xhci->bus_state[1].bus_suspended = 0UL;
  return;
}
}
static int xhci_test_trb_in_td(struct xhci_hcd *xhci , struct xhci_segment *input_seg ,
                               union xhci_trb *start_trb , union xhci_trb *end_trb ,
                               dma_addr_t input_dma , struct xhci_segment *result_seg ,
                               char *test_name , int test_number )
{
  unsigned long long start_dma ;
  unsigned long long end_dma ;
  struct xhci_segment *seg ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  struct usb_hcd *tmp___1 ;
  struct usb_hcd *tmp___2 ;
  {
  start_dma = xhci_trb_virt_to_dma(input_seg, start_trb);
  end_dma = xhci_trb_virt_to_dma(input_seg, end_trb);
  seg = trb_in_td(input_seg, start_trb, end_trb, input_dma);
  if ((unsigned long )seg != (unsigned long )result_seg) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "WARN: %s TRB math test %d failed!\n",
             test_name, test_number);
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "Tested TRB math w/ seg %p and input DMA 0x%llx\n",
             input_seg, input_dma);
    tmp___1 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___1->self.controller, "starting TRB %p (0x%llx DMA), ending TRB %p (0x%llx DMA)\n",
             start_trb, start_dma, end_trb, end_dma);
    tmp___2 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___2->self.controller, "Expected seg %p, got seg %p\n",
             result_seg, seg);
    return (-1);
  } else {
  }
  return (0);
}
}
static int xhci_check_trb_in_td_math(struct xhci_hcd *xhci , gfp_t mem_flags )
{
  struct __anonstruct_simple_test_vector_180 simple_test_vector[8U] ;
  struct __anonstruct_complex_test_vector_182 complex_test_vector[8U] ;
  unsigned int num_tests ;
  int i ;
  int ret ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  simple_test_vector[0].input_dma = 0ULL;
  simple_test_vector[0].result_seg = 0;
  simple_test_vector[1].input_dma = ((xhci->event_ring)->first_seg)->dma - 16ULL;
  simple_test_vector[1].result_seg = 0;
  simple_test_vector[2].input_dma = ((xhci->event_ring)->first_seg)->dma - 1ULL;
  simple_test_vector[2].result_seg = 0;
  simple_test_vector[3].input_dma = ((xhci->event_ring)->first_seg)->dma;
  simple_test_vector[3].result_seg = (xhci->event_ring)->first_seg;
  simple_test_vector[4].input_dma = ((xhci->event_ring)->first_seg)->dma + 1008ULL;
  simple_test_vector[4].result_seg = (xhci->event_ring)->first_seg;
  simple_test_vector[5].input_dma = ((xhci->event_ring)->first_seg)->dma + 1009ULL;
  simple_test_vector[5].result_seg = 0;
  simple_test_vector[6].input_dma = ((xhci->event_ring)->first_seg)->dma + 1024ULL;
  simple_test_vector[6].result_seg = 0;
  simple_test_vector[7].input_dma = 0xffffffffffffffffULL;
  simple_test_vector[7].result_seg = 0;
  complex_test_vector[0].input_seg = (xhci->event_ring)->first_seg;
  complex_test_vector[0].start_trb = ((xhci->event_ring)->first_seg)->trbs;
  complex_test_vector[0].end_trb = ((xhci->event_ring)->first_seg)->trbs + 63UL;
  complex_test_vector[0].input_dma = ((xhci->cmd_ring)->first_seg)->dma;
  complex_test_vector[0].result_seg = 0;
  complex_test_vector[1].input_seg = (xhci->event_ring)->first_seg;
  complex_test_vector[1].start_trb = ((xhci->event_ring)->first_seg)->trbs;
  complex_test_vector[1].end_trb = ((xhci->cmd_ring)->first_seg)->trbs + 63UL;
  complex_test_vector[1].input_dma = ((xhci->cmd_ring)->first_seg)->dma;
  complex_test_vector[1].result_seg = 0;
  complex_test_vector[2].input_seg = (xhci->event_ring)->first_seg;
  complex_test_vector[2].start_trb = ((xhci->cmd_ring)->first_seg)->trbs;
  complex_test_vector[2].end_trb = ((xhci->cmd_ring)->first_seg)->trbs + 63UL;
  complex_test_vector[2].input_dma = ((xhci->cmd_ring)->first_seg)->dma;
  complex_test_vector[2].result_seg = 0;
  complex_test_vector[3].input_seg = (xhci->event_ring)->first_seg;
  complex_test_vector[3].start_trb = ((xhci->event_ring)->first_seg)->trbs;
  complex_test_vector[3].end_trb = ((xhci->event_ring)->first_seg)->trbs + 3UL;
  complex_test_vector[3].input_dma = ((xhci->event_ring)->first_seg)->dma + 64ULL;
  complex_test_vector[3].result_seg = 0;
  complex_test_vector[4].input_seg = (xhci->event_ring)->first_seg;
  complex_test_vector[4].start_trb = ((xhci->event_ring)->first_seg)->trbs + 3UL;
  complex_test_vector[4].end_trb = ((xhci->event_ring)->first_seg)->trbs + 6UL;
  complex_test_vector[4].input_dma = ((xhci->event_ring)->first_seg)->dma + 32ULL;
  complex_test_vector[4].result_seg = 0;
  complex_test_vector[5].input_seg = (xhci->event_ring)->first_seg;
  complex_test_vector[5].start_trb = ((xhci->event_ring)->first_seg)->trbs + 61UL;
  complex_test_vector[5].end_trb = ((xhci->event_ring)->first_seg)->trbs + 1UL;
  complex_test_vector[5].input_dma = ((xhci->event_ring)->first_seg)->dma + 32ULL;
  complex_test_vector[5].result_seg = 0;
  complex_test_vector[6].input_seg = (xhci->event_ring)->first_seg;
  complex_test_vector[6].start_trb = ((xhci->event_ring)->first_seg)->trbs + 61UL;
  complex_test_vector[6].end_trb = ((xhci->event_ring)->first_seg)->trbs + 1UL;
  complex_test_vector[6].input_dma = ((xhci->event_ring)->first_seg)->dma + 960ULL;
  complex_test_vector[6].result_seg = 0;
  complex_test_vector[7].input_seg = (xhci->event_ring)->first_seg;
  complex_test_vector[7].start_trb = ((xhci->event_ring)->first_seg)->trbs + 61UL;
  complex_test_vector[7].end_trb = ((xhci->event_ring)->first_seg)->trbs + 1UL;
  complex_test_vector[7].input_dma = ((xhci->cmd_ring)->first_seg)->dma + 32ULL;
  complex_test_vector[7].result_seg = 0;
  num_tests = 8U;
  i = 0;
  goto ldv_30741;
  ldv_30740:
  ret = xhci_test_trb_in_td(xhci, (xhci->event_ring)->first_seg, ((xhci->event_ring)->first_seg)->trbs,
                            ((xhci->event_ring)->first_seg)->trbs + 63UL, simple_test_vector[i].input_dma,
                            simple_test_vector[i].result_seg, (char *)"Simple", i);
  if (ret < 0) {
    return (ret);
  } else {
  }
  i = i + 1;
  ldv_30741: ;
  if ((unsigned int )i < num_tests) {
    goto ldv_30740;
  } else {
  }
  num_tests = 8U;
  i = 0;
  goto ldv_30746;
  ldv_30745:
  ret = xhci_test_trb_in_td(xhci, complex_test_vector[i].input_seg, complex_test_vector[i].start_trb,
                            complex_test_vector[i].end_trb, complex_test_vector[i].input_dma,
                            complex_test_vector[i].result_seg, (char *)"Complex",
                            i);
  if (ret < 0) {
    return (ret);
  } else {
  }
  i = i + 1;
  ldv_30746: ;
  if ((unsigned int )i < num_tests) {
    goto ldv_30745;
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_check_trb_in_td_math";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor.format = "TRB math tests passed.\n";
  descriptor.lineno = 2062U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "TRB math tests passed.\n");
  } else {
  }
  return (0);
}
}
static void xhci_set_hc_event_deq(struct xhci_hcd *xhci )
{
  u64 temp ;
  dma_addr_t deq ;
  struct usb_hcd *tmp ;
  struct thread_info *tmp___0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  {
  deq = xhci_trb_virt_to_dma((xhci->event_ring)->deq_seg, (xhci->event_ring)->dequeue);
  if (deq == 0ULL) {
    tmp___0 = current_thread_info___0();
    if (((unsigned long )tmp___0->preempt_count & 134217472UL) == 0UL) {
      tmp = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp->self.controller, "WARN something wrong with SW event ring dequeue ptr.\n");
    } else {
    }
  } else {
  }
  temp = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->ir_set)->erst_dequeue);
  temp = temp & 15ULL;
  temp = temp & 0xfffffffffffffff7ULL;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_set_hc_event_deq";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor.format = "// Write event ring dequeue pointer, preserving EHB bit\n";
  descriptor.lineno = 2084U;
  descriptor.flags = 1U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                      "// Write event ring dequeue pointer, preserving EHB bit\n");
  } else {
  }
  xhci_write_64(xhci, (deq & 0xfffffffffffffff0ULL) | temp, & (xhci->ir_set)->erst_dequeue);
  return;
}
}
static void xhci_add_in_port(struct xhci_hcd *xhci , unsigned int num_ports , __le32 *addr ,
                             u8 major_revision )
{
  u32 temp ;
  u32 port_offset ;
  u32 port_count ;
  int i ;
  struct usb_hcd *tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  struct usb_hcd *tmp___8 ;
  struct usb_hcd *tmp___9 ;
  {
  if ((unsigned int )major_revision > 3U) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "Ignoring unknown port speed, Ext Cap %p, revision = 0x%x\n",
             addr, (int )major_revision);
    return;
  } else {
  }
  temp = xhci_readl((struct xhci_hcd const *)xhci, addr + 2UL);
  port_offset = temp & 255U;
  port_count = (temp >> 8) & 255U;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_add_in_port";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor.format = "Ext Cap %p, port offset = %u, count = %u, revision = 0x%x\n";
  descriptor.lineno = 2109U;
  descriptor.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "Ext Cap %p, port offset = %u, count = %u, revision = 0x%x\n",
                      addr, port_offset, port_count, (int )major_revision);
  } else {
  }
  if (port_offset == 0U || (port_offset + port_count) - 1U > num_ports) {
    return;
  } else {
  }
  if (((unsigned int )xhci->hci_version == 150U && (unsigned int )major_revision != 3U) && (temp & 65536U) != 0U) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_add_in_port";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
    descriptor___0.format = "xHCI 0.96: support USB2 software lpm\n";
    descriptor___0.lineno = 2118U;
    descriptor___0.flags = 1U;
    tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      tmp___2 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___2->self.controller,
                        "xHCI 0.96: support USB2 software lpm\n");
    } else {
    }
    xhci->sw_lpm_support = 1U;
  } else {
  }
  if ((unsigned int )xhci->hci_version > 255U && (unsigned int )major_revision != 3U) {
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "xhci_add_in_port";
    descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
    descriptor___1.format = "xHCI 1.0: support USB2 software lpm\n";
    descriptor___1.lineno = 2123U;
    descriptor___1.flags = 1U;
    tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      tmp___4 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___4->self.controller,
                        "xHCI 1.0: support USB2 software lpm\n");
    } else {
    }
    xhci->sw_lpm_support = 1U;
    if ((temp & 524288U) != 0U) {
      descriptor___2.modname = "xhci_hcd";
      descriptor___2.function = "xhci_add_in_port";
      descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
      descriptor___2.format = "xHCI 1.0: support USB2 hardware lpm\n";
      descriptor___2.lineno = 2126U;
      descriptor___2.flags = 1U;
      tmp___7 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      if (tmp___7 != 0L) {
        tmp___6 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___6->self.controller,
                          "xHCI 1.0: support USB2 hardware lpm\n");
      } else {
      }
      xhci->hw_lpm_support = 1U;
    } else {
    }
  } else {
  }
  port_offset = port_offset - 1U;
  i = (int )port_offset;
  goto ldv_30774;
  ldv_30773: ;
  if ((unsigned int )*(xhci->port_array + (unsigned long )i) != 0U) {
    tmp___8 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___8->self.controller, "Duplicate port entry, Ext Cap %p, port %u\n",
             addr, i);
    tmp___9 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___9->self.controller, "Port was marked as USB %u, duplicated as USB %u\n",
             (int )*(xhci->port_array + (unsigned long )i), (int )major_revision);
    if ((int )*(xhci->port_array + (unsigned long )i) != (int )major_revision && (unsigned int )*(xhci->port_array + (unsigned long )i) != 255U) {
      if ((unsigned int )*(xhci->port_array + (unsigned long )i) == 3U) {
        xhci->num_usb3_ports = xhci->num_usb3_ports - 1U;
      } else {
        xhci->num_usb2_ports = xhci->num_usb2_ports - 1U;
      }
      *(xhci->port_array + (unsigned long )i) = 255U;
    } else {
    }
    goto ldv_30772;
  } else {
  }
  *(xhci->port_array + (unsigned long )i) = major_revision;
  if ((unsigned int )major_revision == 3U) {
    xhci->num_usb3_ports = xhci->num_usb3_ports + 1U;
  } else {
    xhci->num_usb2_ports = xhci->num_usb2_ports + 1U;
  }
  ldv_30772:
  i = i + 1;
  ldv_30774: ;
  if ((u32 )i < port_offset + port_count) {
    goto ldv_30773;
  } else {
  }
  return;
}
}
static int xhci_setup_port_arrays(struct xhci_hcd *xhci , gfp_t flags )
{
  __le32 *addr ;
  u32 offset ;
  unsigned int num_ports ;
  int i ;
  int j ;
  int port_index ;
  unsigned int tmp ;
  struct usb_hcd *tmp___0 ;
  void *tmp___1 ;
  void *tmp___2 ;
  struct xhci_interval_bw_table *bw_table ;
  u32 cap_id ;
  struct usb_hcd *tmp___3 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___8 ;
  long tmp___9 ;
  void *tmp___10 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___11 ;
  long tmp___12 ;
  void *tmp___13 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___14 ;
  long tmp___15 ;
  {
  addr = & (xhci->cap_regs)->hcc_params;
  tmp = xhci_readl((struct xhci_hcd const *)xhci, addr);
  offset = tmp >> 16;
  if (offset == 0U) {
    tmp___0 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___0->self.controller, "No Extended Capability registers, unable to set up roothub.\n");
    return (-19);
  } else {
  }
  num_ports = (xhci->hcs_params1 >> 24) & 127U;
  tmp___1 = kzalloc((unsigned long )num_ports, flags);
  xhci->port_array = (u8 *)tmp___1;
  if ((unsigned long )xhci->port_array == (unsigned long )((u8 *)0)) {
    return (-12);
  } else {
  }
  tmp___2 = kzalloc((unsigned long )num_ports * 688UL, flags);
  xhci->rh_bw = (struct xhci_root_port_bw_info *)tmp___2;
  if ((unsigned long )xhci->rh_bw == (unsigned long )((struct xhci_root_port_bw_info *)0)) {
    return (-12);
  } else {
  }
  i = 0;
  goto ldv_30791;
  ldv_30790:
  INIT_LIST_HEAD(& (xhci->rh_bw + (unsigned long )i)->tts);
  bw_table = & (xhci->rh_bw + (unsigned long )i)->bw_table;
  j = 0;
  goto ldv_30788;
  ldv_30787:
  INIT_LIST_HEAD(& bw_table->interval_bw[j].endpoints);
  j = j + 1;
  ldv_30788: ;
  if (j <= 15) {
    goto ldv_30787;
  } else {
  }
  i = i + 1;
  ldv_30791: ;
  if ((unsigned int )i < num_ports) {
    goto ldv_30790;
  } else {
  }
  addr = & (xhci->cap_regs)->hc_capbase + (unsigned long )offset;
  ldv_30795:
  cap_id = xhci_readl((struct xhci_hcd const *)xhci, addr);
  if ((cap_id & 255U) == 2U) {
    xhci_add_in_port(xhci, num_ports, addr, (int )((unsigned char )(cap_id >> 24)));
  } else {
  }
  offset = (cap_id >> 8) & 255U;
  if (offset == 0U || xhci->num_usb2_ports + xhci->num_usb3_ports == num_ports) {
    goto ldv_30794;
  } else {
  }
  addr = addr + (unsigned long )offset;
  goto ldv_30795;
  ldv_30794: ;
  if (xhci->num_usb2_ports == 0U && xhci->num_usb3_ports == 0U) {
    tmp___3 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___3->self.controller, "No ports on the roothubs?\n");
    return (-19);
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_setup_port_arrays";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor.format = "Found %u USB 2.0 ports and %u USB 3.0 ports.\n";
  descriptor.lineno = 2231U;
  descriptor.flags = 1U;
  tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    tmp___4 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___4->self.controller,
                      "Found %u USB 2.0 ports and %u USB 3.0 ports.\n", xhci->num_usb2_ports,
                      xhci->num_usb3_ports);
  } else {
  }
  if (xhci->num_usb3_ports > 15U) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_setup_port_arrays";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
    descriptor___0.format = "Limiting USB 3.0 roothub ports to 15.\n";
    descriptor___0.lineno = 2237U;
    descriptor___0.flags = 1U;
    tmp___7 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      tmp___6 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___6->self.controller,
                        "Limiting USB 3.0 roothub ports to 15.\n");
    } else {
    }
    xhci->num_usb3_ports = 15U;
  } else {
  }
  if (xhci->num_usb2_ports > 31U) {
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "xhci_setup_port_arrays";
    descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
    descriptor___1.format = "Limiting USB 2.0 roothub ports to %u.\n";
    descriptor___1.lineno = 2242U;
    descriptor___1.flags = 1U;
    tmp___9 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___9 != 0L) {
      tmp___8 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___8->self.controller,
                        "Limiting USB 2.0 roothub ports to %u.\n", 31);
    } else {
    }
    xhci->num_usb2_ports = 31U;
  } else {
  }
  if (xhci->num_usb2_ports != 0U) {
    tmp___10 = kmalloc((unsigned long )xhci->num_usb2_ports * 8UL, flags);
    xhci->usb2_ports = (__le32 **)tmp___10;
    if ((unsigned long )xhci->usb2_ports == (unsigned long )((__le32 **)0)) {
      return (-12);
    } else {
    }
    port_index = 0;
    i = 0;
    goto ldv_30804;
    ldv_30803: ;
    if (((unsigned int )*(xhci->port_array + (unsigned long )i) == 3U || (unsigned int )*(xhci->port_array + (unsigned long )i) == 0U) || (unsigned int )*(xhci->port_array + (unsigned long )i) == 255U) {
      goto ldv_30800;
    } else {
    }
    *(xhci->usb2_ports + (unsigned long )port_index) = & (xhci->op_regs)->port_status_base + (unsigned long )(i * 4);
    descriptor___2.modname = "xhci_hcd";
    descriptor___2.function = "xhci_setup_port_arrays";
    descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
    descriptor___2.format = "USB 2.0 port at index %u, addr = %p\n";
    descriptor___2.lineno = 2268U;
    descriptor___2.flags = 1U;
    tmp___12 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
    if (tmp___12 != 0L) {
      tmp___11 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___11->self.controller,
                        "USB 2.0 port at index %u, addr = %p\n", i, *(xhci->usb2_ports + (unsigned long )port_index));
    } else {
    }
    port_index = port_index + 1;
    if ((unsigned int )port_index == xhci->num_usb2_ports) {
      goto ldv_30802;
    } else {
    }
    ldv_30800:
    i = i + 1;
    ldv_30804: ;
    if ((unsigned int )i < num_ports) {
      goto ldv_30803;
    } else {
    }
    ldv_30802: ;
  } else {
  }
  if (xhci->num_usb3_ports != 0U) {
    tmp___13 = kmalloc((unsigned long )xhci->num_usb3_ports * 8UL, flags);
    xhci->usb3_ports = (__le32 **)tmp___13;
    if ((unsigned long )xhci->usb3_ports == (unsigned long )((__le32 **)0)) {
      return (-12);
    } else {
    }
    port_index = 0;
    i = 0;
    goto ldv_30808;
    ldv_30807: ;
    if ((unsigned int )*(xhci->port_array + (unsigned long )i) == 3U) {
      *(xhci->usb3_ports + (unsigned long )port_index) = & (xhci->op_regs)->port_status_base + (unsigned long )(i * 4);
      descriptor___3.modname = "xhci_hcd";
      descriptor___3.function = "xhci_setup_port_arrays";
      descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
      descriptor___3.format = "USB 3.0 port at index %u, addr = %p\n";
      descriptor___3.lineno = 2288U;
      descriptor___3.flags = 1U;
      tmp___15 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
      if (tmp___15 != 0L) {
        tmp___14 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___14->self.controller,
                          "USB 3.0 port at index %u, addr = %p\n", i, *(xhci->usb3_ports + (unsigned long )port_index));
      } else {
      }
      port_index = port_index + 1;
      if ((unsigned int )port_index == xhci->num_usb3_ports) {
        goto ldv_30806;
      } else {
      }
    } else {
    }
    i = i + 1;
    ldv_30808: ;
    if ((unsigned int )i < num_ports) {
      goto ldv_30807;
    } else {
    }
    ldv_30806: ;
  } else {
  }
  return (0);
}
}
int xhci_mem_init(struct xhci_hcd *xhci , gfp_t flags )
{
  dma_addr_t dma ;
  struct device *dev ;
  struct usb_hcd *tmp ;
  unsigned int val ;
  unsigned int val2 ;
  u64 val_64 ;
  struct xhci_segment *seg ;
  u32 page_size ;
  u32 temp ;
  int i ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  unsigned int tmp___7 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___8 ;
  long tmp___9 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___10 ;
  long tmp___11 ;
  void *tmp___12 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___13 ;
  long tmp___14 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___15 ;
  long tmp___16 ;
  struct _ddebug descriptor___6 ;
  struct usb_hcd *tmp___17 ;
  long tmp___18 ;
  struct _ddebug descriptor___7 ;
  struct usb_hcd *tmp___19 ;
  long tmp___20 ;
  struct _ddebug descriptor___8 ;
  struct usb_hcd *tmp___21 ;
  long tmp___22 ;
  struct _ddebug descriptor___9 ;
  struct usb_hcd *tmp___23 ;
  long tmp___24 ;
  int tmp___25 ;
  void *tmp___26 ;
  struct _ddebug descriptor___10 ;
  struct usb_hcd *tmp___27 ;
  long tmp___28 ;
  struct _ddebug descriptor___11 ;
  struct usb_hcd *tmp___29 ;
  long tmp___30 ;
  struct xhci_erst_entry *entry ;
  struct _ddebug descriptor___12 ;
  struct usb_hcd *tmp___31 ;
  long tmp___32 ;
  struct _ddebug descriptor___13 ;
  struct usb_hcd *tmp___33 ;
  long tmp___34 ;
  struct _ddebug descriptor___14 ;
  struct usb_hcd *tmp___35 ;
  long tmp___36 ;
  struct _ddebug descriptor___15 ;
  struct usb_hcd *tmp___37 ;
  long tmp___38 ;
  int tmp___39 ;
  int tmp___40 ;
  struct usb_hcd *tmp___41 ;
  {
  tmp = xhci_to_hcd(xhci);
  dev = tmp->self.controller;
  page_size = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->page_size);
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_mem_init";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor.format = "Supported page size register = 0x%x\n";
  descriptor.lineno = 2308U;
  descriptor.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "Supported page size register = 0x%x\n", page_size);
  } else {
  }
  i = 0;
  goto ldv_30826;
  ldv_30825: ;
  if ((int )page_size & 1) {
    goto ldv_30824;
  } else {
  }
  page_size = page_size >> 1;
  i = i + 1;
  ldv_30826: ;
  if (i <= 15) {
    goto ldv_30825;
  } else {
  }
  ldv_30824: ;
  if (i <= 15) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_mem_init";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
    descriptor___0.format = "Supported page size of %iK\n";
    descriptor___0.lineno = 2315U;
    descriptor___0.flags = 1U;
    tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      tmp___2 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___2->self.controller,
                        "Supported page size of %iK\n", (1 << (i + 12)) / 1024);
    } else {
    }
  } else {
  }
  xhci->page_shift = 12;
  xhci->page_size = 1 << xhci->page_shift;
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_mem_init";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___1.format = "HCD page size set to %iK\n";
  descriptor___1.lineno = 2321U;
  descriptor___1.flags = 1U;
  tmp___6 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___5->self.controller,
                      "HCD page size set to %iK\n", xhci->page_size / 1024);
  } else {
  }
  tmp___7 = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->cap_regs)->hcs_params1);
  val = tmp___7 & 255U;
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_mem_init";
  descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___2.format = "// xHC can handle at most %d device slots.\n";
  descriptor___2.lineno = 2329U;
  descriptor___2.flags = 1U;
  tmp___9 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___9 != 0L) {
    tmp___8 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___8->self.controller,
                      "// xHC can handle at most %d device slots.\n", val);
  } else {
  }
  val2 = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->config_reg);
  val = (val2 & 4294967040U) | val;
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_mem_init";
  descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___3.format = "// Setting Max device slots reg = 0x%x.\n";
  descriptor___3.lineno = 2333U;
  descriptor___3.flags = 1U;
  tmp___11 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___11 != 0L) {
    tmp___10 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___10->self.controller,
                      "// Setting Max device slots reg = 0x%x.\n", val);
  } else {
  }
  xhci_writel(xhci, val, & (xhci->op_regs)->config_reg);
  tmp___12 = dma_alloc_attrs(dev, 2056UL, & dma, 208U, 0);
  xhci->dcbaa = (struct xhci_device_context_array *)tmp___12;
  if ((unsigned long )xhci->dcbaa == (unsigned long )((struct xhci_device_context_array *)0)) {
    goto fail;
  } else {
  }
  memset((void *)xhci->dcbaa, 0, 2056UL);
  (xhci->dcbaa)->dma = dma;
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_mem_init";
  descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___4.format = "// Device context base array address = 0x%llx (DMA), %p (virt)\n";
  descriptor___4.lineno = 2347U;
  descriptor___4.flags = 1U;
  tmp___14 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___14 != 0L) {
    tmp___13 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___13->self.controller,
                      "// Device context base array address = 0x%llx (DMA), %p (virt)\n",
                      (xhci->dcbaa)->dma, xhci->dcbaa);
  } else {
  }
  xhci_write_64(xhci, dma, & (xhci->op_regs)->dcbaa_ptr);
  xhci->segment_pool = dma_pool_create("xHCI ring segments", dev, 1024UL, 64UL, (size_t )xhci->page_size);
  xhci->device_pool = dma_pool_create("xHCI input/output contexts", dev, 2112UL, 64UL,
                                      (size_t )xhci->page_size);
  if ((unsigned long )xhci->segment_pool == (unsigned long )((struct dma_pool *)0) || (unsigned long )xhci->device_pool == (unsigned long )((struct dma_pool *)0)) {
    goto fail;
  } else {
  }
  xhci->small_streams_pool = dma_pool_create("xHCI 256 byte stream ctx arrays", dev,
                                             256UL, 16UL, 0UL);
  xhci->medium_streams_pool = dma_pool_create("xHCI 1KB stream ctx arrays", dev, 1024UL,
                                              16UL, 0UL);
  if ((unsigned long )xhci->small_streams_pool == (unsigned long )((struct dma_pool *)0) || (unsigned long )xhci->medium_streams_pool == (unsigned long )((struct dma_pool *)0)) {
    goto fail;
  } else {
  }
  xhci->cmd_ring = xhci_ring_alloc(xhci, 1U, 1U, 5, flags);
  if ((unsigned long )xhci->cmd_ring == (unsigned long )((struct xhci_ring *)0)) {
    goto fail;
  } else {
  }
  INIT_LIST_HEAD(& xhci->cancel_cmd_list);
  descriptor___5.modname = "xhci_hcd";
  descriptor___5.function = "xhci_mem_init";
  descriptor___5.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___5.format = "Allocated command ring at %p\n";
  descriptor___5.lineno = 2386U;
  descriptor___5.flags = 1U;
  tmp___16 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___16 != 0L) {
    tmp___15 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___15->self.controller,
                      "Allocated command ring at %p\n", xhci->cmd_ring);
  } else {
  }
  descriptor___6.modname = "xhci_hcd";
  descriptor___6.function = "xhci_mem_init";
  descriptor___6.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___6.format = "First segment DMA is 0x%llx\n";
  descriptor___6.lineno = 2388U;
  descriptor___6.flags = 1U;
  tmp___18 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___18 != 0L) {
    tmp___17 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___6, (struct device const *)tmp___17->self.controller,
                      "First segment DMA is 0x%llx\n", ((xhci->cmd_ring)->first_seg)->dma);
  } else {
  }
  val_64 = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->op_regs)->cmd_ring);
  val_64 = ((val_64 & 63ULL) | (((xhci->cmd_ring)->first_seg)->dma & 0xffffffffffffffc0ULL)) | (unsigned long long )(xhci->cmd_ring)->cycle_state;
  descriptor___7.modname = "xhci_hcd";
  descriptor___7.function = "xhci_mem_init";
  descriptor___7.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___7.format = "// Setting command ring address to 0x%x\n";
  descriptor___7.lineno = 2395U;
  descriptor___7.flags = 1U;
  tmp___20 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
  if (tmp___20 != 0L) {
    tmp___19 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___7, (struct device const *)tmp___19->self.controller,
                      "// Setting command ring address to 0x%x\n", val);
  } else {
  }
  xhci_write_64(xhci, val_64, & (xhci->op_regs)->cmd_ring);
  xhci_dbg_cmd_ptrs(xhci);
  xhci->lpm_command = xhci_alloc_command(xhci, 1, 1, flags);
  if ((unsigned long )xhci->lpm_command == (unsigned long )((struct xhci_command *)0)) {
    goto fail;
  } else {
  }
  xhci->cmd_ring_reserved_trbs = xhci->cmd_ring_reserved_trbs + 1U;
  val = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->cap_regs)->db_off);
  val = val & 4294967292U;
  descriptor___8.modname = "xhci_hcd";
  descriptor___8.function = "xhci_mem_init";
  descriptor___8.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___8.format = "// Doorbell array is located at offset 0x%x from cap regs base addr\n";
  descriptor___8.lineno = 2412U;
  descriptor___8.flags = 1U;
  tmp___22 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
  if (tmp___22 != 0L) {
    tmp___21 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___8, (struct device const *)tmp___21->self.controller,
                      "// Doorbell array is located at offset 0x%x from cap regs base addr\n",
                      val);
  } else {
  }
  xhci->dba = (struct xhci_doorbell_array *)xhci->cap_regs + (unsigned long )val;
  xhci_dbg_regs(xhci);
  xhci_print_run_regs(xhci);
  xhci->ir_set = (struct xhci_intr_reg *)(& (xhci->run_regs)->ir_set);
  descriptor___9.modname = "xhci_hcd";
  descriptor___9.function = "xhci_mem_init";
  descriptor___9.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___9.format = "// Allocating event ring\n";
  descriptor___9.lineno = 2423U;
  descriptor___9.flags = 1U;
  tmp___24 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
  if (tmp___24 != 0L) {
    tmp___23 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___9, (struct device const *)tmp___23->self.controller,
                      "// Allocating event ring\n");
  } else {
  }
  xhci->event_ring = xhci_ring_alloc(xhci, 1U, 1U, 6, flags);
  if ((unsigned long )xhci->event_ring == (unsigned long )((struct xhci_ring *)0)) {
    goto fail;
  } else {
  }
  tmp___25 = xhci_check_trb_in_td_math(xhci, flags);
  if (tmp___25 < 0) {
    goto fail;
  } else {
  }
  tmp___26 = dma_alloc_attrs(dev, 16UL, & dma, 208U, 0);
  xhci->erst.entries = (struct xhci_erst_entry *)tmp___26;
  if ((unsigned long )xhci->erst.entries == (unsigned long )((struct xhci_erst_entry *)0)) {
    goto fail;
  } else {
  }
  descriptor___10.modname = "xhci_hcd";
  descriptor___10.function = "xhci_mem_init";
  descriptor___10.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___10.format = "// Allocated event ring segment table at 0x%llx\n";
  descriptor___10.lineno = 2437U;
  descriptor___10.flags = 1U;
  tmp___28 = ldv__builtin_expect((long )descriptor___10.flags & 1L, 0L);
  if (tmp___28 != 0L) {
    tmp___27 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___10, (struct device const *)tmp___27->self.controller,
                      "// Allocated event ring segment table at 0x%llx\n", dma);
  } else {
  }
  memset((void *)xhci->erst.entries, 0, 16UL);
  xhci->erst.num_entries = 1U;
  xhci->erst.erst_dma_addr = dma;
  descriptor___11.modname = "xhci_hcd";
  descriptor___11.function = "xhci_mem_init";
  descriptor___11.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___11.format = "Set ERST to 0; private num segs = %i, virt addr = %p, dma addr = 0x%llx\n";
  descriptor___11.lineno = 2445U;
  descriptor___11.flags = 1U;
  tmp___30 = ldv__builtin_expect((long )descriptor___11.flags & 1L, 0L);
  if (tmp___30 != 0L) {
    tmp___29 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___11, (struct device const *)tmp___29->self.controller,
                      "Set ERST to 0; private num segs = %i, virt addr = %p, dma addr = 0x%llx\n",
                      xhci->erst.num_entries, xhci->erst.entries, xhci->erst.erst_dma_addr);
  } else {
  }
  val = 0U;
  seg = (xhci->event_ring)->first_seg;
  goto ldv_30842;
  ldv_30841:
  entry = xhci->erst.entries + (unsigned long )val;
  entry->seg_addr = seg->dma;
  entry->seg_size = 64U;
  entry->rsvd = 0U;
  seg = seg->next;
  val = val + 1U;
  ldv_30842: ;
  if (val == 0U) {
    goto ldv_30841;
  } else {
  }
  val = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->ir_set)->erst_size);
  val = val & 4294901760U;
  val = val | 1U;
  descriptor___12.modname = "xhci_hcd";
  descriptor___12.function = "xhci_mem_init";
  descriptor___12.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___12.format = "// Write ERST size = %i to ir_set 0 (some bits preserved)\n";
  descriptor___12.lineno = 2461U;
  descriptor___12.flags = 1U;
  tmp___32 = ldv__builtin_expect((long )descriptor___12.flags & 1L, 0L);
  if (tmp___32 != 0L) {
    tmp___31 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___12, (struct device const *)tmp___31->self.controller,
                      "// Write ERST size = %i to ir_set 0 (some bits preserved)\n",
                      val);
  } else {
  }
  xhci_writel(xhci, val, & (xhci->ir_set)->erst_size);
  descriptor___13.modname = "xhci_hcd";
  descriptor___13.function = "xhci_mem_init";
  descriptor___13.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___13.format = "// Set ERST entries to point to event ring.\n";
  descriptor___13.lineno = 2464U;
  descriptor___13.flags = 1U;
  tmp___34 = ldv__builtin_expect((long )descriptor___13.flags & 1L, 0L);
  if (tmp___34 != 0L) {
    tmp___33 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___13, (struct device const *)tmp___33->self.controller,
                      "// Set ERST entries to point to event ring.\n");
  } else {
  }
  descriptor___14.modname = "xhci_hcd";
  descriptor___14.function = "xhci_mem_init";
  descriptor___14.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___14.format = "// Set ERST base address for ir_set 0 = 0x%llx\n";
  descriptor___14.lineno = 2467U;
  descriptor___14.flags = 1U;
  tmp___36 = ldv__builtin_expect((long )descriptor___14.flags & 1L, 0L);
  if (tmp___36 != 0L) {
    tmp___35 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___14, (struct device const *)tmp___35->self.controller,
                      "// Set ERST base address for ir_set 0 = 0x%llx\n", xhci->erst.erst_dma_addr);
  } else {
  }
  val_64 = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->ir_set)->erst_base);
  val_64 = val_64 & 15ULL;
  val_64 = (xhci->erst.erst_dma_addr & 0xfffffffffffffff0ULL) | val_64;
  xhci_write_64(xhci, val_64, & (xhci->ir_set)->erst_base);
  xhci_set_hc_event_deq(xhci);
  descriptor___15.modname = "xhci_hcd";
  descriptor___15.function = "xhci_mem_init";
  descriptor___15.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-mem.c.prepared";
  descriptor___15.format = "Wrote ERST address to ir_set 0.\n";
  descriptor___15.lineno = 2475U;
  descriptor___15.flags = 1U;
  tmp___38 = ldv__builtin_expect((long )descriptor___15.flags & 1L, 0L);
  if (tmp___38 != 0L) {
    tmp___37 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___15, (struct device const *)tmp___37->self.controller,
                      "Wrote ERST address to ir_set 0.\n");
  } else {
  }
  xhci_print_ir_set(xhci, 0);
  init_completion(& xhci->addr_dev);
  i = 0;
  goto ldv_30849;
  ldv_30848:
  xhci->devs[i] = 0;
  i = i + 1;
  ldv_30849: ;
  if (i <= 255) {
    goto ldv_30848;
  } else {
  }
  i = 0;
  goto ldv_30852;
  ldv_30851:
  xhci->bus_state[0].resume_done[i] = 0UL;
  xhci->bus_state[1].resume_done[i] = 0UL;
  i = i + 1;
  ldv_30852: ;
  if (i <= 30) {
    goto ldv_30851;
  } else {
  }
  tmp___39 = scratchpad_alloc(xhci, flags);
  if (tmp___39 != 0) {
    goto fail;
  } else {
  }
  tmp___40 = xhci_setup_port_arrays(xhci, flags);
  if (tmp___40 != 0) {
    goto fail;
  } else {
  }
  INIT_LIST_HEAD(& xhci->lpm_failed_devs);
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->dev_notification);
  temp = temp & 4294901760U;
  temp = temp | 2U;
  xhci_writel(xhci, temp, & (xhci->op_regs)->dev_notification);
  return (0);
  fail:
  tmp___41 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___41->self.controller, "Couldn\'t initialize memory\n");
  xhci_halt(xhci);
  xhci_reset(xhci);
  xhci_mem_cleanup(xhci);
  return (-12);
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
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern int __printk_ratelimit(char const * ) ;
int ldv_mutex_trylock_32(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_30(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_29(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_31(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_34(struct mutex *ldv_func_arg1 ) ;
extern void _raw_spin_lock(raw_spinlock_t * ) ;
extern void _raw_spin_unlock(raw_spinlock_t * ) ;
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
extern void complete(struct completion * ) ;
extern int del_timer(struct timer_list * ) ;
extern struct scatterlist *sg_next(struct scatterlist * ) ;
extern int ___ratelimit(struct ratelimit_state * , char const * ) ;
__inline static int usb_urb_dir_in(struct urb *urb )
{
  {
  return ((urb->transfer_flags & 512U) != 0U);
}
}
__inline static struct usb_hcd *bus_to_hcd(struct usb_bus *bus )
{
  struct usb_bus const *__mptr ;
  {
  __mptr = (struct usb_bus const *)bus;
  return ((struct usb_hcd *)__mptr);
}
}
extern int usb_hcd_link_urb_to_ep(struct usb_hcd * , struct urb * ) ;
extern void usb_hc_died(struct usb_hcd * ) ;
extern void usb_wakeup_notification(struct usb_device * , unsigned int ) ;
extern void usb_amd_quirk_pll_disable(void) ;
extern void usb_amd_quirk_pll_enable(void) ;
__inline static unsigned int hcd_index(struct usb_hcd *hcd )
{
  {
  if (hcd->speed == 64) {
    return (0U);
  } else {
    return (1U);
  }
}
}
void xhci_print_trb_offsets(struct xhci_hcd *xhci , union xhci_trb *trb ) ;
irqreturn_t xhci_irq(struct usb_hcd *hcd ) ;
void xhci_ring_ep_doorbell(struct xhci_hcd *xhci , unsigned int slot_id , unsigned int ep_index ,
                           unsigned int stream_id ) ;
int xhci_find_slot_id_by_port(struct usb_hcd *hcd , struct xhci_hcd *xhci , u16 port ) ;
static int handle_cmd_in_cmd_wait_list(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                                       struct xhci_event_cmd *event ) ;
dma_addr_t xhci_trb_virt_to_dma(struct xhci_segment *seg , union xhci_trb *trb )
{
  unsigned long segment_offset ;
  {
  if (((unsigned long )seg == (unsigned long )((struct xhci_segment *)0) || (unsigned long )trb == (unsigned long )((union xhci_trb *)0)) || (unsigned long )seg->trbs > (unsigned long )trb) {
    return (0ULL);
  } else {
  }
  segment_offset = (unsigned long )(((long )trb - (long )seg->trbs) / 16L);
  if (segment_offset > 64UL) {
    return (0ULL);
  } else {
  }
  return (seg->dma + (unsigned long long )(segment_offset * 16UL));
}
}
static bool last_trb_on_last_seg(struct xhci_hcd *xhci , struct xhci_ring *ring ,
                                 struct xhci_segment *seg , union xhci_trb *trb )
{
  {
  if ((unsigned long )xhci->event_ring == (unsigned long )ring) {
    return ((bool )((unsigned long )(seg->trbs + 64UL) == (unsigned long )trb && (unsigned long )seg->next == (unsigned long )(xhci->event_ring)->first_seg));
  } else {
    return ((trb->link.control & 2U) != 0U);
  }
}
}
static int last_trb(struct xhci_hcd *xhci , struct xhci_ring *ring , struct xhci_segment *seg ,
                    union xhci_trb *trb )
{
  {
  if ((unsigned long )xhci->event_ring == (unsigned long )ring) {
    return ((unsigned long )(seg->trbs + 64UL) == (unsigned long )trb);
  } else {
    return ((trb->link.control & 64512U) == 6144U);
  }
}
}
static int enqueue_is_link_trb(struct xhci_ring *ring )
{
  struct xhci_link_trb *link ;
  {
  link = & (ring->enqueue)->link;
  return ((link->control & 64512U) == 6144U);
}
}
static void next_trb(struct xhci_hcd *xhci , struct xhci_ring *ring , struct xhci_segment **seg ,
                     union xhci_trb **trb )
{
  int tmp ;
  {
  tmp = last_trb(xhci, ring, *seg, *trb);
  if (tmp != 0) {
    *seg = (*seg)->next;
    *trb = (*seg)->trbs;
  } else {
    *trb = *trb + 1;
  }
  return;
}
}
static void inc_deq(struct xhci_hcd *xhci , struct xhci_ring *ring )
{
  unsigned long long addr ;
  int tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  ring->deq_updates = ring->deq_updates + 1U;
  if ((unsigned int )ring->type != 6U) {
    tmp = last_trb(xhci, ring, ring->deq_seg, ring->dequeue);
    if (tmp == 0) {
      ring->num_trbs_free = ring->num_trbs_free + 1U;
    } else {
    }
  } else {
  }
  ldv_27969:
  tmp___1 = last_trb(xhci, ring, ring->deq_seg, ring->dequeue);
  if (tmp___1 != 0) {
    if ((unsigned int )ring->type == 6U) {
      tmp___0 = last_trb_on_last_seg(xhci, ring, ring->deq_seg, ring->dequeue);
      if ((int )tmp___0) {
        ring->cycle_state = ring->cycle_state == 0U;
      } else {
      }
    } else {
    }
    ring->deq_seg = (ring->deq_seg)->next;
    ring->dequeue = (ring->deq_seg)->trbs;
  } else {
    ring->dequeue = ring->dequeue + 1;
  }
  tmp___2 = last_trb(xhci, ring, ring->deq_seg, ring->dequeue);
  if (tmp___2 != 0) {
    goto ldv_27969;
  } else {
  }
  addr = xhci_trb_virt_to_dma(ring->deq_seg, ring->dequeue);
  return;
}
}
static void inc_enq(struct xhci_hcd *xhci , struct xhci_ring *ring , bool more_trbs_coming )
{
  u32 chain ;
  union xhci_trb *next ;
  unsigned long long addr ;
  int tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  {
  chain = (ring->enqueue)->generic.field[3] & 16U;
  if ((unsigned int )ring->type != 6U) {
    tmp = last_trb(xhci, ring, ring->enq_seg, ring->enqueue);
    if (tmp == 0) {
      ring->num_trbs_free = ring->num_trbs_free - 1U;
    } else {
    }
  } else {
  }
  ring->enqueue = ring->enqueue + 1;
  next = ring->enqueue;
  ring->enq_updates = ring->enq_updates + 1U;
  goto ldv_27981;
  ldv_27980: ;
  if ((unsigned int )ring->type != 6U) {
    if (chain == 0U && ! more_trbs_coming) {
      goto ldv_27979;
    } else {
    }
    if ((unsigned int )ring->type != 1U || (xhci->quirks & 512U) == 0U) {
      tmp___0 = xhci_link_trb_quirk(xhci);
      if (tmp___0 == 0) {
        next->link.control = next->link.control & 4294967279U;
        next->link.control = next->link.control | chain;
      } else {
      }
    } else {
    }
    __asm__ volatile ("sfence": : : "memory");
    next->link.control = next->link.control ^ 1U;
    tmp___1 = last_trb_on_last_seg(xhci, ring, ring->enq_seg, next);
    if ((int )tmp___1) {
      ring->cycle_state = ring->cycle_state == 0U;
    } else {
    }
  } else {
  }
  ring->enq_seg = (ring->enq_seg)->next;
  ring->enqueue = (ring->enq_seg)->trbs;
  next = ring->enqueue;
  ldv_27981:
  tmp___2 = last_trb(xhci, ring, ring->enq_seg, next);
  if (tmp___2 != 0) {
    goto ldv_27980;
  } else {
  }
  ldv_27979:
  addr = xhci_trb_virt_to_dma(ring->enq_seg, ring->enqueue);
  return;
}
}
__inline static int room_on_ring(struct xhci_hcd *xhci , struct xhci_ring *ring ,
                                 unsigned int num_trbs )
{
  int num_trbs_in_deq_seg ;
  {
  if (ring->num_trbs_free < num_trbs) {
    return (0);
  } else {
  }
  if ((unsigned int )ring->type != 5U && (unsigned int )ring->type != 6U) {
    num_trbs_in_deq_seg = (int )(((long )ring->dequeue - (long )(ring->deq_seg)->trbs) / 16L);
    if (ring->num_trbs_free < num_trbs + (unsigned int )num_trbs_in_deq_seg) {
      return (0);
    } else {
    }
  } else {
  }
  return (1);
}
}
void xhci_ring_cmd_db(struct xhci_hcd *xhci )
{
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  if ((xhci->cmd_ring_state & 1U) == 0U) {
    return;
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_ring_cmd_db";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor.format = "// Ding dong!\n";
  descriptor.lineno = 317U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "// Ding dong!\n");
  } else {
  }
  xhci_writel(xhci, 0U, (__le32 *)(& (xhci->dba)->doorbell));
  xhci_readl((struct xhci_hcd const *)xhci, (__le32 *)(& (xhci->dba)->doorbell));
  return;
}
}
static int xhci_abort_cmd_ring(struct xhci_hcd *xhci )
{
  u64 temp_64 ;
  int ret ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct usb_hcd *tmp___5 ;
  {
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_abort_cmd_ring";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor.format = "Abort command ring\n";
  descriptor.lineno = 328U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "Abort command ring\n");
  } else {
  }
  if ((xhci->cmd_ring_state & 1U) == 0U) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_abort_cmd_ring";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor___0.format = "The command ring isn\'t running, Have the command ring been stopped?\n";
    descriptor___0.lineno = 332U;
    descriptor___0.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                        "The command ring isn\'t running, Have the command ring been stopped?\n");
    } else {
    }
    return (0);
  } else {
  }
  temp_64 = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->op_regs)->cmd_ring);
  if ((temp_64 & 8ULL) == 0ULL) {
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "xhci_abort_cmd_ring";
    descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor___1.format = "Command ring had been stopped\n";
    descriptor___1.lineno = 338U;
    descriptor___1.flags = 1U;
    tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      tmp___3 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___3->self.controller,
                        "Command ring had been stopped\n");
    } else {
    }
    return (0);
  } else {
  }
  xhci->cmd_ring_state = 2U;
  xhci_write_64(xhci, temp_64 | 4ULL, & (xhci->op_regs)->cmd_ring);
  ret = xhci_handshake(xhci, (void *)(& (xhci->op_regs)->cmd_ring), 8U, 0U, 5000000);
  if (ret < 0) {
    tmp___5 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___5->self.controller, "Stopped the command ring failed, maybe the host is dead\n");
    xhci->xhc_state = xhci->xhc_state | 1U;
    xhci_quiesce(xhci);
    xhci_halt(xhci);
    return (-108);
  } else {
  }
  return (0);
}
}
static int xhci_queue_cd(struct xhci_hcd *xhci , struct xhci_command *command , union xhci_trb *cmd_trb )
{
  struct xhci_cd *cd ;
  void *tmp ;
  {
  tmp = kzalloc(32UL, 32U);
  cd = (struct xhci_cd *)tmp;
  if ((unsigned long )cd == (unsigned long )((struct xhci_cd *)0)) {
    return (-12);
  } else {
  }
  INIT_LIST_HEAD(& cd->cancel_cmd_list);
  cd->command = command;
  cd->cmd_trb = cmd_trb;
  list_add_tail(& cd->cancel_cmd_list, & xhci->cancel_cmd_list);
  return (0);
}
}
int xhci_cancel_cmd(struct xhci_hcd *xhci , struct xhci_command *command , union xhci_trb *cmd_trb )
{
  int retval ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  struct usb_hcd *tmp___0 ;
  struct usb_hcd *tmp___1 ;
  struct usb_hcd *tmp___2 ;
  struct usb_hcd *tmp___3 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  {
  retval = 0;
  tmp = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  if ((int )xhci->xhc_state & 1) {
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "Abort the command ring, but the xHCI is dead.\n");
    retval = -108;
    goto fail;
  } else {
  }
  retval = xhci_queue_cd(xhci, command, cmd_trb);
  if (retval != 0) {
    tmp___1 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___1->self.controller, "Queuing command descriptor failed.\n");
    goto fail;
  } else {
  }
  retval = xhci_abort_cmd_ring(xhci);
  if (retval != 0) {
    tmp___2 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___2->self.controller, "Abort command ring failed\n");
    tmp___6 = ldv__builtin_expect(retval == -108, 0L);
    if (tmp___6 != 0L) {
      spin_unlock_irqrestore(& xhci->lock, flags);
      tmp___3 = xhci_to_hcd(xhci);
      usb_hc_died(tmp___3->primary_hcd);
      descriptor.modname = "xhci_hcd";
      descriptor.function = "xhci_cancel_cmd";
      descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
      descriptor.format = "xHCI host controller is dead.\n";
      descriptor.lineno = 421U;
      descriptor.flags = 1U;
      tmp___5 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___5 != 0L) {
        tmp___4 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___4->self.controller,
                          "xHCI host controller is dead.\n");
      } else {
      }
      return (retval);
    } else {
    }
  } else {
  }
  fail:
  spin_unlock_irqrestore(& xhci->lock, flags);
  return (retval);
}
}
void xhci_ring_ep_doorbell(struct xhci_hcd *xhci , unsigned int slot_id , unsigned int ep_index ,
                           unsigned int stream_id )
{
  __le32 *db_addr ;
  struct xhci_virt_ep *ep ;
  unsigned int ep_state ;
  {
  db_addr = (__le32 *)(& (xhci->dba)->doorbell) + (unsigned long )slot_id;
  ep = (struct xhci_virt_ep *)(& (xhci->devs[slot_id])->eps) + (unsigned long )ep_index;
  ep_state = ep->ep_state;
  if (((ep_state & 4U) != 0U || (int )ep_state & 1) || (ep_state & 2U) != 0U) {
    return;
  } else {
  }
  xhci_writel(xhci, ((ep_index + 1U) & 255U) | (stream_id << 16), db_addr);
  return;
}
}
static void ring_doorbell_for_active_rings(struct xhci_hcd *xhci , unsigned int slot_id ,
                                           unsigned int ep_index )
{
  unsigned int stream_id ;
  struct xhci_virt_ep *ep ;
  int tmp ;
  struct xhci_stream_info *stream_info ;
  int tmp___0 ;
  {
  ep = (struct xhci_virt_ep *)(& (xhci->devs[slot_id])->eps) + (unsigned long )ep_index;
  if ((ep->ep_state & 16U) == 0U) {
    tmp = list_empty((struct list_head const *)(& (ep->ring)->td_list));
    if (tmp == 0) {
      xhci_ring_ep_doorbell(xhci, slot_id, ep_index, 0U);
    } else {
    }
    return;
  } else {
  }
  stream_id = 1U;
  goto ldv_28039;
  ldv_28038:
  stream_info = ep->stream_info;
  tmp___0 = list_empty((struct list_head const *)(& (*(stream_info->stream_rings + (unsigned long )stream_id))->td_list));
  if (tmp___0 == 0) {
    xhci_ring_ep_doorbell(xhci, slot_id, ep_index, stream_id);
  } else {
  }
  stream_id = stream_id + 1U;
  ldv_28039: ;
  if ((ep->stream_info)->num_streams > stream_id) {
    goto ldv_28038;
  } else {
  }
  return;
}
}
static struct xhci_segment *find_trb_seg(struct xhci_segment *start_seg , union xhci_trb *trb ,
                                         int *cycle_state )
{
  struct xhci_segment *cur_seg ;
  struct xhci_generic_trb *generic_trb ;
  {
  cur_seg = start_seg;
  goto ldv_28049;
  ldv_28048:
  generic_trb = & (cur_seg->trbs + 63UL)->generic;
  if ((generic_trb->field[3] & 2U) != 0U) {
    *cycle_state = *cycle_state ^ 1;
  } else {
  }
  cur_seg = cur_seg->next;
  if ((unsigned long )cur_seg == (unsigned long )start_seg) {
    return (0);
  } else {
  }
  ldv_28049: ;
  if ((unsigned long )cur_seg->trbs > (unsigned long )trb || (unsigned long )(cur_seg->trbs + 63UL) < (unsigned long )trb) {
    goto ldv_28048;
  } else {
  }
  return (cur_seg);
}
}
static struct xhci_ring *xhci_triad_to_transfer_ring(struct xhci_hcd *xhci , unsigned int slot_id ,
                                                     unsigned int ep_index , unsigned int stream_id )
{
  struct xhci_virt_ep *ep ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  {
  ep = (struct xhci_virt_ep *)(& (xhci->devs[slot_id])->eps) + (unsigned long )ep_index;
  if ((ep->ep_state & 16U) == 0U) {
    return (ep->ring);
  } else {
  }
  if (stream_id == 0U) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "WARN: Slot ID %u, ep index %u has streams, but URB has no stream ID.\n",
             slot_id, ep_index);
    return (0);
  } else {
  }
  if ((ep->stream_info)->num_streams > stream_id) {
    return (*((ep->stream_info)->stream_rings + (unsigned long )stream_id));
  } else {
  }
  tmp___0 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___0->self.controller, "WARN: Slot ID %u, ep index %u has stream IDs 1 to %u allocated, but stream ID %u is requested.\n",
           slot_id, ep_index, (ep->stream_info)->num_streams - 1U, stream_id);
  return (0);
}
}
static struct xhci_ring *xhci_urb_to_transfer_ring___0(struct xhci_hcd *xhci , struct urb *urb )
{
  unsigned int tmp ;
  struct xhci_ring *tmp___0 ;
  {
  tmp = xhci_get_endpoint_index(& (urb->ep)->desc);
  tmp___0 = xhci_triad_to_transfer_ring(xhci, (unsigned int )(urb->dev)->slot_id,
                                        tmp, urb->stream_id);
  return (tmp___0);
}
}
void xhci_find_new_dequeue_state(struct xhci_hcd *xhci , unsigned int slot_id , unsigned int ep_index ,
                                 unsigned int stream_id , struct xhci_td *cur_td ,
                                 struct xhci_dequeue_state *state )
{
  struct xhci_virt_device *dev ;
  struct xhci_ring *ep_ring ;
  struct xhci_generic_trb *trb ;
  struct xhci_ep_ctx *ep_ctx ;
  dma_addr_t addr ;
  struct usb_hcd *tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  int __ret_warn_on ;
  long tmp___2 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  int __ret_warn_on___0 ;
  long tmp___7 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___8 ;
  long tmp___9 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___10 ;
  long tmp___11 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___12 ;
  long tmp___13 ;
  {
  dev = xhci->devs[slot_id];
  ep_ring = xhci_triad_to_transfer_ring(xhci, slot_id, ep_index, stream_id);
  if ((unsigned long )ep_ring == (unsigned long )((struct xhci_ring *)0)) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "WARN can\'t find new dequeue state for invalid stream ID %u.\n",
             stream_id);
    return;
  } else {
  }
  state->new_cycle_state = 0;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_find_new_dequeue_state";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor.format = "Finding segment containing stopped TRB.\n";
  descriptor.lineno = 589U;
  descriptor.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "Finding segment containing stopped TRB.\n");
  } else {
  }
  state->new_deq_seg = find_trb_seg(cur_td->start_seg, dev->eps[ep_index].stopped_trb,
                                    & state->new_cycle_state);
  if ((unsigned long )state->new_deq_seg == (unsigned long )((struct xhci_segment *)0)) {
    __ret_warn_on = 1;
    tmp___2 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___2 != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared",
                         594);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on != 0, 0L);
    return;
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_find_new_dequeue_state";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor___0.format = "Finding endpoint context\n";
  descriptor___0.lineno = 599U;
  descriptor___0.flags = 1U;
  tmp___4 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___3->self.controller,
                      "Finding endpoint context\n");
  } else {
  }
  ep_ctx = xhci_get_ep_ctx(xhci, dev->out_ctx, ep_index);
  state->new_cycle_state = (int )ep_ctx->deq & 1;
  state->new_deq_ptr = cur_td->last_trb;
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_find_new_dequeue_state";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor___1.format = "Finding segment containing last TRB in TD.\n";
  descriptor___1.lineno = 604U;
  descriptor___1.flags = 1U;
  tmp___6 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___5->self.controller,
                      "Finding segment containing last TRB in TD.\n");
  } else {
  }
  state->new_deq_seg = find_trb_seg(state->new_deq_seg, state->new_deq_ptr, & state->new_cycle_state);
  if ((unsigned long )state->new_deq_seg == (unsigned long )((struct xhci_segment *)0)) {
    __ret_warn_on___0 = 1;
    tmp___7 = ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    if (tmp___7 != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared",
                         609);
    } else {
    }
    ldv__builtin_expect(__ret_warn_on___0 != 0, 0L);
    return;
  } else {
  }
  trb = & (state->new_deq_ptr)->generic;
  if ((trb->field[3] & 64512U) == 6144U && (trb->field[3] & 2U) != 0U) {
    state->new_cycle_state = state->new_cycle_state ^ 1;
  } else {
  }
  next_trb(xhci, ep_ring, & state->new_deq_seg, & state->new_deq_ptr);
  if ((unsigned long )ep_ring->first_seg == (unsigned long )(ep_ring->first_seg)->next && (unsigned long )state->new_deq_ptr < (unsigned long )dev->eps[ep_index].stopped_trb) {
    state->new_cycle_state = state->new_cycle_state ^ 1;
  } else {
  }
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_find_new_dequeue_state";
  descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor___2.format = "Cycle state = 0x%x\n";
  descriptor___2.lineno = 631U;
  descriptor___2.flags = 1U;
  tmp___9 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___9 != 0L) {
    tmp___8 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___8->self.controller,
                      "Cycle state = 0x%x\n", state->new_cycle_state);
  } else {
  }
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_find_new_dequeue_state";
  descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor___3.format = "New dequeue segment = %p (virtual)\n";
  descriptor___3.lineno = 635U;
  descriptor___3.flags = 1U;
  tmp___11 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___11 != 0L) {
    tmp___10 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___10->self.controller,
                      "New dequeue segment = %p (virtual)\n", state->new_deq_seg);
  } else {
  }
  addr = xhci_trb_virt_to_dma(state->new_deq_seg, state->new_deq_ptr);
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_find_new_dequeue_state";
  descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor___4.format = "New dequeue pointer = 0x%llx (DMA)\n";
  descriptor___4.lineno = 638U;
  descriptor___4.flags = 1U;
  tmp___13 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___13 != 0L) {
    tmp___12 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___12->self.controller,
                      "New dequeue pointer = 0x%llx (DMA)\n", addr);
  } else {
  }
  return;
}
}
static void td_to_noop(struct xhci_hcd *xhci , struct xhci_ring *ep_ring , struct xhci_td *cur_td ,
                       bool flip_cycle )
{
  struct xhci_segment *cur_seg ;
  union xhci_trb *cur_trb ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  dma_addr_t tmp___1 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  dma_addr_t tmp___4 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  {
  cur_seg = cur_td->start_seg;
  cur_trb = cur_td->first_trb;
  ldv_28099: ;
  if ((cur_trb->generic.field[3] & 64512U) == 6144U) {
    cur_trb->generic.field[3] = cur_trb->generic.field[3] & 4294967279U;
    if ((int )flip_cycle) {
      cur_trb->generic.field[3] = cur_trb->generic.field[3] ^ 1U;
    } else {
    }
    descriptor.modname = "xhci_hcd";
    descriptor.function = "td_to_noop";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor.format = "Cancel (unchain) link TRB\n";
    descriptor.lineno = 665U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "Cancel (unchain) link TRB\n");
    } else {
    }
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "td_to_noop";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor___0.format = "Address = %p (0x%llx dma); in seg %p (0x%llx dma)\n";
    descriptor___0.lineno = 671U;
    descriptor___0.flags = 1U;
    tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      tmp___1 = xhci_trb_virt_to_dma(cur_seg, cur_trb);
      tmp___2 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___2->self.controller,
                        "Address = %p (0x%llx dma); in seg %p (0x%llx dma)\n", cur_trb,
                        tmp___1, cur_seg, cur_seg->dma);
    } else {
    }
  } else {
    cur_trb->generic.field[0] = 0U;
    cur_trb->generic.field[1] = 0U;
    cur_trb->generic.field[2] = 0U;
    cur_trb->generic.field[3] = cur_trb->generic.field[3] & 1U;
    if (((int )flip_cycle && (unsigned long )cur_td->first_trb != (unsigned long )cur_trb) && (unsigned long )cur_td->last_trb != (unsigned long )cur_trb) {
      cur_trb->generic.field[3] = cur_trb->generic.field[3] ^ 1U;
    } else {
    }
    cur_trb->generic.field[3] = cur_trb->generic.field[3] | 8192U;
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "td_to_noop";
    descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor___1.format = "TRB to noop at offset 0x%llx\n";
    descriptor___1.lineno = 687U;
    descriptor___1.flags = 1U;
    tmp___6 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___6 != 0L) {
      tmp___4 = xhci_trb_virt_to_dma(cur_seg, cur_trb);
      tmp___5 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___5->self.controller,
                        "TRB to noop at offset 0x%llx\n", tmp___4);
    } else {
    }
  }
  if ((unsigned long )cur_td->last_trb == (unsigned long )cur_trb) {
    goto ldv_28098;
  } else {
  }
  next_trb(xhci, ep_ring, & cur_seg, & cur_trb);
  goto ldv_28099;
  ldv_28098: ;
  return;
}
}
static int queue_set_tr_deq(struct xhci_hcd *xhci , int slot_id , unsigned int ep_index ,
                            unsigned int stream_id , struct xhci_segment *deq_seg ,
                            union xhci_trb *deq_ptr , u32 cycle_state ) ;
void xhci_queue_new_dequeue_state(struct xhci_hcd *xhci , unsigned int slot_id , unsigned int ep_index ,
                                  unsigned int stream_id , struct xhci_dequeue_state *deq_state )
{
  struct xhci_virt_ep *ep ;
  struct _ddebug descriptor ;
  dma_addr_t tmp ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  {
  ep = (struct xhci_virt_ep *)(& (xhci->devs[slot_id])->eps) + (unsigned long )ep_index;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_queue_new_dequeue_state";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor.format = "Set TR Deq Ptr cmd, new deq seg = %p (0x%llx dma), new deq ptr = %p (0x%llx dma), new cycle = %u\n";
  descriptor.lineno = 712U;
  descriptor.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp = xhci_trb_virt_to_dma(deq_state->new_deq_seg, deq_state->new_deq_ptr);
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "Set TR Deq Ptr cmd, new deq seg = %p (0x%llx dma), new deq ptr = %p (0x%llx dma), new cycle = %u\n",
                      deq_state->new_deq_seg, (deq_state->new_deq_seg)->dma, deq_state->new_deq_ptr,
                      tmp, deq_state->new_cycle_state);
  } else {
  }
  queue_set_tr_deq(xhci, (int )slot_id, ep_index, stream_id, deq_state->new_deq_seg,
                   deq_state->new_deq_ptr, (unsigned int )deq_state->new_cycle_state);
  ep->ep_state = ep->ep_state | 1U;
  return;
}
}
static void xhci_stop_watchdog_timer_in_irq(struct xhci_hcd *xhci , struct xhci_virt_ep *ep )
{
  int tmp ;
  {
  ep->ep_state = ep->ep_state & 4294967291U;
  tmp = del_timer(& ep->stop_cmd_timer);
  if (tmp != 0) {
    ep->stop_cmds_pending = ep->stop_cmds_pending - 1;
  } else {
  }
  return;
}
}
static void xhci_giveback_urb_in_irq(struct xhci_hcd *xhci , struct xhci_td *cur_td ,
                                     int status , char *adjective )
{
  struct usb_hcd *hcd ;
  struct urb *urb ;
  struct urb_priv *urb_priv ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  {
  urb = cur_td->urb;
  urb_priv = (struct urb_priv *)urb->hcpriv;
  urb_priv->td_cnt = urb_priv->td_cnt + 1;
  hcd = bus_to_hcd((urb->dev)->bus);
  if (urb_priv->td_cnt == urb_priv->length) {
    if (urb->pipe >> 30 == 0U) {
      tmp = xhci_to_hcd(xhci);
      tmp->self.bandwidth_isoc_reqs = tmp->self.bandwidth_isoc_reqs - 1;
      tmp___0 = xhci_to_hcd(xhci);
      if (tmp___0->self.bandwidth_isoc_reqs == 0) {
        if ((xhci->quirks & 8U) != 0U) {
          usb_amd_quirk_pll_enable();
        } else {
        }
      } else {
      }
    } else {
    }
    usb_hcd_unlink_urb_from_ep(hcd, urb);
    spin_unlock(& xhci->lock);
    usb_hcd_giveback_urb(hcd, urb, status);
    xhci_urb_free_priv(xhci, urb_priv);
    spin_lock(& xhci->lock);
  } else {
  }
  return;
}
}
static void handle_stopped_endpoint(struct xhci_hcd *xhci , union xhci_trb *trb ,
                                    struct xhci_event_cmd *event )
{
  unsigned int slot_id ;
  unsigned int ep_index ;
  struct xhci_virt_device *virt_dev ;
  struct xhci_ring *ep_ring ;
  struct xhci_virt_ep *ep ;
  struct list_head *entry ;
  struct xhci_td *cur_td ;
  struct xhci_td *last_unlinked_td ;
  struct xhci_dequeue_state deq_state ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  struct list_head const *__mptr ;
  struct _ddebug descriptor ;
  dma_addr_t tmp___2 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct usb_hcd *tmp___5 ;
  struct list_head const *__mptr___0 ;
  {
  cur_td = 0;
  tmp___0 = ldv__builtin_expect((((xhci->cmd_ring)->dequeue)->generic.field[3] & 8388608U) >> 23 != 0U,
                             0L);
  if (tmp___0 != 0L) {
    slot_id = ((xhci->cmd_ring)->dequeue)->generic.field[3] >> 24;
    virt_dev = xhci->devs[slot_id];
    if ((unsigned long )virt_dev != (unsigned long )((struct xhci_virt_device *)0)) {
      handle_cmd_in_cmd_wait_list(xhci, virt_dev, event);
    } else {
      tmp = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp->self.controller, "Stop endpoint command completion for disabled slot %u\n",
               slot_id);
    }
    return;
  } else {
  }
  memset((void *)(& deq_state), 0, 24UL);
  slot_id = trb->generic.field[3] >> 24;
  ep_index = ((trb->generic.field[3] & 2031616U) >> 16) - 1U;
  ep = (struct xhci_virt_ep *)(& (xhci->devs[slot_id])->eps) + (unsigned long )ep_index;
  tmp___1 = list_empty((struct list_head const *)(& ep->cancelled_td_list));
  if (tmp___1 != 0) {
    xhci_stop_watchdog_timer_in_irq(xhci, ep);
    ep->stopped_td = 0;
    ep->stopped_trb = 0;
    ring_doorbell_for_active_rings(xhci, slot_id, ep_index);
    return;
  } else {
  }
  entry = ep->cancelled_td_list.next;
  goto ldv_28151;
  ldv_28150:
  __mptr = (struct list_head const *)entry;
  cur_td = (struct xhci_td *)__mptr + 0xfffffffffffffff0UL;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "handle_stopped_endpoint";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor.format = "Removing canceled TD starting at 0x%llx (dma).\n";
  descriptor.lineno = 829U;
  descriptor.flags = 1U;
  tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___2 = xhci_trb_virt_to_dma(cur_td->start_seg, cur_td->first_trb);
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___3->self.controller,
                      "Removing canceled TD starting at 0x%llx (dma).\n", tmp___2);
  } else {
  }
  ep_ring = xhci_urb_to_transfer_ring___0(xhci, cur_td->urb);
  if ((unsigned long )ep_ring == (unsigned long )((struct xhci_ring *)0)) {
    tmp___5 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___5->self.controller, "WARN Cancelled URB %p has invalid stream ID %u.\n",
             cur_td->urb, (cur_td->urb)->stream_id);
    goto remove_finished_td;
  } else {
  }
  if ((unsigned long )ep->stopped_td == (unsigned long )cur_td) {
    xhci_find_new_dequeue_state(xhci, slot_id, ep_index, (cur_td->urb)->stream_id,
                                cur_td, & deq_state);
  } else {
    td_to_noop(xhci, ep_ring, cur_td, 0);
  }
  remove_finished_td:
  list_del_init(& cur_td->td_list);
  entry = entry->next;
  ldv_28151: ;
  if ((unsigned long )(& ep->cancelled_td_list) != (unsigned long )entry) {
    goto ldv_28150;
  } else {
  }
  last_unlinked_td = cur_td;
  xhci_stop_watchdog_timer_in_irq(xhci, ep);
  if ((unsigned long )deq_state.new_deq_ptr != (unsigned long )((union xhci_trb *)0) && (unsigned long )deq_state.new_deq_seg != (unsigned long )((struct xhci_segment *)0)) {
    xhci_queue_new_dequeue_state(xhci, slot_id, ep_index, ((ep->stopped_td)->urb)->stream_id,
                                 & deq_state);
    xhci_ring_cmd_db(xhci);
  } else {
    ring_doorbell_for_active_rings(xhci, slot_id, ep_index);
  }
  ep->stopped_td = 0;
  ep->stopped_trb = 0;
  ldv_28155:
  __mptr___0 = (struct list_head const *)ep->cancelled_td_list.next;
  cur_td = (struct xhci_td *)__mptr___0 + 0xfffffffffffffff0UL;
  list_del_init(& cur_td->cancelled_td_list);
  xhci_giveback_urb_in_irq(xhci, cur_td, 0, (char *)"cancelled");
  if ((int )xhci->xhc_state & 1) {
    return;
  } else {
  }
  if ((unsigned long )cur_td != (unsigned long )last_unlinked_td) {
    goto ldv_28155;
  } else {
  }
  return;
}
}
void xhci_stop_endpoint_command_watchdog(unsigned long arg )
{
  struct xhci_hcd *xhci ;
  struct xhci_virt_ep *ep ;
  struct xhci_virt_ep *temp_ep ;
  struct xhci_ring *ring ;
  struct xhci_td *cur_td ;
  int ret ;
  int i ;
  int j ;
  unsigned long flags ;
  raw_spinlock_t *tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  struct usb_hcd *tmp___4 ;
  struct usb_hcd *tmp___5 ;
  raw_spinlock_t *tmp___6 ;
  struct usb_hcd *tmp___7 ;
  struct usb_hcd *tmp___8 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  struct list_head const *__mptr ;
  int tmp___11 ;
  int tmp___12 ;
  struct list_head const *__mptr___0 ;
  int tmp___13 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___14 ;
  long tmp___15 ;
  struct usb_hcd *tmp___16 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___17 ;
  long tmp___18 ;
  {
  ep = (struct xhci_virt_ep *)arg;
  xhci = ep->xhci;
  tmp = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp);
  ep->stop_cmds_pending = ep->stop_cmds_pending - 1;
  if ((int )xhci->xhc_state & 1) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_stop_endpoint_command_watchdog";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor.format = "Stop EP timer ran, but another timer marked xHCI as DYING, exiting.\n";
    descriptor.lineno = 948U;
    descriptor.flags = 1U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                        "Stop EP timer ran, but another timer marked xHCI as DYING, exiting.\n");
    } else {
    }
    spin_unlock_irqrestore(& xhci->lock, flags);
    return;
  } else {
  }
  if (ep->stop_cmds_pending != 0 || (ep->ep_state & 4U) == 0U) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_stop_endpoint_command_watchdog";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor___0.format = "Stop EP timer ran, but no command pending, exiting.\n";
    descriptor___0.lineno = 954U;
    descriptor___0.flags = 1U;
    tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      tmp___2 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___2->self.controller,
                        "Stop EP timer ran, but no command pending, exiting.\n");
    } else {
    }
    spin_unlock_irqrestore(& xhci->lock, flags);
    return;
  } else {
  }
  tmp___4 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___4->self.controller, "xHCI host not responding to stop endpoint command.\n");
  tmp___5 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___5->self.controller, "Assuming host is dying, halting host.\n");
  xhci->xhc_state = xhci->xhc_state | 1U;
  xhci_quiesce(xhci);
  spin_unlock_irqrestore(& xhci->lock, flags);
  ret = xhci_halt(xhci);
  tmp___6 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___6);
  if (ret < 0) {
    tmp___7 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___7->self.controller, "Non-responsive xHCI host is not halting.\n");
    tmp___8 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___8->self.controller, "Completing active URBs anyway.\n");
  } else {
  }
  i = 0;
  goto ldv_28195;
  ldv_28194: ;
  if ((unsigned long )xhci->devs[i] == (unsigned long )((struct xhci_virt_device *)0)) {
    goto ldv_28178;
  } else {
  }
  j = 0;
  goto ldv_28192;
  ldv_28191:
  temp_ep = (struct xhci_virt_ep *)(& (xhci->devs[i])->eps) + (unsigned long )j;
  ring = temp_ep->ring;
  if ((unsigned long )ring == (unsigned long )((struct xhci_ring *)0)) {
    goto ldv_28179;
  } else {
  }
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_stop_endpoint_command_watchdog";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor___1.format = "Killing URBs for slot ID %u, ep index %u\n";
  descriptor___1.lineno = 997U;
  descriptor___1.flags = 1U;
  tmp___10 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    tmp___9 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___9->self.controller,
                      "Killing URBs for slot ID %u, ep index %u\n", i, j);
  } else {
  }
  goto ldv_28184;
  ldv_28183:
  __mptr = (struct list_head const *)ring->td_list.next;
  cur_td = (struct xhci_td *)__mptr;
  list_del_init(& cur_td->td_list);
  tmp___11 = list_empty((struct list_head const *)(& cur_td->cancelled_td_list));
  if (tmp___11 == 0) {
    list_del_init(& cur_td->cancelled_td_list);
  } else {
  }
  xhci_giveback_urb_in_irq(xhci, cur_td, -108, (char *)"killed");
  ldv_28184:
  tmp___12 = list_empty((struct list_head const *)(& ring->td_list));
  if (tmp___12 == 0) {
    goto ldv_28183;
  } else {
  }
  goto ldv_28189;
  ldv_28188:
  __mptr___0 = (struct list_head const *)temp_ep->cancelled_td_list.next;
  cur_td = (struct xhci_td *)__mptr___0 + 0xfffffffffffffff0UL;
  list_del_init(& cur_td->cancelled_td_list);
  xhci_giveback_urb_in_irq(xhci, cur_td, -108, (char *)"killed");
  ldv_28189:
  tmp___13 = list_empty((struct list_head const *)(& temp_ep->cancelled_td_list));
  if (tmp___13 == 0) {
    goto ldv_28188;
  } else {
  }
  ldv_28179:
  j = j + 1;
  ldv_28192: ;
  if (j <= 30) {
    goto ldv_28191;
  } else {
  }
  ldv_28178:
  i = i + 1;
  ldv_28195: ;
  if (i <= 255) {
    goto ldv_28194;
  } else {
  }
  spin_unlock_irqrestore(& xhci->lock, flags);
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_stop_endpoint_command_watchdog";
  descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor___2.format = "Calling usb_hc_died()\n";
  descriptor___2.lineno = 1020U;
  descriptor___2.flags = 1U;
  tmp___15 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___15 != 0L) {
    tmp___14 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___14->self.controller,
                      "Calling usb_hc_died()\n");
  } else {
  }
  tmp___16 = xhci_to_hcd(xhci);
  usb_hc_died(tmp___16->primary_hcd);
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_stop_endpoint_command_watchdog";
  descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor___3.format = "xHCI host controller is dead.\n";
  descriptor___3.lineno = 1022U;
  descriptor___3.flags = 1U;
  tmp___18 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___18 != 0L) {
    tmp___17 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___17->self.controller,
                      "xHCI host controller is dead.\n");
  } else {
  }
  return;
}
}
static void update_ring_for_set_deq_completion(struct xhci_hcd *xhci , struct xhci_virt_device *dev ,
                                               struct xhci_ring *ep_ring , unsigned int ep_index )
{
  union xhci_trb *dequeue_temp ;
  int num_trbs_free_temp ;
  bool revert ;
  int tmp ;
  int tmp___0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  {
  revert = 0;
  num_trbs_free_temp = (int )ep_ring->num_trbs_free;
  dequeue_temp = ep_ring->dequeue;
  tmp = last_trb(xhci, ep_ring, ep_ring->deq_seg, ep_ring->dequeue);
  if (tmp != 0) {
    ep_ring->deq_seg = (ep_ring->deq_seg)->next;
    ep_ring->dequeue = (ep_ring->deq_seg)->trbs;
  } else {
  }
  goto ldv_28210;
  ldv_28209:
  ep_ring->num_trbs_free = ep_ring->num_trbs_free + 1U;
  ep_ring->dequeue = ep_ring->dequeue + 1;
  tmp___0 = last_trb(xhci, ep_ring, ep_ring->deq_seg, ep_ring->dequeue);
  if (tmp___0 != 0) {
    if ((unsigned long )ep_ring->dequeue == (unsigned long )dev->eps[ep_index].queued_deq_ptr) {
      goto ldv_28208;
    } else {
    }
    ep_ring->deq_seg = (ep_ring->deq_seg)->next;
    ep_ring->dequeue = (ep_ring->deq_seg)->trbs;
  } else {
  }
  if ((unsigned long )ep_ring->dequeue == (unsigned long )dequeue_temp) {
    revert = 1;
    goto ldv_28208;
  } else {
  }
  ldv_28210: ;
  if ((unsigned long )ep_ring->dequeue != (unsigned long )dev->eps[ep_index].queued_deq_ptr) {
    goto ldv_28209;
  } else {
  }
  ldv_28208: ;
  if ((int )revert) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "update_ring_for_set_deq_completion";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor.format = "Unable to find new dequeue pointer\n";
    descriptor.lineno = 1068U;
    descriptor.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                        "Unable to find new dequeue pointer\n");
    } else {
    }
    ep_ring->num_trbs_free = (unsigned int )num_trbs_free_temp;
  } else {
  }
  return;
}
}
static void handle_set_deq_completion(struct xhci_hcd *xhci , struct xhci_event_cmd *event ,
                                      union xhci_trb *trb )
{
  unsigned int slot_id ;
  unsigned int ep_index ;
  unsigned int stream_id ;
  struct xhci_ring *ep_ring ;
  struct xhci_virt_device *dev ;
  struct xhci_ep_ctx *ep_ctx ;
  struct xhci_slot_ctx *slot_ctx ;
  struct usb_hcd *tmp ;
  unsigned int ep_state ;
  unsigned int slot_state ;
  struct usb_hcd *tmp___0 ;
  struct usb_hcd *tmp___1 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  struct usb_hcd *tmp___4 ;
  struct usb_hcd *tmp___5 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  struct usb_hcd *tmp___8 ;
  struct usb_hcd *tmp___9 ;
  dma_addr_t tmp___10 ;
  {
  slot_id = trb->generic.field[3] >> 24;
  ep_index = ((trb->generic.field[3] & 2031616U) >> 16) - 1U;
  stream_id = trb->generic.field[2] >> 16;
  dev = xhci->devs[slot_id];
  ep_ring = xhci_stream_id_to_ring(dev, ep_index, stream_id);
  if ((unsigned long )ep_ring == (unsigned long )((struct xhci_ring *)0)) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "WARN Set TR deq ptr command for freed stream ID %u\n",
             stream_id);
    dev->eps[ep_index].ep_state = dev->eps[ep_index].ep_state & 4294967294U;
    return;
  } else {
  }
  ep_ctx = xhci_get_ep_ctx(xhci, dev->out_ctx, ep_index);
  slot_ctx = xhci_get_slot_ctx(xhci, dev->out_ctx);
  if (event->status >> 24 != 1U) {
    switch (event->status >> 24) {
    case 5U:
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "WARN Set TR Deq Ptr cmd invalid because of stream ID configuration\n");
    goto ldv_28228;
    case 19U:
    tmp___1 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___1->self.controller, "WARN Set TR Deq Ptr cmd failed due to incorrect slot or ep state.\n");
    ep_state = ep_ctx->ep_info;
    ep_state = ep_state & 15U;
    slot_state = slot_ctx->dev_state;
    slot_state = slot_state >> 27;
    descriptor.modname = "xhci_hcd";
    descriptor.function = "handle_set_deq_completion";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor.format = "Slot state = %u, EP state = %u\n";
    descriptor.lineno = 1127U;
    descriptor.flags = 1U;
    tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      tmp___2 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___2->self.controller,
                        "Slot state = %u, EP state = %u\n", slot_state, ep_state);
    } else {
    }
    goto ldv_28228;
    case 11U:
    tmp___4 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___4->self.controller, "WARN Set TR Deq Ptr cmd failed because slot %u was not enabled.\n",
             slot_id);
    goto ldv_28228;
    default:
    tmp___5 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___5->self.controller, "WARN Set TR Deq Ptr cmd with unknown completion code of %u.\n",
             event->status >> 24);
    goto ldv_28228;
    }
    ldv_28228: ;
  } else {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "handle_set_deq_completion";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor___0.format = "Successful Set TR Deq Ptr cmd, deq = @%08llx\n";
    descriptor___0.lineno = 1147U;
    descriptor___0.flags = 1U;
    tmp___7 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      tmp___6 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___6->self.controller,
                        "Successful Set TR Deq Ptr cmd, deq = @%08llx\n", ep_ctx->deq);
    } else {
    }
    tmp___10 = xhci_trb_virt_to_dma(dev->eps[ep_index].queued_deq_seg, dev->eps[ep_index].queued_deq_ptr);
    if (tmp___10 == (ep_ctx->deq & 0xfffffffffffffffeULL)) {
      update_ring_for_set_deq_completion(xhci, dev, ep_ring, ep_index);
    } else {
      tmp___8 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___8->self.controller, "Mismatch between completed Set TR Deq Ptr command & xHCI internal state.\n");
      tmp___9 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___9->self.controller, "ep deq seg = %p, deq ptr = %p\n",
               dev->eps[ep_index].queued_deq_seg, dev->eps[ep_index].queued_deq_ptr);
    }
  }
  dev->eps[ep_index].ep_state = dev->eps[ep_index].ep_state & 4294967294U;
  dev->eps[ep_index].queued_deq_seg = 0;
  dev->eps[ep_index].queued_deq_ptr = 0;
  ring_doorbell_for_active_rings(xhci, slot_id, ep_index);
  return;
}
}
static void handle_reset_ep_completion(struct xhci_hcd *xhci , struct xhci_event_cmd *event ,
                                       union xhci_trb *trb )
{
  int slot_id ;
  unsigned int ep_index ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  {
  slot_id = (int )(trb->generic.field[3] >> 24);
  ep_index = ((trb->generic.field[3] & 2031616U) >> 16) - 1U;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "handle_reset_ep_completion";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor.format = "Ignoring reset ep completion code of %u\n";
  descriptor.lineno = 1185U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "Ignoring reset ep completion code of %u\n", event->status >> 24);
  } else {
  }
  if ((xhci->quirks & 2U) != 0U) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "handle_reset_ep_completion";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor___0.format = "Queueing configure endpoint command\n";
    descriptor___0.lineno = 1192U;
    descriptor___0.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                        "Queueing configure endpoint command\n");
    } else {
    }
    xhci_queue_configure_endpoint(xhci, ((xhci->devs[slot_id])->in_ctx)->dma, (u32 )slot_id,
                                  0);
    xhci_ring_cmd_db(xhci);
  } else {
    (xhci->devs[slot_id])->eps[ep_index].ep_state = (xhci->devs[slot_id])->eps[ep_index].ep_state & 4294967293U;
    ring_doorbell_for_active_rings(xhci, (unsigned int )slot_id, ep_index);
  }
  return;
}
}
static void xhci_complete_cmd_in_cmd_wait_list(struct xhci_hcd *xhci , struct xhci_command *command ,
                                               u32 status )
{
  {
  command->status = status;
  list_del(& command->cmd_list);
  if ((unsigned long )command->completion != (unsigned long )((struct completion *)0)) {
    complete(command->completion);
  } else {
    xhci_free_command(xhci, command);
  }
  return;
}
}
static int handle_cmd_in_cmd_wait_list(struct xhci_hcd *xhci , struct xhci_virt_device *virt_dev ,
                                       struct xhci_event_cmd *event )
{
  struct xhci_command *command ;
  int tmp ;
  struct list_head const *__mptr ;
  {
  tmp = list_empty((struct list_head const *)(& virt_dev->cmd_list));
  if (tmp != 0) {
    return (0);
  } else {
  }
  __mptr = (struct list_head const *)virt_dev->cmd_list.next;
  command = (struct xhci_command *)__mptr + 0xffffffffffffffe0UL;
  if ((unsigned long )(xhci->cmd_ring)->dequeue != (unsigned long )command->command_trb) {
    return (0);
  } else {
  }
  xhci_complete_cmd_in_cmd_wait_list(xhci, command, event->status >> 24);
  return (1);
}
}
static void xhci_cmd_to_noop(struct xhci_hcd *xhci , struct xhci_cd *cur_cd )
{
  struct xhci_segment *cur_seg ;
  union xhci_trb *cmd_trb ;
  u32 cycle_state ;
  dma_addr_t tmp ;
  struct usb_hcd *tmp___0 ;
  {
  if ((unsigned long )(xhci->cmd_ring)->dequeue == (unsigned long )(xhci->cmd_ring)->enqueue) {
    return;
  } else {
  }
  cur_seg = find_trb_seg((xhci->cmd_ring)->first_seg, (xhci->cmd_ring)->dequeue, (int *)(& cycle_state));
  if ((unsigned long )cur_seg == (unsigned long )((struct xhci_segment *)0)) {
    tmp = xhci_trb_virt_to_dma((xhci->cmd_ring)->deq_seg, (xhci->cmd_ring)->dequeue);
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "Command ring mismatch, dequeue = %p %llx (dma)\n",
             (xhci->cmd_ring)->dequeue, tmp);
    xhci_debug_ring(xhci, xhci->cmd_ring);
    xhci_dbg_ring_ptrs(xhci, xhci->cmd_ring);
    return;
  } else {
  }
  cmd_trb = (xhci->cmd_ring)->dequeue;
  goto ldv_28268;
  ldv_28267: ;
  if ((cmd_trb->generic.field[3] & 64512U) == 6144U) {
    goto ldv_28265;
  } else {
  }
  if ((unsigned long )cur_cd->cmd_trb == (unsigned long )cmd_trb) {
    if ((unsigned long )cur_cd->command != (unsigned long )((struct xhci_command *)0)) {
      xhci_complete_cmd_in_cmd_wait_list(xhci, cur_cd->command, 24U);
    } else {
    }
    cycle_state = cmd_trb->generic.field[3] & 1U;
    cmd_trb->generic.field[0] = 0U;
    cmd_trb->generic.field[1] = 0U;
    cmd_trb->generic.field[2] = 0U;
    cmd_trb->generic.field[3] = cycle_state | 23552U;
    goto ldv_28266;
  } else {
  }
  ldv_28265:
  next_trb(xhci, xhci->cmd_ring, & cur_seg, & cmd_trb);
  ldv_28268: ;
  if ((unsigned long )(xhci->cmd_ring)->enqueue != (unsigned long )cmd_trb) {
    goto ldv_28267;
  } else {
  }
  ldv_28266: ;
  return;
}
}
static void xhci_cancel_cmd_in_cd_list(struct xhci_hcd *xhci )
{
  struct xhci_cd *cur_cd ;
  struct xhci_cd *next_cd ;
  int tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  tmp = list_empty((struct list_head const *)(& xhci->cancel_cmd_list));
  if (tmp != 0) {
    return;
  } else {
  }
  __mptr = (struct list_head const *)xhci->cancel_cmd_list.next;
  cur_cd = (struct xhci_cd *)__mptr;
  __mptr___0 = (struct list_head const *)cur_cd->cancel_cmd_list.next;
  next_cd = (struct xhci_cd *)__mptr___0;
  goto ldv_28281;
  ldv_28280:
  xhci_cmd_to_noop(xhci, cur_cd);
  list_del(& cur_cd->cancel_cmd_list);
  kfree((void const *)cur_cd);
  cur_cd = next_cd;
  __mptr___1 = (struct list_head const *)next_cd->cancel_cmd_list.next;
  next_cd = (struct xhci_cd *)__mptr___1;
  ldv_28281: ;
  if ((unsigned long )(& cur_cd->cancel_cmd_list) != (unsigned long )(& xhci->cancel_cmd_list)) {
    goto ldv_28280;
  } else {
  }
  return;
}
}
static int xhci_search_cmd_trb_in_cd_list(struct xhci_hcd *xhci , union xhci_trb *cmd_trb )
{
  struct xhci_cd *cur_cd ;
  struct xhci_cd *next_cd ;
  int tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  tmp = list_empty((struct list_head const *)(& xhci->cancel_cmd_list));
  if (tmp != 0) {
    return (0);
  } else {
  }
  __mptr = (struct list_head const *)xhci->cancel_cmd_list.next;
  cur_cd = (struct xhci_cd *)__mptr;
  __mptr___0 = (struct list_head const *)cur_cd->cancel_cmd_list.next;
  next_cd = (struct xhci_cd *)__mptr___0;
  goto ldv_28296;
  ldv_28295: ;
  if ((unsigned long )cur_cd->cmd_trb == (unsigned long )cmd_trb) {
    if ((unsigned long )cur_cd->command != (unsigned long )((struct xhci_command *)0)) {
      xhci_complete_cmd_in_cmd_wait_list(xhci, cur_cd->command, 24U);
    } else {
    }
    list_del(& cur_cd->cancel_cmd_list);
    kfree((void const *)cur_cd);
    return (1);
  } else {
  }
  cur_cd = next_cd;
  __mptr___1 = (struct list_head const *)next_cd->cancel_cmd_list.next;
  next_cd = (struct xhci_cd *)__mptr___1;
  ldv_28296: ;
  if ((unsigned long )(& cur_cd->cancel_cmd_list) != (unsigned long )(& xhci->cancel_cmd_list)) {
    goto ldv_28295;
  } else {
  }
  return (0);
}
}
static int handle_stopped_cmd_ring(struct xhci_hcd *xhci , int cmd_trb_comp_code )
{
  int cur_trb_is_good ;
  {
  cur_trb_is_good = 0;
  cur_trb_is_good = xhci_search_cmd_trb_in_cd_list(xhci, (xhci->cmd_ring)->dequeue);
  if (cmd_trb_comp_code == 25) {
    xhci->cmd_ring_state = 4U;
  } else
  if (cmd_trb_comp_code == 24) {
    xhci_cancel_cmd_in_cd_list(xhci);
    xhci->cmd_ring_state = 1U;
    if ((unsigned long )(xhci->cmd_ring)->dequeue != (unsigned long )(xhci->cmd_ring)->enqueue) {
      xhci_ring_cmd_db(xhci);
    } else {
    }
  } else {
  }
  return (cur_trb_is_good);
}
}
static void handle_cmd_completion(struct xhci_hcd *xhci , struct xhci_event_cmd *event )
{
  int slot_id ;
  u64 cmd_dma ;
  dma_addr_t cmd_dequeue_dma ;
  struct xhci_input_control_ctx *ctrl_ctx ;
  struct xhci_virt_device *virt_dev ;
  unsigned int ep_index ;
  struct xhci_ring *ep_ring ;
  unsigned int ep_state ;
  int tmp ;
  int tmp___0 ;
  unsigned int tmp___1 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  int tmp___6 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  struct usb_hcd *tmp___9 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___10 ;
  long tmp___11 ;
  {
  slot_id = (int )(event->flags >> 24);
  cmd_dma = event->cmd_trb;
  cmd_dequeue_dma = xhci_trb_virt_to_dma((xhci->cmd_ring)->deq_seg, (xhci->cmd_ring)->dequeue);
  if (cmd_dequeue_dma == 0ULL) {
    xhci->error_bitmask = xhci->error_bitmask | 16;
    return;
  } else {
  }
  if (cmd_dma != cmd_dequeue_dma) {
    xhci->error_bitmask = xhci->error_bitmask | 32;
    return;
  } else {
  }
  if (event->status >> 24 == 25U || event->status >> 24 == 24U) {
    tmp = handle_stopped_cmd_ring(xhci, (int )(event->status >> 24));
    if (tmp != 0) {
      inc_deq(xhci, xhci->cmd_ring);
      return;
    } else {
    }
  } else {
  }
  switch (((xhci->cmd_ring)->dequeue)->generic.field[3] & 64512U) {
  case 9216U: ;
  if (event->status >> 24 == 1U) {
    xhci->slot_id = slot_id;
  } else {
    xhci->slot_id = 0;
  }
  complete(& xhci->addr_dev);
  goto ldv_28316;
  case 10240U: ;
  if ((unsigned long )xhci->devs[slot_id] != (unsigned long )((struct xhci_virt_device *)0)) {
    if ((xhci->quirks & 32U) != 0U) {
      xhci_free_device_endpoint_resources(xhci, xhci->devs[slot_id], 1);
    } else {
    }
    xhci_free_virt_device(xhci, slot_id);
  } else {
  }
  goto ldv_28316;
  case 12288U:
  virt_dev = xhci->devs[slot_id];
  tmp___0 = handle_cmd_in_cmd_wait_list(xhci, virt_dev, event);
  if (tmp___0 != 0) {
    goto ldv_28316;
  } else {
  }
  ctrl_ctx = xhci_get_input_control_ctx(xhci, virt_dev->in_ctx);
  tmp___1 = xhci_last_valid_endpoint(ctrl_ctx->add_flags);
  ep_index = tmp___1 - 1U;
  if (((xhci->quirks & 2U) != 0U && ep_index != 4294967295U) && ctrl_ctx->add_flags - 1U == ctrl_ctx->drop_flags) {
    ep_ring = (xhci->devs[slot_id])->eps[ep_index].ring;
    ep_state = (xhci->devs[slot_id])->eps[ep_index].ep_state;
    if ((ep_state & 2U) == 0U) {
      goto bandwidth_change;
    } else {
    }
    descriptor.modname = "xhci_hcd";
    descriptor.function = "handle_cmd_completion";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor.format = "Completed config ep cmd - last ep index = %d, state = %d\n";
    descriptor.lineno = 1476U;
    descriptor.flags = 1U;
    tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      tmp___2 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___2->self.controller,
                        "Completed config ep cmd - last ep index = %d, state = %d\n",
                        ep_index, ep_state);
    } else {
    }
    (xhci->devs[slot_id])->eps[ep_index].ep_state = (xhci->devs[slot_id])->eps[ep_index].ep_state & 4294967293U;
    ring_doorbell_for_active_rings(xhci, (unsigned int )slot_id, ep_index);
    goto ldv_28316;
  } else {
  }
  bandwidth_change:
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "handle_cmd_completion";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor___0.format = "Completed config ep cmd\n";
  descriptor___0.lineno = 1484U;
  descriptor___0.flags = 1U;
  tmp___5 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    tmp___4 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___4->self.controller,
                      "Completed config ep cmd\n");
  } else {
  }
  (xhci->devs[slot_id])->cmd_status = event->status >> 24;
  complete(& (xhci->devs[slot_id])->cmd_completion);
  goto ldv_28316;
  case 13312U:
  virt_dev = xhci->devs[slot_id];
  tmp___6 = handle_cmd_in_cmd_wait_list(xhci, virt_dev, event);
  if (tmp___6 != 0) {
    goto ldv_28316;
  } else {
  }
  (xhci->devs[slot_id])->cmd_status = event->status >> 24;
  complete(& (xhci->devs[slot_id])->cmd_completion);
  goto ldv_28316;
  case 11264U:
  (xhci->devs[slot_id])->cmd_status = event->status >> 24;
  complete(& xhci->addr_dev);
  goto ldv_28316;
  case 15360U:
  handle_stopped_endpoint(xhci, (xhci->cmd_ring)->dequeue, event);
  goto ldv_28316;
  case 16384U:
  handle_set_deq_completion(xhci, event, (xhci->cmd_ring)->dequeue);
  goto ldv_28316;
  case 23552U: ;
  goto ldv_28316;
  case 14336U:
  handle_reset_ep_completion(xhci, event, (xhci->cmd_ring)->dequeue);
  goto ldv_28316;
  case 17408U:
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "handle_cmd_completion";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor___1.format = "Completed reset device command.\n";
  descriptor___1.lineno = 1512U;
  descriptor___1.flags = 1U;
  tmp___8 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    tmp___7 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___7->self.controller,
                      "Completed reset device command.\n");
  } else {
  }
  slot_id = (int )(((xhci->cmd_ring)->dequeue)->generic.field[3] >> 24);
  virt_dev = xhci->devs[slot_id];
  if ((unsigned long )virt_dev != (unsigned long )((struct xhci_virt_device *)0)) {
    handle_cmd_in_cmd_wait_list(xhci, virt_dev, event);
  } else {
    tmp___9 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___9->self.controller, "Reset device command completion for disabled slot %u\n",
             slot_id);
  }
  goto ldv_28316;
  case 50176U: ;
  if ((xhci->quirks & 4U) == 0U) {
    xhci->error_bitmask = xhci->error_bitmask | 64;
    goto ldv_28316;
  } else {
  }
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "handle_cmd_completion";
  descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor___2.format = "NEC firmware version %2x.%02x\n";
  descriptor___2.lineno = 1529U;
  descriptor___2.flags = 1U;
  tmp___11 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___11 != 0L) {
    tmp___10 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___10->self.controller,
                      "NEC firmware version %2x.%02x\n", (event->status >> 8) & 255U,
                      event->status & 255U);
  } else {
  }
  goto ldv_28316;
  default:
  xhci->error_bitmask = xhci->error_bitmask | 64;
  goto ldv_28316;
  }
  ldv_28316:
  inc_deq(xhci, xhci->cmd_ring);
  return;
}
}
static void handle_vendor_event(struct xhci_hcd *xhci , union xhci_trb *event )
{
  u32 trb_type ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  trb_type = (event->generic.field[3] & 64512U) >> 10;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "handle_vendor_event";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor.format = "Vendor specific event TRB type = %u\n";
  descriptor.lineno = 1545U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "Vendor specific event TRB type = %u\n", trb_type);
  } else {
  }
  if (trb_type == 48U && (xhci->quirks & 4U) != 0U) {
    handle_cmd_completion(xhci, & event->event_cmd);
  } else {
  }
  return;
}
}
static unsigned int find_faked_portnum_from_hw_portnum(struct usb_hcd *hcd , struct xhci_hcd *xhci ,
                                                       u32 port_id )
{
  unsigned int i ;
  unsigned int num_similar_speed_ports ;
  u8 port_speed ;
  {
  num_similar_speed_ports = 0U;
  i = 0U;
  goto ldv_28351;
  ldv_28350:
  port_speed = *(xhci->port_array + (unsigned long )i);
  if ((unsigned int )port_speed == 0U || (unsigned int )port_speed == 255U) {
    goto ldv_28349;
  } else {
  }
  if (((unsigned int )port_speed != 3U) ^ (hcd->speed == 64)) {
    num_similar_speed_ports = num_similar_speed_ports + 1U;
  } else {
  }
  ldv_28349:
  i = i + 1U;
  ldv_28351: ;
  if (port_id - 1U > i) {
    goto ldv_28350;
  } else {
  }
  return (num_similar_speed_ports);
}
}
static void handle_device_notification(struct xhci_hcd *xhci , union xhci_trb *event )
{
  u32 slot_id ;
  struct usb_device *udev ;
  struct usb_hcd *tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  {
  slot_id = event->generic.field[3] >> 24;
  if ((unsigned long )xhci->devs[slot_id] == (unsigned long )((struct xhci_virt_device *)0)) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "Device Notification event for unused slot %u\n",
             slot_id);
    return;
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "handle_device_notification";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor.format = "Device Wake Notification event for slot ID %u\n";
  descriptor.lineno = 1602U;
  descriptor.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "Device Wake Notification event for slot ID %u\n", slot_id);
  } else {
  }
  udev = (xhci->devs[slot_id])->udev;
  if ((unsigned long )udev != (unsigned long )((struct usb_device *)0) && (unsigned long )udev->parent != (unsigned long )((struct usb_device *)0)) {
    usb_wakeup_notification(udev->parent, (unsigned int )udev->portnum);
  } else {
  }
  return;
}
}
static void handle_port_status(struct xhci_hcd *xhci , union xhci_trb *event )
{
  struct usb_hcd *hcd ;
  u32 port_id ;
  u32 temp ;
  u32 temp1 ;
  int max_ports ;
  int slot_id ;
  unsigned int faked_port_index ;
  u8 major_revision ;
  struct xhci_bus_state *bus_state ;
  __le32 **port_array ;
  bool bogus_port_status ;
  struct usb_hcd *tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct usb_hcd *tmp___2 ;
  struct usb_hcd *tmp___3 ;
  struct usb_hcd *tmp___4 ;
  unsigned int tmp___5 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___8 ;
  long tmp___9 ;
  struct usb_hcd *tmp___10 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___11 ;
  long tmp___12 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___13 ;
  long tmp___14 ;
  unsigned long tmp___15 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___16 ;
  long tmp___17 ;
  {
  bogus_port_status = 0;
  if (event->generic.field[2] >> 24 != 1U) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "WARN: xHC returned failed port status event\n");
    xhci->error_bitmask = xhci->error_bitmask | 256;
  } else {
  }
  port_id = event->generic.field[0] >> 24;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "handle_port_status";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor.format = "Port Status Change Event for port %d\n";
  descriptor.lineno = 1628U;
  descriptor.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "Port Status Change Event for port %d\n", port_id);
  } else {
  }
  max_ports = (int )(xhci->hcs_params1 >> 24) & 127;
  if (port_id == 0U || (u32 )max_ports < port_id) {
    tmp___2 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___2->self.controller, "Invalid port id %d\n",
             port_id);
    bogus_port_status = 1;
    goto cleanup;
  } else {
  }
  major_revision = *(xhci->port_array + (unsigned long )(port_id - 1U));
  if ((unsigned int )major_revision == 0U) {
    tmp___3 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___3->self.controller, "Event for port %u not in Extended Capabilities, ignoring.\n",
             port_id);
    bogus_port_status = 1;
    goto cleanup;
  } else {
  }
  if ((unsigned int )major_revision == 255U) {
    tmp___4 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___4->self.controller, "Event for port %u duplicated inExtended Capabilities, ignoring.\n",
             port_id);
    bogus_port_status = 1;
    goto cleanup;
  } else {
  }
  hcd = xhci_to_hcd(xhci);
  if (((unsigned int )major_revision == 3U) ^ (hcd->speed == 64)) {
    hcd = xhci->shared_hcd;
  } else {
  }
  tmp___5 = hcd_index(hcd);
  bus_state = (struct xhci_bus_state *)(& xhci->bus_state) + (unsigned long )tmp___5;
  if (hcd->speed == 64) {
    port_array = xhci->usb3_ports;
  } else {
    port_array = xhci->usb2_ports;
  }
  faked_port_index = find_faked_portnum_from_hw_portnum(hcd, xhci, port_id);
  temp = xhci_readl((struct xhci_hcd const *)xhci, *(port_array + (unsigned long )faked_port_index));
  if (hcd->state == 4) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "handle_port_status";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor___0.format = "resume root hub\n";
    descriptor___0.lineno = 1678U;
    descriptor___0.flags = 1U;
    tmp___7 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___7 != 0L) {
      tmp___6 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___6->self.controller,
                        "resume root hub\n");
    } else {
    }
    usb_hcd_resume_root_hub(hcd);
  } else {
  }
  if ((temp & 4194304U) != 0U && (temp & 480U) == 480U) {
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "handle_port_status";
    descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor___1.format = "port resume event for port %d\n";
    descriptor___1.lineno = 1683U;
    descriptor___1.flags = 1U;
    tmp___9 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___9 != 0L) {
      tmp___8 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___8->self.controller,
                        "port resume event for port %d\n", port_id);
    } else {
    }
    temp1 = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->command);
    if ((temp1 & 1U) == 0U) {
      tmp___10 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___10->self.controller, "xHC is not running.\n");
      goto cleanup;
    } else {
    }
    if ((temp & 15360U) == 4096U) {
      descriptor___2.modname = "xhci_hcd";
      descriptor___2.function = "handle_port_status";
      descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
      descriptor___2.format = "remote wake SS port %d\n";
      descriptor___2.lineno = 1692U;
      descriptor___2.flags = 1U;
      tmp___12 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      if (tmp___12 != 0L) {
        tmp___11 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___11->self.controller,
                          "remote wake SS port %d\n", port_id);
      } else {
      }
      bus_state->port_remote_wakeup = bus_state->port_remote_wakeup | (u32 )(1 << (int )faked_port_index);
      xhci_test_and_clear_bit(xhci, port_array, (int )faked_port_index, 4194304U);
      xhci_set_link_state(xhci, port_array, (int )faked_port_index, 0U);
      bogus_port_status = 1;
      goto cleanup;
    } else {
      descriptor___3.modname = "xhci_hcd";
      descriptor___3.function = "handle_port_status";
      descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
      descriptor___3.format = "resume HS port %d\n";
      descriptor___3.lineno = 1708U;
      descriptor___3.flags = 1U;
      tmp___14 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
      if (tmp___14 != 0L) {
        tmp___13 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___13->self.controller,
                          "resume HS port %d\n", port_id);
      } else {
      }
      tmp___15 = msecs_to_jiffies(20U);
      bus_state->resume_done[faked_port_index] = tmp___15 + (unsigned long )jiffies;
      set_bit(faked_port_index, (unsigned long volatile *)(& bus_state->resuming_ports));
      mod_timer(& hcd->rh_timer, bus_state->resume_done[faked_port_index]);
    }
  } else {
  }
  if (((temp & 4194304U) != 0U && (temp & 480U) == 0U) && (temp & 15360U) == 4096U) {
    descriptor___4.modname = "xhci_hcd";
    descriptor___4.function = "handle_port_status";
    descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor___4.format = "resume SS port %d finished\n";
    descriptor___4.lineno = 1720U;
    descriptor___4.flags = 1U;
    tmp___17 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
    if (tmp___17 != 0L) {
      tmp___16 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___16->self.controller,
                        "resume SS port %d finished\n", port_id);
    } else {
    }
    slot_id = xhci_find_slot_id_by_port(hcd, xhci, (int )((unsigned int )((u16 )faked_port_index) + 1U));
    if (slot_id != 0 && (unsigned long )xhci->devs[slot_id] != (unsigned long )((struct xhci_virt_device *)0)) {
      xhci_ring_device(xhci, slot_id);
    } else {
    }
    if (bus_state->port_remote_wakeup != 0U && 1 << (int )faked_port_index != 0) {
      bus_state->port_remote_wakeup = bus_state->port_remote_wakeup & (u32 )(~ (1 << (int )faked_port_index));
      xhci_test_and_clear_bit(xhci, port_array, (int )faked_port_index, 4194304U);
      usb_wakeup_notification(hcd->self.root_hub, faked_port_index + 1U);
      bogus_port_status = 1;
      goto cleanup;
    } else {
    }
  } else {
  }
  if (hcd->speed != 64) {
    xhci_test_and_clear_bit(xhci, port_array, (int )faked_port_index, 4194304U);
  } else {
  }
  cleanup:
  inc_deq(xhci, xhci->event_ring);
  if ((int )bogus_port_status) {
    return;
  } else {
  }
  spin_unlock(& xhci->lock);
  usb_hcd_poll_rh_status(hcd);
  spin_lock(& xhci->lock);
  return;
}
}
struct xhci_segment *trb_in_td(struct xhci_segment *start_seg , union xhci_trb *start_trb ,
                               union xhci_trb *end_trb , dma_addr_t suspect_dma )
{
  dma_addr_t start_dma ;
  dma_addr_t end_seg_dma ;
  dma_addr_t end_trb_dma ;
  struct xhci_segment *cur_seg ;
  {
  start_dma = xhci_trb_virt_to_dma(start_seg, start_trb);
  cur_seg = start_seg;
  ldv_28394: ;
  if (start_dma == 0ULL) {
    return (0);
  } else {
  }
  end_seg_dma = xhci_trb_virt_to_dma(cur_seg, cur_seg->trbs + 63UL);
  end_trb_dma = xhci_trb_virt_to_dma(cur_seg, end_trb);
  if (end_trb_dma != 0ULL) {
    if (start_dma <= end_trb_dma) {
      if (suspect_dma >= start_dma && suspect_dma <= end_trb_dma) {
        return (cur_seg);
      } else
      if ((suspect_dma >= start_dma && suspect_dma <= end_seg_dma) || (cur_seg->dma <= suspect_dma && suspect_dma <= end_trb_dma)) {
        return (cur_seg);
      } else {
      }
    } else {
    }
    return (0);
  } else
  if (suspect_dma >= start_dma && suspect_dma <= end_seg_dma) {
    return (cur_seg);
  } else {
  }
  cur_seg = cur_seg->next;
  start_dma = xhci_trb_virt_to_dma(cur_seg, cur_seg->trbs);
  if ((unsigned long )cur_seg != (unsigned long )start_seg) {
    goto ldv_28394;
  } else {
  }
  return (0);
}
}
static void xhci_cleanup_halted_endpoint(struct xhci_hcd *xhci , unsigned int slot_id ,
                                         unsigned int ep_index , unsigned int stream_id ,
                                         struct xhci_td *td , union xhci_trb *event_trb )
{
  struct xhci_virt_ep *ep ;
  {
  ep = (struct xhci_virt_ep *)(& (xhci->devs[slot_id])->eps) + (unsigned long )ep_index;
  ep->ep_state = ep->ep_state | 2U;
  ep->stopped_td = td;
  ep->stopped_trb = event_trb;
  ep->stopped_stream = stream_id;
  xhci_queue_reset_ep(xhci, (int )slot_id, ep_index);
  xhci_cleanup_stalled_ring(xhci, (td->urb)->dev, ep_index);
  ep->stopped_td = 0;
  ep->stopped_trb = 0;
  ep->stopped_stream = 0U;
  xhci_ring_cmd_db(xhci);
  return;
}
}
static int xhci_requires_manual_halt_cleanup(struct xhci_hcd *xhci , struct xhci_ep_ctx *ep_ctx ,
                                             unsigned int trb_comp_code )
{
  {
  if ((trb_comp_code == 4U || trb_comp_code == 3U) || trb_comp_code == 36U) {
    if ((ep_ctx->ep_info & 15U) == 2U) {
      return (1);
    } else {
    }
  } else {
  }
  return (0);
}
}
int xhci_is_vendor_info_code(struct xhci_hcd *xhci , unsigned int trb_comp_code )
{
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  {
  if (trb_comp_code > 223U && trb_comp_code <= 255U) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_is_vendor_info_code";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor.format = "Vendor defined info completion code %u\n";
    descriptor.lineno = 1876U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "Vendor defined info completion code %u\n", trb_comp_code);
    } else {
    }
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_is_vendor_info_code";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor___0.format = "Treating code as success.\n";
    descriptor___0.lineno = 1877U;
    descriptor___0.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                        "Treating code as success.\n");
    } else {
    }
    return (1);
  } else {
  }
  return (0);
}
}
static int finish_td(struct xhci_hcd *xhci , struct xhci_td *td , union xhci_trb *event_trb ,
                     struct xhci_transfer_event *event , struct xhci_virt_ep *ep ,
                     int *status , bool skip )
{
  struct xhci_virt_device *xdev ;
  struct xhci_ring *ep_ring ;
  unsigned int slot_id ;
  int ep_index ;
  struct urb *urb ;
  struct xhci_ep_ctx *ep_ctx ;
  int ret ;
  struct urb_priv *urb_priv ;
  u32 trb_comp_code ;
  int tmp ;
  struct usb_hcd *tmp___0 ;
  int tmp___1 ;
  struct usb_hcd *tmp___2 ;
  struct usb_hcd *tmp___3 ;
  {
  urb = 0;
  ret = 0;
  slot_id = event->flags >> 24;
  xdev = xhci->devs[slot_id];
  ep_index = (int )(((event->flags >> 16) & 31U) - 1U);
  ep_ring = xhci_dma_to_transfer_ring(ep, event->buffer);
  ep_ctx = xhci_get_ep_ctx(xhci, xdev->out_ctx, (unsigned int )ep_index);
  trb_comp_code = event->transfer_len >> 24;
  if ((int )skip) {
    goto td_cleanup;
  } else {
  }
  if (trb_comp_code == 27U || trb_comp_code == 26U) {
    ep->stopped_td = td;
    ep->stopped_trb = event_trb;
    return (0);
  } else {
    if (trb_comp_code == 6U) {
      ep->stopped_td = td;
      ep->stopped_trb = event_trb;
      ep->stopped_stream = ep_ring->stream_id;
    } else {
      tmp = xhci_requires_manual_halt_cleanup(xhci, ep_ctx, trb_comp_code);
      if (tmp != 0) {
        xhci_cleanup_halted_endpoint(xhci, slot_id, (unsigned int )ep_index, ep_ring->stream_id,
                                     td, event_trb);
      } else {
        goto ldv_28437;
        ldv_28436:
        inc_deq(xhci, ep_ring);
        ldv_28437: ;
        if ((unsigned long )ep_ring->dequeue != (unsigned long )td->last_trb) {
          goto ldv_28436;
        } else {
        }
        inc_deq(xhci, ep_ring);
      }
    }
    td_cleanup:
    urb = td->urb;
    urb_priv = (struct urb_priv *)urb->hcpriv;
    if (urb->actual_length > urb->transfer_buffer_length) {
      tmp___0 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___0->self.controller, "URB transfer length is wrong, xHC issue? req. len = %u, act. len = %u\n",
               urb->transfer_buffer_length, urb->actual_length);
      urb->actual_length = 0U;
      if ((int )(td->urb)->transfer_flags & 1) {
        *status = -121;
      } else {
        *status = 0;
      }
    } else {
    }
    list_del_init(& td->td_list);
    tmp___1 = list_empty((struct list_head const *)(& td->cancelled_td_list));
    if (tmp___1 == 0) {
      list_del_init(& td->cancelled_td_list);
    } else {
    }
    urb_priv->td_cnt = urb_priv->td_cnt + 1;
    if (urb_priv->td_cnt == urb_priv->length) {
      ret = 1;
      if (urb->pipe >> 30 == 0U) {
        tmp___2 = xhci_to_hcd(xhci);
        tmp___2->self.bandwidth_isoc_reqs = tmp___2->self.bandwidth_isoc_reqs - 1;
        tmp___3 = xhci_to_hcd(xhci);
        if (tmp___3->self.bandwidth_isoc_reqs == 0) {
          if ((xhci->quirks & 8U) != 0U) {
            usb_amd_quirk_pll_enable();
          } else {
          }
        } else {
        }
      } else {
      }
    } else {
    }
  }
  return (ret);
}
}
static int process_ctrl_td(struct xhci_hcd *xhci , struct xhci_td *td , union xhci_trb *event_trb ,
                           struct xhci_transfer_event *event , struct xhci_virt_ep *ep ,
                           int *status )
{
  struct xhci_virt_device *xdev ;
  struct xhci_ring *ep_ring ;
  unsigned int slot_id ;
  int ep_index ;
  struct xhci_ep_ctx *ep_ctx ;
  u32 trb_comp_code ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  int tmp___5 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  int tmp___8 ;
  {
  slot_id = event->flags >> 24;
  xdev = xhci->devs[slot_id];
  ep_index = (int )(((event->flags >> 16) & 31U) - 1U);
  ep_ring = xhci_dma_to_transfer_ring(ep, event->buffer);
  ep_ctx = xhci_get_ep_ctx(xhci, xdev->out_ctx, (unsigned int )ep_index);
  trb_comp_code = event->transfer_len >> 24;
  switch (trb_comp_code) {
  case 1U: ;
  if ((unsigned long )ep_ring->dequeue == (unsigned long )event_trb) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "WARN: Success on ctrl setup TRB without IOC set??\n");
    *status = -108;
  } else
  if ((unsigned long )td->last_trb != (unsigned long )event_trb) {
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "WARN: Success on ctrl data TRB without IOC set??\n");
    *status = -108;
  } else {
    *status = 0;
  }
  goto ldv_28454;
  case 13U: ;
  if ((int )(td->urb)->transfer_flags & 1) {
    *status = -121;
  } else {
    *status = 0;
  }
  goto ldv_28454;
  case 27U: ;
  case 26U:
  tmp___1 = finish_td(xhci, td, event_trb, event, ep, status, 0);
  return (tmp___1);
  default:
  tmp___2 = xhci_requires_manual_halt_cleanup(xhci, ep_ctx, trb_comp_code);
  if (tmp___2 == 0) {
    goto ldv_28454;
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "process_ctrl_td";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor.format = "TRB error code %u, halted endpoint index = %u\n";
  descriptor.lineno = 2045U;
  descriptor.flags = 1U;
  tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___3->self.controller,
                      "TRB error code %u, halted endpoint index = %u\n", trb_comp_code,
                      ep_index);
  } else {
  }
  case 6U: ;
  if ((unsigned long )ep_ring->dequeue != (unsigned long )event_trb && (unsigned long )td->last_trb != (unsigned long )event_trb) {
    (td->urb)->actual_length = (td->urb)->transfer_buffer_length - (event->transfer_len & 131071U);
  } else {
    (td->urb)->actual_length = 0U;
  }
  xhci_cleanup_halted_endpoint(xhci, slot_id, (unsigned int )ep_index, 0U, td, event_trb);
  tmp___5 = finish_td(xhci, td, event_trb, event, ep, status, 1);
  return (tmp___5);
  }
  ldv_28454: ;
  if ((unsigned long )ep_ring->dequeue != (unsigned long )event_trb) {
    if ((unsigned long )td->last_trb == (unsigned long )event_trb) {
      if ((td->urb)->actual_length != 0U) {
        if ((*status == -115 || *status == 0) && (int )(td->urb)->transfer_flags & 1) {
          *status = -121;
        } else {
          (td->urb)->actual_length = (td->urb)->transfer_buffer_length;
        }
      } else {
        (td->urb)->actual_length = (td->urb)->transfer_buffer_length - (event->transfer_len & 131071U);
        descriptor___0.modname = "xhci_hcd";
        descriptor___0.function = "process_ctrl_td";
        descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
        descriptor___0.format = "Waiting for status stage event\n";
        descriptor___0.lineno = 2087U;
        descriptor___0.flags = 1U;
        tmp___7 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
        if (tmp___7 != 0L) {
          tmp___6 = xhci_to_hcd(xhci);
          __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___6->self.controller,
                            "Waiting for status stage event\n");
        } else {
        }
        return (0);
      }
    } else {
    }
  } else {
  }
  tmp___8 = finish_td(xhci, td, event_trb, event, ep, status, 0);
  return (tmp___8);
}
}
static int process_isoc_td(struct xhci_hcd *xhci , struct xhci_td *td , union xhci_trb *event_trb ,
                           struct xhci_transfer_event *event , struct xhci_virt_ep *ep ,
                           int *status )
{
  struct xhci_ring *ep_ring ;
  struct urb_priv *urb_priv ;
  int idx ;
  int len ;
  union xhci_trb *cur_trb ;
  struct xhci_segment *cur_seg ;
  struct usb_iso_packet_descriptor *frame ;
  u32 trb_comp_code ;
  bool skip_td ;
  int tmp ;
  {
  len = 0;
  skip_td = 0;
  ep_ring = xhci_dma_to_transfer_ring(ep, event->buffer);
  trb_comp_code = event->transfer_len >> 24;
  urb_priv = (struct urb_priv *)(td->urb)->hcpriv;
  idx = urb_priv->td_cnt;
  frame = (struct usb_iso_packet_descriptor *)(& (td->urb)->iso_frame_desc) + (unsigned long )idx;
  switch (trb_comp_code) {
  case 1U: ;
  if ((event->transfer_len & 131071U) == 0U) {
    frame->status = 0;
    goto ldv_28481;
  } else {
  }
  if ((xhci->quirks & 1024U) != 0U) {
    trb_comp_code = 13U;
  } else {
  }
  case 13U:
  frame->status = (int )(td->urb)->transfer_flags & 1 ? -121 : 0;
  goto ldv_28481;
  case 18U:
  frame->status = -70;
  skip_td = 1;
  goto ldv_28481;
  case 31U: ;
  case 3U:
  frame->status = -75;
  skip_td = 1;
  goto ldv_28481;
  case 22U: ;
  case 6U: ;
  case 4U:
  frame->status = -71;
  skip_td = 1;
  goto ldv_28481;
  case 26U: ;
  case 27U: ;
  goto ldv_28481;
  default:
  frame->status = -1;
  goto ldv_28481;
  }
  ldv_28481: ;
  if (trb_comp_code == 1U || (int )skip_td) {
    frame->actual_length = frame->length;
    (td->urb)->actual_length = (td->urb)->actual_length + frame->length;
  } else {
    cur_trb = ep_ring->dequeue;
    cur_seg = ep_ring->deq_seg;
    goto ldv_28493;
    ldv_28492: ;
    if ((cur_trb->generic.field[3] & 64512U) != 8192U && (cur_trb->generic.field[3] & 64512U) != 6144U) {
      len = (int )((cur_trb->generic.field[2] & 131071U) + (__le32 )len);
    } else {
    }
    next_trb(xhci, ep_ring, & cur_seg, & cur_trb);
    ldv_28493: ;
    if ((unsigned long )cur_trb != (unsigned long )event_trb) {
      goto ldv_28492;
    } else {
    }
    len = (int )(((cur_trb->generic.field[2] & 131071U) - (event->transfer_len & 131071U)) + (__le32 )len);
    if (trb_comp_code != 27U) {
      frame->actual_length = (unsigned int )len;
      (td->urb)->actual_length = (td->urb)->actual_length + (u32 )len;
    } else {
    }
  }
  tmp = finish_td(xhci, td, event_trb, event, ep, status, 0);
  return (tmp);
}
}
static int skip_isoc_td(struct xhci_hcd *xhci , struct xhci_td *td , struct xhci_transfer_event *event ,
                        struct xhci_virt_ep *ep , int *status )
{
  struct xhci_ring *ep_ring ;
  struct urb_priv *urb_priv ;
  struct usb_iso_packet_descriptor *frame ;
  int idx ;
  int tmp ;
  {
  ep_ring = xhci_dma_to_transfer_ring(ep, event->buffer);
  urb_priv = (struct urb_priv *)(td->urb)->hcpriv;
  idx = urb_priv->td_cnt;
  frame = (struct usb_iso_packet_descriptor *)(& (td->urb)->iso_frame_desc) + (unsigned long )idx;
  frame->status = -18;
  frame->actual_length = 0U;
  goto ldv_28507;
  ldv_28506:
  inc_deq(xhci, ep_ring);
  ldv_28507: ;
  if ((unsigned long )ep_ring->dequeue != (unsigned long )td->last_trb) {
    goto ldv_28506;
  } else {
  }
  inc_deq(xhci, ep_ring);
  tmp = finish_td(xhci, td, 0, event, ep, status, 1);
  return (tmp);
}
}
static int process_bulk_intr_td(struct xhci_hcd *xhci , struct xhci_td *td , union xhci_trb *event_trb ,
                                struct xhci_transfer_event *event , struct xhci_virt_ep *ep ,
                                int *status )
{
  struct xhci_ring *ep_ring ;
  union xhci_trb *cur_trb ;
  struct xhci_segment *cur_seg ;
  u32 trb_comp_code ;
  struct usb_hcd *tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct usb_hcd *tmp___2 ;
  int tmp___3 ;
  {
  ep_ring = xhci_dma_to_transfer_ring(ep, event->buffer);
  trb_comp_code = event->transfer_len >> 24;
  switch (trb_comp_code) {
  case 1U: ;
  if ((unsigned long )td->last_trb != (unsigned long )event_trb || (event->transfer_len & 131071U) != 0U) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "WARN Successful completion on short TX\n");
    if ((int )(td->urb)->transfer_flags & 1) {
      *status = -121;
    } else {
      *status = 0;
    }
    if ((xhci->quirks & 1024U) != 0U) {
      trb_comp_code = 13U;
    } else {
    }
  } else {
    *status = 0;
  }
  goto ldv_28522;
  case 13U: ;
  if ((int )(td->urb)->transfer_flags & 1) {
    *status = -121;
  } else {
    *status = 0;
  }
  goto ldv_28522;
  default: ;
  goto ldv_28522;
  }
  ldv_28522: ;
  if (trb_comp_code == 13U) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "process_bulk_intr_td";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor.format = "ep %#x - asked for %d bytes, %d bytes untransferred\n";
    descriptor.lineno = 2252U;
    descriptor.flags = 1U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                        "ep %#x - asked for %d bytes, %d bytes untransferred\n", (int )((td->urb)->ep)->desc.bEndpointAddress,
                        (td->urb)->transfer_buffer_length, event->transfer_len & 131071U);
    } else {
    }
  } else {
  }
  if ((unsigned long )td->last_trb == (unsigned long )event_trb) {
    if ((event->transfer_len & 131071U) != 0U) {
      (td->urb)->actual_length = (td->urb)->transfer_buffer_length - (event->transfer_len & 131071U);
      if ((td->urb)->transfer_buffer_length < (td->urb)->actual_length) {
        tmp___2 = xhci_to_hcd(xhci);
        dev_warn((struct device const *)tmp___2->self.controller, "HC gave bad length of %d bytes left\n",
                 event->transfer_len & 131071U);
        (td->urb)->actual_length = 0U;
        if ((int )(td->urb)->transfer_flags & 1) {
          *status = -121;
        } else {
          *status = 0;
        }
      } else {
      }
      if (*status == -115) {
        if ((int )(td->urb)->transfer_flags & 1) {
          *status = -121;
        } else {
          *status = 0;
        }
      } else {
      }
    } else {
      (td->urb)->actual_length = (td->urb)->transfer_buffer_length;
      if (*status == -121) {
        *status = 0;
      } else {
      }
    }
  } else {
    (td->urb)->actual_length = 0U;
    cur_trb = ep_ring->dequeue;
    cur_seg = ep_ring->deq_seg;
    goto ldv_28528;
    ldv_28527: ;
    if ((cur_trb->generic.field[3] & 64512U) != 8192U && (cur_trb->generic.field[3] & 64512U) != 6144U) {
      (td->urb)->actual_length = (td->urb)->actual_length + (cur_trb->generic.field[2] & 131071U);
    } else {
    }
    next_trb(xhci, ep_ring, & cur_seg, & cur_trb);
    ldv_28528: ;
    if ((unsigned long )cur_trb != (unsigned long )event_trb) {
      goto ldv_28527;
    } else {
    }
    if (trb_comp_code != 27U) {
      (td->urb)->actual_length = (td->urb)->actual_length + ((cur_trb->generic.field[2] & 131071U) - (event->transfer_len & 131071U));
    } else {
    }
  }
  tmp___3 = finish_td(xhci, td, event_trb, event, ep, status, 0);
  return (tmp___3);
}
}
static int handle_tx_event(struct xhci_hcd *xhci , struct xhci_transfer_event *event )
{
  struct xhci_virt_device *xdev ;
  struct xhci_virt_ep *ep ;
  struct xhci_ring *ep_ring ;
  unsigned int slot_id ;
  int ep_index ;
  struct xhci_td *td ;
  dma_addr_t event_dma ;
  struct xhci_segment *event_seg ;
  union xhci_trb *event_trb ;
  struct urb *urb ;
  int status ;
  struct urb_priv *urb_priv ;
  struct xhci_ep_ctx *ep_ctx ;
  struct list_head *tmp ;
  u32 trb_comp_code ;
  int ret ;
  int td_num ;
  struct usb_hcd *tmp___0 ;
  dma_addr_t tmp___1 ;
  struct usb_hcd *tmp___2 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct usb_hcd *tmp___5 ;
  dma_addr_t tmp___6 ;
  struct usb_hcd *tmp___7 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___8 ;
  long tmp___9 ;
  struct ratelimit_state _rs ;
  struct usb_hcd *tmp___10 ;
  int tmp___11 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___12 ;
  long tmp___13 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___14 ;
  long tmp___15 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___16 ;
  long tmp___17 ;
  struct usb_hcd *tmp___18 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___19 ;
  long tmp___20 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___21 ;
  long tmp___22 ;
  struct usb_hcd *tmp___23 ;
  struct usb_hcd *tmp___24 ;
  struct usb_hcd *tmp___25 ;
  struct _ddebug descriptor___6 ;
  struct usb_hcd *tmp___26 ;
  long tmp___27 ;
  struct _ddebug descriptor___7 ;
  struct usb_hcd *tmp___28 ;
  long tmp___29 ;
  int tmp___30 ;
  struct _ddebug descriptor___8 ;
  struct usb_hcd *tmp___31 ;
  long tmp___32 ;
  struct _ddebug descriptor___9 ;
  struct usb_hcd *tmp___33 ;
  long tmp___34 ;
  int tmp___35 ;
  struct usb_hcd *tmp___36 ;
  struct _ddebug descriptor___10 ;
  struct usb_hcd *tmp___37 ;
  long tmp___38 ;
  int tmp___39 ;
  struct usb_hcd *tmp___40 ;
  struct usb_hcd *tmp___41 ;
  struct _ddebug descriptor___11 ;
  struct usb_hcd *tmp___42 ;
  long tmp___43 ;
  struct _ddebug descriptor___12 ;
  struct usb_hcd *tmp___44 ;
  long tmp___45 ;
  int tmp___46 ;
  struct _ddebug descriptor___13 ;
  struct usb_hcd *tmp___47 ;
  long tmp___48 ;
  struct list_head const *__mptr ;
  struct usb_hcd *tmp___49 ;
  int tmp___50 ;
  struct _ddebug descriptor___14 ;
  struct usb_hcd *tmp___51 ;
  long tmp___52 ;
  struct _ddebug descriptor___15 ;
  struct usb_hcd *tmp___53 ;
  long tmp___54 ;
  int tmp___55 ;
  int tmp___56 ;
  int tmp___57 ;
  struct usb_hcd *tmp___58 ;
  struct _ddebug descriptor___16 ;
  struct usb_hcd *tmp___59 ;
  long tmp___60 ;
  int tmp___61 ;
  struct usb_hcd *tmp___62 ;
  {
  td = 0;
  urb = 0;
  status = -115;
  ret = 0;
  td_num = 0;
  slot_id = event->flags >> 24;
  xdev = xhci->devs[slot_id];
  if ((unsigned long )xdev == (unsigned long )((struct xhci_virt_device *)0)) {
    tmp___0 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___0->self.controller, "ERROR Transfer event pointed to bad slot\n");
    tmp___1 = xhci_trb_virt_to_dma((xhci->event_ring)->deq_seg, (xhci->event_ring)->dequeue);
    tmp___2 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___2->self.controller, "@%016llx %08x %08x %08x %08x\n",
            tmp___1, (unsigned int )event->buffer, (unsigned int )(event->buffer >> 32ULL),
            event->transfer_len, event->flags);
    descriptor.modname = "xhci_hcd";
    descriptor.function = "handle_tx_event";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor.format = "Event ring:\n";
    descriptor.lineno = 2351U;
    descriptor.flags = 1U;
    tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      tmp___3 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___3->self.controller,
                        "Event ring:\n");
    } else {
    }
    xhci_debug_segment(xhci, (xhci->event_ring)->deq_seg);
    return (-19);
  } else {
  }
  ep_index = (int )(((event->flags >> 16) & 31U) - 1U);
  ep = (struct xhci_virt_ep *)(& xdev->eps) + (unsigned long )ep_index;
  ep_ring = xhci_dma_to_transfer_ring(ep, event->buffer);
  ep_ctx = xhci_get_ep_ctx(xhci, xdev->out_ctx, (unsigned int )ep_index);
  if ((unsigned long )ep_ring == (unsigned long )((struct xhci_ring *)0) || (ep_ctx->ep_info & 15U) == 0U) {
    tmp___5 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___5->self.controller, "ERROR Transfer event for disabled endpoint or incorrect stream ring\n");
    tmp___6 = xhci_trb_virt_to_dma((xhci->event_ring)->deq_seg, (xhci->event_ring)->dequeue);
    tmp___7 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___7->self.controller, "@%016llx %08x %08x %08x %08x\n",
            tmp___6, (unsigned int )event->buffer, (unsigned int )(event->buffer >> 32ULL),
            event->transfer_len, event->flags);
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "handle_tx_event";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor___0.format = "Event ring:\n";
    descriptor___0.lineno = 2374U;
    descriptor___0.flags = 1U;
    tmp___9 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___9 != 0L) {
      tmp___8 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___8->self.controller,
                        "Event ring:\n");
    } else {
    }
    xhci_debug_segment(xhci, (xhci->event_ring)->deq_seg);
    return (-19);
  } else {
  }
  if ((int )ep->skip) {
    tmp = ep_ring->td_list.next;
    goto ldv_28555;
    ldv_28554:
    td_num = td_num + 1;
    tmp = tmp->next;
    ldv_28555: ;
    if ((unsigned long )(& ep_ring->td_list) != (unsigned long )tmp) {
      goto ldv_28554;
    } else {
    }
  } else {
  }
  event_dma = event->buffer;
  trb_comp_code = event->transfer_len >> 24;
  switch (trb_comp_code) {
  case 1U: ;
  if ((event->transfer_len & 131071U) == 0U) {
    goto ldv_28558;
  } else {
  }
  if ((xhci->quirks & 1024U) != 0U) {
    trb_comp_code = 13U;
  } else {
    _rs.lock.raw_lock.ldv_2024.head_tail = 0U;
    _rs.lock.magic = 3735899821U;
    _rs.lock.owner_cpu = 4294967295U;
    _rs.lock.owner = 0xffffffffffffffffUL;
    _rs.lock.dep_map.key = 0;
    _rs.lock.dep_map.class_cache[0] = 0;
    _rs.lock.dep_map.class_cache[1] = 0;
    _rs.lock.dep_map.name = "_rs.lock";
    _rs.lock.dep_map.cpu = 0;
    _rs.lock.dep_map.ip = 0UL;
    _rs.interval = 1250;
    _rs.burst = 10;
    _rs.printed = 0;
    _rs.missed = 0;
    _rs.begin = 0UL;
    tmp___11 = ___ratelimit(& _rs, "handle_tx_event");
    if (tmp___11 != 0) {
      tmp___10 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___10->self.controller, "WARN Successful completion on short TX: needs XHCI_TRUST_TX_LENGTH quirk?\n");
    } else {
    }
  }
  case 13U: ;
  goto ldv_28558;
  case 26U:
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "handle_tx_event";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor___1.format = "Stopped on Transfer TRB\n";
  descriptor___1.lineno = 2403U;
  descriptor___1.flags = 1U;
  tmp___13 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___13 != 0L) {
    tmp___12 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___12->self.controller,
                      "Stopped on Transfer TRB\n");
  } else {
  }
  goto ldv_28558;
  case 27U:
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "handle_tx_event";
  descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor___2.format = "Stopped on No-op or Link TRB\n";
  descriptor___2.lineno = 2406U;
  descriptor___2.flags = 1U;
  tmp___15 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___15 != 0L) {
    tmp___14 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___14->self.controller,
                      "Stopped on No-op or Link TRB\n");
  } else {
  }
  goto ldv_28558;
  case 6U:
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "handle_tx_event";
  descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor___3.format = "Stalled endpoint\n";
  descriptor___3.lineno = 2409U;
  descriptor___3.flags = 1U;
  tmp___17 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___17 != 0L) {
    tmp___16 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___16->self.controller,
                      "Stalled endpoint\n");
  } else {
  }
  ep->ep_state = ep->ep_state | 2U;
  status = -32;
  goto ldv_28558;
  case 5U:
  tmp___18 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___18->self.controller, "WARN: TRB error on endpoint\n");
  status = -84;
  goto ldv_28558;
  case 36U: ;
  case 4U:
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "handle_tx_event";
  descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor___4.format = "Transfer error on endpoint\n";
  descriptor___4.lineno = 2419U;
  descriptor___4.flags = 1U;
  tmp___20 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___20 != 0L) {
    tmp___19 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___19->self.controller,
                      "Transfer error on endpoint\n");
  } else {
  }
  status = -71;
  goto ldv_28558;
  case 3U:
  descriptor___5.modname = "xhci_hcd";
  descriptor___5.function = "handle_tx_event";
  descriptor___5.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor___5.format = "Babble error on endpoint\n";
  descriptor___5.lineno = 2423U;
  descriptor___5.flags = 1U;
  tmp___22 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___22 != 0L) {
    tmp___21 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___21->self.controller,
                      "Babble error on endpoint\n");
  } else {
  }
  status = -75;
  goto ldv_28558;
  case 2U:
  tmp___23 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___23->self.controller, "WARN: HC couldn\'t access mem fast enough\n");
  status = -63;
  goto ldv_28558;
  case 18U:
  tmp___24 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___24->self.controller, "WARN: bandwidth overrun event on endpoint\n");
  goto ldv_28558;
  case 31U:
  tmp___25 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___25->self.controller, "WARN: buffer overrun event on endpoint\n");
  goto ldv_28558;
  case 14U:
  descriptor___6.modname = "xhci_hcd";
  descriptor___6.function = "handle_tx_event";
  descriptor___6.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor___6.format = "underrun event on endpoint\n";
  descriptor___6.lineno = 2442U;
  descriptor___6.flags = 1U;
  tmp___27 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___27 != 0L) {
    tmp___26 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___6, (struct device const *)tmp___26->self.controller,
                      "underrun event on endpoint\n");
  } else {
  }
  tmp___30 = list_empty((struct list_head const *)(& ep_ring->td_list));
  if (tmp___30 == 0) {
    descriptor___7.modname = "xhci_hcd";
    descriptor___7.function = "handle_tx_event";
    descriptor___7.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor___7.format = "Underrun Event for slot %d ep %d still with TDs queued?\n";
    descriptor___7.lineno = 2447U;
    descriptor___7.flags = 1U;
    tmp___29 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
    if (tmp___29 != 0L) {
      tmp___28 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___7, (struct device const *)tmp___28->self.controller,
                        "Underrun Event for slot %d ep %d still with TDs queued?\n",
                        event->flags >> 24, ep_index);
    } else {
    }
  } else {
  }
  goto cleanup;
  case 15U:
  descriptor___8.modname = "xhci_hcd";
  descriptor___8.function = "handle_tx_event";
  descriptor___8.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor___8.format = "overrun event on endpoint\n";
  descriptor___8.lineno = 2450U;
  descriptor___8.flags = 1U;
  tmp___32 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
  if (tmp___32 != 0L) {
    tmp___31 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___8, (struct device const *)tmp___31->self.controller,
                      "overrun event on endpoint\n");
  } else {
  }
  tmp___35 = list_empty((struct list_head const *)(& ep_ring->td_list));
  if (tmp___35 == 0) {
    descriptor___9.modname = "xhci_hcd";
    descriptor___9.function = "handle_tx_event";
    descriptor___9.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor___9.format = "Overrun Event for slot %d ep %d still with TDs queued?\n";
    descriptor___9.lineno = 2455U;
    descriptor___9.flags = 1U;
    tmp___34 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
    if (tmp___34 != 0L) {
      tmp___33 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___9, (struct device const *)tmp___33->self.controller,
                        "Overrun Event for slot %d ep %d still with TDs queued?\n",
                        event->flags >> 24, ep_index);
    } else {
    }
  } else {
  }
  goto cleanup;
  case 22U:
  tmp___36 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___36->self.controller, "WARN: detect an incompatible device");
  status = -71;
  goto ldv_28558;
  case 23U:
  ep->skip = 1;
  descriptor___10.modname = "xhci_hcd";
  descriptor___10.function = "handle_tx_event";
  descriptor___10.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor___10.format = "Miss service interval error, set skip flag\n";
  descriptor___10.lineno = 2469U;
  descriptor___10.flags = 1U;
  tmp___38 = ldv__builtin_expect((long )descriptor___10.flags & 1L, 0L);
  if (tmp___38 != 0L) {
    tmp___37 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___10, (struct device const *)tmp___37->self.controller,
                      "Miss service interval error, set skip flag\n");
  } else {
  }
  goto cleanup;
  default:
  tmp___39 = xhci_is_vendor_info_code(xhci, trb_comp_code);
  if (tmp___39 != 0) {
    status = 0;
    goto ldv_28558;
  } else {
  }
  tmp___40 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___40->self.controller, "ERROR Unknown event condition, HC probably busted\n");
  goto cleanup;
  }
  ldv_28558: ;
  ldv_28596:
  tmp___46 = list_empty((struct list_head const *)(& ep_ring->td_list));
  if (tmp___46 != 0) {
    tmp___41 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___41->self.controller, "WARN Event TRB for slot %d ep %d with no TDs queued?\n",
             event->flags >> 24, ep_index);
    descriptor___11.modname = "xhci_hcd";
    descriptor___11.function = "handle_tx_event";
    descriptor___11.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor___11.format = "Event TRB with TRB type ID %u\n";
    descriptor___11.lineno = 2492U;
    descriptor___11.flags = 1U;
    tmp___43 = ldv__builtin_expect((long )descriptor___11.flags & 1L, 0L);
    if (tmp___43 != 0L) {
      tmp___42 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___11, (struct device const *)tmp___42->self.controller,
                        "Event TRB with TRB type ID %u\n", (event->flags & 64512U) >> 10);
    } else {
    }
    xhci_print_trb_offsets(xhci, (union xhci_trb *)event);
    if ((int )ep->skip) {
      ep->skip = 0;
      descriptor___12.modname = "xhci_hcd";
      descriptor___12.function = "handle_tx_event";
      descriptor___12.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
      descriptor___12.format = "td_list is empty while skip flag set. Clear skip flag.\n";
      descriptor___12.lineno = 2497U;
      descriptor___12.flags = 1U;
      tmp___45 = ldv__builtin_expect((long )descriptor___12.flags & 1L, 0L);
      if (tmp___45 != 0L) {
        tmp___44 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor___12, (struct device const *)tmp___44->self.controller,
                          "td_list is empty while skip flag set. Clear skip flag.\n");
      } else {
      }
    } else {
    }
    ret = 0;
    goto cleanup;
  } else {
  }
  if ((int )ep->skip && td_num == 0) {
    ep->skip = 0;
    descriptor___13.modname = "xhci_hcd";
    descriptor___13.function = "handle_tx_event";
    descriptor___13.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor___13.format = "All tds on the ep_ring skipped. Clear skip flag.\n";
    descriptor___13.lineno = 2507U;
    descriptor___13.flags = 1U;
    tmp___48 = ldv__builtin_expect((long )descriptor___13.flags & 1L, 0L);
    if (tmp___48 != 0L) {
      tmp___47 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___13, (struct device const *)tmp___47->self.controller,
                        "All tds on the ep_ring skipped. Clear skip flag.\n");
    } else {
    }
    ret = 0;
    goto cleanup;
  } else {
  }
  __mptr = (struct list_head const *)ep_ring->td_list.next;
  td = (struct xhci_td *)__mptr;
  if ((int )ep->skip) {
    td_num = td_num - 1;
  } else {
  }
  event_seg = trb_in_td(ep_ring->deq_seg, ep_ring->dequeue, td->last_trb, event_dma);
  if ((unsigned long )event_seg == (unsigned long )((struct xhci_segment *)0) && trb_comp_code == 27U) {
    ret = 0;
    goto cleanup;
  } else {
  }
  if ((unsigned long )event_seg == (unsigned long )((struct xhci_segment *)0)) {
    if (! ep->skip) {
      goto _L;
    } else {
      tmp___50 = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)(& ((td->urb)->ep)->desc));
      if (tmp___50 == 0) {
        _L:
        if ((xhci->quirks & 16U) != 0U && (int )ep_ring->last_td_was_short) {
          ep_ring->last_td_was_short = 0;
          ret = 0;
          goto cleanup;
        } else {
        }
        tmp___49 = xhci_to_hcd(xhci);
        dev_err((struct device const *)tmp___49->self.controller, "ERROR Transfer event TRB DMA ptr not part of current TD\n");
        return (-108);
      } else {
      }
    }
    ret = skip_isoc_td(xhci, td, event, ep, & status);
    goto cleanup;
  } else {
  }
  if (trb_comp_code == 13U) {
    ep_ring->last_td_was_short = 1;
  } else {
    ep_ring->last_td_was_short = 0;
  }
  if ((int )ep->skip) {
    descriptor___14.modname = "xhci_hcd";
    descriptor___14.function = "handle_tx_event";
    descriptor___14.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor___14.format = "Found td. Clear skip flag.\n";
    descriptor___14.lineno = 2562U;
    descriptor___14.flags = 1U;
    tmp___52 = ldv__builtin_expect((long )descriptor___14.flags & 1L, 0L);
    if (tmp___52 != 0L) {
      tmp___51 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___14, (struct device const *)tmp___51->self.controller,
                        "Found td. Clear skip flag.\n");
    } else {
    }
    ep->skip = 0;
  } else {
  }
  event_trb = event_seg->trbs + (event_dma - event_seg->dma) / 16ULL;
  if ((event_trb->generic.field[3] & 64512U) == 8192U) {
    descriptor___15.modname = "xhci_hcd";
    descriptor___15.function = "handle_tx_event";
    descriptor___15.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor___15.format = "event_trb is a no-op TRB. Skip it\n";
    descriptor___15.lineno = 2576U;
    descriptor___15.flags = 1U;
    tmp___54 = ldv__builtin_expect((long )descriptor___15.flags & 1L, 0L);
    if (tmp___54 != 0L) {
      tmp___53 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___15, (struct device const *)tmp___53->self.controller,
                        "event_trb is a no-op TRB. Skip it\n");
    } else {
    }
    goto cleanup;
  } else {
  }
  tmp___56 = usb_endpoint_xfer_control((struct usb_endpoint_descriptor const *)(& ((td->urb)->ep)->desc));
  if (tmp___56 != 0) {
    ret = process_ctrl_td(xhci, td, event_trb, event, ep, & status);
  } else {
    tmp___55 = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)(& ((td->urb)->ep)->desc));
    if (tmp___55 != 0) {
      ret = process_isoc_td(xhci, td, event_trb, event, ep, & status);
    } else {
      ret = process_bulk_intr_td(xhci, td, event_trb, event, ep, & status);
    }
  }
  cleanup: ;
  if (trb_comp_code == 23U || ! ep->skip) {
    inc_deq(xhci, xhci->event_ring);
  } else {
  }
  if (ret != 0) {
    urb = td->urb;
    urb_priv = (struct urb_priv *)urb->hcpriv;
    tmp___57 = usb_endpoint_xfer_control((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
    if (tmp___57 != 0 || (trb_comp_code != 6U && trb_comp_code != 3U)) {
      xhci_urb_free_priv(xhci, urb_priv);
    } else {
    }
    tmp___58 = bus_to_hcd((urb->dev)->bus);
    usb_hcd_unlink_urb_from_ep(tmp___58, urb);
    if (urb->actual_length != urb->transfer_buffer_length && (int )urb->transfer_flags & 1) {
      goto _L___0;
    } else
    if (status != 0) {
      tmp___61 = usb_endpoint_xfer_isoc((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
      if (tmp___61 == 0) {
        _L___0:
        descriptor___16.modname = "xhci_hcd";
        descriptor___16.function = "handle_tx_event";
        descriptor___16.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
        descriptor___16.format = "Giveback URB %p, len = %d, expected = %d, status = %d\n";
        descriptor___16.lineno = 2625U;
        descriptor___16.flags = 1U;
        tmp___60 = ldv__builtin_expect((long )descriptor___16.flags & 1L, 0L);
        if (tmp___60 != 0L) {
          tmp___59 = xhci_to_hcd(xhci);
          __dynamic_dev_dbg(& descriptor___16, (struct device const *)tmp___59->self.controller,
                            "Giveback URB %p, len = %d, expected = %d, status = %d\n",
                            urb, urb->actual_length, urb->transfer_buffer_length,
                            status);
        } else {
        }
      } else {
      }
    } else {
    }
    spin_unlock(& xhci->lock);
    if (urb->pipe >> 30 == 0U) {
      status = 0;
    } else {
    }
    tmp___62 = bus_to_hcd((urb->dev)->bus);
    usb_hcd_giveback_urb(tmp___62, urb, status);
    spin_lock(& xhci->lock);
  } else {
  }
  if ((int )ep->skip && trb_comp_code != 23U) {
    goto ldv_28596;
  } else {
  }
  return (0);
}
}
static int xhci_handle_event(struct xhci_hcd *xhci )
{
  union xhci_trb *event ;
  int update_ptrs ;
  int ret ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  update_ptrs = 1;
  if ((unsigned long )xhci->event_ring == (unsigned long )((struct xhci_ring *)0) || (unsigned long )(xhci->event_ring)->dequeue == (unsigned long )((union xhci_trb *)0)) {
    xhci->error_bitmask = xhci->error_bitmask | 2;
    return (0);
  } else {
  }
  event = (xhci->event_ring)->dequeue;
  if ((event->event_cmd.flags & 1U) != (xhci->event_ring)->cycle_state) {
    xhci->error_bitmask = xhci->error_bitmask | 4;
    return (0);
  } else {
  }
  __asm__ volatile ("lfence": : : "memory");
  switch (event->event_cmd.flags & 64512U) {
  case 33792U:
  handle_cmd_completion(xhci, & event->event_cmd);
  goto ldv_28605;
  case 34816U:
  handle_port_status(xhci, event);
  update_ptrs = 0;
  goto ldv_28605;
  case 32768U:
  ret = handle_tx_event(xhci, & event->trans_event);
  if (ret < 0) {
    xhci->error_bitmask = xhci->error_bitmask | 512;
  } else {
    update_ptrs = 0;
  }
  goto ldv_28605;
  case 38912U:
  handle_device_notification(xhci, event);
  goto ldv_28605;
  default: ;
  if ((event->event_cmd.flags & 64512U) > 49151U) {
    handle_vendor_event(xhci, event);
  } else {
    xhci->error_bitmask = xhci->error_bitmask | 8;
  }
  }
  ldv_28605: ;
  if ((int )xhci->xhc_state & 1) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_handle_event";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor.format = "xHCI host dying, returning from event handler.\n";
    descriptor.lineno = 2708U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "xHCI host dying, returning from event handler.\n");
    } else {
    }
    return (0);
  } else {
  }
  if (update_ptrs != 0) {
    inc_deq(xhci, xhci->event_ring);
  } else {
  }
  return (1);
}
}
irqreturn_t xhci_irq(struct usb_hcd *hcd )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  u32 status ;
  union xhci_trb *trb ;
  u64 temp_64 ;
  union xhci_trb *event_ring_deq ;
  dma_addr_t deq ;
  struct usb_hcd *tmp___0 ;
  u32 irq_pending ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  struct usb_hcd *tmp___4 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  spin_lock(& xhci->lock);
  trb = (xhci->event_ring)->dequeue;
  status = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->status);
  if (status == 4294967295U) {
    goto hw_died;
  } else {
  }
  if ((status & 8U) == 0U) {
    spin_unlock(& xhci->lock);
    return (0);
  } else {
  }
  if ((status & 4U) != 0U) {
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "WARNING: Host System Error\n");
    xhci_halt(xhci);
    hw_died:
    spin_unlock(& xhci->lock);
    return (4294967188L);
  } else {
  }
  status = status | 8U;
  xhci_writel(xhci, status, & (xhci->op_regs)->status);
  if (hcd->irq != 0U) {
    irq_pending = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->ir_set)->irq_pending);
    irq_pending = irq_pending | 2U;
    xhci_writel(xhci, irq_pending, & (xhci->ir_set)->irq_pending);
  } else {
  }
  if ((int )xhci->xhc_state & 1) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_irq";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor.format = "xHCI dying, ignoring interrupt. Shouldn\'t IRQs be disabled?\n";
    descriptor.lineno = 2775U;
    descriptor.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                        "xHCI dying, ignoring interrupt. Shouldn\'t IRQs be disabled?\n");
    } else {
    }
    temp_64 = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->ir_set)->erst_dequeue);
    xhci_write_64(xhci, temp_64 | 8ULL, & (xhci->ir_set)->erst_dequeue);
    spin_unlock(& xhci->lock);
    return (1);
  } else {
  }
  event_ring_deq = (xhci->event_ring)->dequeue;
  goto ldv_28626;
  ldv_28625: ;
  ldv_28626:
  tmp___3 = xhci_handle_event(xhci);
  if (tmp___3 > 0) {
    goto ldv_28625;
  } else {
  }
  temp_64 = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->ir_set)->erst_dequeue);
  if ((unsigned long )(xhci->event_ring)->dequeue != (unsigned long )event_ring_deq) {
    deq = xhci_trb_virt_to_dma((xhci->event_ring)->deq_seg, (xhci->event_ring)->dequeue);
    if (deq == 0ULL) {
      tmp___4 = xhci_to_hcd(xhci);
      dev_warn((struct device const *)tmp___4->self.controller, "WARN something wrong with SW event ring dequeue ptr.\n");
    } else {
    }
    temp_64 = temp_64 & 15ULL;
    temp_64 = (deq & 0xfffffffffffffff0ULL) | temp_64;
  } else {
  }
  temp_64 = temp_64 | 8ULL;
  xhci_write_64(xhci, temp_64, & (xhci->ir_set)->erst_dequeue);
  spin_unlock(& xhci->lock);
  return (1);
}
}
irqreturn_t xhci_msi_irq(int irq , struct usb_hcd *hcd )
{
  irqreturn_t tmp ;
  {
  tmp = xhci_irq(hcd);
  return (tmp);
}
}
static void queue_trb(struct xhci_hcd *xhci , struct xhci_ring *ring , bool more_trbs_coming ,
                      u32 field1 , u32 field2 , u32 field3 , u32 field4 )
{
  struct xhci_generic_trb *trb ;
  {
  trb = & (ring->enqueue)->generic;
  trb->field[0] = field1;
  trb->field[1] = field2;
  trb->field[2] = field3;
  trb->field[3] = field4;
  inc_enq(xhci, ring, (int )more_trbs_coming);
  return;
}
}
static int prepare_ring(struct xhci_hcd *xhci , struct xhci_ring *ep_ring , u32 ep_state ,
                        unsigned int num_trbs , gfp_t mem_flags )
{
  unsigned int num_trbs_needed ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct usb_hcd *tmp___3 ;
  int tmp___4 ;
  struct usb_hcd *tmp___5 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  struct usb_hcd *tmp___8 ;
  int tmp___9 ;
  struct xhci_ring *ring ;
  union xhci_trb *next ;
  int tmp___10 ;
  bool tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  {
  switch (ep_state) {
  case 0U:
  tmp = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp->self.controller, "WARN urb submitted to disabled ep\n");
  return (-2);
  case 4U:
  tmp___0 = xhci_to_hcd(xhci);
  dev_warn((struct device const *)tmp___0->self.controller, "WARN waiting for error on ep to be cleared\n");
  return (-22);
  case 2U:
  descriptor.modname = "xhci_hcd";
  descriptor.function = "prepare_ring";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor.format = "WARN halted endpoint, queueing URB anyway.\n";
  descriptor.lineno = 2867U;
  descriptor.flags = 1U;
  tmp___2 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___1->self.controller,
                      "WARN halted endpoint, queueing URB anyway.\n");
  } else {
  }
  case 3U: ;
  case 1U: ;
  goto ldv_28657;
  default:
  tmp___3 = xhci_to_hcd(xhci);
  dev_err((struct device const *)tmp___3->self.controller, "ERROR unknown endpoint state for ep\n");
  return (-22);
  }
  ldv_28657: ;
  ldv_28661:
  tmp___4 = room_on_ring(xhci, ep_ring, num_trbs);
  if (tmp___4 != 0) {
    goto ldv_28659;
  } else {
  }
  if ((unsigned long )xhci->cmd_ring == (unsigned long )ep_ring) {
    tmp___5 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___5->self.controller, "Do not support expand command ring\n");
    return (-12);
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "prepare_ring";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
  descriptor___0.format = "ERROR no room on ep ring, try ring expansion\n";
  descriptor___0.lineno = 2890U;
  descriptor___0.flags = 1U;
  tmp___7 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    tmp___6 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___6->self.controller,
                      "ERROR no room on ep ring, try ring expansion\n");
  } else {
  }
  num_trbs_needed = num_trbs - ep_ring->num_trbs_free;
  tmp___9 = xhci_ring_expansion(xhci, ep_ring, num_trbs_needed, mem_flags);
  if (tmp___9 != 0) {
    tmp___8 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___8->self.controller, "Ring expansion failed\n");
    return (-12);
  } else {
  }
  goto ldv_28661;
  ldv_28659:
  tmp___13 = enqueue_is_link_trb(ep_ring);
  if (tmp___13 != 0) {
    ring = ep_ring;
    next = ring->enqueue;
    goto ldv_28665;
    ldv_28664:
    tmp___10 = xhci_link_trb_quirk(xhci);
    if (tmp___10 == 0 && ((unsigned int )ring->type != 1U || (xhci->quirks & 512U) == 0U)) {
      next->link.control = next->link.control & 4294967279U;
    } else {
      next->link.control = next->link.control | 16U;
    }
    __asm__ volatile ("sfence": : : "memory");
    next->link.control = next->link.control ^ 1U;
    tmp___11 = last_trb_on_last_seg(xhci, ring, ring->enq_seg, next);
    if ((int )tmp___11) {
      ring->cycle_state = ring->cycle_state == 0U;
    } else {
    }
    ring->enq_seg = (ring->enq_seg)->next;
    ring->enqueue = (ring->enq_seg)->trbs;
    next = ring->enqueue;
    ldv_28665:
    tmp___12 = last_trb(xhci, ring, ring->enq_seg, next);
    if (tmp___12 != 0) {
      goto ldv_28664;
    } else {
    }
  } else {
  }
  return (0);
}
}
static int prepare_transfer(struct xhci_hcd *xhci , struct xhci_virt_device *xdev ,
                            unsigned int ep_index , unsigned int stream_id , unsigned int num_trbs ,
                            struct urb *urb , unsigned int td_index , gfp_t mem_flags )
{
  int ret ;
  struct urb_priv *urb_priv ;
  struct xhci_td *td ;
  struct xhci_ring *ep_ring ;
  struct xhci_ep_ctx *ep_ctx ;
  struct xhci_ep_ctx *tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  {
  tmp = xhci_get_ep_ctx(xhci, xdev->out_ctx, ep_index);
  ep_ctx = tmp;
  ep_ring = xhci_stream_id_to_ring(xdev, ep_index, stream_id);
  if ((unsigned long )ep_ring == (unsigned long )((struct xhci_ring *)0)) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "prepare_transfer";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor.format = "Can\'t prepare ring for bad stream ID %u\n";
    descriptor.lineno = 2950U;
    descriptor.flags = 1U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                        "Can\'t prepare ring for bad stream ID %u\n", stream_id);
    } else {
    }
    return (-22);
  } else {
  }
  ret = prepare_ring(xhci, ep_ring, ep_ctx->ep_info & 15U, num_trbs, mem_flags);
  if (ret != 0) {
    return (ret);
  } else {
  }
  urb_priv = (struct urb_priv *)urb->hcpriv;
  td = urb_priv->td[td_index];
  INIT_LIST_HEAD(& td->td_list);
  INIT_LIST_HEAD(& td->cancelled_td_list);
  if (td_index == 0U) {
    tmp___2 = bus_to_hcd((urb->dev)->bus);
    ret = usb_hcd_link_urb_to_ep(tmp___2, urb);
    tmp___3 = ldv__builtin_expect(ret != 0, 0L);
    if (tmp___3 != 0L) {
      return (ret);
    } else {
    }
  } else {
  }
  td->urb = urb;
  list_add_tail(& td->td_list, & ep_ring->td_list);
  td->start_seg = ep_ring->enq_seg;
  td->first_trb = ep_ring->enqueue;
  urb_priv->td[td_index] = td;
  return (0);
}
}
static unsigned int count_sg_trbs_needed(struct xhci_hcd *xhci , struct urb *urb )
{
  int num_sgs ;
  int num_trbs ;
  int running_total ;
  int temp ;
  int i ;
  struct scatterlist *sg ;
  unsigned int len ;
  int __min1 ;
  int __min2 ;
  {
  sg = 0;
  num_sgs = urb->num_mapped_sgs;
  temp = (int )urb->transfer_buffer_length;
  num_trbs = 0;
  i = 0;
  sg = urb->sg;
  goto ldv_28703;
  ldv_28702:
  len = sg->dma_length;
  running_total = (int )(65536U - ((unsigned int )sg->dma_address & 65535U));
  running_total = running_total & 65535;
  if (running_total != 0) {
    num_trbs = num_trbs + 1;
  } else {
  }
  goto ldv_28696;
  ldv_28695:
  num_trbs = num_trbs + 1;
  running_total = running_total + 65536;
  ldv_28696: ;
  if ((unsigned int )running_total < sg->dma_length && running_total < temp) {
    goto ldv_28695;
  } else {
  }
  __min1 = (int )len;
  __min2 = temp;
  len = (unsigned int )(__min1 < __min2 ? __min1 : __min2);
  temp = (int )((unsigned int )temp - len);
  if (temp == 0) {
    goto ldv_28701;
  } else {
  }
  i = i + 1;
  sg = sg_next(sg);
  ldv_28703: ;
  if (i < num_sgs) {
    goto ldv_28702;
  } else {
  }
  ldv_28701: ;
  return ((unsigned int )num_trbs);
}
}
static void check_trb_math(struct urb *urb , int num_trbs , int running_total )
{
  {
  if (num_trbs != 0) {
    dev_err((struct device const *)(& (urb->dev)->dev), "%s - ep %#x - Miscalculated number of TRBs, %d left\n",
            "check_trb_math", (int )(urb->ep)->desc.bEndpointAddress, num_trbs);
  } else {
  }
  if ((u32 )running_total != urb->transfer_buffer_length) {
    dev_err((struct device const *)(& (urb->dev)->dev), "%s - ep %#x - Miscalculated tx length, queued %#x (%d), asked for %#x (%d)\n",
            "check_trb_math", (int )(urb->ep)->desc.bEndpointAddress, running_total,
            running_total, urb->transfer_buffer_length, urb->transfer_buffer_length);
  } else {
  }
  return;
}
}
static void giveback_first_trb(struct xhci_hcd *xhci , int slot_id , unsigned int ep_index ,
                               unsigned int stream_id , int start_cycle , struct xhci_generic_trb *start_trb )
{
  {
  __asm__ volatile ("sfence": : : "memory");
  if (start_cycle != 0) {
    start_trb->field[3] = start_trb->field[3] | (__le32 )start_cycle;
  } else {
    start_trb->field[3] = start_trb->field[3] & 4294967294U;
  }
  xhci_ring_ep_doorbell(xhci, (unsigned int )slot_id, ep_index, stream_id);
  return;
}
}
int xhci_queue_intr_tx(struct xhci_hcd *xhci , gfp_t mem_flags , struct urb *urb ,
                       int slot_id , unsigned int ep_index )
{
  struct xhci_ep_ctx *ep_ctx ;
  struct xhci_ep_ctx *tmp ;
  int xhci_interval ;
  int ep_interval ;
  struct _ddebug descriptor ;
  long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = xhci_get_ep_ctx(xhci, (xhci->devs[slot_id])->out_ctx, ep_index);
  ep_ctx = tmp;
  xhci_interval = 1 << ((int )(ep_ctx->ep_info >> 16) & 255);
  ep_interval = urb->interval;
  if ((unsigned int )(urb->dev)->speed == 1U || (unsigned int )(urb->dev)->speed == 2U) {
    ep_interval = ep_interval * 8;
  } else {
  }
  if (xhci_interval != ep_interval) {
    tmp___1 = __printk_ratelimit("xhci_queue_intr_tx");
    if (tmp___1 != 0) {
      descriptor.modname = "xhci_hcd";
      descriptor.function = "xhci_queue_intr_tx";
      descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
      descriptor.format = "Driver uses different interval (%d microframe%s) than xHCI (%d microframe%s)\n";
      descriptor.lineno = 3079U;
      descriptor.flags = 1U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(& (urb->dev)->dev),
                          "Driver uses different interval (%d microframe%s) than xHCI (%d microframe%s)\n",
                          ep_interval, ep_interval == 1 ? (char *)"" : (char *)"s",
                          xhci_interval, xhci_interval == 1 ? (char *)"" : (char *)"s");
      } else {
      }
    } else {
    }
    urb->interval = xhci_interval;
    if ((unsigned int )(urb->dev)->speed == 1U || (unsigned int )(urb->dev)->speed == 2U) {
      urb->interval = urb->interval / 8;
    } else {
    }
  } else {
  }
  tmp___2 = xhci_queue_bulk_tx(xhci, mem_flags, urb, slot_id, ep_index);
  return (tmp___2);
}
}
static u32 xhci_td_remainder(unsigned int remainder )
{
  u32 max ;
  {
  max = 31U;
  if (remainder >> 10 >= max) {
    return (max << 17);
  } else {
    return ((remainder >> 10) << 17);
  }
}
}
static u32 xhci_v1_0_td_remainder(int running_total , int trb_buff_len , unsigned int total_packet_count ,
                                  struct urb *urb , unsigned int num_trbs_left )
{
  int packets_transferred ;
  int tmp ;
  {
  if (num_trbs_left == 0U || (running_total == 0 && trb_buff_len == 0)) {
    return (0U);
  } else {
  }
  tmp = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
  packets_transferred = (running_total + trb_buff_len) / tmp;
  if (total_packet_count - (unsigned int )packets_transferred > 31U) {
    return (4063232U);
  } else {
  }
  return ((total_packet_count - (unsigned int )packets_transferred) << 17);
}
}
static int queue_bulk_sg_tx(struct xhci_hcd *xhci , gfp_t mem_flags , struct urb *urb ,
                            int slot_id , unsigned int ep_index )
{
  struct xhci_ring *ep_ring ;
  unsigned int num_trbs ;
  struct urb_priv *urb_priv ;
  struct xhci_td *td ;
  struct scatterlist *sg ;
  int num_sgs ;
  int trb_buff_len ;
  int this_sg_len ;
  int running_total ;
  unsigned int total_packet_count ;
  bool first_trb ;
  u64 addr ;
  bool more_trbs_coming ;
  struct xhci_generic_trb *start_trb ;
  int start_cycle ;
  int tmp ;
  int tmp___0 ;
  int __min1 ;
  int __min2 ;
  u32 field ;
  u32 length_field ;
  u32 remainder ;
  int tmp___1 ;
  struct usb_hcd *tmp___2 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  int __min1___0 ;
  int __min2___0 ;
  {
  ep_ring = xhci_urb_to_transfer_ring___0(xhci, urb);
  if ((unsigned long )ep_ring == (unsigned long )((struct xhci_ring *)0)) {
    return (-22);
  } else {
  }
  num_trbs = count_sg_trbs_needed(xhci, urb);
  num_sgs = urb->num_mapped_sgs;
  tmp = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
  tmp___0 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
  total_packet_count = ((urb->transfer_buffer_length + (u32 )tmp) - 1U) / (u32 )tmp___0;
  trb_buff_len = prepare_transfer(xhci, xhci->devs[slot_id], ep_index, urb->stream_id,
                                  num_trbs, urb, 0U, mem_flags);
  if (trb_buff_len < 0) {
    return (trb_buff_len);
  } else {
  }
  urb_priv = (struct urb_priv *)urb->hcpriv;
  td = urb_priv->td[0];
  start_trb = & (ep_ring->enqueue)->generic;
  start_cycle = (int )ep_ring->cycle_state;
  running_total = 0;
  sg = urb->sg;
  addr = sg->dma_address;
  this_sg_len = (int )sg->dma_length;
  trb_buff_len = (int )(65536U - ((unsigned int )addr & 65535U));
  __min1 = trb_buff_len;
  __min2 = this_sg_len;
  trb_buff_len = __min1 < __min2 ? __min1 : __min2;
  if ((u32 )trb_buff_len > urb->transfer_buffer_length) {
    trb_buff_len = (int )urb->transfer_buffer_length;
  } else {
  }
  first_trb = 1;
  ldv_28776:
  field = 0U;
  length_field = 0U;
  remainder = 0U;
  if ((int )first_trb) {
    first_trb = 0;
    if (start_cycle == 0) {
      field = field | 1U;
    } else {
    }
  } else {
    field = ep_ring->cycle_state | field;
  }
  if (num_trbs > 1U) {
    field = field | 16U;
  } else {
    td->last_trb = ep_ring->enqueue;
    field = field | 32U;
  }
  tmp___1 = usb_urb_dir_in(urb);
  if (tmp___1 != 0) {
    field = field | 4U;
  } else {
  }
  if (65536ULL - (addr & 65535ULL) < (u64 )trb_buff_len) {
    tmp___2 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___2->self.controller, "WARN: sg dma xfer crosses 64KB boundaries!\n");
    descriptor.modname = "xhci_hcd";
    descriptor.function = "queue_bulk_sg_tx";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor.format = "Next boundary at %#x, end dma = %#x\n";
    descriptor.lineno = 3237U;
    descriptor.flags = 1U;
    tmp___4 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      tmp___3 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___3->self.controller,
                        "Next boundary at %#x, end dma = %#x\n", ((unsigned int )addr + 65536U) & 4294901760U,
                        (unsigned int )addr + (unsigned int )trb_buff_len);
    } else {
    }
  } else {
  }
  if ((unsigned int )xhci->hci_version <= 255U) {
    remainder = xhci_td_remainder(urb->transfer_buffer_length - (u32 )running_total);
  } else {
    remainder = xhci_v1_0_td_remainder(running_total, trb_buff_len, total_packet_count,
                                       urb, num_trbs - 1U);
  }
  length_field = ((u32 )trb_buff_len & 131071U) | remainder;
  if (num_trbs > 1U) {
    more_trbs_coming = 1;
  } else {
    more_trbs_coming = 0;
  }
  queue_trb(xhci, ep_ring, (int )more_trbs_coming, (unsigned int )addr, (unsigned int )(addr >> 32ULL),
            length_field, field | 1024U);
  num_trbs = num_trbs - 1U;
  running_total = running_total + trb_buff_len;
  this_sg_len = this_sg_len - trb_buff_len;
  if (this_sg_len == 0) {
    num_sgs = num_sgs - 1;
    if (num_sgs == 0) {
      goto ldv_28772;
    } else {
    }
    sg = sg_next(sg);
    addr = sg->dma_address;
    this_sg_len = (int )sg->dma_length;
  } else {
    addr = (u64 )trb_buff_len + addr;
  }
  trb_buff_len = (int )(65536U - ((unsigned int )addr & 65535U));
  __min1___0 = trb_buff_len;
  __min2___0 = this_sg_len;
  trb_buff_len = __min1___0 < __min2___0 ? __min1___0 : __min2___0;
  if ((u32 )(running_total + trb_buff_len) > urb->transfer_buffer_length) {
    trb_buff_len = (int )(urb->transfer_buffer_length - (u32 )running_total);
  } else {
  }
  if ((u32 )running_total < urb->transfer_buffer_length) {
    goto ldv_28776;
  } else {
  }
  ldv_28772:
  check_trb_math(urb, (int )num_trbs, running_total);
  giveback_first_trb(xhci, slot_id, ep_index, urb->stream_id, start_cycle, start_trb);
  return (0);
}
}
int xhci_queue_bulk_tx(struct xhci_hcd *xhci , gfp_t mem_flags , struct urb *urb ,
                       int slot_id , unsigned int ep_index )
{
  struct xhci_ring *ep_ring ;
  struct urb_priv *urb_priv ;
  struct xhci_td *td ;
  int num_trbs ;
  struct xhci_generic_trb *start_trb ;
  bool first_trb ;
  bool more_trbs_coming ;
  int start_cycle ;
  u32 field ;
  u32 length_field ;
  int running_total ;
  int trb_buff_len ;
  int ret ;
  unsigned int total_packet_count ;
  u64 addr ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  u32 remainder ;
  int tmp___2 ;
  {
  if (urb->num_sgs != 0) {
    tmp = queue_bulk_sg_tx(xhci, mem_flags, urb, slot_id, ep_index);
    return (tmp);
  } else {
  }
  ep_ring = xhci_urb_to_transfer_ring___0(xhci, urb);
  if ((unsigned long )ep_ring == (unsigned long )((struct xhci_ring *)0)) {
    return (-22);
  } else {
  }
  num_trbs = 0;
  running_total = (int )(65536U - ((unsigned int )urb->transfer_dma & 65535U));
  running_total = running_total & 65535;
  if (running_total != 0 || urb->transfer_buffer_length == 0U) {
    num_trbs = num_trbs + 1;
  } else {
  }
  goto ldv_28800;
  ldv_28799:
  num_trbs = num_trbs + 1;
  running_total = running_total + 65536;
  ldv_28800: ;
  if ((u32 )running_total < urb->transfer_buffer_length) {
    goto ldv_28799;
  } else {
  }
  ret = prepare_transfer(xhci, xhci->devs[slot_id], ep_index, urb->stream_id, (unsigned int )num_trbs,
                         urb, 0U, mem_flags);
  if (ret < 0) {
    return (ret);
  } else {
  }
  urb_priv = (struct urb_priv *)urb->hcpriv;
  td = urb_priv->td[0];
  start_trb = & (ep_ring->enqueue)->generic;
  start_cycle = (int )ep_ring->cycle_state;
  running_total = 0;
  tmp___0 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
  tmp___1 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
  total_packet_count = ((urb->transfer_buffer_length + (u32 )tmp___0) - 1U) / (u32 )tmp___1;
  addr = urb->transfer_dma;
  trb_buff_len = (int )(65536U - ((unsigned int )urb->transfer_dma & 65535U));
  if ((u32 )trb_buff_len > urb->transfer_buffer_length) {
    trb_buff_len = (int )urb->transfer_buffer_length;
  } else {
  }
  first_trb = 1;
  ldv_28803:
  remainder = 0U;
  field = 0U;
  if ((int )first_trb) {
    first_trb = 0;
    if (start_cycle == 0) {
      field = field | 1U;
    } else {
    }
  } else {
    field = ep_ring->cycle_state | field;
  }
  if (num_trbs > 1) {
    field = field | 16U;
  } else {
    td->last_trb = ep_ring->enqueue;
    field = field | 32U;
  }
  tmp___2 = usb_urb_dir_in(urb);
  if (tmp___2 != 0) {
    field = field | 4U;
  } else {
  }
  if ((unsigned int )xhci->hci_version <= 255U) {
    remainder = xhci_td_remainder(urb->transfer_buffer_length - (u32 )running_total);
  } else {
    remainder = xhci_v1_0_td_remainder(running_total, trb_buff_len, total_packet_count,
                                       urb, (unsigned int )(num_trbs + -1));
  }
  length_field = ((u32 )trb_buff_len & 131071U) | remainder;
  if (num_trbs > 1) {
    more_trbs_coming = 1;
  } else {
    more_trbs_coming = 0;
  }
  queue_trb(xhci, ep_ring, (int )more_trbs_coming, (unsigned int )addr, (unsigned int )(addr >> 32ULL),
            length_field, field | 1024U);
  num_trbs = num_trbs - 1;
  running_total = running_total + trb_buff_len;
  addr = (u64 )trb_buff_len + addr;
  trb_buff_len = (int )(urb->transfer_buffer_length - (u32 )running_total);
  if (trb_buff_len > 65536) {
    trb_buff_len = 65536;
  } else {
  }
  if ((u32 )running_total < urb->transfer_buffer_length) {
    goto ldv_28803;
  } else {
  }
  check_trb_math(urb, num_trbs, running_total);
  giveback_first_trb(xhci, slot_id, ep_index, urb->stream_id, start_cycle, start_trb);
  return (0);
}
}
int xhci_queue_ctrl_tx(struct xhci_hcd *xhci , gfp_t mem_flags , struct urb *urb ,
                       int slot_id , unsigned int ep_index )
{
  struct xhci_ring *ep_ring ;
  int num_trbs ;
  int ret ;
  struct usb_ctrlrequest *setup ;
  struct xhci_generic_trb *start_trb ;
  int start_cycle ;
  u32 field ;
  u32 length_field ;
  struct urb_priv *urb_priv ;
  struct xhci_td *td ;
  int tmp ;
  u32 tmp___0 ;
  {
  ep_ring = xhci_urb_to_transfer_ring___0(xhci, urb);
  if ((unsigned long )ep_ring == (unsigned long )((struct xhci_ring *)0)) {
    return (-22);
  } else {
  }
  if ((unsigned long )urb->setup_packet == (unsigned long )((unsigned char *)0)) {
    return (-22);
  } else {
  }
  num_trbs = 2;
  if (urb->transfer_buffer_length != 0U) {
    num_trbs = num_trbs + 1;
  } else {
  }
  ret = prepare_transfer(xhci, xhci->devs[slot_id], ep_index, urb->stream_id, (unsigned int )num_trbs,
                         urb, 0U, mem_flags);
  if (ret < 0) {
    return (ret);
  } else {
  }
  urb_priv = (struct urb_priv *)urb->hcpriv;
  td = urb_priv->td[0];
  start_trb = & (ep_ring->enqueue)->generic;
  start_cycle = (int )ep_ring->cycle_state;
  setup = (struct usb_ctrlrequest *)urb->setup_packet;
  field = 0U;
  field = field | 2112U;
  if (start_cycle == 0) {
    field = field | 1U;
  } else {
  }
  if ((unsigned int )xhci->hci_version == 256U) {
    if (urb->transfer_buffer_length != 0U) {
      if ((int )((signed char )setup->bRequestType) < 0) {
        field = field | 196608U;
      } else {
        field = field | 131072U;
      }
    } else {
    }
  } else {
  }
  queue_trb(xhci, ep_ring, 1, (u32 )(((int )setup->bRequestType | ((int )setup->bRequest << 8)) | ((int )setup->wValue << 16)),
            (u32 )((int )setup->wIndex | ((int )setup->wLength << 16)), 8U, field);
  tmp = usb_urb_dir_in(urb);
  if (tmp != 0) {
    field = 3076U;
  } else {
    field = 3072U;
  }
  tmp___0 = xhci_td_remainder(urb->transfer_buffer_length);
  length_field = (urb->transfer_buffer_length & 131071U) | tmp___0;
  if (urb->transfer_buffer_length != 0U) {
    if ((int )((signed char )setup->bRequestType) < 0) {
      field = field | 65536U;
    } else {
    }
    queue_trb(xhci, ep_ring, 1, (unsigned int )urb->transfer_dma, (unsigned int )(urb->transfer_dma >> 32ULL),
              length_field, ep_ring->cycle_state | field);
  } else {
  }
  td->last_trb = ep_ring->enqueue;
  if (urb->transfer_buffer_length != 0U && (int )((signed char )setup->bRequestType) < 0) {
    field = 0U;
  } else {
    field = 65536U;
  }
  queue_trb(xhci, ep_ring, 0, 0U, 0U, 0U, (ep_ring->cycle_state | field) | 4128U);
  giveback_first_trb(xhci, slot_id, ep_index, 0U, start_cycle, start_trb);
  return (0);
}
}
static int count_isoc_trbs_needed(struct xhci_hcd *xhci , struct urb *urb , int i )
{
  int num_trbs ;
  u64 addr ;
  u64 td_len ;
  {
  num_trbs = 0;
  addr = urb->transfer_dma + (dma_addr_t )urb->iso_frame_desc[i].offset;
  td_len = (u64 )urb->iso_frame_desc[i].length;
  num_trbs = (int )((((addr & 65535ULL) + td_len) + 65535ULL) / 65536ULL);
  if (num_trbs == 0) {
    num_trbs = num_trbs + 1;
  } else {
  }
  return (num_trbs);
}
}
static unsigned int xhci_get_burst_count(struct xhci_hcd *xhci , struct usb_device *udev ,
                                         struct urb *urb , unsigned int total_packet_count )
{
  unsigned int max_burst ;
  unsigned int __y ;
  {
  if ((unsigned int )xhci->hci_version <= 255U || (unsigned int )udev->speed != 5U) {
    return (0U);
  } else {
  }
  max_burst = (unsigned int )(urb->ep)->ss_ep_comp.bMaxBurst;
  __y = max_burst + 1U;
  return ((((__y + total_packet_count) - 1U) / __y) * __y - 1U);
}
}
static unsigned int xhci_get_last_burst_packet_count(struct xhci_hcd *xhci , struct usb_device *udev ,
                                                     struct urb *urb , unsigned int total_packet_count )
{
  unsigned int max_burst ;
  unsigned int residue ;
  {
  if ((unsigned int )xhci->hci_version <= 255U) {
    return (0U);
  } else {
  }
  switch ((unsigned int )udev->speed) {
  case 5U:
  max_burst = (unsigned int )(urb->ep)->ss_ep_comp.bMaxBurst;
  residue = total_packet_count % (max_burst + 1U);
  if (residue == 0U) {
    return (max_burst);
  } else {
  }
  return (residue - 1U);
  default: ;
  if (total_packet_count == 0U) {
    return (0U);
  } else {
  }
  return (total_packet_count - 1U);
  }
}
}
static int xhci_queue_isoc_tx(struct xhci_hcd *xhci , gfp_t mem_flags , struct urb *urb ,
                              int slot_id , unsigned int ep_index )
{
  struct xhci_ring *ep_ring ;
  struct urb_priv *urb_priv ;
  struct xhci_td *td ;
  int num_tds ;
  int trbs_per_td ;
  struct xhci_generic_trb *start_trb ;
  bool first_trb ;
  int start_cycle ;
  u32 field ;
  u32 length_field ;
  int running_total ;
  int trb_buff_len ;
  int td_len ;
  int td_remain_len ;
  int ret ;
  u64 start_addr ;
  u64 addr ;
  int i ;
  int j ;
  bool more_trbs_coming ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  unsigned int total_packet_count ;
  unsigned int burst_count ;
  unsigned int residue ;
  int tmp___1 ;
  int tmp___2 ;
  u32 remainder ;
  int tmp___3 ;
  struct usb_hcd *tmp___4 ;
  struct usb_hcd *tmp___5 ;
  struct usb_hcd *tmp___6 ;
  struct usb_hcd *tmp___7 ;
  {
  ep_ring = (xhci->devs[slot_id])->eps[ep_index].ring;
  num_tds = urb->number_of_packets;
  if (num_tds <= 0) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_queue_isoc_tx";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
    descriptor.format = "Isoc URB with zero packets?\n";
    descriptor.lineno = 3646U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "Isoc URB with zero packets?\n");
    } else {
    }
    return (-22);
  } else {
  }
  start_addr = urb->transfer_dma;
  start_trb = & (ep_ring->enqueue)->generic;
  start_cycle = (int )ep_ring->cycle_state;
  urb_priv = (struct urb_priv *)urb->hcpriv;
  i = 0;
  goto ldv_28887;
  ldv_28886:
  first_trb = 1;
  running_total = 0;
  addr = (u64 )urb->iso_frame_desc[i].offset + start_addr;
  td_len = (int )urb->iso_frame_desc[i].length;
  td_remain_len = td_len;
  tmp___1 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
  tmp___2 = usb_endpoint_maxp((struct usb_endpoint_descriptor const *)(& (urb->ep)->desc));
  total_packet_count = (unsigned int )(((tmp___1 + td_len) + -1) / tmp___2);
  if (total_packet_count == 0U) {
    total_packet_count = total_packet_count + 1U;
  } else {
  }
  burst_count = xhci_get_burst_count(xhci, urb->dev, urb, total_packet_count);
  residue = xhci_get_last_burst_packet_count(xhci, urb->dev, urb, total_packet_count);
  trbs_per_td = count_isoc_trbs_needed(xhci, urb, i);
  ret = prepare_transfer(xhci, xhci->devs[slot_id], ep_index, urb->stream_id, (unsigned int )trbs_per_td,
                         urb, (unsigned int )i, mem_flags);
  if (ret < 0) {
    if (i == 0) {
      return (ret);
    } else {
    }
    goto cleanup;
  } else {
  }
  td = urb_priv->td[i];
  j = 0;
  goto ldv_28884;
  ldv_28883:
  remainder = 0U;
  field = ((burst_count & 3U) << 7) | ((residue & 15U) << 16);
  if ((int )first_trb) {
    field = field | 5120U;
    field = field | 2147483648U;
    if (i == 0) {
      if (start_cycle == 0) {
        field = field | 1U;
      } else {
        field = ep_ring->cycle_state | field;
      }
    } else {
    }
    first_trb = 0;
  } else {
    field = field | 1024U;
    field = ep_ring->cycle_state | field;
  }
  tmp___3 = usb_urb_dir_in(urb);
  if (tmp___3 != 0) {
    field = field | 4U;
  } else {
  }
  if (trbs_per_td + -1 > j) {
    field = field | 16U;
    more_trbs_coming = 1;
  } else {
    td->last_trb = ep_ring->enqueue;
    field = field | 32U;
    if ((unsigned int )xhci->hci_version == 256U && (xhci->quirks & 32768U) == 0U) {
      if (num_tds + -1 > i) {
        field = field | 512U;
      } else {
      }
    } else {
    }
    more_trbs_coming = 0;
  }
  trb_buff_len = (int )(65536U - ((unsigned int )addr & 65535U));
  if (trb_buff_len > td_remain_len) {
    trb_buff_len = td_remain_len;
  } else {
  }
  if ((unsigned int )xhci->hci_version <= 255U) {
    remainder = xhci_td_remainder((unsigned int )(td_len - running_total));
  } else {
    remainder = xhci_v1_0_td_remainder(running_total, trb_buff_len, total_packet_count,
                                       urb, (unsigned int )((trbs_per_td - j) + -1));
  }
  length_field = ((u32 )trb_buff_len & 131071U) | remainder;
  queue_trb(xhci, ep_ring, (int )more_trbs_coming, (unsigned int )addr, (unsigned int )(addr >> 32ULL),
            length_field, field);
  running_total = running_total + trb_buff_len;
  addr = (u64 )trb_buff_len + addr;
  td_remain_len = td_remain_len - trb_buff_len;
  j = j + 1;
  ldv_28884: ;
  if (j < trbs_per_td) {
    goto ldv_28883;
  } else {
  }
  if (running_total != td_len) {
    tmp___4 = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp___4->self.controller, "ISOC TD length unmatch\n");
    ret = -22;
    goto cleanup;
  } else {
  }
  i = i + 1;
  ldv_28887: ;
  if (i < num_tds) {
    goto ldv_28886;
  } else {
  }
  tmp___5 = xhci_to_hcd(xhci);
  if (tmp___5->self.bandwidth_isoc_reqs == 0) {
    if ((xhci->quirks & 8U) != 0U) {
      usb_amd_quirk_pll_disable();
    } else {
    }
  } else {
  }
  tmp___6 = xhci_to_hcd(xhci);
  tmp___6->self.bandwidth_isoc_reqs = tmp___6->self.bandwidth_isoc_reqs + 1;
  giveback_first_trb(xhci, slot_id, ep_index, urb->stream_id, start_cycle, start_trb);
  return (0);
  cleanup:
  i = i - 1;
  goto ldv_28890;
  ldv_28889:
  list_del_init(& (urb_priv->td[i])->td_list);
  i = i - 1;
  ldv_28890: ;
  if (i >= 0) {
    goto ldv_28889;
  } else {
  }
  (urb_priv->td[0])->last_trb = ep_ring->enqueue;
  td_to_noop(xhci, ep_ring, urb_priv->td[0], 1);
  ep_ring->enqueue = (urb_priv->td[0])->first_trb;
  ep_ring->enq_seg = (urb_priv->td[0])->start_seg;
  ep_ring->cycle_state = (u32 )start_cycle;
  ep_ring->num_trbs_free = ep_ring->num_trbs_free_temp;
  tmp___7 = bus_to_hcd((urb->dev)->bus);
  usb_hcd_unlink_urb_from_ep(tmp___7, urb);
  return (ret);
}
}
int xhci_queue_isoc_tx_prepare(struct xhci_hcd *xhci , gfp_t mem_flags , struct urb *urb ,
                               int slot_id , unsigned int ep_index )
{
  struct xhci_virt_device *xdev ;
  struct xhci_ring *ep_ring ;
  struct xhci_ep_ctx *ep_ctx ;
  int start_frame ;
  int xhci_interval ;
  int ep_interval ;
  int num_tds ;
  int num_trbs ;
  int i ;
  int ret ;
  int tmp ;
  unsigned int tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  xdev = xhci->devs[slot_id];
  ep_ring = xdev->eps[ep_index].ring;
  ep_ctx = xhci_get_ep_ctx(xhci, xdev->out_ctx, ep_index);
  num_trbs = 0;
  num_tds = urb->number_of_packets;
  i = 0;
  goto ldv_28910;
  ldv_28909:
  tmp = count_isoc_trbs_needed(xhci, urb, i);
  num_trbs = tmp + num_trbs;
  i = i + 1;
  ldv_28910: ;
  if (i < num_tds) {
    goto ldv_28909;
  } else {
  }
  ret = prepare_ring(xhci, ep_ring, ep_ctx->ep_info & 15U, (unsigned int )num_trbs,
                     mem_flags);
  if (ret != 0) {
    return (ret);
  } else {
  }
  tmp___0 = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->run_regs)->microframe_index);
  start_frame = (int )tmp___0;
  start_frame = start_frame & 16383;
  urb->start_frame = start_frame;
  if ((unsigned int )(urb->dev)->speed == 1U || (unsigned int )(urb->dev)->speed == 2U) {
    urb->start_frame = urb->start_frame >> 3;
  } else {
  }
  xhci_interval = 1 << ((int )(ep_ctx->ep_info >> 16) & 255);
  ep_interval = urb->interval;
  if ((unsigned int )(urb->dev)->speed == 1U || (unsigned int )(urb->dev)->speed == 2U) {
    ep_interval = ep_interval * 8;
  } else {
  }
  if (xhci_interval != ep_interval) {
    tmp___2 = __printk_ratelimit("xhci_queue_isoc_tx_prepare");
    if (tmp___2 != 0) {
      descriptor.modname = "xhci_hcd";
      descriptor.function = "xhci_queue_isoc_tx_prepare";
      descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-ring.c.prepared";
      descriptor.format = "Driver uses different interval (%d microframe%s) than xHCI (%d microframe%s)\n";
      descriptor.lineno = 3865U;
      descriptor.flags = 1U;
      tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___1 != 0L) {
        __dynamic_dev_dbg(& descriptor, (struct device const *)(& (urb->dev)->dev),
                          "Driver uses different interval (%d microframe%s) than xHCI (%d microframe%s)\n",
                          ep_interval, ep_interval == 1 ? (char *)"" : (char *)"s",
                          xhci_interval, xhci_interval == 1 ? (char *)"" : (char *)"s");
      } else {
      }
    } else {
    }
    urb->interval = xhci_interval;
    if ((unsigned int )(urb->dev)->speed == 1U || (unsigned int )(urb->dev)->speed == 2U) {
      urb->interval = urb->interval / 8;
    } else {
    }
  } else {
  }
  ep_ring->num_trbs_free_temp = ep_ring->num_trbs_free;
  tmp___3 = xhci_queue_isoc_tx(xhci, mem_flags, urb, slot_id, ep_index);
  return (tmp___3);
}
}
static int queue_command(struct xhci_hcd *xhci , u32 field1 , u32 field2 , u32 field3 ,
                         u32 field4 , bool command_must_succeed )
{
  int reserved_trbs ;
  int ret ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  {
  reserved_trbs = (int )xhci->cmd_ring_reserved_trbs;
  if (! command_must_succeed) {
    reserved_trbs = reserved_trbs + 1;
  } else {
  }
  ret = prepare_ring(xhci, xhci->cmd_ring, 1U, (unsigned int )reserved_trbs, 32U);
  if (ret < 0) {
    tmp = xhci_to_hcd(xhci);
    dev_err((struct device const *)tmp->self.controller, "ERR: No room for command on command ring\n");
    if ((int )command_must_succeed) {
      tmp___0 = xhci_to_hcd(xhci);
      dev_err((struct device const *)tmp___0->self.controller, "ERR: Reserved TRB counting for unfailable commands failed.\n");
    } else {
    }
    return (ret);
  } else {
  }
  queue_trb(xhci, xhci->cmd_ring, 0, field1, field2, field3, (xhci->cmd_ring)->cycle_state | field4);
  return (0);
}
}
int xhci_queue_slot_control(struct xhci_hcd *xhci , u32 trb_type , u32 slot_id )
{
  int tmp ;
  {
  tmp = queue_command(xhci, 0U, 0U, 0U, (trb_type << 10) | (slot_id << 24), 0);
  return (tmp);
}
}
int xhci_queue_address_device(struct xhci_hcd *xhci , dma_addr_t in_ctx_ptr , u32 slot_id )
{
  int tmp ;
  {
  tmp = queue_command(xhci, (unsigned int )in_ctx_ptr, (unsigned int )(in_ctx_ptr >> 32ULL),
                      0U, (slot_id << 24) | 11264U, 0);
  return (tmp);
}
}
int xhci_queue_vendor_command(struct xhci_hcd *xhci , u32 field1 , u32 field2 , u32 field3 ,
                              u32 field4 )
{
  int tmp ;
  {
  tmp = queue_command(xhci, field1, field2, field3, field4, 0);
  return (tmp);
}
}
int xhci_queue_reset_device(struct xhci_hcd *xhci , u32 slot_id )
{
  int tmp ;
  {
  tmp = queue_command(xhci, 0U, 0U, 0U, (slot_id << 24) | 17408U, 0);
  return (tmp);
}
}
int xhci_queue_configure_endpoint(struct xhci_hcd *xhci , dma_addr_t in_ctx_ptr ,
                                  u32 slot_id , bool command_must_succeed )
{
  int tmp ;
  {
  tmp = queue_command(xhci, (unsigned int )in_ctx_ptr, (unsigned int )(in_ctx_ptr >> 32ULL),
                      0U, (slot_id << 24) | 12288U, (int )command_must_succeed);
  return (tmp);
}
}
int xhci_queue_evaluate_context(struct xhci_hcd *xhci , dma_addr_t in_ctx_ptr , u32 slot_id ,
                                bool command_must_succeed )
{
  int tmp ;
  {
  tmp = queue_command(xhci, (unsigned int )in_ctx_ptr, (unsigned int )(in_ctx_ptr >> 32ULL),
                      0U, (slot_id << 24) | 13312U, (int )command_must_succeed);
  return (tmp);
}
}
int xhci_queue_stop_endpoint(struct xhci_hcd *xhci , int slot_id , unsigned int ep_index ,
                             int suspend )
{
  u32 trb_slot_id ;
  u32 trb_ep_index ;
  u32 type ;
  u32 trb_suspend ;
  int tmp ;
  {
  trb_slot_id = (u32 )(slot_id << 24);
  trb_ep_index = ((ep_index + 1U) & 31U) << 16;
  type = 15360U;
  trb_suspend = (u32 )((suspend & 1) << 23);
  tmp = queue_command(xhci, 0U, 0U, 0U, ((trb_slot_id | trb_ep_index) | type) | trb_suspend,
                      0);
  return (tmp);
}
}
static int queue_set_tr_deq(struct xhci_hcd *xhci , int slot_id , unsigned int ep_index ,
                            unsigned int stream_id , struct xhci_segment *deq_seg ,
                            union xhci_trb *deq_ptr , u32 cycle_state )
{
  dma_addr_t addr ;
  u32 trb_slot_id ;
  u32 trb_ep_index ;
  u32 trb_stream_id ;
  u32 type ;
  struct xhci_virt_ep *ep ;
  struct usb_hcd *tmp ;
  struct usb_hcd *tmp___0 ;
  struct usb_hcd *tmp___1 ;
  struct usb_hcd *tmp___2 ;
  int tmp___3 ;
  {
  trb_slot_id = (u32 )(slot_id << 24);
  trb_ep_index = ((ep_index + 1U) & 31U) << 16;
  trb_stream_id = stream_id << 16;
  type = 16384U;
  addr = xhci_trb_virt_to_dma(deq_seg, deq_ptr);
  if (addr == 0ULL) {
    tmp = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp->self.controller, "WARN Cannot submit Set TR Deq Ptr\n");
    tmp___0 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___0->self.controller, "WARN deq seg = %p, deq pt = %p\n",
             deq_seg, deq_ptr);
    return (0);
  } else {
  }
  ep = (struct xhci_virt_ep *)(& (xhci->devs[slot_id])->eps) + (unsigned long )ep_index;
  if ((int )ep->ep_state & 1) {
    tmp___1 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___1->self.controller, "WARN Cannot submit Set TR Deq Ptr\n");
    tmp___2 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___2->self.controller, "A Set TR Deq Ptr command is pending.\n");
    return (0);
  } else {
  }
  ep->queued_deq_seg = deq_seg;
  ep->queued_deq_ptr = deq_ptr;
  tmp___3 = queue_command(xhci, (unsigned int )addr | cycle_state, (unsigned int )(addr >> 32ULL),
                          trb_stream_id, (trb_slot_id | trb_ep_index) | type, 0);
  return (tmp___3);
}
}
int xhci_queue_reset_ep(struct xhci_hcd *xhci , int slot_id , unsigned int ep_index )
{
  u32 trb_slot_id ;
  u32 trb_ep_index ;
  u32 type ;
  int tmp ;
  {
  trb_slot_id = (u32 )(slot_id << 24);
  trb_ep_index = ((ep_index + 1U) & 31U) << 16;
  type = 14336U;
  tmp = queue_command(xhci, 0U, 0U, 0U, (trb_slot_id | trb_ep_index) | type, 0);
  return (tmp);
}
}
void ldv_mutex_lock_29(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_30(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_31(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_32(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_34(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
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
int ldv_mutex_trylock_46(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_44(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_47(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_43(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_45(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_48(struct mutex *ldv_func_arg1 ) ;
__inline static void put_unaligned_le16(u16 val , void *p )
{
  {
  *((__le16 *)p) = val;
  return;
}
}
__inline static void put_unaligned_le32(u32 val , void *p )
{
  {
  *((__le32 *)p) = val;
  return;
}
}
__inline static void put_unaligned_le64(u64 val , void *p )
{
  {
  *((__le64 *)p) = val;
  return;
}
}
extern void __bad_unaligned_access_size(void) ;
extern int usb_acpi_set_power_state(struct usb_device * , int , bool ) ;
extern bool usb_acpi_power_manageable(struct usb_device * , int ) ;
int xhci_hub_control(struct usb_hcd *hcd , u16 typeReq , u16 wValue , u16 wIndex ,
                     char *buf , u16 wLength ) ;
int xhci_hub_status_data(struct usb_hcd *hcd , char *buf ) ;
int xhci_bus_suspend(struct usb_hcd *hcd ) ;
int xhci_bus_resume(struct usb_hcd *hcd ) ;
u32 xhci_port_state_to_neutral(u32 state ) ;
static u8 usb_bos_descriptor[15U] =
  { 5U, 15U, 15U, 0U,
        1U, 10U, 16U, 3U,
        0U, 8U, 0U, 3U,
        0U, 0U, 0U};
static void xhci_common_hub_descriptor(struct xhci_hcd *xhci , struct usb_hub_descriptor *desc ,
                                       int ports )
{
  u16 temp ;
  {
  desc->bPwrOn2PwrGood = 10U;
  desc->bHubContrCurrent = 0U;
  desc->bNbrPorts = (__u8 )ports;
  temp = 0U;
  if ((xhci->hcc_params & 8U) != 0U) {
    temp = (u16 )((unsigned int )temp | 1U);
  } else {
    temp = (u16 )((unsigned int )temp | 2U);
  }
  temp = (u16 )((unsigned int )temp | 8U);
  desc->wHubCharacteristics = temp;
  return;
}
}
static void xhci_usb2_hub_descriptor(struct usb_hcd *hcd , struct xhci_hcd *xhci ,
                                     struct usb_hub_descriptor *desc )
{
  int ports ;
  u16 temp ;
  __u8 port_removable[4U] ;
  u32 portsc ;
  unsigned int i ;
  {
  ports = (int )xhci->num_usb2_ports;
  xhci_common_hub_descriptor(xhci, desc, ports);
  desc->bDescriptorType = 41U;
  temp = (unsigned int )((u16 )(ports / 8)) + 1U;
  desc->bDescLength = (unsigned int )((__u8 )temp) * 2U + 7U;
  memset((void *)(& port_removable), 0, 4UL);
  i = 0U;
  goto ldv_25062;
  ldv_25061:
  portsc = xhci_readl((struct xhci_hcd const *)xhci, *(xhci->usb2_ports + (unsigned long )i));
  if ((portsc & 1073741824U) != 0U) {
    port_removable[(i + 1U) / 8U] = (__u8 )((int )((signed char )port_removable[(i + 1U) / 8U]) | (int )((signed char )(1 << ((int )(i + 1U) & 7))));
  } else {
  }
  i = i + 1U;
  ldv_25062: ;
  if ((unsigned int )ports > i) {
    goto ldv_25061;
  } else {
  }
  memset((void *)(& desc->u.hs.DeviceRemovable), 255, 4UL);
  memset((void *)(& desc->u.hs.PortPwrCtrlMask), 255, 4UL);
  i = 0U;
  goto ldv_25065;
  ldv_25064:
  memset((void *)(& desc->u.hs.DeviceRemovable) + (unsigned long )i, (int )port_removable[i],
         1UL);
  i = i + 1U;
  ldv_25065: ;
  if ((unsigned int )((ports + 8) / 8) > i) {
    goto ldv_25064;
  } else {
  }
  return;
}
}
static void xhci_usb3_hub_descriptor(struct usb_hcd *hcd , struct xhci_hcd *xhci ,
                                     struct usb_hub_descriptor *desc )
{
  int ports ;
  u16 port_removable ;
  u32 portsc ;
  unsigned int i ;
  {
  ports = (int )xhci->num_usb3_ports;
  xhci_common_hub_descriptor(xhci, desc, ports);
  desc->bDescriptorType = 42U;
  desc->bDescLength = 12U;
  desc->u.ss.bHubHdrDecLat = 0U;
  desc->u.ss.wHubDelay = 0U;
  port_removable = 0U;
  i = 0U;
  goto ldv_25077;
  ldv_25076:
  portsc = xhci_readl((struct xhci_hcd const *)xhci, *(xhci->usb3_ports + (unsigned long )i));
  if ((portsc & 1073741824U) != 0U) {
    port_removable = (u16 )((int )((short )(1 << (int )(i + 1U))) | (int )((short )port_removable));
  } else {
  }
  i = i + 1U;
  ldv_25077: ;
  if ((unsigned int )ports > i) {
    goto ldv_25076;
  } else {
  }
  desc->u.ss.DeviceRemovable = port_removable;
  return;
}
}
static void xhci_hub_descriptor(struct usb_hcd *hcd , struct xhci_hcd *xhci , struct usb_hub_descriptor *desc )
{
  {
  if (hcd->speed == 64) {
    xhci_usb3_hub_descriptor(hcd, xhci, desc);
  } else {
    xhci_usb2_hub_descriptor(hcd, xhci, desc);
  }
  return;
}
}
static unsigned int xhci_port_speed(unsigned int port_status )
{
  {
  if ((port_status & 15360U) == 2048U) {
    return (512U);
  } else {
  }
  if ((port_status & 15360U) == 3072U) {
    return (1024U);
  } else {
  }
  return (0U);
}
}
u32 xhci_port_state_to_neutral(u32 state )
{
  {
  return (state & 1308688361U);
}
}
int xhci_find_slot_id_by_port(struct usb_hcd *hcd , struct xhci_hcd *xhci , u16 port )
{
  int slot_id ;
  int i ;
  enum usb_device_speed speed ;
  {
  slot_id = 0;
  i = 0;
  goto ldv_25101;
  ldv_25100: ;
  if ((unsigned long )xhci->devs[i] == (unsigned long )((struct xhci_virt_device *)0)) {
    goto ldv_25098;
  } else {
  }
  speed = ((xhci->devs[i])->udev)->speed;
  if (((unsigned int )speed != 5U) ^ (hcd->speed == 64) && (int )((unsigned short )(xhci->devs[i])->fake_port) == (int )port) {
    slot_id = i;
    goto ldv_25099;
  } else {
  }
  ldv_25098:
  i = i + 1;
  ldv_25101: ;
  if (i <= 255) {
    goto ldv_25100;
  } else {
  }
  ldv_25099: ;
  return (slot_id);
}
}
static int xhci_stop_device(struct xhci_hcd *xhci , int slot_id , int suspend )
{
  struct xhci_virt_device *virt_dev ;
  struct xhci_command *cmd ;
  unsigned long flags ;
  int timeleft ;
  int ret ;
  int i ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  long tmp___2 ;
  struct usb_hcd *tmp___3 ;
  raw_spinlock_t *tmp___4 ;
  {
  ret = 0;
  virt_dev = xhci->devs[slot_id];
  cmd = xhci_alloc_command(xhci, 0, 1, 16U);
  if ((unsigned long )cmd == (unsigned long )((struct xhci_command *)0)) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_stop_device";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-hub.c.prepared";
    descriptor.format = "Couldn\'t allocate command structure.\n";
    descriptor.lineno = 311U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "Couldn\'t allocate command structure.\n");
    } else {
    }
    return (-12);
  } else {
  }
  tmp___1 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  i = 30;
  goto ldv_25119;
  ldv_25118: ;
  if ((unsigned long )virt_dev->eps[i].ring != (unsigned long )((struct xhci_ring *)0) && (unsigned long )(virt_dev->eps[i].ring)->dequeue != (unsigned long )((union xhci_trb *)0)) {
    xhci_queue_stop_endpoint(xhci, slot_id, (unsigned int )i, suspend);
  } else {
  }
  i = i - 1;
  ldv_25119: ;
  if (i > 0) {
    goto ldv_25118;
  } else {
  }
  cmd->command_trb = (xhci->cmd_ring)->enqueue;
  list_add_tail(& cmd->cmd_list, & virt_dev->cmd_list);
  xhci_queue_stop_endpoint(xhci, slot_id, 0U, suspend);
  xhci_ring_cmd_db(xhci);
  spin_unlock_irqrestore(& xhci->lock, flags);
  tmp___2 = wait_for_completion_interruptible_timeout(cmd->completion, 5000UL);
  timeleft = (int )tmp___2;
  if (timeleft <= 0) {
    tmp___3 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___3->self.controller, "%s while waiting for stop endpoint command\n",
             timeleft == 0 ? (char *)"Timeout" : (char *)"Signal");
    tmp___4 = spinlock_check(& xhci->lock);
    flags = _raw_spin_lock_irqsave(tmp___4);
    if ((unsigned long )((void *)cmd->cmd_list.next) != 0xdead000000100100UL) {
      list_del(& cmd->cmd_list);
    } else {
    }
    spin_unlock_irqrestore(& xhci->lock, flags);
    ret = -62;
    goto command_cleanup;
  } else {
  }
  command_cleanup:
  xhci_free_command(xhci, cmd);
  return (ret);
}
}
void xhci_ring_device(struct xhci_hcd *xhci , int slot_id )
{
  int i ;
  {
  i = 0;
  goto ldv_25131;
  ldv_25130: ;
  if ((unsigned long )(xhci->devs[slot_id])->eps[i].ring != (unsigned long )((struct xhci_ring *)0) && (unsigned long )((xhci->devs[slot_id])->eps[i].ring)->dequeue != (unsigned long )((union xhci_trb *)0)) {
    xhci_ring_ep_doorbell(xhci, (unsigned int )slot_id, (unsigned int )i, 0U);
  } else {
  }
  i = i + 1;
  ldv_25131: ;
  if (i <= 30) {
    goto ldv_25130;
  } else {
  }
  return;
}
}
static void xhci_disable_port(struct usb_hcd *hcd , struct xhci_hcd *xhci , u16 wIndex ,
                              __le32 *addr , u32 port_status )
{
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  {
  if (hcd->speed == 64) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_disable_port";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-hub.c.prepared";
    descriptor.format = "Ignoring request to disable SuperSpeed port.\n";
    descriptor.lineno = 370U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "Ignoring request to disable SuperSpeed port.\n");
    } else {
    }
    return;
  } else {
  }
  xhci_writel(xhci, port_status | 2U, addr);
  port_status = xhci_readl((struct xhci_hcd const *)xhci, addr);
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_disable_port";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-hub.c.prepared";
  descriptor___0.format = "disable port, actual port %d status  = 0x%x\n";
  descriptor___0.lineno = 378U;
  descriptor___0.flags = 1U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                      "disable port, actual port %d status  = 0x%x\n", (int )wIndex,
                      port_status);
  } else {
  }
  return;
}
}
static void xhci_clear_port_change_bit(struct xhci_hcd *xhci , u16 wValue , u16 wIndex ,
                                       __le32 *addr , u32 port_status )
{
  char *port_change_bit ;
  u32 status ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  switch ((int )wValue) {
  case 20:
  status = 2097152U;
  port_change_bit = (char *)"reset";
  goto ldv_25153;
  case 29:
  status = 524288U;
  port_change_bit = (char *)"warm(BH) reset";
  goto ldv_25153;
  case 16:
  status = 131072U;
  port_change_bit = (char *)"connect";
  goto ldv_25153;
  case 19:
  status = 1048576U;
  port_change_bit = (char *)"over-current";
  goto ldv_25153;
  case 17:
  status = 262144U;
  port_change_bit = (char *)"enable/disable";
  goto ldv_25153;
  case 18:
  status = 4194304U;
  port_change_bit = (char *)"suspend/resume";
  goto ldv_25153;
  case 25:
  status = 4194304U;
  port_change_bit = (char *)"link state";
  goto ldv_25153;
  default: ;
  return;
  }
  ldv_25153:
  xhci_writel(xhci, port_status | status, addr);
  port_status = xhci_readl((struct xhci_hcd const *)xhci, addr);
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_clear_port_change_bit";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-hub.c.prepared";
  descriptor.format = "clear port %s change, actual port %d status  = 0x%x\n";
  descriptor.lineno = 424U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "clear port %s change, actual port %d status  = 0x%x\n", port_change_bit,
                      (int )wIndex, port_status);
  } else {
  }
  return;
}
}
static int xhci_get_ports(struct usb_hcd *hcd , __le32 ***port_array )
{
  int max_ports ;
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  if (hcd->speed == 64) {
    max_ports = (int )xhci->num_usb3_ports;
    *port_array = xhci->usb3_ports;
  } else {
    max_ports = (int )xhci->num_usb2_ports;
    *port_array = xhci->usb2_ports;
  }
  return (max_ports);
}
}
void xhci_set_link_state(struct xhci_hcd *xhci , __le32 **port_array , int port_id ,
                         u32 link_state )
{
  u32 temp ;
  {
  temp = xhci_readl((struct xhci_hcd const *)xhci, *(port_array + (unsigned long )port_id));
  temp = xhci_port_state_to_neutral(temp);
  temp = temp & 4294966815U;
  temp = (link_state | temp) | 65536U;
  xhci_writel(xhci, temp, *(port_array + (unsigned long )port_id));
  return;
}
}
static void xhci_set_remote_wake_mask(struct xhci_hcd *xhci , __le32 **port_array ,
                                      int port_id , u16 wake_mask )
{
  u32 temp ;
  {
  temp = xhci_readl((struct xhci_hcd const *)xhci, *(port_array + (unsigned long )port_id));
  temp = xhci_port_state_to_neutral(temp);
  if (((int )wake_mask & 256) != 0) {
    temp = temp | 33554432U;
  } else {
    temp = temp & 4261412863U;
  }
  if (((int )wake_mask & 512) != 0) {
    temp = temp | 67108864U;
  } else {
    temp = temp & 4227858431U;
  }
  if (((int )wake_mask & 1024) != 0) {
    temp = temp | 134217728U;
  } else {
    temp = temp & 4160749567U;
  }
  xhci_writel(xhci, temp, *(port_array + (unsigned long )port_id));
  return;
}
}
void xhci_test_and_clear_bit(struct xhci_hcd *xhci , __le32 **port_array , int port_id ,
                             u32 port_bit )
{
  u32 temp ;
  {
  temp = xhci_readl((struct xhci_hcd const *)xhci, *(port_array + (unsigned long )port_id));
  if ((temp & port_bit) != 0U) {
    temp = xhci_port_state_to_neutral(temp);
    temp = temp | port_bit;
    xhci_writel(xhci, temp, *(port_array + (unsigned long )port_id));
  } else {
  }
  return;
}
}
static void xhci_hub_report_link_state(u32 *status , u32 status_reg )
{
  u32 pls ;
  {
  pls = status_reg & 480U;
  if (pls == 480U) {
    return;
  } else {
  }
  if ((status_reg & 16777216U) != 0U) {
    if (pls != 320U && pls != 192U) {
      pls = 320U;
    } else {
    }
    pls = pls | 1U;
  } else
  if (pls == 320U) {
    pls = pls | 1U;
  } else {
  }
  *status = *status | pls;
  return;
}
}
void xhci_del_comp_mod_timer(struct xhci_hcd *xhci , u32 status , u16 wIndex )
{
  u32 all_ports_seen_u0 ;
  bool port_in_u0 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  {
  all_ports_seen_u0 = (u32 )((1 << (int )xhci->num_usb3_ports) + -1);
  port_in_u0 = (status & 480U) == 0U;
  if ((xhci->quirks & 16384U) == 0U) {
    return;
  } else {
  }
  if (xhci->port_status_u0 != all_ports_seen_u0 && (int )port_in_u0) {
    xhci->port_status_u0 = xhci->port_status_u0 | (u32 )(1 << (int )wIndex);
    if (xhci->port_status_u0 == all_ports_seen_u0) {
      del_timer_sync(& xhci->comp_mode_recovery_timer);
      descriptor.modname = "xhci_hcd";
      descriptor.function = "xhci_del_comp_mod_timer";
      descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-hub.c.prepared";
      descriptor.format = "All USB3 ports have entered U0 already!\n";
      descriptor.lineno = 562U;
      descriptor.flags = 1U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        tmp = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                          "All USB3 ports have entered U0 already!\n");
      } else {
      }
      descriptor___0.modname = "xhci_hcd";
      descriptor___0.function = "xhci_del_comp_mod_timer";
      descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-hub.c.prepared";
      descriptor___0.format = "Compliance Mode Recovery Timer Deleted.\n";
      descriptor___0.lineno = 563U;
      descriptor___0.flags = 1U;
      tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
      if (tmp___2 != 0L) {
        tmp___1 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                          "Compliance Mode Recovery Timer Deleted.\n");
      } else {
      }
    } else {
    }
  } else {
  }
  return;
}
}
int xhci_hub_control(struct usb_hcd *hcd , u16 typeReq , u16 wValue , u16 wIndex ,
                     char *buf , u16 wLength )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  int max_ports ;
  unsigned long flags ;
  u32 temp ;
  u32 status ;
  int retval ;
  __le32 **port_array ;
  int slot_id ;
  struct xhci_bus_state *bus_state ;
  u16 link_state ;
  u16 wake_mask ;
  u16 timeout ;
  unsigned int tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  size_t __len ;
  void *__ret ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___8 ;
  long tmp___9 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___10 ;
  long tmp___11 ;
  unsigned int tmp___12 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___13 ;
  long tmp___14 ;
  void *__gu_p ;
  raw_spinlock_t *tmp___15 ;
  struct usb_hcd *tmp___16 ;
  struct usb_hcd *tmp___17 ;
  raw_spinlock_t *tmp___18 ;
  raw_spinlock_t *tmp___19 ;
  struct usb_hcd *tmp___20 ;
  raw_spinlock_t *tmp___21 ;
  raw_spinlock_t *tmp___22 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___23 ;
  long tmp___24 ;
  bool tmp___25 ;
  raw_spinlock_t *tmp___26 ;
  struct _ddebug descriptor___6 ;
  struct usb_hcd *tmp___27 ;
  long tmp___28 ;
  struct _ddebug descriptor___7 ;
  struct usb_hcd *tmp___29 ;
  long tmp___30 ;
  struct _ddebug descriptor___8 ;
  struct usb_hcd *tmp___31 ;
  long tmp___32 ;
  struct _ddebug descriptor___9 ;
  struct usb_hcd *tmp___33 ;
  long tmp___34 ;
  raw_spinlock_t *tmp___35 ;
  struct _ddebug descriptor___10 ;
  struct usb_hcd *tmp___36 ;
  long tmp___37 ;
  bool tmp___38 ;
  raw_spinlock_t *tmp___39 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  retval = 0;
  link_state = 0U;
  wake_mask = 0U;
  timeout = 0U;
  max_ports = xhci_get_ports(hcd, & port_array);
  tmp___0 = hcd_index(hcd);
  bus_state = (struct xhci_bus_state *)(& xhci->bus_state) + (unsigned long )tmp___0;
  tmp___1 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  switch ((int )typeReq) {
  case 40960:
  memset((void *)buf, 0, 4UL);
  goto ldv_25229;
  case 40966: ;
  if (hcd->speed == 64 && ((unsigned int )wLength <= 11U || (unsigned int )wValue != 10752U)) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_hub_control";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-hub.c.prepared";
    descriptor.format = "Wrong hub descriptor type for USB 3.0 roothub.\n";
    descriptor.lineno = 601U;
    descriptor.flags = 1U;
    tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      tmp___2 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___2->self.controller,
                        "Wrong hub descriptor type for USB 3.0 roothub.\n");
    } else {
    }
    goto error;
  } else {
  }
  xhci_hub_descriptor(hcd, xhci, (struct usb_hub_descriptor *)buf);
  goto ldv_25229;
  case 32774: ;
  if (((int )wValue & 65280) != 3840) {
    goto error;
  } else {
  }
  if (hcd->speed != 64) {
    goto error;
  } else {
  }
  __len = 15UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)buf, (void const *)(& usb_bos_descriptor), __len);
  } else {
    __ret = __builtin_memcpy((void *)buf, (void const *)(& usb_bos_descriptor),
                             __len);
  }
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->cap_regs)->hcs_params3);
  *(buf + 12UL) = (char )temp;
  put_unaligned_le16((int )((u16 )(temp >> 16)), (void *)buf + 13U);
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->cap_regs)->hcc_params);
  if ((temp & 64U) != 0U) {
    *(buf + 8UL) = (char )((int )((signed char )*(buf + 8UL)) | 2);
  } else {
  }
  spin_unlock_irqrestore(& xhci->lock, flags);
  return (15);
  case 41728: ;
  if ((unsigned int )wIndex == 0U || (int )wIndex > max_ports) {
    goto error;
  } else {
  }
  wIndex = (u16 )((int )wIndex - 1);
  status = 0U;
  temp = xhci_readl((struct xhci_hcd const *)xhci, *(port_array + (unsigned long )wIndex));
  if (temp == 4294967295U) {
    retval = -19;
    goto ldv_25229;
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_hub_control";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-hub.c.prepared";
  descriptor___0.format = "get port status, actual port %d status  = 0x%x\n";
  descriptor___0.lineno = 638U;
  descriptor___0.flags = 1U;
  tmp___5 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    tmp___4 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___4->self.controller,
                      "get port status, actual port %d status  = 0x%x\n", (int )wIndex,
                      temp);
  } else {
  }
  if ((temp & 131072U) != 0U) {
    status = status | 65536U;
  } else {
  }
  if ((temp & 262144U) != 0U) {
    status = status | 131072U;
  } else {
  }
  if ((temp & 1048576U) != 0U) {
    status = status | 524288U;
  } else {
  }
  if ((temp & 2097152U) != 0U) {
    status = status | 1048576U;
  } else {
  }
  if (hcd->speed == 64) {
    if ((temp & 4194304U) != 0U) {
      status = status | 4194304U;
    } else {
    }
    if ((temp & 524288U) != 0U) {
      status = status | 2097152U;
    } else {
    }
  } else {
  }
  if (hcd->speed != 64) {
    if ((temp & 480U) == 96U && (temp & 512U) != 0U) {
      status = status | 4U;
    } else {
    }
  } else {
  }
  if ((temp & 480U) == 480U && (temp & 15360U) != 4096U) {
    if ((temp & 16U) != 0U || (temp & 2U) == 0U) {
      goto error;
    } else {
    }
    if ((long )jiffies - (long )bus_state->resume_done[(int )wIndex] >= 0L) {
      descriptor___1.modname = "xhci_hcd";
      descriptor___1.function = "xhci_hub_control";
      descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-hub.c.prepared";
      descriptor___1.format = "Resume USB2 port %d\n";
      descriptor___1.lineno = 669U;
      descriptor___1.flags = 1U;
      tmp___7 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
      if (tmp___7 != 0L) {
        tmp___6 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___6->self.controller,
                          "Resume USB2 port %d\n", (int )wIndex + 1);
      } else {
      }
      bus_state->resume_done[(int )wIndex] = 0UL;
      clear_bit((int )wIndex, (unsigned long volatile *)(& bus_state->resuming_ports));
      xhci_set_link_state(xhci, port_array, (int )wIndex, 0U);
      descriptor___2.modname = "xhci_hcd";
      descriptor___2.function = "xhci_hub_control";
      descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-hub.c.prepared";
      descriptor___2.format = "set port %d resume\n";
      descriptor___2.lineno = 675U;
      descriptor___2.flags = 1U;
      tmp___9 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
      if (tmp___9 != 0L) {
        tmp___8 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___8->self.controller,
                          "set port %d resume\n", (int )wIndex + 1);
      } else {
      }
      slot_id = xhci_find_slot_id_by_port(hcd, xhci, (int )((unsigned int )wIndex + 1U));
      if (slot_id == 0) {
        descriptor___3.modname = "xhci_hcd";
        descriptor___3.function = "xhci_hub_control";
        descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-hub.c.prepared";
        descriptor___3.format = "slot_id is zero\n";
        descriptor___3.lineno = 679U;
        descriptor___3.flags = 1U;
        tmp___11 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
        if (tmp___11 != 0L) {
          tmp___10 = xhci_to_hcd(xhci);
          __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___10->self.controller,
                            "slot_id is zero\n");
        } else {
        }
        goto error;
      } else {
      }
      xhci_ring_device(xhci, slot_id);
      bus_state->port_c_suspend = bus_state->port_c_suspend | (u32 )(1 << (int )wIndex);
      bus_state->suspended_ports = bus_state->suspended_ports & (u32 )(~ (1 << (int )wIndex));
    } else {
      status = status | 4U;
    }
  } else {
  }
  if (((temp & 480U) == 0U && (temp & 512U) != 0U) && (bus_state->suspended_ports & (u32 )(1 << (int )wIndex)) != 0U) {
    bus_state->suspended_ports = bus_state->suspended_ports & (u32 )(~ (1 << (int )wIndex));
    if (hcd->speed != 64) {
      bus_state->port_c_suspend = bus_state->port_c_suspend | (u32 )(1 << (int )wIndex);
    } else {
    }
  } else {
  }
  if ((int )temp & 1) {
    status = status | 1U;
    tmp___12 = xhci_port_speed(temp);
    status = tmp___12 | status;
  } else {
  }
  if ((temp & 2U) != 0U) {
    status = status | 2U;
  } else {
  }
  if ((temp & 8U) != 0U) {
    status = status | 8U;
  } else {
  }
  if ((temp & 16U) != 0U) {
    status = status | 16U;
  } else {
  }
  if ((temp & 512U) != 0U) {
    if (hcd->speed == 64) {
      status = status | 512U;
    } else {
      status = status | 256U;
    }
  } else {
  }
  if (hcd->speed == 64) {
    xhci_hub_report_link_state(& status, temp);
    xhci_del_comp_mod_timer(xhci, temp, (int )wIndex);
  } else {
  }
  if ((bus_state->port_c_suspend & (u32 )(1 << (int )wIndex)) != 0U) {
    status = status | 262144U;
  } else {
  }
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_hub_control";
  descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-hub.c.prepared";
  descriptor___4.format = "Get port status returned 0x%x\n";
  descriptor___4.lineno = 729U;
  descriptor___4.flags = 1U;
  tmp___14 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___14 != 0L) {
    tmp___13 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___13->self.controller,
                      "Get port status returned 0x%x\n", status);
  } else {
  }
  __gu_p = (void *)buf;
  switch (4UL) {
  case 1UL:
  *((u8 *)__gu_p) = (unsigned char )status;
  goto ldv_25252;
  case 2UL:
  put_unaligned_le16((int )((unsigned short )status), __gu_p);
  goto ldv_25252;
  case 4UL:
  put_unaligned_le32(status, __gu_p);
  goto ldv_25252;
  case 8UL:
  put_unaligned_le64((unsigned long long )status, __gu_p);
  goto ldv_25252;
  default:
  __bad_unaligned_access_size();
  goto ldv_25252;
  }
  ldv_25252: ;
  goto ldv_25229;
  case 8963: ;
  if ((unsigned int )wValue == 5U) {
    link_state = (u16 )(((int )wIndex & 65280) >> 3);
  } else {
  }
  if ((unsigned int )wValue == 27U) {
    wake_mask = (unsigned int )wIndex & 65280U;
  } else {
  }
  timeout = (int )wIndex >> 8;
  wIndex = (unsigned int )wIndex & 255U;
  if ((unsigned int )wIndex == 0U || (int )wIndex > max_ports) {
    goto error;
  } else {
  }
  wIndex = (u16 )((int )wIndex - 1);
  temp = xhci_readl((struct xhci_hcd const *)xhci, *(port_array + (unsigned long )wIndex));
  if (temp == 4294967295U) {
    retval = -19;
    goto ldv_25229;
  } else {
  }
  temp = xhci_port_state_to_neutral(temp);
  switch ((int )wValue) {
  case 2:
  temp = xhci_readl((struct xhci_hcd const *)xhci, *(port_array + (unsigned long )wIndex));
  if ((temp & 480U) != 0U) {
    xhci_set_link_state(xhci, port_array, (int )wIndex, 0U);
    spin_unlock_irqrestore(& xhci->lock, flags);
    msleep(10U);
    tmp___15 = spinlock_check(& xhci->lock);
    flags = _raw_spin_lock_irqsave(tmp___15);
  } else {
  }
  temp = xhci_readl((struct xhci_hcd const *)xhci, *(port_array + (unsigned long )wIndex));
  if (((temp & 2U) == 0U || (temp & 16U) != 0U) || (temp & 480U) > 95U) {
    tmp___16 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___16->self.controller, "USB core suspending device not in U0/U1/U2.\n");
    goto error;
  } else {
  }
  slot_id = xhci_find_slot_id_by_port(hcd, xhci, (int )((unsigned int )wIndex + 1U));
  if (slot_id == 0) {
    tmp___17 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___17->self.controller, "slot_id is zero\n");
    goto error;
  } else {
  }
  spin_unlock_irqrestore(& xhci->lock, flags);
  xhci_stop_device(xhci, slot_id, 1);
  tmp___18 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___18);
  xhci_set_link_state(xhci, port_array, (int )wIndex, 96U);
  spin_unlock_irqrestore(& xhci->lock, flags);
  msleep(10U);
  tmp___19 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___19);
  temp = xhci_readl((struct xhci_hcd const *)xhci, *(port_array + (unsigned long )wIndex));
  bus_state->suspended_ports = bus_state->suspended_ports | (u32 )(1 << (int )wIndex);
  goto ldv_25268;
  case 5:
  temp = xhci_readl((struct xhci_hcd const *)xhci, *(port_array + (unsigned long )wIndex));
  if ((temp & 2U) == 0U || (unsigned int )link_state > 160U) {
    tmp___20 = xhci_to_hcd(xhci);
    dev_warn((struct device const *)tmp___20->self.controller, "Cannot set link state.\n");
    goto error;
  } else {
  }
  if ((unsigned int )link_state == 96U) {
    slot_id = xhci_find_slot_id_by_port(hcd, xhci, (int )((unsigned int )wIndex + 1U));
    if (slot_id != 0) {
      spin_unlock_irqrestore(& xhci->lock, flags);
      xhci_stop_device(xhci, slot_id, 1);
      tmp___21 = spinlock_check(& xhci->lock);
      flags = _raw_spin_lock_irqsave(tmp___21);
    } else {
    }
  } else {
  }
  xhci_set_link_state(xhci, port_array, (int )wIndex, (u32 )link_state);
  spin_unlock_irqrestore(& xhci->lock, flags);
  msleep(20U);
  tmp___22 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___22);
  temp = xhci_readl((struct xhci_hcd const *)xhci, *(port_array + (unsigned long )wIndex));
  if ((unsigned int )link_state == 96U) {
    bus_state->suspended_ports = bus_state->suspended_ports | (u32 )(1 << (int )wIndex);
  } else {
  }
  goto ldv_25268;
  case 8:
  xhci_writel(xhci, temp | 512U, *(port_array + (unsigned long )wIndex));
  temp = xhci_readl((struct xhci_hcd const *)xhci, *(port_array + (unsigned long )wIndex));
  descriptor___5.modname = "xhci_hcd";
  descriptor___5.function = "xhci_hub_control";
  descriptor___5.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-hub.c.prepared";
  descriptor___5.format = "set port power, actual port %d status  = 0x%x\n";
  descriptor___5.lineno = 840U;
  descriptor___5.flags = 1U;
  tmp___24 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___24 != 0L) {
    tmp___23 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___23->self.controller,
                      "set port power, actual port %d status  = 0x%x\n", (int )wIndex,
                      temp);
  } else {
  }
  spin_unlock_irqrestore(& xhci->lock, flags);
  tmp___25 = usb_acpi_power_manageable(hcd->self.root_hub, (int )wIndex);
  temp = (u32 )tmp___25;
  if (temp != 0U) {
    usb_acpi_set_power_state(hcd->self.root_hub, (int )wIndex, 1);
  } else {
  }
  tmp___26 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___26);
  goto ldv_25268;
  case 4:
  temp = temp | 16U;
  xhci_writel(xhci, temp, *(port_array + (unsigned long )wIndex));
  temp = xhci_readl((struct xhci_hcd const *)xhci, *(port_array + (unsigned long )wIndex));
  descriptor___6.modname = "xhci_hcd";
  descriptor___6.function = "xhci_hub_control";
  descriptor___6.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-hub.c.prepared";
  descriptor___6.format = "set port reset, actual port %d status  = 0x%x\n";
  descriptor___6.lineno = 855U;
  descriptor___6.flags = 1U;
  tmp___28 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___28 != 0L) {
    tmp___27 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___6, (struct device const *)tmp___27->self.controller,
                      "set port reset, actual port %d status  = 0x%x\n", (int )wIndex,
                      temp);
  } else {
  }
  goto ldv_25268;
  case 27:
  xhci_set_remote_wake_mask(xhci, port_array, (int )wIndex, (int )wake_mask);
  temp = xhci_readl((struct xhci_hcd const *)xhci, *(port_array + (unsigned long )wIndex));
  descriptor___7.modname = "xhci_hcd";
  descriptor___7.function = "xhci_hub_control";
  descriptor___7.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-hub.c.prepared";
  descriptor___7.format = "set port remote wake mask, actual port %d status  = 0x%x\n";
  descriptor___7.lineno = 863U;
  descriptor___7.flags = 1U;
  tmp___30 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
  if (tmp___30 != 0L) {
    tmp___29 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___7, (struct device const *)tmp___29->self.controller,
                      "set port remote wake mask, actual port %d status  = 0x%x\n",
                      (int )wIndex, temp);
  } else {
  }
  goto ldv_25268;
  case 28:
  temp = temp | 2147483648U;
  xhci_writel(xhci, temp, *(port_array + (unsigned long )wIndex));
  temp = xhci_readl((struct xhci_hcd const *)xhci, *(port_array + (unsigned long )wIndex));
  goto ldv_25268;
  case 23: ;
  if (hcd->speed != 64) {
    goto error;
  } else {
  }
  temp = xhci_readl((struct xhci_hcd const *)xhci, *(port_array + (unsigned long )wIndex) + 1UL);
  temp = temp & 4294967040U;
  temp = ((u32 )timeout & 255U) | temp;
  xhci_writel(xhci, temp, *(port_array + (unsigned long )wIndex) + 1UL);
  goto ldv_25268;
  case 24: ;
  if (hcd->speed != 64) {
    goto error;
  } else {
  }
  temp = xhci_readl((struct xhci_hcd const *)xhci, *(port_array + (unsigned long )wIndex) + 1UL);
  temp = temp & 4294902015U;
  temp = ((u32 )((int )timeout << 8) & 65535U) | temp;
  xhci_writel(xhci, temp, *(port_array + (unsigned long )wIndex) + 1UL);
  goto ldv_25268;
  default: ;
  goto error;
  }
  ldv_25268:
  temp = xhci_readl((struct xhci_hcd const *)xhci, *(port_array + (unsigned long )wIndex));
  goto ldv_25229;
  case 8961: ;
  if ((unsigned int )wIndex == 0U || (int )wIndex > max_ports) {
    goto error;
  } else {
  }
  wIndex = (u16 )((int )wIndex - 1);
  temp = xhci_readl((struct xhci_hcd const *)xhci, *(port_array + (unsigned long )wIndex));
  if (temp == 4294967295U) {
    retval = -19;
    goto ldv_25229;
  } else {
  }
  temp = xhci_port_state_to_neutral(temp);
  switch ((int )wValue) {
  case 2:
  temp = xhci_readl((struct xhci_hcd const *)xhci, *(port_array + (unsigned long )wIndex));
  descriptor___8.modname = "xhci_hcd";
  descriptor___8.function = "xhci_hub_control";
  descriptor___8.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-hub.c.prepared";
  descriptor___8.format = "clear USB_PORT_FEAT_SUSPEND\n";
  descriptor___8.lineno = 907U;
  descriptor___8.flags = 1U;
  tmp___32 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
  if (tmp___32 != 0L) {
    tmp___31 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___8, (struct device const *)tmp___31->self.controller,
                      "clear USB_PORT_FEAT_SUSPEND\n");
  } else {
  }
  descriptor___9.modname = "xhci_hcd";
  descriptor___9.function = "xhci_hub_control";
  descriptor___9.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-hub.c.prepared";
  descriptor___9.format = "PORTSC %04x\n";
  descriptor___9.lineno = 908U;
  descriptor___9.flags = 1U;
  tmp___34 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
  if (tmp___34 != 0L) {
    tmp___33 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___9, (struct device const *)tmp___33->self.controller,
                      "PORTSC %04x\n", temp);
  } else {
  }
  if ((temp & 16U) != 0U) {
    goto error;
  } else {
  }
  if ((temp & 480U) == 96U) {
    if ((temp & 2U) == 0U) {
      goto error;
    } else {
    }
    xhci_set_link_state(xhci, port_array, (int )wIndex, 480U);
    spin_unlock_irqrestore(& xhci->lock, flags);
    msleep(20U);
    tmp___35 = spinlock_check(& xhci->lock);
    flags = _raw_spin_lock_irqsave(tmp___35);
    xhci_set_link_state(xhci, port_array, (int )wIndex, 0U);
  } else {
  }
  bus_state->port_c_suspend = bus_state->port_c_suspend | (u32 )(1 << (int )wIndex);
  slot_id = xhci_find_slot_id_by_port(hcd, xhci, (int )((unsigned int )wIndex + 1U));
  if (slot_id == 0) {
    descriptor___10.modname = "xhci_hcd";
    descriptor___10.function = "xhci_hub_control";
    descriptor___10.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-hub.c.prepared";
    descriptor___10.format = "slot_id is zero\n";
    descriptor___10.lineno = 928U;
    descriptor___10.flags = 1U;
    tmp___37 = ldv__builtin_expect((long )descriptor___10.flags & 1L, 0L);
    if (tmp___37 != 0L) {
      tmp___36 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___10, (struct device const *)tmp___36->self.controller,
                        "slot_id is zero\n");
    } else {
    }
    goto error;
  } else {
  }
  xhci_ring_device(xhci, slot_id);
  goto ldv_25297;
  case 18:
  bus_state->port_c_suspend = bus_state->port_c_suspend & (u32 )(~ (1 << (int )wIndex));
  case 20: ;
  case 29: ;
  case 16: ;
  case 19: ;
  case 17: ;
  case 25:
  xhci_clear_port_change_bit(xhci, (int )wValue, (int )wIndex, *(port_array + (unsigned long )wIndex),
                             temp);
  goto ldv_25297;
  case 1:
  xhci_disable_port(hcd, xhci, (int )wIndex, *(port_array + (unsigned long )wIndex),
                    temp);
  goto ldv_25297;
  case 8:
  xhci_writel(xhci, temp & 4294966783U, *(port_array + (unsigned long )wIndex));
  spin_unlock_irqrestore(& xhci->lock, flags);
  tmp___38 = usb_acpi_power_manageable(hcd->self.root_hub, (int )wIndex);
  temp = (u32 )tmp___38;
  if (temp != 0U) {
    usb_acpi_set_power_state(hcd->self.root_hub, (int )wIndex, 0);
  } else {
  }
  tmp___39 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___39);
  goto ldv_25297;
  default: ;
  goto error;
  }
  ldv_25297: ;
  goto ldv_25229;
  default: ;
  error:
  retval = -32;
  }
  ldv_25229:
  spin_unlock_irqrestore(& xhci->lock, flags);
  return (retval);
}
}
int xhci_hub_status_data(struct usb_hcd *hcd , char *buf )
{
  unsigned long flags ;
  u32 temp ;
  u32 status ;
  u32 mask ;
  int i ;
  int retval ;
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  int max_ports ;
  __le32 **port_array ;
  struct xhci_bus_state *bus_state ;
  unsigned int tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  max_ports = xhci_get_ports(hcd, & port_array);
  tmp___0 = hcd_index(hcd);
  bus_state = (struct xhci_bus_state *)(& xhci->bus_state) + (unsigned long )tmp___0;
  retval = (max_ports + 8) / 8;
  memset((void *)buf, 0, (size_t )retval);
  status = (u32 )bus_state->resuming_ports;
  mask = 6160384U;
  tmp___1 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  i = 0;
  goto ldv_25337;
  ldv_25336:
  temp = xhci_readl((struct xhci_hcd const *)xhci, *(port_array + (unsigned long )i));
  if (temp == 4294967295U) {
    retval = -19;
    goto ldv_25329;
  } else {
  }
  if (((temp & mask) != 0U || (bus_state->port_c_suspend & (u32 )(1 << i)) != 0U) || (bus_state->resume_done[i] != 0UL && (long )jiffies - (long )bus_state->resume_done[i] >= 0L)) {
    *(buf + (unsigned long )((i + 1) / 8)) = (int )*(buf + (unsigned long )((i + 1) / 8)) | (int )((char )(1 << (i + 1) % 8));
    status = 1U;
  } else {
  }
  i = i + 1;
  ldv_25337: ;
  if (i < max_ports) {
    goto ldv_25336;
  } else {
  }
  ldv_25329:
  spin_unlock_irqrestore(& xhci->lock, flags);
  return (status != 0U ? retval : 0);
}
}
int xhci_bus_suspend(struct usb_hcd *hcd )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  int max_ports ;
  int port_index ;
  __le32 **port_array ;
  struct xhci_bus_state *bus_state ;
  unsigned long flags ;
  unsigned int tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  u32 t1 ;
  u32 t2 ;
  int slot_id ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  raw_spinlock_t *tmp___6 ;
  __le32 *addr ;
  u32 tmp___7 ;
  int tmp___8 ;
  unsigned long tmp___9 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  max_ports = xhci_get_ports(hcd, & port_array);
  tmp___0 = hcd_index(hcd);
  bus_state = (struct xhci_bus_state *)(& xhci->bus_state) + (unsigned long )tmp___0;
  tmp___1 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  if ((unsigned int )*((unsigned char *)hcd->self.root_hub + 1672UL) != 0U) {
    if (bus_state->resuming_ports != 0UL) {
      spin_unlock_irqrestore(& xhci->lock, flags);
      descriptor.modname = "xhci_hcd";
      descriptor.function = "xhci_bus_suspend";
      descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-hub.c.prepared";
      descriptor.format = "suspend failed because a port is resuming\n";
      descriptor.lineno = 1046U;
      descriptor.flags = 1U;
      tmp___3 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___3 != 0L) {
        tmp___2 = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___2->self.controller,
                          "suspend failed because a port is resuming\n");
      } else {
      }
      return (-16);
    } else {
    }
  } else {
  }
  port_index = max_ports;
  bus_state->bus_suspended = 0UL;
  goto ldv_25362;
  ldv_25361:
  t1 = xhci_readl((struct xhci_hcd const *)xhci, *(port_array + (unsigned long )port_index));
  t2 = xhci_port_state_to_neutral(t1);
  if ((t1 & 2U) != 0U && (t1 & 480U) == 0U) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_bus_suspend";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-hub.c.prepared";
    descriptor___0.format = "port %d not suspended\n";
    descriptor___0.lineno = 1062U;
    descriptor___0.flags = 1U;
    tmp___5 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      tmp___4 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___4->self.controller,
                        "port %d not suspended\n", port_index);
    } else {
    }
    slot_id = xhci_find_slot_id_by_port(hcd, xhci, (int )((unsigned int )((u16 )port_index) + 1U));
    if (slot_id != 0) {
      spin_unlock_irqrestore(& xhci->lock, flags);
      xhci_stop_device(xhci, slot_id, 1);
      tmp___6 = spinlock_check(& xhci->lock);
      flags = _raw_spin_lock_irqsave(tmp___6);
    } else {
    }
    t2 = t2 & 4294966815U;
    t2 = t2 | 65632U;
    set_bit((unsigned int )port_index, (unsigned long volatile *)(& bus_state->bus_suspended));
  } else {
  }
  if ((unsigned int )*((unsigned char *)hcd->self.root_hub + 1672UL) != 0U) {
    if ((int )t1 & 1) {
      t2 = t2 | 201326592U;
      t2 = t2 & 4261412863U;
    } else {
      t2 = t2 | 167772160U;
      t2 = t2 & 4227858431U;
    }
  } else {
    t2 = t2 & 4060086271U;
  }
  t1 = xhci_port_state_to_neutral(t1);
  if (t1 != t2) {
    xhci_writel(xhci, t2, *(port_array + (unsigned long )port_index));
  } else {
  }
  if (hcd->speed != 64) {
    addr = *(port_array + (unsigned long )port_index) + 1UL;
    tmp___7 = xhci_readl((struct xhci_hcd const *)xhci, addr);
    tmp___7 = tmp___7 | 8U;
    xhci_writel(xhci, tmp___7, addr);
  } else {
  }
  ldv_25362:
  tmp___8 = port_index;
  port_index = port_index - 1;
  if (tmp___8 != 0) {
    goto ldv_25361;
  } else {
  }
  hcd->state = 4;
  tmp___9 = msecs_to_jiffies(10U);
  bus_state->next_statechange = tmp___9 + (unsigned long )jiffies;
  spin_unlock_irqrestore(& xhci->lock, flags);
  return (0);
}
}
int xhci_bus_resume(struct usb_hcd *hcd )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  int max_ports ;
  int port_index ;
  __le32 **port_array ;
  struct xhci_bus_state *bus_state ;
  u32 temp ;
  unsigned long flags ;
  unsigned int tmp___0 ;
  raw_spinlock_t *tmp___1 ;
  u32 temp___0 ;
  int slot_id ;
  raw_spinlock_t *tmp___2 ;
  raw_spinlock_t *tmp___3 ;
  int tmp___4 ;
  __le32 *addr ;
  u32 tmp___5 ;
  int tmp___6 ;
  unsigned long tmp___7 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  max_ports = xhci_get_ports(hcd, & port_array);
  tmp___0 = hcd_index(hcd);
  bus_state = (struct xhci_bus_state *)(& xhci->bus_state) + (unsigned long )tmp___0;
  if ((long )jiffies - (long )bus_state->next_statechange < 0L) {
    msleep(5U);
  } else {
  }
  tmp___1 = spinlock_check(& xhci->lock);
  flags = _raw_spin_lock_irqsave(tmp___1);
  if ((hcd->flags & 1UL) == 0UL) {
    spin_unlock_irqrestore(& xhci->lock, flags);
    return (-108);
  } else {
  }
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->command);
  temp = temp & 4294967291U;
  xhci_writel(xhci, temp, & (xhci->op_regs)->command);
  port_index = max_ports;
  goto ldv_25394;
  ldv_25393:
  temp___0 = xhci_readl((struct xhci_hcd const *)xhci, *(port_array + (unsigned long )port_index));
  if ((temp___0 & 15360U) == 4096U) {
    temp___0 = temp___0 & 4043440125U;
  } else {
    temp___0 = temp___0 & 4051828733U;
  }
  tmp___4 = variable_test_bit(port_index, (unsigned long const volatile *)(& bus_state->bus_suspended));
  if (tmp___4 != 0 && (temp___0 & 480U) != 0U) {
    if ((temp___0 & 15360U) == 4096U) {
      xhci_set_link_state(xhci, port_array, port_index, 0U);
    } else {
      xhci_set_link_state(xhci, port_array, port_index, 480U);
      spin_unlock_irqrestore(& xhci->lock, flags);
      msleep(20U);
      tmp___2 = spinlock_check(& xhci->lock);
      flags = _raw_spin_lock_irqsave(tmp___2);
      xhci_set_link_state(xhci, port_array, port_index, 0U);
    }
    spin_unlock_irqrestore(& xhci->lock, flags);
    msleep(20U);
    tmp___3 = spinlock_check(& xhci->lock);
    flags = _raw_spin_lock_irqsave(tmp___3);
    xhci_test_and_clear_bit(xhci, port_array, port_index, 4194304U);
    slot_id = xhci_find_slot_id_by_port(hcd, xhci, (int )((unsigned int )((u16 )port_index) + 1U));
    if (slot_id != 0) {
      xhci_ring_device(xhci, slot_id);
    } else {
    }
  } else {
    xhci_writel(xhci, temp___0, *(port_array + (unsigned long )port_index));
  }
  if (hcd->speed != 64) {
    addr = *(port_array + (unsigned long )port_index) + 1UL;
    tmp___5 = xhci_readl((struct xhci_hcd const *)xhci, addr);
    tmp___5 = tmp___5 & 4294967287U;
    xhci_writel(xhci, tmp___5, addr);
  } else {
  }
  ldv_25394:
  tmp___6 = port_index;
  port_index = port_index - 1;
  if (tmp___6 != 0) {
    goto ldv_25393;
  } else {
  }
  xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->command);
  tmp___7 = msecs_to_jiffies(5U);
  bus_state->next_statechange = tmp___7 + (unsigned long )jiffies;
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->command);
  temp = temp | 4U;
  xhci_writel(xhci, temp, & (xhci->op_regs)->command);
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->command);
  spin_unlock_irqrestore(& xhci->lock, flags);
  return (0);
}
}
void ldv_mutex_lock_43(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_44(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_45(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_46(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_47(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_48(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_60(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_58(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_61(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_63(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_57(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_59(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_62(struct mutex *ldv_func_arg1 ) ;
void xhci_debug_trb(struct xhci_hcd *xhci , union xhci_trb *trb ) ;
void xhci_dbg_regs(struct xhci_hcd *xhci )
{
  u32 temp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___11 ;
  long tmp___12 ;
  struct _ddebug descriptor___6 ;
  struct usb_hcd *tmp___13 ;
  long tmp___14 ;
  {
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_dbg_regs";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor.format = "// xHCI capability registers at %p:\n";
  descriptor.lineno = 65U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "// xHCI capability registers at %p:\n", xhci->cap_regs);
  } else {
  }
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->cap_regs)->hc_capbase);
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_dbg_regs";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___0.format = "// @%p = 0x%x (CAPLENGTH AND HCIVERSION)\n";
  descriptor___0.lineno = 68U;
  descriptor___0.flags = 1U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                      "// @%p = 0x%x (CAPLENGTH AND HCIVERSION)\n", & (xhci->cap_regs)->hc_capbase,
                      temp);
  } else {
  }
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_dbg_regs";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___1.format = "//   CAPLENGTH: 0x%x\n";
  descriptor___1.lineno = 70U;
  descriptor___1.flags = 1U;
  tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___3->self.controller,
                      "//   CAPLENGTH: 0x%x\n", temp & 255U);
  } else {
  }
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_dbg_regs";
  descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___2.format = "// xHCI operational registers at %p:\n";
  descriptor___2.lineno = 76U;
  descriptor___2.flags = 1U;
  tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___5->self.controller,
                      "// xHCI operational registers at %p:\n", xhci->op_regs);
  } else {
  }
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->cap_regs)->run_regs_off);
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_dbg_regs";
  descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___3.format = "// @%p = 0x%x RTSOFF\n";
  descriptor___3.lineno = 81U;
  descriptor___3.flags = 1U;
  tmp___8 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    tmp___7 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___7->self.controller,
                      "// @%p = 0x%x RTSOFF\n", & (xhci->cap_regs)->run_regs_off,
                      temp & 4294967264U);
  } else {
  }
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_dbg_regs";
  descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___4.format = "// xHCI runtime registers at %p:\n";
  descriptor___4.lineno = 82U;
  descriptor___4.flags = 1U;
  tmp___10 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    tmp___9 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___9->self.controller,
                      "// xHCI runtime registers at %p:\n", xhci->run_regs);
  } else {
  }
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->cap_regs)->db_off);
  descriptor___5.modname = "xhci_hcd";
  descriptor___5.function = "xhci_dbg_regs";
  descriptor___5.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___5.format = "// @%p = 0x%x DBOFF\n";
  descriptor___5.lineno = 85U;
  descriptor___5.flags = 1U;
  tmp___12 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___12 != 0L) {
    tmp___11 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___11->self.controller,
                      "// @%p = 0x%x DBOFF\n", & (xhci->cap_regs)->db_off, temp);
  } else {
  }
  descriptor___6.modname = "xhci_hcd";
  descriptor___6.function = "xhci_dbg_regs";
  descriptor___6.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___6.format = "// Doorbell array at %p:\n";
  descriptor___6.lineno = 86U;
  descriptor___6.flags = 1U;
  tmp___14 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___14 != 0L) {
    tmp___13 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___6, (struct device const *)tmp___13->self.controller,
                      "// Doorbell array at %p:\n", xhci->dba);
  } else {
  }
  return;
}
}
static void xhci_print_cap_regs(struct xhci_hcd *xhci )
{
  u32 temp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___11 ;
  long tmp___12 ;
  struct _ddebug descriptor___6 ;
  struct usb_hcd *tmp___13 ;
  long tmp___14 ;
  struct _ddebug descriptor___7 ;
  struct usb_hcd *tmp___15 ;
  long tmp___16 ;
  struct _ddebug descriptor___8 ;
  struct usb_hcd *tmp___17 ;
  long tmp___18 ;
  struct _ddebug descriptor___9 ;
  struct usb_hcd *tmp___19 ;
  long tmp___20 ;
  struct _ddebug descriptor___10 ;
  struct usb_hcd *tmp___21 ;
  long tmp___22 ;
  struct _ddebug descriptor___11 ;
  struct usb_hcd *tmp___23 ;
  long tmp___24 ;
  struct _ddebug descriptor___12 ;
  struct usb_hcd *tmp___25 ;
  long tmp___26 ;
  struct _ddebug descriptor___13 ;
  struct usb_hcd *tmp___27 ;
  long tmp___28 ;
  struct _ddebug descriptor___14 ;
  struct usb_hcd *tmp___29 ;
  long tmp___30 ;
  struct _ddebug descriptor___15 ;
  struct usb_hcd *tmp___31 ;
  long tmp___32 ;
  struct _ddebug descriptor___16 ;
  struct usb_hcd *tmp___33 ;
  long tmp___34 ;
  {
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_print_cap_regs";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor.format = "xHCI capability registers at %p:\n";
  descriptor.lineno = 93U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "xHCI capability registers at %p:\n", xhci->cap_regs);
  } else {
  }
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->cap_regs)->hc_capbase);
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_print_cap_regs";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___0.format = "CAPLENGTH AND HCIVERSION 0x%x:\n";
  descriptor___0.lineno = 97U;
  descriptor___0.flags = 1U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                      "CAPLENGTH AND HCIVERSION 0x%x:\n", temp);
  } else {
  }
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_print_cap_regs";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___1.format = "CAPLENGTH: 0x%x\n";
  descriptor___1.lineno = 99U;
  descriptor___1.flags = 1U;
  tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___3->self.controller,
                      "CAPLENGTH: 0x%x\n", temp & 255U);
  } else {
  }
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_print_cap_regs";
  descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___2.format = "HCIVERSION: 0x%x\n";
  descriptor___2.lineno = 101U;
  descriptor___2.flags = 1U;
  tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___5->self.controller,
                      "HCIVERSION: 0x%x\n", temp >> 16);
  } else {
  }
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->cap_regs)->hcs_params1);
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_print_cap_regs";
  descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___3.format = "HCSPARAMS 1: 0x%x\n";
  descriptor___3.lineno = 105U;
  descriptor___3.flags = 1U;
  tmp___8 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    tmp___7 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___7->self.controller,
                      "HCSPARAMS 1: 0x%x\n", temp);
  } else {
  }
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_print_cap_regs";
  descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___4.format = "  Max device slots: %u\n";
  descriptor___4.lineno = 107U;
  descriptor___4.flags = 1U;
  tmp___10 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    tmp___9 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___9->self.controller,
                      "  Max device slots: %u\n", temp & 255U);
  } else {
  }
  descriptor___5.modname = "xhci_hcd";
  descriptor___5.function = "xhci_print_cap_regs";
  descriptor___5.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___5.format = "  Max interrupters: %u\n";
  descriptor___5.lineno = 109U;
  descriptor___5.flags = 1U;
  tmp___12 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___12 != 0L) {
    tmp___11 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___11->self.controller,
                      "  Max interrupters: %u\n", (temp >> 8) & 2047U);
  } else {
  }
  descriptor___6.modname = "xhci_hcd";
  descriptor___6.function = "xhci_print_cap_regs";
  descriptor___6.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___6.format = "  Max ports: %u\n";
  descriptor___6.lineno = 111U;
  descriptor___6.flags = 1U;
  tmp___14 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___14 != 0L) {
    tmp___13 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___6, (struct device const *)tmp___13->self.controller,
                      "  Max ports: %u\n", (temp >> 24) & 127U);
  } else {
  }
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->cap_regs)->hcs_params2);
  descriptor___7.modname = "xhci_hcd";
  descriptor___7.function = "xhci_print_cap_regs";
  descriptor___7.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___7.format = "HCSPARAMS 2: 0x%x\n";
  descriptor___7.lineno = 115U;
  descriptor___7.flags = 1U;
  tmp___16 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
  if (tmp___16 != 0L) {
    tmp___15 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___7, (struct device const *)tmp___15->self.controller,
                      "HCSPARAMS 2: 0x%x\n", temp);
  } else {
  }
  descriptor___8.modname = "xhci_hcd";
  descriptor___8.function = "xhci_print_cap_regs";
  descriptor___8.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___8.format = "  Isoc scheduling threshold: %u\n";
  descriptor___8.lineno = 117U;
  descriptor___8.flags = 1U;
  tmp___18 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
  if (tmp___18 != 0L) {
    tmp___17 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___8, (struct device const *)tmp___17->self.controller,
                      "  Isoc scheduling threshold: %u\n", temp & 15U);
  } else {
  }
  descriptor___9.modname = "xhci_hcd";
  descriptor___9.function = "xhci_print_cap_regs";
  descriptor___9.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___9.format = "  Maximum allowed segments in event ring: %u\n";
  descriptor___9.lineno = 119U;
  descriptor___9.flags = 1U;
  tmp___20 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
  if (tmp___20 != 0L) {
    tmp___19 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___9, (struct device const *)tmp___19->self.controller,
                      "  Maximum allowed segments in event ring: %u\n", (temp >> 4) & 15U);
  } else {
  }
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->cap_regs)->hcs_params3);
  descriptor___10.modname = "xhci_hcd";
  descriptor___10.function = "xhci_print_cap_regs";
  descriptor___10.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___10.format = "HCSPARAMS 3 0x%x:\n";
  descriptor___10.lineno = 123U;
  descriptor___10.flags = 1U;
  tmp___22 = ldv__builtin_expect((long )descriptor___10.flags & 1L, 0L);
  if (tmp___22 != 0L) {
    tmp___21 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___10, (struct device const *)tmp___21->self.controller,
                      "HCSPARAMS 3 0x%x:\n", temp);
  } else {
  }
  descriptor___11.modname = "xhci_hcd";
  descriptor___11.function = "xhci_print_cap_regs";
  descriptor___11.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___11.format = "  Worst case U1 device exit latency: %u\n";
  descriptor___11.lineno = 125U;
  descriptor___11.flags = 1U;
  tmp___24 = ldv__builtin_expect((long )descriptor___11.flags & 1L, 0L);
  if (tmp___24 != 0L) {
    tmp___23 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___11, (struct device const *)tmp___23->self.controller,
                      "  Worst case U1 device exit latency: %u\n", temp & 255U);
  } else {
  }
  descriptor___12.modname = "xhci_hcd";
  descriptor___12.function = "xhci_print_cap_regs";
  descriptor___12.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___12.format = "  Worst case U2 device exit latency: %u\n";
  descriptor___12.lineno = 127U;
  descriptor___12.flags = 1U;
  tmp___26 = ldv__builtin_expect((long )descriptor___12.flags & 1L, 0L);
  if (tmp___26 != 0L) {
    tmp___25 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___12, (struct device const *)tmp___25->self.controller,
                      "  Worst case U2 device exit latency: %u\n", temp >> 16);
  } else {
  }
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->cap_regs)->hcc_params);
  descriptor___13.modname = "xhci_hcd";
  descriptor___13.function = "xhci_print_cap_regs";
  descriptor___13.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___13.format = "HCC PARAMS 0x%x:\n";
  descriptor___13.lineno = 130U;
  descriptor___13.flags = 1U;
  tmp___28 = ldv__builtin_expect((long )descriptor___13.flags & 1L, 0L);
  if (tmp___28 != 0L) {
    tmp___27 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___13, (struct device const *)tmp___27->self.controller,
                      "HCC PARAMS 0x%x:\n", temp);
  } else {
  }
  descriptor___14.modname = "xhci_hcd";
  descriptor___14.function = "xhci_print_cap_regs";
  descriptor___14.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___14.format = "  HC generates %s bit addresses\n";
  descriptor___14.lineno = 132U;
  descriptor___14.flags = 1U;
  tmp___30 = ldv__builtin_expect((long )descriptor___14.flags & 1L, 0L);
  if (tmp___30 != 0L) {
    tmp___29 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___14, (struct device const *)tmp___29->self.controller,
                      "  HC generates %s bit addresses\n", (int )temp & 1 ? (char *)"64" : (char *)"32");
  } else {
  }
  descriptor___15.modname = "xhci_hcd";
  descriptor___15.function = "xhci_print_cap_regs";
  descriptor___15.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___15.format = "  FIXME: more HCCPARAMS debugging\n";
  descriptor___15.lineno = 134U;
  descriptor___15.flags = 1U;
  tmp___32 = ldv__builtin_expect((long )descriptor___15.flags & 1L, 0L);
  if (tmp___32 != 0L) {
    tmp___31 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___15, (struct device const *)tmp___31->self.controller,
                      "  FIXME: more HCCPARAMS debugging\n");
  } else {
  }
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->cap_regs)->run_regs_off);
  descriptor___16.modname = "xhci_hcd";
  descriptor___16.function = "xhci_print_cap_regs";
  descriptor___16.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___16.format = "RTSOFF 0x%x:\n";
  descriptor___16.lineno = 137U;
  descriptor___16.flags = 1U;
  tmp___34 = ldv__builtin_expect((long )descriptor___16.flags & 1L, 0L);
  if (tmp___34 != 0L) {
    tmp___33 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___16, (struct device const *)tmp___33->self.controller,
                      "RTSOFF 0x%x:\n", temp & 4294967264U);
  } else {
  }
  return;
}
}
static void xhci_print_command_reg(struct xhci_hcd *xhci )
{
  u32 temp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  {
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->command);
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_print_command_reg";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor.format = "USBCMD 0x%x:\n";
  descriptor.lineno = 145U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "USBCMD 0x%x:\n", temp);
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_print_command_reg";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___0.format = "  HC is %s\n";
  descriptor___0.lineno = 147U;
  descriptor___0.flags = 1U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                      "  HC is %s\n", (int )temp & 1 ? (char *)"running" : (char *)"being stopped");
  } else {
  }
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_print_command_reg";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___1.format = "  HC has %sfinished hard reset\n";
  descriptor___1.lineno = 149U;
  descriptor___1.flags = 1U;
  tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___3->self.controller,
                      "  HC has %sfinished hard reset\n", (temp & 2U) != 0U ? (char *)"not " : (char *)"");
  } else {
  }
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_print_command_reg";
  descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___2.format = "  Event Interrupts %s\n";
  descriptor___2.lineno = 151U;
  descriptor___2.flags = 1U;
  tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___5->self.controller,
                      "  Event Interrupts %s\n", (temp & 4U) != 0U ? (char *)"enabled " : (char *)"disabled");
  } else {
  }
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_print_command_reg";
  descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___3.format = "  Host System Error Interrupts %s\n";
  descriptor___3.lineno = 153U;
  descriptor___3.flags = 1U;
  tmp___8 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    tmp___7 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___7->self.controller,
                      "  Host System Error Interrupts %s\n", (temp & 8U) != 0U ? (char *)"enabled " : (char *)"disabled");
  } else {
  }
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_print_command_reg";
  descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___4.format = "  HC has %sfinished light reset\n";
  descriptor___4.lineno = 155U;
  descriptor___4.flags = 1U;
  tmp___10 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    tmp___9 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___9->self.controller,
                      "  HC has %sfinished light reset\n", (temp & 128U) != 0U ? (char *)"not " : (char *)"");
  } else {
  }
  return;
}
}
static void xhci_print_status(struct xhci_hcd *xhci )
{
  u32 temp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  {
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->op_regs)->status);
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_print_status";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor.format = "USBSTS 0x%x:\n";
  descriptor.lineno = 163U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "USBSTS 0x%x:\n", temp);
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_print_status";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___0.format = "  Event ring is %sempty\n";
  descriptor___0.lineno = 165U;
  descriptor___0.flags = 1U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                      "  Event ring is %sempty\n", (temp & 8U) != 0U ? (char *)"not " : (char *)"");
  } else {
  }
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_print_status";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___1.format = "  %sHost System Error\n";
  descriptor___1.lineno = 167U;
  descriptor___1.flags = 1U;
  tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___3->self.controller,
                      "  %sHost System Error\n", (temp & 4U) != 0U ? (char *)"WARNING: " : (char *)"No ");
  } else {
  }
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_print_status";
  descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___2.format = "  HC is %s\n";
  descriptor___2.lineno = 169U;
  descriptor___2.flags = 1U;
  tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___5->self.controller,
                      "  HC is %s\n", (int )temp & 1 ? (char *)"halted" : (char *)"running");
  } else {
  }
  return;
}
}
static void xhci_print_op_regs(struct xhci_hcd *xhci )
{
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_print_op_regs";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor.format = "xHCI operational registers at %p:\n";
  descriptor.lineno = 174U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "xHCI operational registers at %p:\n", xhci->op_regs);
  } else {
  }
  xhci_print_command_reg(xhci);
  xhci_print_status(xhci);
  return;
}
}
static void xhci_print_ports(struct xhci_hcd *xhci )
{
  __le32 *addr ;
  int i ;
  int j ;
  int ports ;
  char *names[4U] ;
  struct _ddebug descriptor ;
  unsigned int tmp ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  {
  names[0] = (char *)"status";
  names[1] = (char *)"power";
  names[2] = (char *)"link";
  names[3] = (char *)"reserved";
  ports = (int )(xhci->hcs_params1 >> 24) & 127;
  addr = & (xhci->op_regs)->port_status_base;
  i = 0;
  goto ldv_25075;
  ldv_25074:
  j = 0;
  goto ldv_25072;
  ldv_25071:
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_print_ports";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor.format = "%p port %s reg = 0x%x\n";
  descriptor.lineno = 197U;
  descriptor.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp = xhci_readl((struct xhci_hcd const *)xhci, addr);
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "%p port %s reg = 0x%x\n", addr, names[j], tmp);
  } else {
  }
  addr = addr + 1;
  j = j + 1;
  ldv_25072: ;
  if (j <= 3) {
    goto ldv_25071;
  } else {
  }
  i = i + 1;
  ldv_25075: ;
  if (i < ports) {
    goto ldv_25074;
  } else {
  }
  return;
}
}
void xhci_print_ir_set(struct xhci_hcd *xhci , int set_num )
{
  struct xhci_intr_reg *ir_set ;
  void *addr ;
  u32 temp ;
  u64 temp_64 ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___11 ;
  long tmp___12 ;
  {
  ir_set = (struct xhci_intr_reg *)(& (xhci->run_regs)->ir_set) + (unsigned long )set_num;
  addr = (void *)(& ir_set->irq_pending);
  temp = xhci_readl((struct xhci_hcd const *)xhci, (__le32 *)addr);
  if (temp == 0U) {
    return;
  } else {
  }
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_print_ir_set";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor.format = "  %p: ir_set[%i]\n";
  descriptor.lineno = 215U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "  %p: ir_set[%i]\n", ir_set, set_num);
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_print_ir_set";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___0.format = "  %p: ir_set.pending = 0x%x\n";
  descriptor___0.lineno = 218U;
  descriptor___0.flags = 1U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                      "  %p: ir_set.pending = 0x%x\n", addr, temp);
  } else {
  }
  addr = (void *)(& ir_set->irq_control);
  temp = xhci_readl((struct xhci_hcd const *)xhci, (__le32 *)addr);
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_print_ir_set";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___1.format = "  %p: ir_set.control = 0x%x\n";
  descriptor___1.lineno = 223U;
  descriptor___1.flags = 1U;
  tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___3->self.controller,
                      "  %p: ir_set.control = 0x%x\n", addr, temp);
  } else {
  }
  addr = (void *)(& ir_set->erst_size);
  temp = xhci_readl((struct xhci_hcd const *)xhci, (__le32 *)addr);
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_print_ir_set";
  descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___2.format = "  %p: ir_set.erst_size = 0x%x\n";
  descriptor___2.lineno = 228U;
  descriptor___2.flags = 1U;
  tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___5->self.controller,
                      "  %p: ir_set.erst_size = 0x%x\n", addr, temp);
  } else {
  }
  addr = (void *)(& ir_set->rsvd);
  temp = xhci_readl((struct xhci_hcd const *)xhci, (__le32 *)addr);
  if (temp != 0U) {
    descriptor___3.modname = "xhci_hcd";
    descriptor___3.function = "xhci_print_ir_set";
    descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
    descriptor___3.format = "  WARN: %p: ir_set.rsvd = 0x%x\n";
    descriptor___3.lineno = 234U;
    descriptor___3.flags = 1U;
    tmp___8 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
    if (tmp___8 != 0L) {
      tmp___7 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___7->self.controller,
                        "  WARN: %p: ir_set.rsvd = 0x%x\n", addr, temp);
    } else {
    }
  } else {
  }
  addr = (void *)(& ir_set->erst_base);
  temp_64 = xhci_read_64((struct xhci_hcd const *)xhci, (__le64 *)addr);
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_print_ir_set";
  descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___4.format = "  %p: ir_set.erst_base = @%08llx\n";
  descriptor___4.lineno = 239U;
  descriptor___4.flags = 1U;
  tmp___10 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    tmp___9 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___9->self.controller,
                      "  %p: ir_set.erst_base = @%08llx\n", addr, temp_64);
  } else {
  }
  addr = (void *)(& ir_set->erst_dequeue);
  temp_64 = xhci_read_64((struct xhci_hcd const *)xhci, (__le64 *)addr);
  descriptor___5.modname = "xhci_hcd";
  descriptor___5.function = "xhci_print_ir_set";
  descriptor___5.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___5.format = "  %p: ir_set.erst_dequeue = @%08llx\n";
  descriptor___5.lineno = 244U;
  descriptor___5.flags = 1U;
  tmp___12 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___12 != 0L) {
    tmp___11 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___11->self.controller,
                      "  %p: ir_set.erst_dequeue = @%08llx\n", addr, temp_64);
  } else {
  }
  return;
}
}
void xhci_print_run_regs(struct xhci_hcd *xhci )
{
  u32 temp ;
  int i ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  {
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_print_run_regs";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor.format = "xHCI runtime registers at %p:\n";
  descriptor.lineno = 252U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "xHCI runtime registers at %p:\n", xhci->run_regs);
  } else {
  }
  temp = xhci_readl((struct xhci_hcd const *)xhci, & (xhci->run_regs)->microframe_index);
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_print_run_regs";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___0.format = "  %p: Microframe index = 0x%x\n";
  descriptor___0.lineno = 256U;
  descriptor___0.flags = 1U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                      "  %p: Microframe index = 0x%x\n", & (xhci->run_regs)->microframe_index,
                      temp);
  } else {
  }
  i = 0;
  goto ldv_25103;
  ldv_25102:
  temp = xhci_readl((struct xhci_hcd const *)xhci, (__le32 *)(& (xhci->run_regs)->rsvd) + (unsigned long )i);
  if (temp != 0U) {
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "xhci_print_run_regs";
    descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
    descriptor___1.format = "  WARN: %p: Rsvd[%i] = 0x%x\n";
    descriptor___1.lineno = 262U;
    descriptor___1.flags = 1U;
    tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___4 != 0L) {
      tmp___3 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___3->self.controller,
                        "  WARN: %p: Rsvd[%i] = 0x%x\n", (__le32 *)(& (xhci->run_regs)->rsvd) + (unsigned long )i,
                        i, temp);
    } else {
    }
  } else {
  }
  i = i + 1;
  ldv_25103: ;
  if (i <= 6) {
    goto ldv_25102;
  } else {
  }
  return;
}
}
void xhci_print_registers(struct xhci_hcd *xhci )
{
  {
  xhci_print_cap_regs(xhci);
  xhci_print_op_regs(xhci);
  xhci_print_ports(xhci);
  return;
}
}
void xhci_print_trb_offsets(struct xhci_hcd *xhci , union xhci_trb *trb )
{
  int i ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  i = 0;
  goto ldv_25116;
  ldv_25115:
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_print_trb_offsets";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor.format = "Offset 0x%x = 0x%x\n";
  descriptor.lineno = 278U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "Offset 0x%x = 0x%x\n", i * 4, trb->generic.field[i]);
  } else {
  }
  i = i + 1;
  ldv_25116: ;
  if (i <= 3) {
    goto ldv_25115;
  } else {
  }
  return;
}
}
void xhci_debug_trb(struct xhci_hcd *xhci , union xhci_trb *trb )
{
  u64 address ;
  u32 type ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___3 ;
  long tmp___4 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___9 ;
  long tmp___10 ;
  struct _ddebug descriptor___5 ;
  struct usb_hcd *tmp___11 ;
  long tmp___12 ;
  struct _ddebug descriptor___6 ;
  struct usb_hcd *tmp___13 ;
  long tmp___14 ;
  struct _ddebug descriptor___7 ;
  struct usb_hcd *tmp___15 ;
  long tmp___16 ;
  struct _ddebug descriptor___8 ;
  struct usb_hcd *tmp___17 ;
  long tmp___18 ;
  struct _ddebug descriptor___9 ;
  struct usb_hcd *tmp___19 ;
  long tmp___20 ;
  {
  type = trb->link.control & 64512U;
  switch (type) {
  case 6144U:
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_debug_trb";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor.format = "Link TRB:\n";
  descriptor.lineno = 291U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "Link TRB:\n");
  } else {
  }
  xhci_print_trb_offsets(xhci, trb);
  address = trb->link.segment_ptr;
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_debug_trb";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___0.format = "Next ring segment DMA address = 0x%llx\n";
  descriptor___0.lineno = 295U;
  descriptor___0.flags = 1U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                      "Next ring segment DMA address = 0x%llx\n", address);
  } else {
  }
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_debug_trb";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___1.format = "Interrupter target = 0x%x\n";
  descriptor___1.lineno = 298U;
  descriptor___1.flags = 1U;
  tmp___4 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___4 != 0L) {
    tmp___3 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___3->self.controller,
                      "Interrupter target = 0x%x\n", trb->link.intr_target >> 22);
  } else {
  }
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_debug_trb";
  descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___2.format = "Cycle bit = %u\n";
  descriptor___2.lineno = 300U;
  descriptor___2.flags = 1U;
  tmp___6 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___5->self.controller,
                      "Cycle bit = %u\n", trb->link.control & 1U);
  } else {
  }
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_debug_trb";
  descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___3.format = "Toggle cycle bit = %u\n";
  descriptor___3.lineno = 302U;
  descriptor___3.flags = 1U;
  tmp___8 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    tmp___7 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___7->self.controller,
                      "Toggle cycle bit = %u\n", trb->link.control & 2U);
  } else {
  }
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_debug_trb";
  descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___4.format = "No Snoop bit = %u\n";
  descriptor___4.lineno = 304U;
  descriptor___4.flags = 1U;
  tmp___10 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___10 != 0L) {
    tmp___9 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___9->self.controller,
                      "No Snoop bit = %u\n", trb->link.control & 8U);
  } else {
  }
  goto ldv_25132;
  case 32768U:
  address = trb->trans_event.buffer;
  descriptor___5.modname = "xhci_hcd";
  descriptor___5.function = "xhci_debug_trb";
  descriptor___5.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___5.format = "DMA address or buffer contents= %llu\n";
  descriptor___5.lineno = 312U;
  descriptor___5.flags = 1U;
  tmp___12 = ldv__builtin_expect((long )descriptor___5.flags & 1L, 0L);
  if (tmp___12 != 0L) {
    tmp___11 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___5, (struct device const *)tmp___11->self.controller,
                      "DMA address or buffer contents= %llu\n", address);
  } else {
  }
  goto ldv_25132;
  case 33792U:
  address = trb->event_cmd.cmd_trb;
  descriptor___6.modname = "xhci_hcd";
  descriptor___6.function = "xhci_debug_trb";
  descriptor___6.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___6.format = "Command TRB pointer = %llu\n";
  descriptor___6.lineno = 316U;
  descriptor___6.flags = 1U;
  tmp___14 = ldv__builtin_expect((long )descriptor___6.flags & 1L, 0L);
  if (tmp___14 != 0L) {
    tmp___13 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___6, (struct device const *)tmp___13->self.controller,
                      "Command TRB pointer = %llu\n", address);
  } else {
  }
  descriptor___7.modname = "xhci_hcd";
  descriptor___7.function = "xhci_debug_trb";
  descriptor___7.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___7.format = "Completion status = %u\n";
  descriptor___7.lineno = 318U;
  descriptor___7.flags = 1U;
  tmp___16 = ldv__builtin_expect((long )descriptor___7.flags & 1L, 0L);
  if (tmp___16 != 0L) {
    tmp___15 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___7, (struct device const *)tmp___15->self.controller,
                      "Completion status = %u\n", trb->event_cmd.status >> 24);
  } else {
  }
  descriptor___8.modname = "xhci_hcd";
  descriptor___8.function = "xhci_debug_trb";
  descriptor___8.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___8.format = "Flags = 0x%x\n";
  descriptor___8.lineno = 320U;
  descriptor___8.flags = 1U;
  tmp___18 = ldv__builtin_expect((long )descriptor___8.flags & 1L, 0L);
  if (tmp___18 != 0L) {
    tmp___17 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___8, (struct device const *)tmp___17->self.controller,
                      "Flags = 0x%x\n", trb->event_cmd.flags);
  } else {
  }
  goto ldv_25132;
  default:
  descriptor___9.modname = "xhci_hcd";
  descriptor___9.function = "xhci_debug_trb";
  descriptor___9.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___9.format = "Unknown TRB with TRB type ID %u\n";
  descriptor___9.lineno = 324U;
  descriptor___9.flags = 1U;
  tmp___20 = ldv__builtin_expect((long )descriptor___9.flags & 1L, 0L);
  if (tmp___20 != 0L) {
    tmp___19 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___9, (struct device const *)tmp___19->self.controller,
                      "Unknown TRB with TRB type ID %u\n", type >> 10);
  } else {
  }
  xhci_print_trb_offsets(xhci, trb);
  goto ldv_25132;
  }
  ldv_25132: ;
  return;
}
}
void xhci_debug_segment(struct xhci_hcd *xhci , struct xhci_segment *seg )
{
  int i ;
  u64 addr ;
  union xhci_trb *trb ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  addr = seg->dma;
  trb = seg->trbs;
  i = 0;
  goto ldv_25151;
  ldv_25150:
  trb = seg->trbs + (unsigned long )i;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_debug_segment";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor.format = "@%016llx %08x %08x %08x %08x\n";
  descriptor.lineno = 355U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "@%016llx %08x %08x %08x %08x\n", addr, (unsigned int )trb->link.segment_ptr,
                      (unsigned int )(trb->link.segment_ptr >> 32ULL), trb->link.intr_target,
                      trb->link.control);
  } else {
  }
  addr = addr + 16ULL;
  i = i + 1;
  ldv_25151: ;
  if (i <= 63) {
    goto ldv_25150;
  } else {
  }
  return;
}
}
void xhci_dbg_ring_ptrs(struct xhci_hcd *xhci , struct xhci_ring *ring )
{
  struct _ddebug descriptor ;
  dma_addr_t tmp ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  dma_addr_t tmp___4 ;
  struct usb_hcd *tmp___5 ;
  long tmp___6 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___7 ;
  long tmp___8 ;
  {
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_dbg_ring_ptrs";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor.format = "Ring deq = %p (virt), 0x%llx (dma)\n";
  descriptor.lineno = 365U;
  descriptor.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp = xhci_trb_virt_to_dma(ring->deq_seg, ring->dequeue);
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "Ring deq = %p (virt), 0x%llx (dma)\n", ring->dequeue, tmp);
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_dbg_ring_ptrs";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___0.format = "Ring deq updated %u times\n";
  descriptor___0.lineno = 367U;
  descriptor___0.flags = 1U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___2->self.controller,
                      "Ring deq updated %u times\n", ring->deq_updates);
  } else {
  }
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_dbg_ring_ptrs";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___1.format = "Ring enq = %p (virt), 0x%llx (dma)\n";
  descriptor___1.lineno = 371U;
  descriptor___1.flags = 1U;
  tmp___6 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___6 != 0L) {
    tmp___4 = xhci_trb_virt_to_dma(ring->enq_seg, ring->enqueue);
    tmp___5 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___5->self.controller,
                      "Ring enq = %p (virt), 0x%llx (dma)\n", ring->enqueue, tmp___4);
  } else {
  }
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_dbg_ring_ptrs";
  descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___2.format = "Ring enq updated %u times\n";
  descriptor___2.lineno = 373U;
  descriptor___2.flags = 1U;
  tmp___8 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___8 != 0L) {
    tmp___7 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___7->self.controller,
                      "Ring enq updated %u times\n", ring->enq_updates);
  } else {
  }
  return;
}
}
void xhci_debug_ring(struct xhci_hcd *xhci , struct xhci_ring *ring )
{
  struct xhci_segment *seg ;
  struct xhci_segment *first_seg ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  first_seg = ring->first_seg;
  xhci_debug_segment(xhci, first_seg);
  if (ring->enq_updates == 0U && ring->deq_updates == 0U) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_debug_ring";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
    descriptor.format = "  Ring has not been updated\n";
    descriptor.lineno = 393U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "  Ring has not been updated\n");
    } else {
    }
    return;
  } else {
  }
  seg = first_seg->next;
  goto ldv_25171;
  ldv_25170:
  xhci_debug_segment(xhci, seg);
  seg = seg->next;
  ldv_25171: ;
  if ((unsigned long )seg != (unsigned long )first_seg) {
    goto ldv_25170;
  } else {
  }
  return;
}
}
void xhci_dbg_ep_rings(struct xhci_hcd *xhci , unsigned int slot_id , unsigned int ep_index ,
                       struct xhci_virt_ep *ep )
{
  int i ;
  struct xhci_ring *ring ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  {
  if ((ep->ep_state & 16U) != 0U) {
    i = 1;
    goto ldv_25184;
    ldv_25183:
    ring = *((ep->stream_info)->stream_rings + (unsigned long )i);
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_dbg_ep_rings";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
    descriptor.format = "Dev %d endpoint %d stream ID %d:\n";
    descriptor.lineno = 411U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "Dev %d endpoint %d stream ID %d:\n", slot_id, ep_index, i);
    } else {
    }
    xhci_debug_segment(xhci, ring->deq_seg);
    i = i + 1;
    ldv_25184: ;
    if ((unsigned int )i < (ep->stream_info)->num_streams) {
      goto ldv_25183;
    } else {
    }
  } else {
    ring = ep->ring;
    if ((unsigned long )ring == (unsigned long )((struct xhci_ring *)0)) {
      return;
    } else {
    }
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_dbg_ep_rings";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
    descriptor___0.format = "Dev %d endpoint ring %d:\n";
    descriptor___0.lineno = 419U;
    descriptor___0.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                        "Dev %d endpoint ring %d:\n", slot_id, ep_index);
    } else {
    }
    xhci_debug_segment(xhci, ring->deq_seg);
  }
  return;
}
}
void xhci_dbg_erst(struct xhci_hcd *xhci , struct xhci_erst *erst )
{
  u64 addr ;
  int i ;
  struct xhci_erst_entry *entry ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  addr = erst->erst_dma_addr;
  i = 0;
  goto ldv_25197;
  ldv_25196:
  entry = erst->entries + (unsigned long )i;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_dbg_erst";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor.format = "@%016llx %08x %08x %08x %08x\n";
  descriptor.lineno = 437U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "@%016llx %08x %08x %08x %08x\n", addr, (unsigned int )entry->seg_addr,
                      (unsigned int )(entry->seg_addr >> 32ULL), entry->seg_size,
                      entry->rsvd);
  } else {
  }
  addr = addr + 16ULL;
  i = i + 1;
  ldv_25197: ;
  if ((unsigned int )i < erst->num_entries) {
    goto ldv_25196;
  } else {
  }
  return;
}
}
void xhci_dbg_cmd_ptrs(struct xhci_hcd *xhci )
{
  u64 val ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  {
  val = xhci_read_64((struct xhci_hcd const *)xhci, & (xhci->op_regs)->cmd_ring);
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_dbg_cmd_ptrs";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor.format = "// xHC command ring deq ptr low bits + flags = @%08x\n";
  descriptor.lineno = 448U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "// xHC command ring deq ptr low bits + flags = @%08x\n", (unsigned int )val);
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_dbg_cmd_ptrs";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___0.format = "// xHC command ring deq ptr high bits = @%08x\n";
  descriptor___0.lineno = 450U;
  descriptor___0.flags = 1U;
  tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___2 != 0L) {
    tmp___1 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                      "// xHC command ring deq ptr high bits = @%08x\n", (unsigned int )(val >> 32ULL));
  } else {
  }
  return;
}
}
static void dbg_rsvd64(struct xhci_hcd *xhci , u64 *ctx , dma_addr_t dma )
{
  int i ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  {
  i = 0;
  goto ldv_25215;
  ldv_25214:
  descriptor.modname = "xhci_hcd";
  descriptor.function = "dbg_rsvd64";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor.format = "@%p (virt) @%08llx (dma) %#08llx - rsvd64[%d]\n";
  descriptor.lineno = 461U;
  descriptor.flags = 1U;
  tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___0 != 0L) {
    tmp = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                      "@%p (virt) @%08llx (dma) %#08llx - rsvd64[%d]\n", ctx + (unsigned long )(i + 4),
                      dma, *(ctx + (unsigned long )(i + 4)), i);
  } else {
  }
  dma = dma + 8ULL;
  i = i + 1;
  ldv_25215: ;
  if (i <= 3) {
    goto ldv_25214;
  } else {
  }
  return;
}
}
char *xhci_get_slot_state(struct xhci_hcd *xhci , struct xhci_container_ctx *ctx )
{
  struct xhci_slot_ctx *slot_ctx ;
  struct xhci_slot_ctx *tmp ;
  {
  tmp = xhci_get_slot_ctx(xhci, ctx);
  slot_ctx = tmp;
  switch (slot_ctx->dev_state >> 27) {
  case 0U: ;
  return ((char *)"enabled/disabled");
  case 1U: ;
  return ((char *)"default");
  case 2U: ;
  return ((char *)"addressed");
  case 3U: ;
  return ((char *)"configured");
  default: ;
  return ((char *)"reserved");
  }
}
}
static void xhci_dbg_slot_ctx(struct xhci_hcd *xhci , struct xhci_container_ctx *ctx )
{
  int field_size ;
  int i ;
  struct xhci_slot_ctx *slot_ctx ;
  struct xhci_slot_ctx *tmp ;
  dma_addr_t dma ;
  int csz ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___8 ;
  long tmp___9 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___10 ;
  long tmp___11 ;
  {
  field_size = 4;
  tmp = xhci_get_slot_ctx(xhci, ctx);
  slot_ctx = tmp;
  dma = ctx->dma + (unsigned long long )((unsigned long )slot_ctx - (unsigned long )ctx->bytes);
  csz = (int )xhci->hcc_params & 4;
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_dbg_slot_ctx";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor.format = "Slot Context:\n";
  descriptor.lineno = 496U;
  descriptor.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "Slot Context:\n");
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_dbg_slot_ctx";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___0.format = "@%p (virt) @%08llx (dma) %#08x - dev_info\n";
  descriptor___0.lineno = 499U;
  descriptor___0.flags = 1U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___2->self.controller,
                      "@%p (virt) @%08llx (dma) %#08x - dev_info\n", & slot_ctx->dev_info,
                      dma, slot_ctx->dev_info);
  } else {
  }
  dma = (dma_addr_t )field_size + dma;
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_dbg_slot_ctx";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___1.format = "@%p (virt) @%08llx (dma) %#08x - dev_info2\n";
  descriptor___1.lineno = 503U;
  descriptor___1.flags = 1U;
  tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    tmp___4 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___4->self.controller,
                      "@%p (virt) @%08llx (dma) %#08x - dev_info2\n", & slot_ctx->dev_info2,
                      dma, slot_ctx->dev_info2);
  } else {
  }
  dma = (dma_addr_t )field_size + dma;
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_dbg_slot_ctx";
  descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___2.format = "@%p (virt) @%08llx (dma) %#08x - tt_info\n";
  descriptor___2.lineno = 507U;
  descriptor___2.flags = 1U;
  tmp___7 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    tmp___6 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___6->self.controller,
                      "@%p (virt) @%08llx (dma) %#08x - tt_info\n", & slot_ctx->tt_info,
                      dma, slot_ctx->tt_info);
  } else {
  }
  dma = (dma_addr_t )field_size + dma;
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_dbg_slot_ctx";
  descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___3.format = "@%p (virt) @%08llx (dma) %#08x - dev_state\n";
  descriptor___3.lineno = 511U;
  descriptor___3.flags = 1U;
  tmp___9 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___9 != 0L) {
    tmp___8 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___8->self.controller,
                      "@%p (virt) @%08llx (dma) %#08x - dev_state\n", & slot_ctx->dev_state,
                      dma, slot_ctx->dev_state);
  } else {
  }
  dma = (dma_addr_t )field_size + dma;
  i = 0;
  goto ldv_25244;
  ldv_25243:
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_dbg_slot_ctx";
  descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___4.format = "@%p (virt) @%08llx (dma) %#08x - rsvd[%d]\n";
  descriptor___4.lineno = 516U;
  descriptor___4.flags = 1U;
  tmp___11 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___11 != 0L) {
    tmp___10 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___10->self.controller,
                      "@%p (virt) @%08llx (dma) %#08x - rsvd[%d]\n", (__le32 *)(& slot_ctx->reserved) + (unsigned long )i,
                      dma, slot_ctx->reserved[i], i);
  } else {
  }
  dma = (dma_addr_t )field_size + dma;
  i = i + 1;
  ldv_25244: ;
  if (i <= 3) {
    goto ldv_25243;
  } else {
  }
  if (csz != 0) {
    dbg_rsvd64(xhci, (u64 *)slot_ctx, dma);
  } else {
  }
  return;
}
}
static void xhci_dbg_ep_ctx(struct xhci_hcd *xhci , struct xhci_container_ctx *ctx ,
                            unsigned int last_ep )
{
  int i ;
  int j ;
  int last_ep_ctx ;
  int field_size ;
  int csz ;
  struct xhci_ep_ctx *ep_ctx ;
  struct xhci_ep_ctx *tmp ;
  dma_addr_t dma ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  struct _ddebug descriptor___2 ;
  struct usb_hcd *tmp___6 ;
  long tmp___7 ;
  struct _ddebug descriptor___3 ;
  struct usb_hcd *tmp___8 ;
  long tmp___9 ;
  struct _ddebug descriptor___4 ;
  struct usb_hcd *tmp___10 ;
  long tmp___11 ;
  {
  last_ep_ctx = 31;
  field_size = 4;
  csz = (int )xhci->hcc_params & 4;
  if (last_ep <= 30U) {
    last_ep_ctx = (int )(last_ep + 1U);
  } else {
  }
  i = 0;
  goto ldv_25269;
  ldv_25268:
  tmp = xhci_get_ep_ctx(xhci, ctx, (unsigned int )i);
  ep_ctx = tmp;
  dma = ctx->dma + (unsigned long long )((unsigned long )ep_ctx - (unsigned long )ctx->bytes);
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_dbg_ep_ctx";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor.format = "Endpoint %02d Context:\n";
  descriptor.lineno = 541U;
  descriptor.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "Endpoint %02d Context:\n", i);
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_dbg_ep_ctx";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___0.format = "@%p (virt) @%08llx (dma) %#08x - ep_info\n";
  descriptor___0.lineno = 544U;
  descriptor___0.flags = 1U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___2->self.controller,
                      "@%p (virt) @%08llx (dma) %#08x - ep_info\n", & ep_ctx->ep_info,
                      dma, ep_ctx->ep_info);
  } else {
  }
  dma = (dma_addr_t )field_size + dma;
  descriptor___1.modname = "xhci_hcd";
  descriptor___1.function = "xhci_dbg_ep_ctx";
  descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___1.format = "@%p (virt) @%08llx (dma) %#08x - ep_info2\n";
  descriptor___1.lineno = 548U;
  descriptor___1.flags = 1U;
  tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
  if (tmp___5 != 0L) {
    tmp___4 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___4->self.controller,
                      "@%p (virt) @%08llx (dma) %#08x - ep_info2\n", & ep_ctx->ep_info2,
                      dma, ep_ctx->ep_info2);
  } else {
  }
  dma = (dma_addr_t )field_size + dma;
  descriptor___2.modname = "xhci_hcd";
  descriptor___2.function = "xhci_dbg_ep_ctx";
  descriptor___2.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___2.format = "@%p (virt) @%08llx (dma) %#08llx - deq\n";
  descriptor___2.lineno = 552U;
  descriptor___2.flags = 1U;
  tmp___7 = ldv__builtin_expect((long )descriptor___2.flags & 1L, 0L);
  if (tmp___7 != 0L) {
    tmp___6 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___2, (struct device const *)tmp___6->self.controller,
                      "@%p (virt) @%08llx (dma) %#08llx - deq\n", & ep_ctx->deq, dma,
                      ep_ctx->deq);
  } else {
  }
  dma = (dma_addr_t )(field_size * 2) + dma;
  descriptor___3.modname = "xhci_hcd";
  descriptor___3.function = "xhci_dbg_ep_ctx";
  descriptor___3.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___3.format = "@%p (virt) @%08llx (dma) %#08x - tx_info\n";
  descriptor___3.lineno = 556U;
  descriptor___3.flags = 1U;
  tmp___9 = ldv__builtin_expect((long )descriptor___3.flags & 1L, 0L);
  if (tmp___9 != 0L) {
    tmp___8 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___3, (struct device const *)tmp___8->self.controller,
                      "@%p (virt) @%08llx (dma) %#08x - tx_info\n", & ep_ctx->tx_info,
                      dma, ep_ctx->tx_info);
  } else {
  }
  dma = (dma_addr_t )field_size + dma;
  j = 0;
  goto ldv_25266;
  ldv_25265:
  descriptor___4.modname = "xhci_hcd";
  descriptor___4.function = "xhci_dbg_ep_ctx";
  descriptor___4.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
  descriptor___4.format = "@%p (virt) @%08llx (dma) %#08x - rsvd[%d]\n";
  descriptor___4.lineno = 562U;
  descriptor___4.flags = 1U;
  tmp___11 = ldv__builtin_expect((long )descriptor___4.flags & 1L, 0L);
  if (tmp___11 != 0L) {
    tmp___10 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___4, (struct device const *)tmp___10->self.controller,
                      "@%p (virt) @%08llx (dma) %#08x - rsvd[%d]\n", (__le32 *)(& ep_ctx->reserved) + (unsigned long )j,
                      dma, ep_ctx->reserved[j], j);
  } else {
  }
  dma = (dma_addr_t )field_size + dma;
  j = j + 1;
  ldv_25266: ;
  if (j <= 2) {
    goto ldv_25265;
  } else {
  }
  if (csz != 0) {
    dbg_rsvd64(xhci, (u64 *)ep_ctx, dma);
  } else {
  }
  i = i + 1;
  ldv_25269: ;
  if (i < last_ep_ctx) {
    goto ldv_25268;
  } else {
  }
  return;
}
}
void xhci_dbg_ctx(struct xhci_hcd *xhci , struct xhci_container_ctx *ctx , unsigned int last_ep )
{
  int i ;
  int field_size ;
  dma_addr_t dma ;
  int csz ;
  struct xhci_input_control_ctx *ctrl_ctx ;
  struct xhci_input_control_ctx *tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  {
  field_size = 4;
  dma = ctx->dma;
  csz = (int )xhci->hcc_params & 4;
  if (ctx->type == 2U) {
    tmp = xhci_get_input_control_ctx(xhci, ctx);
    ctrl_ctx = tmp;
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_dbg_ctx";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
    descriptor.format = "@%p (virt) @%08llx (dma) %#08x - drop flags\n";
    descriptor.lineno = 586U;
    descriptor.flags = 1U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      tmp___0 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                        "@%p (virt) @%08llx (dma) %#08x - drop flags\n", & ctrl_ctx->drop_flags,
                        dma, ctrl_ctx->drop_flags);
    } else {
    }
    dma = (dma_addr_t )field_size + dma;
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_dbg_ctx";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
    descriptor___0.format = "@%p (virt) @%08llx (dma) %#08x - add flags\n";
    descriptor___0.lineno = 590U;
    descriptor___0.flags = 1U;
    tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      tmp___2 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___2->self.controller,
                        "@%p (virt) @%08llx (dma) %#08x - add flags\n", & ctrl_ctx->add_flags,
                        dma, ctrl_ctx->add_flags);
    } else {
    }
    dma = (dma_addr_t )field_size + dma;
    i = 0;
    goto ldv_25286;
    ldv_25285:
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "xhci_dbg_ctx";
    descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-dbg.c.prepared";
    descriptor___1.format = "@%p (virt) @%08llx (dma) %#08x - rsvd2[%d]\n";
    descriptor___1.lineno = 595U;
    descriptor___1.flags = 1U;
    tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      tmp___4 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___4->self.controller,
                        "@%p (virt) @%08llx (dma) %#08x - rsvd2[%d]\n", (__le32 *)(& ctrl_ctx->rsvd2) + (unsigned long )i,
                        dma, ctrl_ctx->rsvd2[i], i);
    } else {
    }
    dma = (dma_addr_t )field_size + dma;
    i = i + 1;
    ldv_25286: ;
    if (i <= 5) {
      goto ldv_25285;
    } else {
    }
    if (csz != 0) {
      dbg_rsvd64(xhci, (u64 *)ctrl_ctx, dma);
    } else {
    }
  } else {
  }
  xhci_dbg_slot_ctx(xhci, ctx);
  xhci_dbg_ep_ctx(xhci, ctx, last_ep);
  return;
}
}
void ldv_mutex_lock_57(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_58(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_59(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_60(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_61(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_62(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_63(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_74(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_72(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_75(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_77(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_71(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_73(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_76(struct mutex *ldv_func_arg1 ) ;
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
extern void *dev_get_drvdata(struct device const * ) ;
extern int pci_bus_read_config_byte(struct pci_bus * , unsigned int , int , u8 * ) ;
__inline static int pci_read_config_byte(struct pci_dev const *dev , int where ,
                                         u8 *val )
{
  int tmp ;
  {
  tmp = pci_bus_read_config_byte(dev->bus, dev->devfn, where, val);
  return (tmp);
}
}
extern int pci_set_mwi(struct pci_dev * ) ;
extern int __pci_register_driver(struct pci_driver * , struct module * , char const * ) ;
extern void pci_unregister_driver(struct pci_driver * ) ;
__inline static void *pci_get_drvdata(struct pci_dev *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata((struct device const *)(& pdev->dev));
  return (tmp);
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
extern struct module __this_module ;
__inline static struct usb_bus *hcd_to_bus(struct usb_hcd *hcd )
{
  {
  return (& hcd->self);
}
}
extern struct usb_hcd *usb_create_shared_hcd(struct hc_driver const * , struct device * ,
                                             char const * , struct usb_hcd * ) ;
extern void usb_put_hcd(struct usb_hcd * ) ;
extern int usb_add_hcd(struct usb_hcd * , unsigned int , unsigned long ) ;
extern void usb_remove_hcd(struct usb_hcd * ) ;
extern int usb_hcd_pci_probe(struct pci_dev * , struct pci_device_id const * ) ;
extern void usb_hcd_pci_remove(struct pci_dev * ) ;
extern void usb_hcd_pci_shutdown(struct pci_dev * ) ;
extern struct dev_pm_ops const usb_hcd_pci_pm_ops ;
extern int usb_amd_find_chipset_info(void) ;
extern bool usb_is_intel_switchable_xhci(struct pci_dev * ) ;
extern void usb_enable_xhci_ports(struct pci_dev * ) ;
static char const hcd_name[9U] =
  { 'x', 'h', 'c', 'i',
        '_', 'h', 'c', 'd',
        '\000'};
static int xhci_pci_reinit(struct xhci_hcd *xhci , struct pci_dev *pdev )
{
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___2 ;
  long tmp___3 ;
  {
  tmp___1 = pci_set_mwi(pdev);
  if (tmp___1 == 0) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_pci_reinit";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-pci.c.prepared";
    descriptor.format = "MWI active\n";
    descriptor.lineno = 82U;
    descriptor.flags = 1U;
    tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___0 != 0L) {
      tmp = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                        "MWI active\n");
    } else {
    }
  } else {
  }
  descriptor___0.modname = "xhci_hcd";
  descriptor___0.function = "xhci_pci_reinit";
  descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-pci.c.prepared";
  descriptor___0.format = "Finished xhci_pci_reinit\n";
  descriptor___0.lineno = 84U;
  descriptor___0.flags = 1U;
  tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
  if (tmp___3 != 0L) {
    tmp___2 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___2->self.controller,
                      "Finished xhci_pci_reinit\n");
  } else {
  }
  return (0);
}
}
static void xhci_pci_quirks(struct device *dev , struct xhci_hcd *xhci )
{
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp ;
  long tmp___0 ;
  struct _ddebug descriptor___0 ;
  struct usb_hcd *tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  struct _ddebug descriptor___1 ;
  struct usb_hcd *tmp___4 ;
  long tmp___5 ;
  {
  __mptr = (struct device const *)dev;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  if ((unsigned int )pdev->vendor == 7027U && ((unsigned int )pdev->device == 4096U || (unsigned int )pdev->device == 5120U)) {
    if ((unsigned int )pdev->device == 4096U && (unsigned int )pdev->revision == 0U) {
      xhci->quirks = xhci->quirks | 2U;
      descriptor.modname = "xhci_hcd";
      descriptor.function = "xhci_pci_quirks";
      descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-pci.c.prepared";
      descriptor.format = "QUIRK: Fresco Logic xHC needs configure endpoint cmd after reset endpoint\n";
      descriptor.lineno = 100U;
      descriptor.flags = 1U;
      tmp___0 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
      if (tmp___0 != 0L) {
        tmp = xhci_to_hcd(xhci);
        __dynamic_dev_dbg(& descriptor, (struct device const *)tmp->self.controller,
                          "QUIRK: Fresco Logic xHC needs configure endpoint cmd after reset endpoint\n");
      } else {
      }
    } else {
    }
    xhci->quirks = xhci->quirks | 64U;
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_pci_quirks";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-pci.c.prepared";
    descriptor___0.format = "QUIRK: Fresco Logic revision %u has broken MSI implementation\n";
    descriptor___0.lineno = 109U;
    descriptor___0.flags = 1U;
    tmp___2 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___2 != 0L) {
      tmp___1 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)tmp___1->self.controller,
                        "QUIRK: Fresco Logic revision %u has broken MSI implementation\n",
                        (int )pdev->revision);
    } else {
    }
    xhci->quirks = xhci->quirks | 1024U;
  } else {
  }
  if ((unsigned int )pdev->vendor == 4147U) {
    xhci->quirks = xhci->quirks | 4U;
  } else {
  }
  if ((unsigned int )pdev->vendor == 4130U && (unsigned int )xhci->hci_version == 150U) {
    xhci->quirks = xhci->quirks | 512U;
  } else {
  }
  if ((unsigned int )pdev->vendor == 4130U) {
    tmp___3 = usb_amd_find_chipset_info();
    if (tmp___3 != 0) {
      xhci->quirks = xhci->quirks | 8U;
    } else {
    }
  } else {
  }
  if ((unsigned int )pdev->vendor == 32902U) {
    xhci->quirks = xhci->quirks | 2048U;
    xhci->quirks = xhci->quirks | 4096U;
  } else {
  }
  if ((unsigned int )pdev->vendor == 32902U && (unsigned int )pdev->device == 7729U) {
    xhci->quirks = xhci->quirks | 16U;
    xhci->quirks = xhci->quirks | 32U;
    xhci->limit_active_eps = 64U;
    xhci->quirks = xhci->quirks | 256U;
    xhci->quirks = xhci->quirks | 8192U;
    xhci->quirks = xhci->quirks | 32768U;
  } else {
  }
  if ((unsigned int )pdev->vendor == 7023U && (unsigned int )pdev->device == 28707U) {
    xhci->quirks = xhci->quirks | 128U;
    descriptor___1.modname = "xhci_hcd";
    descriptor___1.function = "xhci_pci_quirks";
    descriptor___1.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-pci.c.prepared";
    descriptor___1.format = "QUIRK: Resetting on resume\n";
    descriptor___1.lineno = 146U;
    descriptor___1.flags = 1U;
    tmp___5 = ldv__builtin_expect((long )descriptor___1.flags & 1L, 0L);
    if (tmp___5 != 0L) {
      tmp___4 = xhci_to_hcd(xhci);
      __dynamic_dev_dbg(& descriptor___1, (struct device const *)tmp___4->self.controller,
                        "QUIRK: Resetting on resume\n");
    } else {
    }
    xhci->quirks = xhci->quirks | 1024U;
  } else {
  }
  if ((unsigned int )pdev->vendor == 4358U) {
    xhci->quirks = xhci->quirks | 128U;
  } else {
  }
  return;
}
}
static int xhci_pci_setup(struct usb_hcd *hcd )
{
  struct xhci_hcd *xhci ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  int retval ;
  int tmp ;
  struct _ddebug descriptor ;
  struct usb_hcd *tmp___0 ;
  long tmp___1 ;
  {
  __mptr = (struct device const *)hcd->self.controller;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  retval = xhci_gen_setup(hcd, & xhci_pci_quirks);
  if (retval != 0) {
    return (retval);
  } else {
  }
  xhci = hcd_to_xhci(hcd);
  tmp = usb_hcd_is_primary_hcd(hcd);
  if (tmp == 0) {
    return (0);
  } else {
  }
  pci_read_config_byte((struct pci_dev const *)pdev, 96, & xhci->sbrn);
  descriptor.modname = "xhci_hcd";
  descriptor.function = "xhci_pci_setup";
  descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-pci.c.prepared";
  descriptor.format = "Got SBRN %u\n";
  descriptor.lineno = 169U;
  descriptor.flags = 1U;
  tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___0 = xhci_to_hcd(xhci);
    __dynamic_dev_dbg(& descriptor, (struct device const *)tmp___0->self.controller,
                      "Got SBRN %u\n", (unsigned int )xhci->sbrn);
  } else {
  }
  retval = xhci_pci_reinit(xhci, pdev);
  if (retval == 0) {
    return (retval);
  } else {
  }
  kfree((void const *)xhci);
  return (retval);
}
}
static int xhci_pci_probe(struct pci_dev *dev , struct pci_device_id const *id )
{
  int retval ;
  struct xhci_hcd *xhci ;
  struct hc_driver *driver ;
  struct usb_hcd *hcd ;
  void *tmp ;
  char const *tmp___0 ;
  struct usb_bus *tmp___1 ;
  {
  driver = (struct hc_driver *)id->driver_data;
  retval = usb_hcd_pci_probe(dev, id);
  if (retval != 0) {
    return (retval);
  } else {
  }
  tmp = dev_get_drvdata((struct device const *)(& dev->dev));
  hcd = (struct usb_hcd *)tmp;
  xhci = hcd_to_xhci(hcd);
  tmp___0 = pci_name((struct pci_dev const *)dev);
  xhci->shared_hcd = usb_create_shared_hcd((struct hc_driver const *)driver, & dev->dev,
                                           tmp___0, hcd);
  if ((unsigned long )xhci->shared_hcd == (unsigned long )((struct usb_hcd *)0)) {
    retval = -12;
    goto dealloc_usb2_hcd;
  } else {
  }
  *((struct xhci_hcd **)(& (xhci->shared_hcd)->hcd_priv)) = xhci;
  retval = usb_add_hcd(xhci->shared_hcd, dev->irq, 128UL);
  if (retval != 0) {
    goto put_usb3_hcd;
  } else {
  }
  if ((xhci->quirks & 2048U) != 0U) {
    tmp___1 = hcd_to_bus(xhci->shared_hcd);
    (tmp___1->root_hub)->lpm_capable = 1U;
  } else {
  }
  return (0);
  put_usb3_hcd:
  usb_put_hcd(xhci->shared_hcd);
  dealloc_usb2_hcd:
  usb_hcd_pci_remove(dev);
  return (retval);
}
}
static void xhci_pci_remove(struct pci_dev *dev )
{
  struct xhci_hcd *xhci ;
  void *tmp ;
  {
  tmp = pci_get_drvdata(dev);
  xhci = hcd_to_xhci((struct usb_hcd *)tmp);
  if ((unsigned long )xhci->shared_hcd != (unsigned long )((struct usb_hcd *)0)) {
    usb_remove_hcd(xhci->shared_hcd);
    usb_put_hcd(xhci->shared_hcd);
  } else {
  }
  usb_hcd_pci_remove(dev);
  kfree((void const *)xhci);
  return;
}
}
static int xhci_pci_suspend(struct usb_hcd *hcd , bool do_wakeup )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  int tmp___0 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  tmp___0 = xhci_suspend(xhci);
  return (tmp___0);
}
}
static int xhci_pci_resume(struct usb_hcd *hcd , bool hibernated )
{
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp ;
  struct pci_dev *pdev ;
  struct device const *__mptr ;
  int retval ;
  bool tmp___0 ;
  {
  tmp = hcd_to_xhci(hcd);
  xhci = tmp;
  __mptr = (struct device const *)hcd->self.controller;
  pdev = (struct pci_dev *)__mptr + 0xffffffffffffff68UL;
  retval = 0;
  tmp___0 = usb_is_intel_switchable_xhci(pdev);
  if ((int )tmp___0) {
    usb_enable_xhci_ports(pdev);
  } else {
  }
  retval = xhci_resume(xhci, (int )hibernated);
  return (retval);
}
}
static struct hc_driver const xhci_pci_hc_driver =
     {(char const *)(& hcd_name), "xHCI Host Controller", 8UL, & xhci_irq, 69, & xhci_pci_setup,
    & xhci_run, & xhci_pci_suspend, & xhci_pci_resume, & xhci_stop, & xhci_shutdown,
    & xhci_get_frame, & xhci_urb_enqueue, & xhci_urb_dequeue, 0, 0, 0, & xhci_endpoint_reset,
    & xhci_hub_status_data, & xhci_hub_control, & xhci_bus_suspend, & xhci_bus_resume,
    0, 0, 0, 0, & xhci_alloc_dev, & xhci_free_dev, & xhci_alloc_streams, & xhci_free_streams,
    & xhci_add_endpoint, & xhci_drop_endpoint, & xhci_check_bandwidth, & xhci_reset_bandwidth,
    & xhci_address_device, & xhci_update_hub_device, & xhci_discover_or_reset_device,
    & xhci_update_device, & xhci_set_usb2_hardware_lpm, & xhci_enable_usb3_lpm_timeout,
    & xhci_disable_usb3_lpm_timeout};
static struct pci_device_id const pci_ids[2U] = { {4294967295U, 4294967295U, 4294967295U, 4294967295U, 787248U, 4294967295U, (unsigned long )(& xhci_pci_hc_driver)}};
struct pci_device_id const __mod_pci_device_table ;
static struct pci_driver xhci_pci_driver =
     {{0, 0}, (char const *)(& hcd_name), (struct pci_device_id const *)(& pci_ids),
    & xhci_pci_probe, & xhci_pci_remove, 0, 0, 0, 0, & usb_hcd_pci_shutdown, 0, 0,
    {0, 0, 0, 0, (_Bool)0, 0, 0, 0, 0, 0, 0, 0, 0, & usb_hcd_pci_pm_ops, 0}, {{{{{{0U}},
                                                                                 0U,
                                                                                 0U,
                                                                                 0,
                                                                                 {0,
                                                                                  {0,
                                                                                   0},
                                                                                  0,
                                                                                  0,
                                                                                  0UL}}}},
                                                                              {0,
                                                                               0}}};
int xhci_register_pci(void)
{
  int tmp ;
  {
  tmp = __pci_register_driver(& xhci_pci_driver, & __this_module, "xhci_hcd");
  return (tmp);
}
}
void xhci_unregister_pci(void)
{
  {
  pci_unregister_driver(& xhci_pci_driver);
  return;
}
}
extern void ldv_check_return_value(int ) ;
extern void ldv_check_return_value_probe(int ) ;
int main(void)
{
  struct usb_hcd *var_group1 ;
  bool var_xhci_pci_suspend_5_p1 ;
  bool var_xhci_pci_resume_6_p1 ;
  struct pci_dev *var_group2 ;
  struct pci_device_id const *var_xhci_pci_probe_3_p1 ;
  int res_xhci_pci_probe_3 ;
  int ldv_s_xhci_pci_driver_pci_driver ;
  int tmp ;
  int tmp___0 ;
  {
  ldv_s_xhci_pci_driver_pci_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_31029;
  ldv_31028:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_handler_precall();
  xhci_pci_setup(var_group1);
  goto ldv_31021;
  case 1:
  ldv_handler_precall();
  xhci_pci_suspend(var_group1, (int )var_xhci_pci_suspend_5_p1);
  goto ldv_31021;
  case 2:
  ldv_handler_precall();
  xhci_pci_resume(var_group1, (int )var_xhci_pci_resume_6_p1);
  goto ldv_31021;
  case 3: ;
  if (ldv_s_xhci_pci_driver_pci_driver == 0) {
    res_xhci_pci_probe_3 = xhci_pci_probe(var_group2, var_xhci_pci_probe_3_p1);
    ldv_check_return_value(res_xhci_pci_probe_3);
    ldv_check_return_value_probe(res_xhci_pci_probe_3);
    if (res_xhci_pci_probe_3 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_xhci_pci_driver_pci_driver = ldv_s_xhci_pci_driver_pci_driver + 1;
  } else {
  }
  goto ldv_31021;
  case 4: ;
  if (ldv_s_xhci_pci_driver_pci_driver == 1) {
    ldv_handler_precall();
    xhci_pci_remove(var_group2);
    ldv_s_xhci_pci_driver_pci_driver = 0;
  } else {
  }
  goto ldv_31021;
  default: ;
  goto ldv_31021;
  }
  ldv_31021: ;
  ldv_31029:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0 || ldv_s_xhci_pci_driver_pci_driver != 0) {
    goto ldv_31028;
  } else {
  }
  ldv_module_exit: ;
  ldv_check_final_state();
  return 0;
}
}
void ldv_mutex_lock_71(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_72(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_73(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_74(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_75(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_76(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_77(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_88(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_86(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_89(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_91(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_85(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_87(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_90(struct mutex *ldv_func_arg1 ) ;
extern struct resource iomem_resource ;
__inline static resource_size_t resource_size(struct resource const *res )
{
  {
  return (((unsigned long long )res->end - (unsigned long long )res->start) + 1ULL);
}
}
extern struct resource *__request_region(struct resource * , resource_size_t , resource_size_t ,
                                         char const * , int ) ;
extern void __release_region(struct resource * , resource_size_t , resource_size_t ) ;
extern struct resource *platform_get_resource(struct platform_device * , unsigned int ,
                                              unsigned int ) ;
extern int platform_get_irq(struct platform_device * , unsigned int ) ;
extern int platform_driver_register(struct platform_driver * ) ;
extern void platform_driver_unregister(struct platform_driver * ) ;
__inline static void *platform_get_drvdata(struct platform_device const *pdev )
{
  void *tmp ;
  {
  tmp = dev_get_drvdata(& pdev->dev);
  return (tmp);
}
}
extern void *ioremap_nocache(resource_size_t , unsigned long ) ;
extern void iounmap(void volatile * ) ;
extern int usb_disabled(void) ;
extern struct usb_hcd *usb_create_hcd(struct hc_driver const * , struct device * ,
                                      char const * ) ;
static void xhci_plat_quirks(struct device *dev , struct xhci_hcd *xhci )
{
  {
  xhci->quirks = xhci->quirks | 64U;
  return;
}
}
static int xhci_plat_setup(struct usb_hcd *hcd )
{
  int tmp ;
  {
  tmp = xhci_gen_setup(hcd, & xhci_plat_quirks);
  return (tmp);
}
}
static struct hc_driver const xhci_plat_xhci_driver =
     {"xhci-hcd", "xHCI Host Controller", 8UL, & xhci_irq, 69, & xhci_plat_setup, & xhci_run,
    0, 0, & xhci_stop, & xhci_shutdown, & xhci_get_frame, & xhci_urb_enqueue, & xhci_urb_dequeue,
    0, 0, 0, & xhci_endpoint_reset, & xhci_hub_status_data, & xhci_hub_control, & xhci_bus_suspend,
    & xhci_bus_resume, 0, 0, 0, 0, & xhci_alloc_dev, & xhci_free_dev, & xhci_alloc_streams,
    & xhci_free_streams, & xhci_add_endpoint, & xhci_drop_endpoint, & xhci_check_bandwidth,
    & xhci_reset_bandwidth, & xhci_address_device, & xhci_update_hub_device, & xhci_discover_or_reset_device,
    0, 0, 0, 0};
static int xhci_plat_probe(struct platform_device *pdev )
{
  struct hc_driver const *driver ;
  struct xhci_hcd *xhci ;
  struct resource *res ;
  struct usb_hcd *hcd ;
  int ret ;
  int irq ;
  int tmp ;
  char const *tmp___0 ;
  struct _ddebug descriptor ;
  long tmp___1 ;
  struct resource *tmp___2 ;
  struct _ddebug descriptor___0 ;
  long tmp___3 ;
  void *tmp___4 ;
  char const *tmp___5 ;
  {
  tmp = usb_disabled();
  if (tmp != 0) {
    return (-19);
  } else {
  }
  driver = & xhci_plat_xhci_driver;
  irq = platform_get_irq(pdev, 0U);
  if (irq < 0) {
    return (-19);
  } else {
  }
  res = platform_get_resource(pdev, 512U, 0U);
  if ((unsigned long )res == (unsigned long )((struct resource *)0)) {
    return (-19);
  } else {
  }
  tmp___0 = dev_name((struct device const *)(& pdev->dev));
  hcd = usb_create_hcd(driver, & pdev->dev, tmp___0);
  if ((unsigned long )hcd == (unsigned long )((struct usb_hcd *)0)) {
    return (-12);
  } else {
  }
  hcd->rsrc_start = res->start;
  hcd->rsrc_len = resource_size((struct resource const *)res);
  tmp___2 = __request_region(& iomem_resource, hcd->rsrc_start, hcd->rsrc_len, driver->description,
                             0);
  if ((unsigned long )tmp___2 == (unsigned long )((struct resource *)0)) {
    descriptor.modname = "xhci_hcd";
    descriptor.function = "xhci_plat_probe";
    descriptor.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-plat.c.prepared";
    descriptor.format = "controller already in use\n";
    descriptor.lineno = 148U;
    descriptor.flags = 1U;
    tmp___1 = ldv__builtin_expect((long )descriptor.flags & 1L, 0L);
    if (tmp___1 != 0L) {
      __dynamic_dev_dbg(& descriptor, (struct device const *)(& pdev->dev), "controller already in use\n");
    } else {
    }
    ret = -16;
    goto put_hcd;
  } else {
  }
  hcd->regs = ioremap_nocache(hcd->rsrc_start, (unsigned long )hcd->rsrc_len);
  if ((unsigned long )hcd->regs == (unsigned long )((void *)0)) {
    descriptor___0.modname = "xhci_hcd";
    descriptor___0.function = "xhci_plat_probe";
    descriptor___0.filename = "/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/usb/host/xhci-hcd.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/20/dscv_tempdir/dscv/ri/32_7a/drivers/usb/host/xhci-plat.c.prepared";
    descriptor___0.format = "error mapping memory\n";
    descriptor___0.lineno = 155U;
    descriptor___0.flags = 1U;
    tmp___3 = ldv__builtin_expect((long )descriptor___0.flags & 1L, 0L);
    if (tmp___3 != 0L) {
      __dynamic_dev_dbg(& descriptor___0, (struct device const *)(& pdev->dev),
                        "error mapping memory\n");
    } else {
    }
    ret = -14;
    goto release_mem_region;
  } else {
  }
  ret = usb_add_hcd(hcd, (unsigned int )irq, 128UL);
  if (ret != 0) {
    goto unmap_registers;
  } else {
  }
  tmp___4 = dev_get_drvdata((struct device const *)(& pdev->dev));
  hcd = (struct usb_hcd *)tmp___4;
  xhci = hcd_to_xhci(hcd);
  tmp___5 = dev_name((struct device const *)(& pdev->dev));
  xhci->shared_hcd = usb_create_shared_hcd(driver, & pdev->dev, tmp___5, hcd);
  if ((unsigned long )xhci->shared_hcd == (unsigned long )((struct usb_hcd *)0)) {
    ret = -12;
    goto dealloc_usb2_hcd;
  } else {
  }
  *((struct xhci_hcd **)(& (xhci->shared_hcd)->hcd_priv)) = xhci;
  ret = usb_add_hcd(xhci->shared_hcd, (unsigned int )irq, 128UL);
  if (ret != 0) {
    goto put_usb3_hcd;
  } else {
  }
  return (0);
  put_usb3_hcd:
  usb_put_hcd(xhci->shared_hcd);
  dealloc_usb2_hcd:
  usb_remove_hcd(hcd);
  unmap_registers:
  iounmap((void volatile *)hcd->regs);
  release_mem_region:
  __release_region(& iomem_resource, hcd->rsrc_start, hcd->rsrc_len);
  put_hcd:
  usb_put_hcd(hcd);
  return (ret);
}
}
static int xhci_plat_remove(struct platform_device *dev )
{
  struct usb_hcd *hcd ;
  void *tmp ;
  struct xhci_hcd *xhci ;
  struct xhci_hcd *tmp___0 ;
  {
  tmp = platform_get_drvdata((struct platform_device const *)dev);
  hcd = (struct usb_hcd *)tmp;
  tmp___0 = hcd_to_xhci(hcd);
  xhci = tmp___0;
  usb_remove_hcd(xhci->shared_hcd);
  usb_put_hcd(xhci->shared_hcd);
  usb_remove_hcd(hcd);
  iounmap((void volatile *)hcd->regs);
  usb_put_hcd(hcd);
  kfree((void const *)xhci);
  return (0);
}
}
static struct platform_driver usb_xhci_driver = {& xhci_plat_probe, & xhci_plat_remove, 0, 0, 0, {"xhci-hcd", 0, 0, 0, (_Bool)0,
                                                     0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    0};
int xhci_register_plat(void)
{
  int tmp ;
  {
  tmp = platform_driver_register(& usb_xhci_driver);
  return (tmp);
}
}
void xhci_unregister_plat(void)
{
  {
  platform_driver_unregister(& usb_xhci_driver);
  return;
}
}
void ldv_main6_sequence_infinite_withcheck_stateful(void)
{
  struct usb_hcd *var_group1 ;
  struct platform_device *var_group2 ;
  int res_xhci_plat_probe_2 ;
  int ldv_s_usb_xhci_driver_platform_driver ;
  int tmp ;
  int tmp___0 ;
  {
  ldv_s_usb_xhci_driver_platform_driver = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_26330;
  ldv_26329:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_handler_precall();
  xhci_plat_setup(var_group1);
  goto ldv_26324;
  case 1: ;
  if (ldv_s_usb_xhci_driver_platform_driver == 0) {
    res_xhci_plat_probe_2 = xhci_plat_probe(var_group2);
    ldv_check_return_value(res_xhci_plat_probe_2);
    ldv_check_return_value_probe(res_xhci_plat_probe_2);
    if (res_xhci_plat_probe_2 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_usb_xhci_driver_platform_driver = ldv_s_usb_xhci_driver_platform_driver + 1;
  } else {
  }
  goto ldv_26324;
  case 2: ;
  if (ldv_s_usb_xhci_driver_platform_driver == 1) {
    ldv_handler_precall();
    xhci_plat_remove(var_group2);
    ldv_s_usb_xhci_driver_platform_driver = 0;
  } else {
  }
  goto ldv_26324;
  default: ;
  goto ldv_26324;
  }
  ldv_26324: ;
  ldv_26330:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0 || ldv_s_usb_xhci_driver_platform_driver != 0) {
    goto ldv_26329;
  } else {
  }
  ldv_module_exit: ;
  ldv_check_final_state();
  return;
}
}
void ldv_mutex_lock_85(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_86(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_87(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_88(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_89(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_90(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_91(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
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
int __VERIFIER_nondet_int(void);
int ___ratelimit(struct ratelimit_state *arg0, const char *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __bitmap_weight(const unsigned long *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void __const_udelay(unsigned long arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __dynamic_dev_dbg(struct _ddebug *arg0, const struct device *arg1, const char *arg2, ...) {
  return __VERIFIER_nondet_int();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __list_del_entry(struct list_head *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __pci_register_driver(struct pci_driver *arg0, struct module *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int __printk_ratelimit(const char *arg0) {
  return __VERIFIER_nondet_int();
}
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __release_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2) {
  return;
}
void *external_alloc(void);
struct resource *__request_region(struct resource *arg0, resource_size_t arg1, resource_size_t arg2, const char *arg3, int arg4) {
  return (struct resource *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int _dev_info(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_lock_irq(raw_spinlock_t *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _raw_spin_lock_irqsave(raw_spinlock_t *arg0) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irq(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock_irqrestore(raw_spinlock_t *arg0, unsigned long arg1) {
  return;
}
void add_timer(struct timer_list *arg0) {
  return;
}
void complete(struct completion *arg0) {
  return;
}
void debug_dma_alloc_coherent(struct device *arg0, size_t arg1, dma_addr_t arg2, void *arg3) {
  return;
}
void debug_dma_free_coherent(struct device *arg0, size_t arg1, void *arg2, dma_addr_t arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int del_timer(struct timer_list *arg0) {
  return __VERIFIER_nondet_int();
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
int __VERIFIER_nondet_int(void);
int dev_warn(const struct device *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *dma_pool_alloc(struct dma_pool *arg0, gfp_t arg1, dma_addr_t *arg2) {
  return (void *)external_alloc();
}
void *external_alloc(void);
struct dma_pool *dma_pool_create(const char *arg0, struct device *arg1, size_t arg2, size_t arg3, size_t arg4) {
  return (struct dma_pool *)external_alloc();
}
void dma_pool_destroy(struct dma_pool *arg0) {
  return;
}
void dma_pool_free(struct dma_pool *arg0, void *arg1, dma_addr_t arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int dma_set_mask(struct device *arg0, u64 arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
const char *dmi_get_system_info(int arg0) {
  return (const char *)external_alloc();
}
void free_irq(unsigned int arg0, void *arg1) {
  return;
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void *external_alloc(void);
void *ioremap_nocache(resource_size_t arg0, unsigned long arg1) {
  return (void *)external_alloc();
}
void iounmap(volatile void *arg0) {
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
void list_del(struct list_head *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int mod_timer(struct timer_list *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
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
int pci_bus_read_config_byte(struct pci_bus *arg0, unsigned int arg1, int arg2, u8 *arg3) {
  return __VERIFIER_nondet_int();
}
void pci_disable_msi(struct pci_dev *arg0) {
  return;
}
void pci_disable_msix(struct pci_dev *arg0) {
  return;
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
int pci_set_mwi(struct pci_dev *arg0) {
  return __VERIFIER_nondet_int();
}
void pci_unregister_driver(struct pci_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int platform_driver_register(struct platform_driver *arg0) {
  return __VERIFIER_nondet_int();
}
void platform_driver_unregister(struct platform_driver *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int platform_get_irq(struct platform_device *arg0, unsigned int arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct resource *platform_get_resource(struct platform_device *arg0, unsigned int arg1, unsigned int arg2) {
  return (struct resource *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *radix_tree_delete(struct radix_tree_root *arg0, unsigned long arg1) {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int radix_tree_insert(struct radix_tree_root *arg0, unsigned long arg1, void *arg2) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *radix_tree_lookup(struct radix_tree_root *arg0, unsigned long arg1) {
  return (void *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int request_threaded_irq(unsigned int arg0, irqreturn_t (*arg1)(int, void *), irqreturn_t (*arg2)(int, void *), unsigned long arg3, const char *arg4, void *arg5) {
  return __VERIFIER_nondet_int();
}
void set_timer_slack(struct timer_list *arg0, int arg1) {
  return;
}
void *external_alloc(void);
struct scatterlist *sg_next(struct scatterlist *arg0) {
  return (struct scatterlist *)external_alloc();
}
void synchronize_irq(unsigned int arg0) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool usb_acpi_power_manageable(struct usb_device *arg0, int arg1) {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int usb_acpi_set_power_state(struct usb_device *arg0, int arg1, bool arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_add_hcd(struct usb_hcd *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_int();
}
void usb_amd_dev_put() {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_amd_find_chipset_info() {
  return __VERIFIER_nondet_int();
}
void usb_amd_quirk_pll_disable() {
  return;
}
void usb_amd_quirk_pll_enable() {
  return;
}
void *external_alloc(void);
struct usb_hcd *usb_create_hcd(const struct hc_driver *arg0, struct device *arg1, const char *arg2) {
  return (struct usb_hcd *)external_alloc();
}
void *external_alloc(void);
struct usb_hcd *usb_create_shared_hcd(const struct hc_driver *arg0, struct device *arg1, const char *arg2, struct usb_hcd *arg3) {
  return (struct usb_hcd *)external_alloc();
}
void usb_disable_xhci_ports(struct pci_dev *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_disabled() {
  return __VERIFIER_nondet_int();
}
void usb_enable_xhci_ports(struct pci_dev *arg0) {
  return;
}
void usb_hc_died(struct usb_hcd *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_hcd_check_unlink_urb(struct usb_hcd *arg0, struct urb *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void usb_hcd_giveback_urb(struct usb_hcd *arg0, struct urb *arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int usb_hcd_is_primary_hcd(struct usb_hcd *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_hcd_link_urb_to_ep(struct usb_hcd *arg0, struct urb *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int usb_hcd_pci_probe(struct pci_dev *arg0, const struct pci_device_id *arg1) {
  return __VERIFIER_nondet_int();
}
void usb_hcd_pci_remove(struct pci_dev *arg0) {
  return;
}
void usb_hcd_poll_rh_status(struct usb_hcd *arg0) {
  return;
}
void usb_hcd_resume_root_hub(struct usb_hcd *arg0) {
  return;
}
void usb_hcd_unlink_urb_from_ep(struct usb_hcd *arg0, struct urb *arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool usb_is_intel_switchable_xhci(struct pci_dev *arg0) {
  return __VERIFIER_nondet_bool();
}
void usb_put_hcd(struct usb_hcd *arg0) {
  return;
}
void usb_remove_hcd(struct usb_hcd *arg0) {
  return;
}
void usb_root_hub_lost_power(struct usb_device *arg0) {
  return;
}
void usb_wakeup_notification(struct usb_device *arg0, unsigned int arg1) {
  return;
}
long __VERIFIER_nondet_long(void);
long int wait_for_completion_interruptible_timeout(struct completion *arg0, unsigned long arg1) {
  return __VERIFIER_nondet_long();
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
