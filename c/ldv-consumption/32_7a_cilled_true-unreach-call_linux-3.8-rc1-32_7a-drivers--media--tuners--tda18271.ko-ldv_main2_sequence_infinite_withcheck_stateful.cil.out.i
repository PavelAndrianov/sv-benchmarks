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
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct inode;
struct dentry;
struct user_namespace;
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
};
struct __anonstruct_nodemask_t_38 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_38 nodemask_t;
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
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
struct __anonstruct_mm_context_t_39 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_39 mm_context_t;
struct address_space;
union __anonunion_ldv_10219_41 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_10229_45 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_10231_44 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_10229_45 ldv_10229 ;
   int units ;
};
struct __anonstruct_ldv_10233_43 {
   union __anonunion_ldv_10231_44 ldv_10231 ;
   atomic_t _count ;
};
union __anonunion_ldv_10234_42 {
   unsigned long counters ;
   struct __anonstruct_ldv_10233_43 ldv_10233 ;
};
struct __anonstruct_ldv_10235_40 {
   union __anonunion_ldv_10219_41 ldv_10219 ;
   union __anonunion_ldv_10234_42 ldv_10234 ;
};
struct __anonstruct_ldv_10242_47 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_10246_46 {
   struct list_head lru ;
   struct __anonstruct_ldv_10242_47 ldv_10242 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_10251_48 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_10235_40 ldv_10235 ;
   union __anonunion_ldv_10246_46 ldv_10246 ;
   union __anonunion_ldv_10251_48 ldv_10251 ;
   unsigned long debug_flags ;
   int _last_nid ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_50 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_49 {
   struct __anonstruct_linear_50 linear ;
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
   union __anonunion_shared_49 shared ;
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
typedef unsigned long cputime_t;
typedef uid_t kuid_t;
typedef gid_t kgid_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_141 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_141 sigset_t;
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
struct __anonstruct__kill_143 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_144 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_145 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_146 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_147 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_148 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_149 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_142 {
   int _pad[28U] ;
   struct __anonstruct__kill_143 _kill ;
   struct __anonstruct__timer_144 _timer ;
   struct __anonstruct__rt_145 _rt ;
   struct __anonstruct__sigchld_146 _sigchld ;
   struct __anonstruct__sigfault_147 _sigfault ;
   struct __anonstruct__sigpoll_148 _sigpoll ;
   struct __anonstruct__sigsys_149 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_142 _sifields ;
};
typedef struct siginfo siginfo_t;
struct user_struct;
struct sigpending {
   struct list_head list ;
   sigset_t signal ;
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
struct percpu_counter {
   raw_spinlock_t lock ;
   s64 count ;
   struct list_head list ;
   s32 *counters ;
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
struct rt_mutex {
   raw_spinlock_t wait_lock ;
   struct plist_head wait_list ;
   struct task_struct *owner ;
   int save_state ;
   char const *name ;
   char const *file ;
   int line ;
   void *magic ;
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
struct nsproxy;
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct cred;
struct key_type;
struct keyring_list;
union __anonunion_ldv_15892_154 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_15901_155 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_156 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_157 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_15892_154 ldv_15892 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_15901_155 ldv_15901 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_156 type_data ;
   union __anonunion_payload_157 payload ;
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
union __anonunion_ki_obj_158 {
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
   union __anonunion_ki_obj_158 ki_obj ;
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
struct mem_cgroup;
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
typedef u32 phandle;
struct property {
   char *name ;
   int length ;
   void *value ;
   struct property *next ;
   unsigned long _flags ;
   unsigned int unique_id ;
};
struct proc_dir_entry;
struct device_node {
   char const *name ;
   char const *type ;
   phandle phandle ;
   char const *full_name ;
   struct property *properties ;
   struct property *deadprops ;
   struct device_node *parent ;
   struct device_node *child ;
   struct device_node *sibling ;
   struct device_node *next ;
   struct device_node *allnext ;
   struct proc_dir_entry *pde ;
   struct kref kref ;
   unsigned long _flags ;
   void *data ;
};
struct i2c_msg {
   __u16 addr ;
   __u16 flags ;
   __u16 len ;
   __u8 *buf ;
};
union i2c_smbus_data {
   __u8 byte ;
   __u16 word ;
   __u8 block[34U] ;
};
struct i2c_algorithm;
struct i2c_adapter;
struct i2c_algorithm {
   int (*master_xfer)(struct i2c_adapter * , struct i2c_msg * , int ) ;
   int (*smbus_xfer)(struct i2c_adapter * , u16 , unsigned short , char , u8 ,
                     int , union i2c_smbus_data * ) ;
   u32 (*functionality)(struct i2c_adapter * ) ;
};
struct i2c_adapter {
   struct module *owner ;
   unsigned int class ;
   struct i2c_algorithm const *algo ;
   void *algo_data ;
   struct rt_mutex bus_lock ;
   int timeout ;
   int retries ;
   struct device dev ;
   int nr ;
   char name[48U] ;
   struct completion dev_released ;
   struct mutex userspace_clients_lock ;
   struct list_head userspace_clients ;
};
struct __anonstruct_ldv_18360_161 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_18361_160 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_18360_161 ldv_18360 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_18361_160 ldv_18361 ;
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
struct tuner_i2c_props {
   u8 addr ;
   struct i2c_adapter *adap ;
   int count ;
   char *name ;
};
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
union __anonunion_ldv_19022_166 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_19022_166 ldv_19022 ;
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
enum fe_type {
    FE_QPSK = 0,
    FE_QAM = 1,
    FE_OFDM = 2,
    FE_ATSC = 3
} ;
typedef enum fe_type fe_type_t;
enum fe_caps {
    FE_IS_STUPID = 0,
    FE_CAN_INVERSION_AUTO = 1,
    FE_CAN_FEC_1_2 = 2,
    FE_CAN_FEC_2_3 = 4,
    FE_CAN_FEC_3_4 = 8,
    FE_CAN_FEC_4_5 = 16,
    FE_CAN_FEC_5_6 = 32,
    FE_CAN_FEC_6_7 = 64,
    FE_CAN_FEC_7_8 = 128,
    FE_CAN_FEC_8_9 = 256,
    FE_CAN_FEC_AUTO = 512,
    FE_CAN_QPSK = 1024,
    FE_CAN_QAM_16 = 2048,
    FE_CAN_QAM_32 = 4096,
    FE_CAN_QAM_64 = 8192,
    FE_CAN_QAM_128 = 16384,
    FE_CAN_QAM_256 = 32768,
    FE_CAN_QAM_AUTO = 65536,
    FE_CAN_TRANSMISSION_MODE_AUTO = 131072,
    FE_CAN_BANDWIDTH_AUTO = 262144,
    FE_CAN_GUARD_INTERVAL_AUTO = 524288,
    FE_CAN_HIERARCHY_AUTO = 1048576,
    FE_CAN_8VSB = 2097152,
    FE_CAN_16VSB = 4194304,
    FE_HAS_EXTENDED_CAPS = 8388608,
    FE_CAN_MULTISTREAM = 67108864,
    FE_CAN_TURBO_FEC = 134217728,
    FE_CAN_2G_MODULATION = 268435456,
    FE_NEEDS_BENDING = 536870912,
    FE_CAN_RECOVER = 1073741824,
    FE_CAN_MUTE_TS = 2147483648U
} ;
typedef enum fe_caps fe_caps_t;
struct dvb_frontend_info {
   char name[128U] ;
   fe_type_t type ;
   __u32 frequency_min ;
   __u32 frequency_max ;
   __u32 frequency_stepsize ;
   __u32 frequency_tolerance ;
   __u32 symbol_rate_min ;
   __u32 symbol_rate_max ;
   __u32 symbol_rate_tolerance ;
   __u32 notifier_delay ;
   fe_caps_t caps ;
};
struct dvb_diseqc_master_cmd {
   __u8 msg[6U] ;
   __u8 msg_len ;
};
struct dvb_diseqc_slave_reply {
   __u8 msg[4U] ;
   __u8 msg_len ;
   int timeout ;
};
enum fe_sec_voltage {
    SEC_VOLTAGE_13 = 0,
    SEC_VOLTAGE_18 = 1,
    SEC_VOLTAGE_OFF = 2
} ;
typedef enum fe_sec_voltage fe_sec_voltage_t;
enum fe_sec_tone_mode {
    SEC_TONE_ON = 0,
    SEC_TONE_OFF = 1
} ;
typedef enum fe_sec_tone_mode fe_sec_tone_mode_t;
enum fe_sec_mini_cmd {
    SEC_MINI_A = 0,
    SEC_MINI_B = 1
} ;
typedef enum fe_sec_mini_cmd fe_sec_mini_cmd_t;
enum fe_status {
    FE_HAS_SIGNAL = 1,
    FE_HAS_CARRIER = 2,
    FE_HAS_VITERBI = 4,
    FE_HAS_SYNC = 8,
    FE_HAS_LOCK = 16,
    FE_TIMEDOUT = 32,
    FE_REINIT = 64
} ;
typedef enum fe_status fe_status_t;
enum fe_spectral_inversion {
    INVERSION_OFF = 0,
    INVERSION_ON = 1,
    INVERSION_AUTO = 2
} ;
typedef enum fe_spectral_inversion fe_spectral_inversion_t;
enum fe_code_rate {
    FEC_NONE = 0,
    FEC_1_2 = 1,
    FEC_2_3 = 2,
    FEC_3_4 = 3,
    FEC_4_5 = 4,
    FEC_5_6 = 5,
    FEC_6_7 = 6,
    FEC_7_8 = 7,
    FEC_8_9 = 8,
    FEC_AUTO = 9,
    FEC_3_5 = 10,
    FEC_9_10 = 11,
    FEC_2_5 = 12
} ;
typedef enum fe_code_rate fe_code_rate_t;
enum fe_modulation {
    QPSK = 0,
    QAM_16 = 1,
    QAM_32 = 2,
    QAM_64 = 3,
    QAM_128 = 4,
    QAM_256 = 5,
    QAM_AUTO = 6,
    VSB_8 = 7,
    VSB_16 = 8,
    PSK_8 = 9,
    APSK_16 = 10,
    APSK_32 = 11,
    DQPSK = 12,
    QAM_4_NR = 13
} ;
typedef enum fe_modulation fe_modulation_t;
enum fe_transmit_mode {
    TRANSMISSION_MODE_2K = 0,
    TRANSMISSION_MODE_8K = 1,
    TRANSMISSION_MODE_AUTO = 2,
    TRANSMISSION_MODE_4K = 3,
    TRANSMISSION_MODE_1K = 4,
    TRANSMISSION_MODE_16K = 5,
    TRANSMISSION_MODE_32K = 6,
    TRANSMISSION_MODE_C1 = 7,
    TRANSMISSION_MODE_C3780 = 8
} ;
typedef enum fe_transmit_mode fe_transmit_mode_t;
enum fe_guard_interval {
    GUARD_INTERVAL_1_32 = 0,
    GUARD_INTERVAL_1_16 = 1,
    GUARD_INTERVAL_1_8 = 2,
    GUARD_INTERVAL_1_4 = 3,
    GUARD_INTERVAL_AUTO = 4,
    GUARD_INTERVAL_1_128 = 5,
    GUARD_INTERVAL_19_128 = 6,
    GUARD_INTERVAL_19_256 = 7,
    GUARD_INTERVAL_PN420 = 8,
    GUARD_INTERVAL_PN595 = 9,
    GUARD_INTERVAL_PN945 = 10
} ;
typedef enum fe_guard_interval fe_guard_interval_t;
enum fe_hierarchy {
    HIERARCHY_NONE = 0,
    HIERARCHY_1 = 1,
    HIERARCHY_2 = 2,
    HIERARCHY_4 = 3,
    HIERARCHY_AUTO = 4
} ;
typedef enum fe_hierarchy fe_hierarchy_t;
enum fe_interleaving {
    INTERLEAVING_NONE = 0,
    INTERLEAVING_AUTO = 1,
    INTERLEAVING_240 = 2,
    INTERLEAVING_720 = 3
} ;
enum fe_pilot {
    PILOT_ON = 0,
    PILOT_OFF = 1,
    PILOT_AUTO = 2
} ;
typedef enum fe_pilot fe_pilot_t;
enum fe_rolloff {
    ROLLOFF_35 = 0,
    ROLLOFF_20 = 1,
    ROLLOFF_25 = 2,
    ROLLOFF_AUTO = 3
} ;
typedef enum fe_rolloff fe_rolloff_t;
enum fe_delivery_system {
    SYS_UNDEFINED = 0,
    SYS_DVBC_ANNEX_A = 1,
    SYS_DVBC_ANNEX_B = 2,
    SYS_DVBT = 3,
    SYS_DSS = 4,
    SYS_DVBS = 5,
    SYS_DVBS2 = 6,
    SYS_DVBH = 7,
    SYS_ISDBT = 8,
    SYS_ISDBS = 9,
    SYS_ISDBC = 10,
    SYS_ATSC = 11,
    SYS_ATSCMH = 12,
    SYS_DTMB = 13,
    SYS_CMMB = 14,
    SYS_DAB = 15,
    SYS_DVBT2 = 16,
    SYS_TURBO = 17,
    SYS_DVBC_ANNEX_C = 18
} ;
typedef enum fe_delivery_system fe_delivery_system_t;
struct __anonstruct_buffer_168 {
   __u8 data[32U] ;
   __u32 len ;
   __u32 reserved1[3U] ;
   void *reserved2 ;
};
union __anonunion_u_167 {
   __u32 data ;
   struct __anonstruct_buffer_168 buffer ;
};
struct dtv_property {
   __u32 cmd ;
   __u32 reserved[3U] ;
   union __anonunion_u_167 u ;
   int result ;
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
struct __anonstruct_ldv_19902_170 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_19904_169 {
   struct __anonstruct_ldv_19902_170 ldv_19902 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_19904_169 ldv_19904 ;
   unsigned char const *name ;
};
struct dentry_operations;
struct super_block;
union __anonunion_d_u_171 {
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
   union __anonunion_d_u_171 d_u ;
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
struct fiemap_extent {
   __u64 fe_logical ;
   __u64 fe_physical ;
   __u64 fe_length ;
   __u64 fe_reserved64[2U] ;
   __u32 fe_flags ;
   __u32 fe_reserved[3U] ;
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
enum migrate_mode {
    MIGRATE_ASYNC = 0,
    MIGRATE_SYNC_LIGHT = 1,
    MIGRATE_SYNC = 2
} ;
struct block_device;
struct export_operations;
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
union __anonunion_ldv_20653_172 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_20653_172 ldv_20653 ;
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
struct writeback_control;
union __anonunion_arg_174 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_173 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_174 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_173 read_descriptor_t;
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
union __anonunion_ldv_21087_175 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_21107_176 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_21123_177 {
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
   union __anonunion_ldv_21087_175 ldv_21087 ;
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
   union __anonunion_ldv_21107_176 ldv_21107 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_21123_177 ldv_21123 ;
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
union __anonunion_f_u_178 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_178 f_u ;
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
struct __anonstruct_afs_180 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_179 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_180 afs ;
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
   union __anonunion_fl_u_179 fl_u ;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
};
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
struct dvb_frontend;
struct dvb_device;
struct dvb_adapter {
   int num ;
   struct list_head list_head ;
   struct list_head device_list ;
   char const *name ;
   u8 proposed_mac[6U] ;
   void *priv ;
   struct device *device ;
   struct module *module ;
   int mfe_shared ;
   struct dvb_device *mfe_dvbdev ;
   struct mutex mfe_lock ;
};
struct dvb_device {
   struct list_head list_head ;
   struct file_operations const *fops ;
   struct dvb_adapter *adapter ;
   int type ;
   int minor ;
   u32 id ;
   int readers ;
   int writers ;
   int users ;
   wait_queue_head_t wait_queue ;
   int (*kernel_ioctl)(struct file * , unsigned int , void * ) ;
   void *priv ;
};
struct dvb_frontend_tune_settings {
   int min_delay_ms ;
   int step_size ;
   int max_drift ;
};
struct dvb_tuner_info {
   char name[128U] ;
   u32 frequency_min ;
   u32 frequency_max ;
   u32 frequency_step ;
   u32 bandwidth_min ;
   u32 bandwidth_max ;
   u32 bandwidth_step ;
};
struct analog_parameters {
   unsigned int frequency ;
   unsigned int mode ;
   unsigned int audmode ;
   u64 std ;
};
enum tuner_param {
    DVBFE_TUNER_FREQUENCY = 1,
    DVBFE_TUNER_TUNERSTEP = 2,
    DVBFE_TUNER_IFFREQ = 4,
    DVBFE_TUNER_BANDWIDTH = 8,
    DVBFE_TUNER_REFCLOCK = 16,
    DVBFE_TUNER_IQSENSE = 32,
    DVBFE_TUNER_DUMMY = (-0x7FFFFFFF-1)
} ;
enum dvbfe_algo {
    DVBFE_ALGO_HW = 1,
    DVBFE_ALGO_SW = 2,
    DVBFE_ALGO_CUSTOM = 4,
    DVBFE_ALGO_RECOVERY = (-0x7FFFFFFF-1)
} ;
struct tuner_state {
   u32 frequency ;
   u32 tunerstep ;
   u32 ifreq ;
   u32 bandwidth ;
   u32 iqsense ;
   u32 refclock ;
};
enum dvbfe_search {
    DVBFE_ALGO_SEARCH_SUCCESS = 1,
    DVBFE_ALGO_SEARCH_ASLEEP = 2,
    DVBFE_ALGO_SEARCH_FAILED = 4,
    DVBFE_ALGO_SEARCH_INVALID = 8,
    DVBFE_ALGO_SEARCH_AGAIN = 16,
    DVBFE_ALGO_SEARCH_ERROR = (-0x7FFFFFFF-1)
} ;
struct dvb_tuner_ops {
   struct dvb_tuner_info info ;
   int (*release)(struct dvb_frontend * ) ;
   int (*init)(struct dvb_frontend * ) ;
   int (*sleep)(struct dvb_frontend * ) ;
   int (*set_params)(struct dvb_frontend * ) ;
   int (*set_analog_params)(struct dvb_frontend * , struct analog_parameters * ) ;
   int (*calc_regs)(struct dvb_frontend * , u8 * , int ) ;
   int (*set_config)(struct dvb_frontend * , void * ) ;
   int (*get_frequency)(struct dvb_frontend * , u32 * ) ;
   int (*get_bandwidth)(struct dvb_frontend * , u32 * ) ;
   int (*get_if_frequency)(struct dvb_frontend * , u32 * ) ;
   int (*get_status)(struct dvb_frontend * , u32 * ) ;
   int (*get_rf_strength)(struct dvb_frontend * , u16 * ) ;
   int (*get_afc)(struct dvb_frontend * , s32 * ) ;
   int (*set_frequency)(struct dvb_frontend * , u32 ) ;
   int (*set_bandwidth)(struct dvb_frontend * , u32 ) ;
   int (*set_state)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
   int (*get_state)(struct dvb_frontend * , enum tuner_param , struct tuner_state * ) ;
};
struct analog_demod_info {
   char *name ;
};
struct analog_demod_ops {
   struct analog_demod_info info ;
   void (*set_params)(struct dvb_frontend * , struct analog_parameters * ) ;
   int (*has_signal)(struct dvb_frontend * ) ;
   int (*get_afc)(struct dvb_frontend * ) ;
   void (*tuner_status)(struct dvb_frontend * ) ;
   void (*standby)(struct dvb_frontend * ) ;
   void (*release)(struct dvb_frontend * ) ;
   int (*i2c_gate_ctrl)(struct dvb_frontend * , int ) ;
   int (*set_config)(struct dvb_frontend * , void * ) ;
};
struct dtv_frontend_properties;
struct dvb_frontend_ops {
   struct dvb_frontend_info info ;
   u8 delsys[8U] ;
   void (*release)(struct dvb_frontend * ) ;
   void (*release_sec)(struct dvb_frontend * ) ;
   int (*init)(struct dvb_frontend * ) ;
   int (*sleep)(struct dvb_frontend * ) ;
   int (*write)(struct dvb_frontend * , u8 const * , int ) ;
   int (*tune)(struct dvb_frontend * , bool , unsigned int , unsigned int * , fe_status_t * ) ;
   enum dvbfe_algo (*get_frontend_algo)(struct dvb_frontend * ) ;
   int (*set_frontend)(struct dvb_frontend * ) ;
   int (*get_tune_settings)(struct dvb_frontend * , struct dvb_frontend_tune_settings * ) ;
   int (*get_frontend)(struct dvb_frontend * ) ;
   int (*read_status)(struct dvb_frontend * , fe_status_t * ) ;
   int (*read_ber)(struct dvb_frontend * , u32 * ) ;
   int (*read_signal_strength)(struct dvb_frontend * , u16 * ) ;
   int (*read_snr)(struct dvb_frontend * , u16 * ) ;
   int (*read_ucblocks)(struct dvb_frontend * , u32 * ) ;
   int (*diseqc_reset_overload)(struct dvb_frontend * ) ;
   int (*diseqc_send_master_cmd)(struct dvb_frontend * , struct dvb_diseqc_master_cmd * ) ;
   int (*diseqc_recv_slave_reply)(struct dvb_frontend * , struct dvb_diseqc_slave_reply * ) ;
   int (*diseqc_send_burst)(struct dvb_frontend * , fe_sec_mini_cmd_t ) ;
   int (*set_tone)(struct dvb_frontend * , fe_sec_tone_mode_t ) ;
   int (*set_voltage)(struct dvb_frontend * , fe_sec_voltage_t ) ;
   int (*enable_high_lnb_voltage)(struct dvb_frontend * , long ) ;
   int (*dishnetwork_send_legacy_command)(struct dvb_frontend * , unsigned long ) ;
   int (*i2c_gate_ctrl)(struct dvb_frontend * , int ) ;
   int (*ts_bus_ctrl)(struct dvb_frontend * , int ) ;
   int (*set_lna)(struct dvb_frontend * ) ;
   enum dvbfe_search (*search)(struct dvb_frontend * ) ;
   struct dvb_tuner_ops tuner_ops ;
   struct analog_demod_ops analog_ops ;
   int (*set_property)(struct dvb_frontend * , struct dtv_property * ) ;
   int (*get_property)(struct dvb_frontend * , struct dtv_property * ) ;
};
struct __anonstruct_layer_182 {
   u8 segment_count ;
   fe_code_rate_t fec ;
   fe_modulation_t modulation ;
   u8 interleaving ;
};
struct dtv_frontend_properties {
   u32 state ;
   u32 frequency ;
   fe_modulation_t modulation ;
   fe_sec_voltage_t voltage ;
   fe_sec_tone_mode_t sectone ;
   fe_spectral_inversion_t inversion ;
   fe_code_rate_t fec_inner ;
   fe_transmit_mode_t transmission_mode ;
   u32 bandwidth_hz ;
   fe_guard_interval_t guard_interval ;
   fe_hierarchy_t hierarchy ;
   u32 symbol_rate ;
   fe_code_rate_t code_rate_HP ;
   fe_code_rate_t code_rate_LP ;
   fe_pilot_t pilot ;
   fe_rolloff_t rolloff ;
   fe_delivery_system_t delivery_system ;
   enum fe_interleaving interleaving ;
   u8 isdbt_partial_reception ;
   u8 isdbt_sb_mode ;
   u8 isdbt_sb_subchannel ;
   u32 isdbt_sb_segment_idx ;
   u32 isdbt_sb_segment_count ;
   u8 isdbt_layer_enabled ;
   struct __anonstruct_layer_182 layer[3U] ;
   u32 stream_id ;
   u8 atscmh_fic_ver ;
   u8 atscmh_parade_id ;
   u8 atscmh_nog ;
   u8 atscmh_tnog ;
   u8 atscmh_sgn ;
   u8 atscmh_prc ;
   u8 atscmh_rs_frame_mode ;
   u8 atscmh_rs_frame_ensemble ;
   u8 atscmh_rs_code_mode_pri ;
   u8 atscmh_rs_code_mode_sec ;
   u8 atscmh_sccc_block_mode ;
   u8 atscmh_sccc_code_mode_a ;
   u8 atscmh_sccc_code_mode_b ;
   u8 atscmh_sccc_code_mode_c ;
   u8 atscmh_sccc_code_mode_d ;
   u32 lna ;
};
struct dvb_frontend {
   struct dvb_frontend_ops ops ;
   struct dvb_adapter *dvb ;
   void *demodulator_priv ;
   void *tuner_priv ;
   void *frontend_priv ;
   void *sec_priv ;
   void *analog_demod_priv ;
   struct dtv_frontend_properties dtv_property_cache ;
   int (*callback)(void * , int , int , int ) ;
   int id ;
};
struct tda18271_std_map_item {
   u16 if_freq ;
   unsigned char agc_mode : 2 ;
   unsigned char std : 3 ;
   unsigned char fm_rfn : 1 ;
   unsigned char if_lvl : 3 ;
   unsigned char rfagc_top : 7 ;
};
struct tda18271_std_map {
   struct tda18271_std_map_item fm_radio ;
   struct tda18271_std_map_item atv_b ;
   struct tda18271_std_map_item atv_dk ;
   struct tda18271_std_map_item atv_gh ;
   struct tda18271_std_map_item atv_i ;
   struct tda18271_std_map_item atv_l ;
   struct tda18271_std_map_item atv_lc ;
   struct tda18271_std_map_item atv_mn ;
   struct tda18271_std_map_item atsc_6 ;
   struct tda18271_std_map_item dvbt_6 ;
   struct tda18271_std_map_item dvbt_7 ;
   struct tda18271_std_map_item dvbt_8 ;
   struct tda18271_std_map_item qam_6 ;
   struct tda18271_std_map_item qam_7 ;
   struct tda18271_std_map_item qam_8 ;
};
enum tda18271_role {
    TDA18271_MASTER = 0,
    TDA18271_SLAVE = 1
} ;
enum tda18271_i2c_gate {
    TDA18271_GATE_AUTO = 0,
    TDA18271_GATE_ANALOG = 1,
    TDA18271_GATE_DIGITAL = 2
} ;
enum tda18271_output_options {
    TDA18271_OUTPUT_LT_XT_ON = 0,
    TDA18271_OUTPUT_LT_OFF = 1,
    TDA18271_OUTPUT_XT_OFF = 2
} ;
enum tda18271_small_i2c {
    TDA18271_39_BYTE_CHUNK_INIT = 0,
    TDA18271_16_BYTE_CHUNK_INIT = 16,
    TDA18271_08_BYTE_CHUNK_INIT = 8,
    TDA18271_03_BYTE_CHUNK_INIT = 3
} ;
enum tda18271_mode {
    TDA18271_ANALOG = 0,
    TDA18271_DIGITAL = 1
} ;
struct tda18271_rf_tracking_filter_cal {
   u32 rfmax ;
   u8 rfband ;
   u32 rf1_def ;
   u32 rf2_def ;
   u32 rf3_def ;
   u32 rf1 ;
   u32 rf2 ;
   u32 rf3 ;
   s32 rf_a1 ;
   s32 rf_b1 ;
   s32 rf_a2 ;
   s32 rf_b2 ;
};
struct tda18271_map_layout;
enum tda18271_ver {
    TDA18271HDC1 = 0,
    TDA18271HDC2 = 1
} ;
struct tda18271_priv {
   unsigned char tda18271_regs[39U] ;
   struct list_head hybrid_tuner_instance_list ;
   struct tuner_i2c_props i2c_props ;
   enum tda18271_mode mode ;
   enum tda18271_role role ;
   enum tda18271_i2c_gate gate ;
   enum tda18271_ver id ;
   enum tda18271_output_options output_opt ;
   enum tda18271_small_i2c small_i2c ;
   unsigned int config ;
   unsigned char cal_initialized : 1 ;
   u8 tm_rfcal ;
   struct tda18271_map_layout *maps ;
   struct tda18271_std_map std ;
   struct tda18271_rf_tracking_filter_cal rf_cal_state[8U] ;
   struct mutex lock ;
   u16 if_freq ;
   u32 frequency ;
   u32 bandwidth ;
};
enum tda18271_map_type {
    MAIN_PLL = 0,
    CAL_PLL = 1,
    RF_CAL = 2,
    RF_CAL_KMCO = 3,
    RF_CAL_DC_OVER_DT = 4,
    BP_FILTER = 5,
    RF_BAND = 6,
    GAIN_TAPER = 7,
    IR_MEASURE = 8
} ;
struct tda18271_pll_map {
   u32 lomax ;
   u8 pd ;
   u8 d ;
};
struct tda18271_map {
   u32 rfmax ;
   u8 val ;
};
struct tda18271_thermo_map {
   u8 d ;
   u8 r0 ;
   u8 r1 ;
};
struct tda18271_cid_target_map {
   u32 rfmax ;
   u8 target ;
   u16 limit ;
};
struct tda18271_map_layout {
   struct tda18271_pll_map *main_pll ;
   struct tda18271_pll_map *cal_pll ;
   struct tda18271_map *rf_cal ;
   struct tda18271_map *rf_cal_kmco ;
   struct tda18271_map *rf_cal_dc_over_dt ;
   struct tda18271_map *bp_filter ;
   struct tda18271_map *rf_band ;
   struct tda18271_map *gain_taper ;
   struct tda18271_map *ir_measure ;
};
typedef int ldv_func_ret_type___2;
struct __va_list_tag;
typedef struct __va_list_tag __va_list_tag;
typedef __builtin_va_list __gnuc_va_list[1U];
typedef __gnuc_va_list va_list[1U];
struct va_format {
   char const *fmt ;
   va_list *va ;
};
enum hrtimer_restart;
enum tda18271_pll {
    TDA18271_MAIN_PLL = 0,
    TDA18271_CAL_PLL = 1
} ;
enum hrtimer_restart;
struct tda18271_config {
   struct tda18271_std_map *std_map ;
   enum tda18271_role role ;
   enum tda18271_i2c_gate gate ;
   enum tda18271_output_options output_opt ;
   enum tda18271_small_i2c small_i2c ;
   unsigned char rf_cal_on_startup : 1 ;
   unsigned char delay_cal : 1 ;
   unsigned int config ;
};
long ldv__builtin_expect(long exp , long c ) ;
extern void *memcpy(void * , void const * , size_t ) ;
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
int tda18271_debug ;
int _tda_printk(struct tda18271_priv *state , char const *level , char const *func ,
                char const *fmt , ...) ;
int tda18271_lookup_pll_map(struct dvb_frontend *fe , enum tda18271_map_type map_type ,
                            u32 *freq , u8 *post_div , u8 *div ) ;
int tda18271_lookup_map(struct dvb_frontend *fe , enum tda18271_map_type map_type ,
                        u32 *freq , u8 *val ) ;
int tda18271_lookup_thermometer(struct dvb_frontend *fe ) ;
int tda18271_lookup_rf_band(struct dvb_frontend *fe , u32 *freq , u8 *rf_band ) ;
int tda18271_lookup_cid_target(struct dvb_frontend *fe , u32 *freq , u8 *cid_target ,
                               u16 *count_limit ) ;
int tda18271_assign_map_layout(struct dvb_frontend *fe ) ;
static struct tda18271_pll_map tda18271c1_main_pll[41U] =
  { {32000U, 95U, 240U},
        {35000U, 94U, 224U},
        {37000U, 93U, 208U},
        {41000U, 92U, 192U},
        {44000U, 91U, 176U},
        {49000U, 90U, 160U},
        {54000U, 89U, 144U},
        {61000U, 88U, 128U},
        {65000U, 79U, 120U},
        {70000U, 78U, 112U},
        {75000U, 77U, 104U},
        {82000U, 76U, 96U},
        {89000U, 75U, 88U},
        {98000U, 74U, 80U},
        {109000U, 73U, 72U},
        {123000U, 72U, 64U},
        {131000U, 63U, 60U},
        {141000U, 62U, 56U},
        {151000U, 61U, 52U},
        {164000U, 60U, 48U},
        {179000U, 59U, 44U},
        {197000U, 58U, 40U},
        {219000U, 57U, 36U},
        {246000U, 56U, 32U},
        {263000U, 47U, 30U},
        {282000U, 46U, 28U},
        {303000U, 45U, 26U},
        {329000U, 44U, 24U},
        {359000U, 43U, 22U},
        {395000U, 42U, 20U},
        {438000U, 41U, 18U},
        {493000U, 40U, 16U},
        {526000U, 31U, 15U},
        {564000U, 30U, 14U},
        {607000U, 29U, 13U},
        {658000U, 28U, 12U},
        {718000U, 27U, 11U},
        {790000U, 26U, 10U},
        {877000U, 25U, 9U},
        {987000U, 24U, 8U},
        {0U, 0U, 0U}};
static struct tda18271_pll_map tda18271c2_main_pll[41U] =
  { {33125U, 87U, 240U},
        {35500U, 86U, 224U},
        {38188U, 85U, 208U},
        {41375U, 84U, 192U},
        {45125U, 83U, 176U},
        {49688U, 82U, 160U},
        {55188U, 81U, 144U},
        {62125U, 80U, 128U},
        {66250U, 71U, 120U},
        {71000U, 70U, 112U},
        {76375U, 69U, 104U},
        {82750U, 68U, 96U},
        {90250U, 67U, 88U},
        {99375U, 66U, 80U},
        {110375U, 65U, 72U},
        {124250U, 64U, 64U},
        {132500U, 55U, 60U},
        {142000U, 54U, 56U},
        {152750U, 53U, 52U},
        {165500U, 52U, 48U},
        {180500U, 51U, 44U},
        {198750U, 50U, 40U},
        {220750U, 49U, 36U},
        {248500U, 48U, 32U},
        {265000U, 39U, 30U},
        {284000U, 38U, 28U},
        {305500U, 37U, 26U},
        {331000U, 36U, 24U},
        {361000U, 35U, 22U},
        {397500U, 34U, 20U},
        {441500U, 33U, 18U},
        {497000U, 32U, 16U},
        {530000U, 23U, 15U},
        {568000U, 22U, 14U},
        {611000U, 21U, 13U},
        {662000U, 20U, 12U},
        {722000U, 19U, 11U},
        {795000U, 18U, 10U},
        {883000U, 17U, 9U},
        {994000U, 16U, 8U},
        {0U, 0U, 0U}};
static struct tda18271_pll_map tda18271c1_cal_pll[36U] =
  { {33000U, 221U, 208U},
        {36000U, 220U, 192U},
        {40000U, 219U, 176U},
        {44000U, 218U, 160U},
        {49000U, 217U, 144U},
        {55000U, 216U, 128U},
        {63000U, 211U, 112U},
        {67000U, 205U, 104U},
        {73000U, 204U, 96U},
        {80000U, 203U, 88U},
        {88000U, 202U, 80U},
        {98000U, 201U, 72U},
        {110000U, 200U, 64U},
        {126000U, 195U, 56U},
        {135000U, 189U, 52U},
        {147000U, 188U, 48U},
        {160000U, 187U, 44U},
        {176000U, 186U, 40U},
        {196000U, 185U, 36U},
        {220000U, 184U, 32U},
        {252000U, 179U, 28U},
        {271000U, 173U, 26U},
        {294000U, 172U, 24U},
        {321000U, 171U, 22U},
        {353000U, 170U, 20U},
        {392000U, 169U, 18U},
        {441000U, 168U, 16U},
        {505000U, 163U, 14U},
        {543000U, 157U, 13U},
        {589000U, 156U, 12U},
        {642000U, 155U, 11U},
        {707000U, 154U, 10U},
        {785000U, 153U, 9U},
        {883000U, 152U, 8U},
        {1010000U, 147U, 7U},
        {0U, 0U, 0U}};
static struct tda18271_pll_map tda18271c2_cal_pll[35U] =
  { {33813U, 221U, 208U},
        {36625U, 220U, 192U},
        {39938U, 219U, 176U},
        {43938U, 218U, 160U},
        {48813U, 217U, 144U},
        {54938U, 216U, 128U},
        {62813U, 211U, 112U},
        {67625U, 205U, 104U},
        {73250U, 204U, 96U},
        {79875U, 203U, 88U},
        {87875U, 202U, 80U},
        {97625U, 201U, 72U},
        {109875U, 200U, 64U},
        {125625U, 195U, 56U},
        {135250U, 189U, 52U},
        {146500U, 188U, 48U},
        {159750U, 187U, 44U},
        {175750U, 186U, 40U},
        {195250U, 185U, 36U},
        {219750U, 184U, 32U},
        {251250U, 179U, 28U},
        {270500U, 173U, 26U},
        {293000U, 172U, 24U},
        {319500U, 171U, 22U},
        {351500U, 170U, 20U},
        {390500U, 169U, 18U},
        {439500U, 168U, 16U},
        {502500U, 163U, 14U},
        {541000U, 157U, 13U},
        {586000U, 156U, 12U},
        {639000U, 155U, 11U},
        {703000U, 154U, 10U},
        {781000U, 153U, 9U},
        {879000U, 152U, 8U},
        {0U, 0U, 0U}};
static struct tda18271_map tda18271_bp_filter[8U] =
  { {62000U, 0U},
        {84000U, 1U},
        {100000U, 2U},
        {140000U, 3U},
        {170000U, 4U},
        {180000U, 5U},
        {865000U, 6U},
        {0U, 0U}};
static struct tda18271_map tda18271c1_km[5U] = { {61100U, 116U},
        {350000U, 64U},
        {720000U, 48U},
        {865000U, 64U},
        {0U, 0U}};
static struct tda18271_map tda18271c2_km[6U] = { {47900U, 56U},
        {61100U, 68U},
        {350000U, 48U},
        {720000U, 36U},
        {865000U, 60U},
        {0U, 0U}};
static struct tda18271_map tda18271_rf_band[8U] =
  { {47900U, 0U},
        {61100U, 1U},
        {152600U, 2U},
        {164700U, 3U},
        {203500U, 4U},
        {457800U, 5U},
        {865000U, 6U},
        {0U, 0U}};
static struct tda18271_map tda18271_gain_taper[86U] =
  { {45400U, 31U},
        {45800U, 30U},
        {46200U, 29U},
        {46700U, 28U},
        {47100U, 27U},
        {47500U, 26U},
        {47900U, 25U},
        {49600U, 23U},
        {51200U, 22U},
        {52900U, 21U},
        {54500U, 20U},
        {56200U, 19U},
        {57800U, 18U},
        {59500U, 17U},
        {61100U, 16U},
        {67600U, 13U},
        {74200U, 12U},
        {80700U, 11U},
        {87200U, 10U},
        {93800U, 9U},
        {100300U, 8U},
        {106900U, 7U},
        {113400U, 6U},
        {119900U, 5U},
        {126500U, 4U},
        {133000U, 3U},
        {139500U, 2U},
        {146100U, 1U},
        {152600U, 0U},
        {154300U, 31U},
        {156100U, 30U},
        {157800U, 29U},
        {159500U, 28U},
        {161200U, 27U},
        {163000U, 26U},
        {164700U, 25U},
        {170200U, 23U},
        {175800U, 22U},
        {181300U, 21U},
        {186900U, 20U},
        {192400U, 19U},
        {198000U, 18U},
        {203500U, 17U},
        {216200U, 20U},
        {228900U, 19U},
        {241600U, 18U},
        {254400U, 17U},
        {267100U, 16U},
        {279800U, 15U},
        {292500U, 14U},
        {305200U, 13U},
        {317900U, 12U},
        {330700U, 11U},
        {343400U, 10U},
        {356100U, 9U},
        {368800U, 8U},
        {381500U, 7U},
        {394200U, 6U},
        {406900U, 5U},
        {419700U, 4U},
        {432400U, 3U},
        {445100U, 2U},
        {457800U, 1U},
        {476300U, 25U},
        {494800U, 24U},
        {513300U, 23U},
        {531800U, 22U},
        {550300U, 21U},
        {568900U, 20U},
        {587400U, 19U},
        {605900U, 18U},
        {624400U, 17U},
        {642900U, 16U},
        {661400U, 15U},
        {679900U, 14U},
        {698400U, 13U},
        {716900U, 12U},
        {735400U, 11U},
        {753900U, 10U},
        {772500U, 9U},
        {791000U, 8U},
        {809500U, 7U},
        {828000U, 6U},
        {846500U, 5U},
        {865000U, 4U},
        {0U, 0U}};
static struct tda18271_map tda18271c1_rf_cal[18U] =
  { {41000U, 30U},
        {43000U, 48U},
        {45000U, 67U},
        {46000U, 77U},
        {47000U, 84U},
        {47900U, 100U},
        {49100U, 32U},
        {50000U, 34U},
        {51000U, 42U},
        {53000U, 50U},
        {55000U, 53U},
        {56000U, 60U},
        {57000U, 63U},
        {58000U, 72U},
        {59000U, 77U},
        {60000U, 88U},
        {61100U, 95U},
        {0U, 0U}};
static struct tda18271_map tda18271c2_rf_cal[438U] =
  { {41000U, 15U},
        {43000U, 28U},
        {45000U, 47U},
        {46000U, 57U},
        {47000U, 64U},
        {47900U, 80U},
        {49100U, 22U},
        {50000U, 24U},
        {51000U, 32U},
        {53000U, 40U},
        {55000U, 43U},
        {56000U, 50U},
        {57000U, 53U},
        {58000U, 62U},
        {59000U, 67U},
        {60000U, 78U},
        {61100U, 85U},
        {63000U, 15U},
        {64000U, 17U},
        {65000U, 18U},
        {66000U, 21U},
        {67000U, 22U},
        {68000U, 23U},
        {70000U, 25U},
        {71000U, 28U},
        {72000U, 29U},
        {73000U, 31U},
        {74000U, 32U},
        {75000U, 33U},
        {76000U, 36U},
        {77000U, 37U},
        {78000U, 39U},
        {80000U, 40U},
        {81000U, 41U},
        {82000U, 45U},
        {83000U, 46U},
        {84000U, 47U},
        {85000U, 49U},
        {86000U, 51U},
        {87000U, 52U},
        {88000U, 53U},
        {89000U, 55U},
        {90000U, 56U},
        {91000U, 57U},
        {93000U, 60U},
        {94000U, 62U},
        {95000U, 63U},
        {96000U, 64U},
        {97000U, 66U},
        {99000U, 69U},
        {100000U, 70U},
        {102000U, 72U},
        {103000U, 74U},
        {105000U, 77U},
        {106000U, 78U},
        {107000U, 80U},
        {108000U, 81U},
        {110000U, 84U},
        {111000U, 86U},
        {112000U, 87U},
        {113000U, 88U},
        {114000U, 89U},
        {115000U, 92U},
        {116000U, 93U},
        {117000U, 95U},
        {119000U, 96U},
        {120000U, 100U},
        {121000U, 101U},
        {122000U, 102U},
        {123000U, 104U},
        {124000U, 105U},
        {125000U, 108U},
        {126000U, 109U},
        {127000U, 110U},
        {128000U, 112U},
        {129000U, 113U},
        {130000U, 117U},
        {131000U, 119U},
        {132000U, 120U},
        {133000U, 123U},
        {134000U, 126U},
        {135000U, 129U},
        {136000U, 130U},
        {137000U, 135U},
        {138000U, 136U},
        {139000U, 141U},
        {140000U, 142U},
        {141000U, 145U},
        {142000U, 149U},
        {143000U, 154U},
        {144000U, 157U},
        {145000U, 161U},
        {146000U, 162U},
        {147000U, 164U},
        {148000U, 169U},
        {149000U, 174U},
        {150000U, 176U},
        {151000U, 177U},
        {152000U, 183U},
        {152600U, 189U},
        {154000U, 32U},
        {155000U, 34U},
        {156000U, 36U},
        {157000U, 37U},
        {158000U, 39U},
        {159000U, 41U},
        {160000U, 44U},
        {161000U, 45U},
        {163000U, 46U},
        {164000U, 47U},
        {164700U, 48U},
        {166000U, 17U},
        {167000U, 18U},
        {168000U, 19U},
        {169000U, 20U},
        {170000U, 21U},
        {172000U, 22U},
        {173000U, 23U},
        {174000U, 24U},
        {175000U, 26U},
        {176000U, 27U},
        {178000U, 29U},
        {179000U, 30U},
        {180000U, 31U},
        {181000U, 32U},
        {182000U, 33U},
        {183000U, 34U},
        {184000U, 36U},
        {185000U, 37U},
        {186000U, 38U},
        {187000U, 39U},
        {188000U, 41U},
        {189000U, 42U},
        {190000U, 44U},
        {191000U, 45U},
        {192000U, 46U},
        {193000U, 47U},
        {194000U, 48U},
        {195000U, 51U},
        {196000U, 53U},
        {198000U, 54U},
        {200000U, 56U},
        {201000U, 60U},
        {202000U, 61U},
        {203500U, 62U},
        {206000U, 14U},
        {208000U, 15U},
        {212000U, 16U},
        {216000U, 17U},
        {217000U, 18U},
        {218000U, 19U},
        {220000U, 20U},
        {222000U, 21U},
        {225000U, 22U},
        {228000U, 23U},
        {231000U, 24U},
        {234000U, 25U},
        {235000U, 26U},
        {236000U, 27U},
        {237000U, 28U},
        {240000U, 29U},
        {242000U, 30U},
        {244000U, 31U},
        {247000U, 32U},
        {249000U, 33U},
        {252000U, 34U},
        {253000U, 35U},
        {254000U, 36U},
        {256000U, 37U},
        {259000U, 38U},
        {262000U, 39U},
        {264000U, 40U},
        {267000U, 41U},
        {269000U, 42U},
        {271000U, 43U},
        {273000U, 44U},
        {275000U, 45U},
        {277000U, 46U},
        {279000U, 47U},
        {282000U, 48U},
        {284000U, 49U},
        {286000U, 50U},
        {287000U, 51U},
        {290000U, 52U},
        {293000U, 53U},
        {295000U, 54U},
        {297000U, 55U},
        {300000U, 56U},
        {303000U, 57U},
        {305000U, 58U},
        {306000U, 59U},
        {307000U, 60U},
        {310000U, 61U},
        {312000U, 62U},
        {315000U, 63U},
        {318000U, 64U},
        {320000U, 65U},
        {323000U, 66U},
        {324000U, 67U},
        {325000U, 68U},
        {327000U, 69U},
        {331000U, 70U},
        {334000U, 71U},
        {337000U, 72U},
        {339000U, 73U},
        {340000U, 74U},
        {341000U, 75U},
        {343000U, 76U},
        {345000U, 77U},
        {349000U, 78U},
        {352000U, 79U},
        {353000U, 80U},
        {355000U, 81U},
        {357000U, 82U},
        {359000U, 83U},
        {361000U, 84U},
        {362000U, 85U},
        {364000U, 86U},
        {368000U, 87U},
        {370000U, 88U},
        {372000U, 89U},
        {375000U, 90U},
        {376000U, 91U},
        {377000U, 92U},
        {379000U, 93U},
        {382000U, 94U},
        {384000U, 95U},
        {385000U, 96U},
        {386000U, 97U},
        {388000U, 98U},
        {390000U, 99U},
        {393000U, 100U},
        {394000U, 101U},
        {396000U, 102U},
        {397000U, 103U},
        {398000U, 104U},
        {400000U, 105U},
        {402000U, 106U},
        {403000U, 107U},
        {407000U, 108U},
        {408000U, 109U},
        {409000U, 110U},
        {410000U, 111U},
        {411000U, 112U},
        {412000U, 113U},
        {413000U, 114U},
        {414000U, 115U},
        {417000U, 116U},
        {418000U, 117U},
        {420000U, 118U},
        {422000U, 119U},
        {423000U, 120U},
        {424000U, 121U},
        {427000U, 122U},
        {428000U, 123U},
        {429000U, 125U},
        {432000U, 127U},
        {434000U, 128U},
        {435000U, 129U},
        {436000U, 131U},
        {437000U, 132U},
        {438000U, 133U},
        {439000U, 134U},
        {440000U, 135U},
        {441000U, 136U},
        {442000U, 137U},
        {445000U, 138U},
        {446000U, 139U},
        {447000U, 140U},
        {448000U, 142U},
        {449000U, 143U},
        {450000U, 144U},
        {452000U, 145U},
        {453000U, 147U},
        {454000U, 148U},
        {456000U, 150U},
        {457800U, 152U},
        {461000U, 17U},
        {468000U, 18U},
        {472000U, 19U},
        {473000U, 20U},
        {474000U, 21U},
        {481000U, 22U},
        {486000U, 23U},
        {491000U, 24U},
        {498000U, 25U},
        {499000U, 26U},
        {501000U, 27U},
        {506000U, 28U},
        {511000U, 29U},
        {516000U, 30U},
        {520000U, 31U},
        {521000U, 32U},
        {525000U, 33U},
        {529000U, 34U},
        {533000U, 35U},
        {539000U, 36U},
        {541000U, 37U},
        {547000U, 38U},
        {549000U, 39U},
        {551000U, 40U},
        {556000U, 41U},
        {561000U, 42U},
        {563000U, 43U},
        {565000U, 44U},
        {569000U, 45U},
        {571000U, 46U},
        {577000U, 47U},
        {580000U, 48U},
        {582000U, 49U},
        {584000U, 50U},
        {588000U, 51U},
        {591000U, 52U},
        {596000U, 53U},
        {598000U, 54U},
        {603000U, 55U},
        {604000U, 56U},
        {606000U, 57U},
        {612000U, 58U},
        {615000U, 59U},
        {617000U, 60U},
        {621000U, 61U},
        {622000U, 62U},
        {625000U, 63U},
        {632000U, 64U},
        {633000U, 65U},
        {634000U, 66U},
        {642000U, 67U},
        {643000U, 68U},
        {647000U, 69U},
        {650000U, 70U},
        {652000U, 71U},
        {657000U, 72U},
        {661000U, 73U},
        {662000U, 74U},
        {665000U, 75U},
        {667000U, 76U},
        {670000U, 77U},
        {673000U, 78U},
        {676000U, 79U},
        {677000U, 80U},
        {681000U, 81U},
        {683000U, 82U},
        {686000U, 83U},
        {688000U, 84U},
        {689000U, 85U},
        {691000U, 86U},
        {695000U, 87U},
        {698000U, 88U},
        {703000U, 89U},
        {704000U, 90U},
        {705000U, 91U},
        {707000U, 92U},
        {710000U, 93U},
        {712000U, 94U},
        {717000U, 95U},
        {718000U, 96U},
        {721000U, 97U},
        {722000U, 98U},
        {723000U, 99U},
        {725000U, 100U},
        {727000U, 101U},
        {730000U, 102U},
        {732000U, 103U},
        {735000U, 104U},
        {740000U, 105U},
        {741000U, 106U},
        {742000U, 107U},
        {743000U, 108U},
        {745000U, 109U},
        {747000U, 110U},
        {748000U, 111U},
        {750000U, 112U},
        {752000U, 113U},
        {754000U, 114U},
        {757000U, 115U},
        {758000U, 116U},
        {760000U, 117U},
        {763000U, 118U},
        {764000U, 119U},
        {766000U, 120U},
        {767000U, 121U},
        {768000U, 122U},
        {773000U, 123U},
        {774000U, 124U},
        {776000U, 125U},
        {777000U, 126U},
        {778000U, 127U},
        {779000U, 128U},
        {781000U, 129U},
        {783000U, 130U},
        {784000U, 131U},
        {785000U, 132U},
        {786000U, 133U},
        {793000U, 134U},
        {794000U, 135U},
        {795000U, 136U},
        {797000U, 137U},
        {799000U, 138U},
        {801000U, 139U},
        {802000U, 140U},
        {803000U, 141U},
        {804000U, 142U},
        {810000U, 144U},
        {811000U, 145U},
        {812000U, 146U},
        {814000U, 147U},
        {816000U, 148U},
        {817000U, 150U},
        {818000U, 151U},
        {820000U, 152U},
        {821000U, 153U},
        {822000U, 154U},
        {828000U, 155U},
        {829000U, 157U},
        {830000U, 159U},
        {831000U, 160U},
        {833000U, 161U},
        {835000U, 162U},
        {836000U, 163U},
        {837000U, 164U},
        {838000U, 166U},
        {840000U, 168U},
        {842000U, 169U},
        {845000U, 170U},
        {846000U, 171U},
        {847000U, 173U},
        {848000U, 174U},
        {852000U, 175U},
        {853000U, 176U},
        {858000U, 177U},
        {860000U, 178U},
        {861000U, 179U},
        {862000U, 180U},
        {863000U, 182U},
        {864000U, 184U},
        {865000U, 185U},
        {0U, 0U}};
static struct tda18271_map tda18271_ir_measure[5U] = { {30000U, 4U},
        {200000U, 5U},
        {600000U, 6U},
        {865000U, 7U},
        {0U, 0U}};
static struct tda18271_map tda18271_rf_cal_dc_over_dt[102U] =
  { {47900U, 0U},
        {55000U, 0U},
        {61100U, 10U},
        {64000U, 10U},
        {82000U, 20U},
        {84000U, 25U},
        {119000U, 28U},
        {124000U, 32U},
        {129000U, 42U},
        {134000U, 50U},
        {139000U, 57U},
        {144000U, 62U},
        {149000U, 63U},
        {152600U, 64U},
        {154000U, 64U},
        {164700U, 65U},
        {203500U, 50U},
        {353000U, 25U},
        {356000U, 26U},
        {359000U, 27U},
        {363000U, 28U},
        {366000U, 29U},
        {369000U, 30U},
        {373000U, 31U},
        {376000U, 32U},
        {379000U, 33U},
        {383000U, 34U},
        {386000U, 35U},
        {389000U, 36U},
        {393000U, 37U},
        {396000U, 38U},
        {399000U, 39U},
        {402000U, 40U},
        {404000U, 41U},
        {407000U, 42U},
        {409000U, 43U},
        {412000U, 44U},
        {414000U, 45U},
        {417000U, 46U},
        {419000U, 47U},
        {422000U, 48U},
        {424000U, 49U},
        {427000U, 50U},
        {429000U, 51U},
        {432000U, 52U},
        {434000U, 53U},
        {437000U, 54U},
        {439000U, 55U},
        {442000U, 56U},
        {444000U, 57U},
        {447000U, 58U},
        {449000U, 59U},
        {457800U, 60U},
        {465000U, 15U},
        {477000U, 18U},
        {483000U, 20U},
        {502000U, 25U},
        {508000U, 27U},
        {519000U, 28U},
        {522000U, 29U},
        {524000U, 30U},
        {534000U, 31U},
        {549000U, 32U},
        {554000U, 34U},
        {584000U, 36U},
        {589000U, 38U},
        {658000U, 39U},
        {664000U, 44U},
        {669000U, 45U},
        {699000U, 46U},
        {704000U, 48U},
        {709000U, 49U},
        {714000U, 50U},
        {724000U, 51U},
        {729000U, 54U},
        {739000U, 56U},
        {744000U, 57U},
        {749000U, 59U},
        {754000U, 60U},
        {759000U, 61U},
        {764000U, 62U},
        {769000U, 63U},
        {774000U, 64U},
        {779000U, 65U},
        {784000U, 67U},
        {789000U, 70U},
        {794000U, 72U},
        {799000U, 75U},
        {804000U, 79U},
        {809000U, 84U},
        {814000U, 89U},
        {819000U, 93U},
        {824000U, 97U},
        {829000U, 104U},
        {834000U, 110U},
        {839000U, 117U},
        {844000U, 126U},
        {849000U, 130U},
        {854000U, 132U},
        {859000U, 143U},
        {865000U, 154U},
        {0U, 0U}};
static struct tda18271_thermo_map tda18271_thermometer[17U] =
  { {0U, 60U, 92U},
        {1U, 62U, 94U},
        {2U, 66U, 98U},
        {3U, 64U, 96U},
        {4U, 74U, 106U},
        {5U, 72U, 104U},
        {6U, 68U, 100U},
        {7U, 70U, 102U},
        {8U, 90U, 122U},
        {9U, 88U, 120U},
        {10U, 84U, 116U},
        {11U, 86U, 118U},
        {12U, 76U, 108U},
        {13U, 78U, 110U},
        {14U, 82U, 114U},
        {15U, 80U, 112U},
        {0U, 0U, 0U}};
int tda18271_lookup_thermometer(struct dvb_frontend *fe )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  int val ;
  int i ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  i = 0;
  goto ldv_23952;
  ldv_23951: ;
  if ((unsigned int )tda18271_thermometer[i + 1].d == 0U) {
    goto ldv_23950;
  } else {
  }
  i = i + 1;
  ldv_23952: ;
  if ((int )tda18271_thermometer[i].d < ((int )*(regs + 1UL) & 15)) {
    goto ldv_23951;
  } else {
  }
  ldv_23950: ;
  if (((int )*(regs + 1UL) & 32) != 0) {
    val = (int )tda18271_thermometer[i].r1;
  } else {
    val = (int )tda18271_thermometer[i].r0;
  }
  if ((tda18271_debug & 2) != 0) {
    _tda_printk(priv, "\017", "tda18271_lookup_thermometer", "(%d) tm = %d\n", i,
                val);
  } else {
  }
  return (val);
}
}
static struct tda18271_cid_target_map tda18271_cid_target[13U] =
  { {46000U, 4U, 1800U},
        {52200U, 10U, 1500U},
        {70100U, 1U, 4000U},
        {136800U, 24U, 4000U},
        {156700U, 24U, 4000U},
        {186250U, 10U, 4000U},
        {230000U, 10U, 4000U},
        {345000U, 24U, 4000U},
        {426000U, 14U, 4000U},
        {489500U, 30U, 4000U},
        {697500U, 50U, 4000U},
        {842000U, 58U, 4000U},
        {0U, 0U, 0U}};
int tda18271_lookup_cid_target(struct dvb_frontend *fe , u32 *freq , u8 *cid_target ,
                               u16 *count_limit )
{
  struct tda18271_priv *priv ;
  int i ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  i = 0;
  goto ldv_23969;
  ldv_23968: ;
  if (tda18271_cid_target[i + 1].rfmax == 0U) {
    goto ldv_23967;
  } else {
  }
  i = i + 1;
  ldv_23969: ;
  if (tda18271_cid_target[i].rfmax * 1000U < *freq) {
    goto ldv_23968;
  } else {
  }
  ldv_23967:
  *cid_target = tda18271_cid_target[i].target;
  *count_limit = tda18271_cid_target[i].limit;
  if ((tda18271_debug & 2) != 0) {
    _tda_printk(priv, "\017", "tda18271_lookup_cid_target", "(%d) cid_target = %02x, count_limit = %d\n",
                i, (int )tda18271_cid_target[i].target, (int )tda18271_cid_target[i].limit);
  } else {
  }
  return (0);
}
}
static struct tda18271_rf_tracking_filter_cal tda18271_rf_band_template[8U] =
  { {47900U, 0U, 46000U, 0U, 0U, 0U, 0U, 0U, 0, 0, 0, 0},
        {61100U, 1U, 52200U, 0U, 0U, 0U, 0U, 0U, 0, 0, 0, 0},
        {152600U, 2U, 70100U, 136800U, 0U, 0U, 0U, 0U, 0, 0, 0, 0},
        {164700U, 3U, 156700U, 0U, 0U, 0U, 0U, 0U, 0, 0, 0, 0},
        {203500U, 4U, 186250U, 0U, 0U, 0U, 0U, 0U, 0, 0, 0, 0},
        {457800U, 5U, 230000U, 345000U, 426000U, 0U, 0U, 0U, 0, 0, 0, 0},
        {865000U, 6U, 489500U, 697500U, 842000U, 0U, 0U, 0U, 0, 0, 0, 0},
        {0U, 0U, 0U, 0U, 0U, 0U, 0U, 0U, 0, 0, 0, 0}};
int tda18271_lookup_rf_band(struct dvb_frontend *fe , u32 *freq , u8 *rf_band )
{
  struct tda18271_priv *priv ;
  struct tda18271_rf_tracking_filter_cal *map ;
  int i ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  map = (struct tda18271_rf_tracking_filter_cal *)(& priv->rf_cal_state);
  i = 0;
  goto ldv_23982;
  ldv_23981: ;
  if ((tda18271_debug & 8) != 0) {
    if ((tda18271_debug & 2) != 0) {
      _tda_printk(priv, "\017", "tda18271_lookup_rf_band", "(%d) rfmax = %d < freq = %d, rf1_def = %d, rf2_def = %d, rf3_def = %d, rf1 = %d, rf2 = %d, rf3 = %d, rf_a1 = %d, rf_a2 = %d, rf_b1 = %d, rf_b2 = %d\n",
                  i, (map + (unsigned long )i)->rfmax * 1000U, *freq, (map + (unsigned long )i)->rf1_def,
                  (map + (unsigned long )i)->rf2_def, (map + (unsigned long )i)->rf3_def,
                  (map + (unsigned long )i)->rf1, (map + (unsigned long )i)->rf2,
                  (map + (unsigned long )i)->rf3, (map + (unsigned long )i)->rf_a1,
                  (map + (unsigned long )i)->rf_a2, (map + (unsigned long )i)->rf_b1,
                  (map + (unsigned long )i)->rf_b2);
    } else {
    }
  } else {
  }
  if ((map + (unsigned long )i)->rfmax == 0U) {
    return (-22);
  } else {
  }
  i = i + 1;
  ldv_23982: ;
  if ((map + (unsigned long )i)->rfmax * 1000U < *freq) {
    goto ldv_23981;
  } else {
  }
  if ((unsigned long )rf_band != (unsigned long )((u8 *)0)) {
    *rf_band = (map + (unsigned long )i)->rfband;
  } else {
  }
  if ((tda18271_debug & 2) != 0) {
    _tda_printk(priv, "\017", "tda18271_lookup_rf_band", "(%d) rf_band = %02x\n",
                i, (int )(map + (unsigned long )i)->rfband);
  } else {
  }
  return (i);
}
}
int tda18271_lookup_pll_map(struct dvb_frontend *fe , enum tda18271_map_type map_type ,
                            u32 *freq , u8 *post_div , u8 *div )
{
  struct tda18271_priv *priv ;
  struct tda18271_pll_map *map ;
  unsigned int i ;
  char *map_name ;
  int ret ;
  long tmp ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  map = 0;
  i = 0U;
  ret = 0;
  tmp = ldv__builtin_expect((unsigned long )priv->maps == (unsigned long )((struct tda18271_map_layout *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/media/tuners/tda18271.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/14/dscv_tempdir/dscv/ri/32_7a/drivers/media/tuners/tda18271-maps.c.prepared"),
                         "i" (1117), "i" (12UL));
    ldv_24005: ;
    goto ldv_24005;
  } else {
  }
  switch ((unsigned int )map_type) {
  case 0U:
  map = (priv->maps)->main_pll;
  map_name = (char *)"main_pll";
  goto ldv_24007;
  case 1U:
  map = (priv->maps)->cal_pll;
  map_name = (char *)"cal_pll";
  goto ldv_24007;
  default:
  map_name = (char *)"undefined";
  goto ldv_24007;
  }
  ldv_24007: ;
  if ((unsigned long )map == (unsigned long )((struct tda18271_pll_map *)0)) {
    _tda_printk(priv, "\f", "tda18271_lookup_pll_map", "%s map is not set!\n", map_name);
    ret = -22;
    goto fail;
  } else {
  }
  goto ldv_24014;
  ldv_24013: ;
  if ((map + (unsigned long )(i + 1U))->lomax == 0U) {
    if ((tda18271_debug & 2) != 0) {
      _tda_printk(priv, "\017", "tda18271_lookup_pll_map", "%s: frequency (%d) out of range\n",
                  map_name, *freq);
    } else {
    }
    ret = -34;
    goto ldv_24012;
  } else {
  }
  i = i + 1U;
  ldv_24014: ;
  if ((map + (unsigned long )i)->lomax * 1000U < *freq) {
    goto ldv_24013;
  } else {
  }
  ldv_24012:
  *post_div = (map + (unsigned long )i)->pd;
  *div = (map + (unsigned long )i)->d;
  if ((tda18271_debug & 2) != 0) {
    _tda_printk(priv, "\017", "tda18271_lookup_pll_map", "(%d) %s: post div = 0x%02x, div = 0x%02x\n",
                i, map_name, (int )*post_div, (int )*div);
  } else {
  }
  fail: ;
  return (ret);
}
}
int tda18271_lookup_map(struct dvb_frontend *fe , enum tda18271_map_type map_type ,
                        u32 *freq , u8 *val )
{
  struct tda18271_priv *priv ;
  struct tda18271_map *map ;
  unsigned int i ;
  char *map_name ;
  int ret ;
  long tmp ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  map = 0;
  i = 0U;
  ret = 0;
  tmp = ldv__builtin_expect((unsigned long )priv->maps == (unsigned long )((struct tda18271_map_layout *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/media/tuners/tda18271.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/14/dscv_tempdir/dscv/ri/32_7a/drivers/media/tuners/tda18271-maps.c.prepared"),
                         "i" (1168), "i" (12UL));
    ldv_24026: ;
    goto ldv_24026;
  } else {
  }
  switch ((unsigned int )map_type) {
  case 5U:
  map = (priv->maps)->bp_filter;
  map_name = (char *)"bp_filter";
  goto ldv_24028;
  case 3U:
  map = (priv->maps)->rf_cal_kmco;
  map_name = (char *)"km";
  goto ldv_24028;
  case 6U:
  map = (priv->maps)->rf_band;
  map_name = (char *)"rf_band";
  goto ldv_24028;
  case 7U:
  map = (priv->maps)->gain_taper;
  map_name = (char *)"gain_taper";
  goto ldv_24028;
  case 2U:
  map = (priv->maps)->rf_cal;
  map_name = (char *)"rf_cal";
  goto ldv_24028;
  case 8U:
  map = (priv->maps)->ir_measure;
  map_name = (char *)"ir_measure";
  goto ldv_24028;
  case 4U:
  map = (priv->maps)->rf_cal_dc_over_dt;
  map_name = (char *)"rf_cal_dc_over_dt";
  goto ldv_24028;
  default:
  map_name = (char *)"undefined";
  goto ldv_24028;
  }
  ldv_24028: ;
  if ((unsigned long )map == (unsigned long )((struct tda18271_map *)0)) {
    _tda_printk(priv, "\f", "tda18271_lookup_map", "%s map is not set!\n", map_name);
    ret = -22;
    goto fail;
  } else {
  }
  goto ldv_24040;
  ldv_24039: ;
  if ((map + (unsigned long )(i + 1U))->rfmax == 0U) {
    if ((tda18271_debug & 2) != 0) {
      _tda_printk(priv, "\017", "tda18271_lookup_map", "%s: frequency (%d) out of range\n",
                  map_name, *freq);
    } else {
    }
    ret = -34;
    goto ldv_24038;
  } else {
  }
  i = i + 1U;
  ldv_24040: ;
  if ((map + (unsigned long )i)->rfmax * 1000U < *freq) {
    goto ldv_24039;
  } else {
  }
  ldv_24038:
  *val = (map + (unsigned long )i)->val;
  if ((tda18271_debug & 2) != 0) {
    _tda_printk(priv, "\017", "tda18271_lookup_map", "(%d) %s: 0x%02x\n", i, map_name,
                (int )*val);
  } else {
  }
  fail: ;
  return (ret);
}
}
static struct tda18271_std_map tda18271c1_std_map =
     {{1250U, 3U, 0U, 1U, 0U, 44U}, {6750U, 1U, 6U, 0U, 0U, 44U}, {7750U, 1U, 7U, 0U,
                                                                 0U, 44U}, {7750U,
                                                                            1U, 7U,
                                                                            0U, 0U,
                                                                            44U},
    {7750U, 1U, 7U, 0U, 0U, 44U}, {7750U, 1U, 7U, 0U, 0U, 44U}, {1250U, 1U, 7U, 0U,
                                                                 0U, 44U}, {5750U,
                                                                            1U, 5U,
                                                                            0U, 0U,
                                                                            44U},
    {3250U, 3U, 4U, 0U, 1U, 55U}, {3300U, 3U, 4U, 0U, 1U, 55U}, {3800U, 3U, 5U, 0U,
                                                                 1U, 55U}, {4300U,
                                                                            3U, 6U,
                                                                            0U, 1U,
                                                                            55U},
    {4000U, 3U, 5U, 0U, 1U, 55U}, {4500U, 3U, 6U, 0U, 1U, 55U}, {5000U, 3U, 7U, 0U,
                                                                 1U, 55U}};
static struct tda18271_std_map tda18271c2_std_map =
     {{1250U, 3U, 0U, 1U, 0U, 44U}, {6000U, 1U, 5U, 0U, 0U, 44U}, {6900U, 1U, 6U, 0U,
                                                                 0U, 44U}, {7100U,
                                                                            1U, 6U,
                                                                            0U, 0U,
                                                                            44U},
    {7250U, 1U, 6U, 0U, 0U, 44U}, {6900U, 1U, 6U, 0U, 0U, 44U}, {1250U, 1U, 6U, 0U,
                                                                 0U, 44U}, {5400U,
                                                                            1U, 4U,
                                                                            0U, 0U,
                                                                            44U},
    {3250U, 3U, 4U, 0U, 1U, 55U}, {3300U, 3U, 4U, 0U, 1U, 55U}, {3500U, 3U, 4U, 0U,
                                                                 1U, 55U}, {4000U,
                                                                            3U, 5U,
                                                                            0U, 1U,
                                                                            55U},
    {4000U, 3U, 5U, 0U, 1U, 55U}, {4500U, 3U, 6U, 0U, 1U, 55U}, {5000U, 3U, 7U, 0U,
                                                                 1U, 55U}};
static struct tda18271_map_layout tda18271c1_map_layout =
     {(struct tda18271_pll_map *)(& tda18271c1_main_pll), (struct tda18271_pll_map *)(& tda18271c1_cal_pll),
    (struct tda18271_map *)(& tda18271c1_rf_cal), (struct tda18271_map *)(& tda18271c1_km),
    0, (struct tda18271_map *)(& tda18271_bp_filter), (struct tda18271_map *)(& tda18271_rf_band),
    (struct tda18271_map *)(& tda18271_gain_taper), (struct tda18271_map *)(& tda18271_ir_measure)};
static struct tda18271_map_layout tda18271c2_map_layout =
     {(struct tda18271_pll_map *)(& tda18271c2_main_pll), (struct tda18271_pll_map *)(& tda18271c2_cal_pll),
    (struct tda18271_map *)(& tda18271c2_rf_cal), (struct tda18271_map *)(& tda18271c2_km),
    (struct tda18271_map *)(& tda18271_rf_cal_dc_over_dt), (struct tda18271_map *)(& tda18271_bp_filter),
    (struct tda18271_map *)(& tda18271_rf_band), (struct tda18271_map *)(& tda18271_gain_taper),
    (struct tda18271_map *)(& tda18271_ir_measure)};
int tda18271_assign_map_layout(struct dvb_frontend *fe )
{
  struct tda18271_priv *priv ;
  int ret ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  size_t __len___1 ;
  void *__ret___1 ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  ret = 0;
  switch ((unsigned int )priv->id) {
  case 0U:
  priv->maps = & tda18271c1_map_layout;
  __len = 60UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& priv->std), (void const *)(& tda18271c1_std_map),
                     __len);
  } else {
    __ret = __builtin_memcpy((void *)(& priv->std), (void const *)(& tda18271c1_std_map),
                             __len);
  }
  goto ldv_24054;
  case 1U:
  priv->maps = & tda18271c2_map_layout;
  __len___0 = 60UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)(& priv->std), (void const *)(& tda18271c2_std_map),
                         __len___0);
  } else {
    __ret___0 = __builtin_memcpy((void *)(& priv->std), (void const *)(& tda18271c2_std_map),
                                 __len___0);
  }
  goto ldv_24054;
  default:
  ret = -22;
  goto ldv_24054;
  }
  ldv_24054:
  __len___1 = 384UL;
  if (__len___1 > 63UL) {
    __ret___1 = memcpy((void *)(& priv->rf_cal_state), (void const *)(& tda18271_rf_band_template),
                         __len___1);
  } else {
    __ret___1 = __builtin_memcpy((void *)(& priv->rf_cal_state), (void const *)(& tda18271_rf_band_template),
                                 __len___1);
  }
  return (ret);
}
}
void ldv_check_final_state(void) ;
void ldv_initialize(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void ldv_main0_sequence_infinite_withcheck_stateful(void)
{
  int tmp ;
  int tmp___0 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_24082;
  ldv_24081:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  default: ;
  goto ldv_24080;
  }
  ldv_24080: ;
  ldv_24082:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    goto ldv_24081;
  } else {
  }
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
extern int printk(char const * , ...) ;
int ldv_mutex_trylock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_19(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_21(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_20(struct mutex *ldv_func_arg1 ) ;
extern int i2c_transfer(struct i2c_adapter * , struct i2c_msg * , int ) ;
extern int __i2c_transfer(struct i2c_adapter * , struct i2c_msg * , int ) ;
extern void i2c_lock_adapter(struct i2c_adapter * ) ;
extern void i2c_unlock_adapter(struct i2c_adapter * ) ;
__inline static int i2c_adapter_id(struct i2c_adapter *adap )
{
  {
  return (adap->nr);
}
}
extern void msleep(unsigned int ) ;
int tda18271_read_regs(struct dvb_frontend *fe ) ;
int tda18271_read_extended(struct dvb_frontend *fe ) ;
int tda18271_write_regs(struct dvb_frontend *fe , int idx , int len ) ;
int tda18271_init_regs(struct dvb_frontend *fe ) ;
int tda18271_charge_pump_source(struct dvb_frontend *fe , enum tda18271_pll pll ,
                                int force ) ;
int tda18271_set_standby_mode(struct dvb_frontend *fe , int sm , int sm_lt , int sm_xt ) ;
int tda18271_calc_main_pll(struct dvb_frontend *fe , u32 freq ) ;
int tda18271_calc_cal_pll(struct dvb_frontend *fe , u32 freq ) ;
int tda18271_calc_bp_filter(struct dvb_frontend *fe , u32 *freq ) ;
int tda18271_calc_km(struct dvb_frontend *fe , u32 *freq ) ;
int tda18271_calc_rf_band(struct dvb_frontend *fe , u32 *freq ) ;
int tda18271_calc_gain_taper(struct dvb_frontend *fe , u32 *freq ) ;
int tda18271_calc_ir_measure(struct dvb_frontend *fe , u32 *freq ) ;
int tda18271_calc_rf_cal(struct dvb_frontend *fe , u32 *freq ) ;
static int tda18271_i2c_gate_ctrl(struct dvb_frontend *fe , int enable )
{
  struct tda18271_priv *priv ;
  enum tda18271_i2c_gate gate ;
  int ret ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  ret = 0;
  switch ((unsigned int )priv->gate) {
  case 2U: ;
  case 1U:
  gate = priv->gate;
  goto ldv_23927;
  case 0U: ;
  default: ;
  switch ((unsigned int )priv->mode) {
  case 1U:
  gate = 2;
  goto ldv_23931;
  case 0U: ;
  default:
  gate = 1;
  goto ldv_23931;
  }
  ldv_23931: ;
  }
  ldv_23927: ;
  switch ((unsigned int )gate) {
  case 1U: ;
  if ((unsigned long )fe->ops.analog_ops.i2c_gate_ctrl != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                                    int ))0)) {
    ret = (*(fe->ops.analog_ops.i2c_gate_ctrl))(fe, enable);
  } else {
  }
  goto ldv_23935;
  case 2U: ;
  if ((unsigned long )fe->ops.i2c_gate_ctrl != (unsigned long )((int (*)(struct dvb_frontend * ,
                                                                         int ))0)) {
    ret = (*(fe->ops.i2c_gate_ctrl))(fe, enable);
  } else {
  }
  goto ldv_23935;
  default:
  ret = -22;
  goto ldv_23935;
  }
  ldv_23935: ;
  return (ret);
}
}
static void tda18271_dump_regs(struct dvb_frontend *fe , int extended )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "=== TDA18271 REG DUMP ===\n");
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "ID_BYTE            = 0x%02x\n",
                (int )*regs);
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "THERMO_BYTE        = 0x%02x\n",
                (int )*(regs + 1UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "POWER_LEVEL_BYTE   = 0x%02x\n",
                (int )*(regs + 2UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EASY_PROG_BYTE_1   = 0x%02x\n",
                (int )*(regs + 3UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EASY_PROG_BYTE_2   = 0x%02x\n",
                (int )*(regs + 4UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EASY_PROG_BYTE_3   = 0x%02x\n",
                (int )*(regs + 5UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EASY_PROG_BYTE_4   = 0x%02x\n",
                (int )*(regs + 6UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EASY_PROG_BYTE_5   = 0x%02x\n",
                (int )*(regs + 7UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "CAL_POST_DIV_BYTE  = 0x%02x\n",
                (int )*(regs + 8UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "CAL_DIV_BYTE_1     = 0x%02x\n",
                (int )*(regs + 9UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "CAL_DIV_BYTE_2     = 0x%02x\n",
                (int )*(regs + 10UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "CAL_DIV_BYTE_3     = 0x%02x\n",
                (int )*(regs + 11UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "MAIN_POST_DIV_BYTE = 0x%02x\n",
                (int )*(regs + 12UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "MAIN_DIV_BYTE_1    = 0x%02x\n",
                (int )*(regs + 13UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "MAIN_DIV_BYTE_2    = 0x%02x\n",
                (int )*(regs + 14UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "MAIN_DIV_BYTE_3    = 0x%02x\n",
                (int )*(regs + 15UL));
  } else {
  }
  if ((tda18271_debug & 8) == 0) {
    return;
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EXTENDED_BYTE_1    = 0x%02x\n",
                (int )*(regs + 16UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EXTENDED_BYTE_2    = 0x%02x\n",
                (int )*(regs + 17UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EXTENDED_BYTE_3    = 0x%02x\n",
                (int )*(regs + 18UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EXTENDED_BYTE_4    = 0x%02x\n",
                (int )*(regs + 19UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EXTENDED_BYTE_5    = 0x%02x\n",
                (int )*(regs + 20UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EXTENDED_BYTE_6    = 0x%02x\n",
                (int )*(regs + 21UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EXTENDED_BYTE_7    = 0x%02x\n",
                (int )*(regs + 22UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EXTENDED_BYTE_8    = 0x%02x\n",
                (int )*(regs + 23UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EXTENDED_BYTE_9  W = 0x%02x\n",
                (int )*(regs + 24UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EXTENDED_BYTE_10   = 0x%02x\n",
                (int )*(regs + 25UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EXTENDED_BYTE_11   = 0x%02x\n",
                (int )*(regs + 26UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EXTENDED_BYTE_12   = 0x%02x\n",
                (int )*(regs + 27UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EXTENDED_BYTE_13   = 0x%02x\n",
                (int )*(regs + 28UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EXTENDED_BYTE_14   = 0x%02x\n",
                (int )*(regs + 29UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EXTENDED_BYTE_15   = 0x%02x\n",
                (int )*(regs + 30UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EXTENDED_BYTE_16 W = 0x%02x\n",
                (int )*(regs + 31UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EXTENDED_BYTE_17 W = 0x%02x\n",
                (int )*(regs + 32UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EXTENDED_BYTE_18   = 0x%02x\n",
                (int )*(regs + 33UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EXTENDED_BYTE_19 W = 0x%02x\n",
                (int )*(regs + 34UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EXTENDED_BYTE_20 W = 0x%02x\n",
                (int )*(regs + 35UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EXTENDED_BYTE_21   = 0x%02x\n",
                (int )*(regs + 36UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EXTENDED_BYTE_22   = 0x%02x\n",
                (int )*(regs + 37UL));
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    _tda_printk(priv, "\017", "tda18271_dump_regs", "EXTENDED_BYTE_23   = 0x%02x\n",
                (int )*(regs + 38UL));
  } else {
  }
  return;
}
}
int tda18271_read_regs(struct dvb_frontend *fe )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  unsigned char buf ;
  int ret ;
  struct i2c_msg msg[2U] ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  buf = 0U;
  msg[0].addr = (unsigned short )priv->i2c_props.addr;
  msg[0].flags = 0U;
  msg[0].len = 1U;
  msg[0].buf = & buf;
  msg[1].addr = (unsigned short )priv->i2c_props.addr;
  msg[1].flags = 1U;
  msg[1].len = 16U;
  msg[1].buf = regs;
  tda18271_i2c_gate_ctrl(fe, 1);
  ret = i2c_transfer(priv->i2c_props.adap, (struct i2c_msg *)(& msg), 2);
  tda18271_i2c_gate_ctrl(fe, 0);
  if (ret != 2) {
    _tda_printk(priv, "\v", "tda18271_read_regs", "ERROR: i2c_transfer returned: %d\n",
                ret);
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    tda18271_dump_regs(fe, 0);
  } else {
  }
  return (ret != 2 ? ret : 0);
}
}
int tda18271_read_extended(struct dvb_frontend *fe )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  unsigned char regdump[39U] ;
  unsigned char buf ;
  int ret ;
  int i ;
  struct i2c_msg msg[2U] ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  buf = 0U;
  msg[0].addr = (unsigned short )priv->i2c_props.addr;
  msg[0].flags = 0U;
  msg[0].len = 1U;
  msg[0].buf = & buf;
  msg[1].addr = (unsigned short )priv->i2c_props.addr;
  msg[1].flags = 1U;
  msg[1].len = 39U;
  msg[1].buf = (__u8 *)(& regdump);
  tda18271_i2c_gate_ctrl(fe, 1);
  ret = i2c_transfer(priv->i2c_props.adap, (struct i2c_msg *)(& msg), 2);
  tda18271_i2c_gate_ctrl(fe, 0);
  if (ret != 2) {
    _tda_printk(priv, "\v", "tda18271_read_extended", "ERROR: i2c_transfer returned: %d\n",
                ret);
  } else {
  }
  i = 0;
  goto ldv_23966;
  ldv_23965: ;
  if ((((i != 24 && i != 31) && i != 32) && i != 34) && i != 35) {
    *(regs + (unsigned long )i) = regdump[i];
  } else {
  }
  i = i + 1;
  ldv_23966: ;
  if (i <= 38) {
    goto ldv_23965;
  } else {
  }
  if ((tda18271_debug & 4) != 0) {
    tda18271_dump_regs(fe, 1);
  } else {
  }
  return (ret != 2 ? ret : 0);
}
}
static int __tda18271_write_regs(struct dvb_frontend *fe , int idx , int len , bool lock_i2c )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  unsigned char buf[40U] ;
  struct i2c_msg msg ;
  int i ;
  int ret ;
  int max ;
  long tmp ;
  long tmp___0 ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  msg.addr = (unsigned short )priv->i2c_props.addr;
  msg.flags = 0U;
  msg.len = (unsigned short)0;
  msg.buf = (__u8 *)(& buf);
  ret = 1;
  tmp = ldv__builtin_expect(len == 0, 0L);
  if (tmp != 0L) {
    goto _L;
  } else {
    tmp___0 = ldv__builtin_expect((unsigned int )(idx + len) > 40U, 0L);
    if (tmp___0 != 0L) {
      _L:
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/media/tuners/tda18271.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/14/dscv_tempdir/dscv/ri/32_7a/drivers/media/tuners/tda18271-common.c.prepared"),
                           "i" (240), "i" (12UL));
      ldv_23981: ;
      goto ldv_23981;
    } else {
    }
  }
  switch ((unsigned int )priv->small_i2c) {
  case 3U:
  max = 3;
  goto ldv_23983;
  case 8U:
  max = 8;
  goto ldv_23983;
  case 16U:
  max = 16;
  goto ldv_23983;
  case 0U: ;
  default:
  max = 39;
  }
  ldv_23983: ;
  if ((int )lock_i2c) {
    tda18271_i2c_gate_ctrl(fe, 1);
    i2c_lock_adapter(priv->i2c_props.adap);
  } else {
  }
  goto ldv_23993;
  ldv_23992: ;
  if (max > len) {
    max = len;
  } else {
  }
  buf[0] = (unsigned char )idx;
  i = 1;
  goto ldv_23989;
  ldv_23988:
  buf[i] = *(regs + (unsigned long )((idx + -1) + i));
  i = i + 1;
  ldv_23989: ;
  if (i <= max) {
    goto ldv_23988;
  } else {
  }
  msg.len = (unsigned int )((__u16 )max) + 1U;
  ret = __i2c_transfer(priv->i2c_props.adap, & msg, 1);
  if (ret != 1) {
    goto ldv_23991;
  } else {
  }
  idx = idx + max;
  len = len - max;
  ldv_23993: ;
  if (len != 0) {
    goto ldv_23992;
  } else {
  }
  ldv_23991: ;
  if ((int )lock_i2c) {
    i2c_unlock_adapter(priv->i2c_props.adap);
    tda18271_i2c_gate_ctrl(fe, 0);
  } else {
  }
  if (ret != 1) {
    _tda_printk(priv, "\v", "__tda18271_write_regs", "ERROR: idx = 0x%x, len = %d, i2c_transfer returned: %d\n",
                idx, max, ret);
  } else {
  }
  return (ret != 1 ? ret : 0);
}
}
int tda18271_write_regs(struct dvb_frontend *fe , int idx , int len )
{
  int tmp ;
  {
  tmp = __tda18271_write_regs(fe, idx, len, 1);
  return (tmp);
}
}
static int __tda18271_charge_pump_source(struct dvb_frontend *fe , enum tda18271_pll pll ,
                                         int force , bool lock_i2c )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  int r_cp ;
  int tmp ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  r_cp = (unsigned int )pll == 1U ? 22 : 19;
  *(regs + (unsigned long )r_cp) = (unsigned int )*(regs + (unsigned long )r_cp) & 223U;
  *(regs + (unsigned long )r_cp) = (unsigned char )((int )((signed char )*(regs + (unsigned long )r_cp)) | (int )((signed char )((force & 1) << 5)));
  tmp = __tda18271_write_regs(fe, r_cp, 1, (int )lock_i2c);
  return (tmp);
}
}
int tda18271_charge_pump_source(struct dvb_frontend *fe , enum tda18271_pll pll ,
                                int force )
{
  int tmp ;
  {
  tmp = __tda18271_charge_pump_source(fe, pll, force, 1);
  return (tmp);
}
}
int tda18271_init_regs(struct dvb_frontend *fe )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  int tmp ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  if (tda18271_debug & 1) {
    tmp = i2c_adapter_id(priv->i2c_props.adap);
    _tda_printk(priv, "\017", "tda18271_init_regs", "initializing registers for device @ %d-%04x\n",
                tmp, (int )priv->i2c_props.addr);
  } else {
  }
  tda18271_i2c_gate_ctrl(fe, 1);
  i2c_lock_adapter(priv->i2c_props.adap);
  switch ((unsigned int )priv->id) {
  case 0U:
  *regs = 131U;
  goto ldv_24021;
  case 1U:
  *regs = 132U;
  goto ldv_24021;
  }
  ldv_24021:
  *(regs + 1UL) = 8U;
  *(regs + 2UL) = 128U;
  *(regs + 3UL) = 198U;
  *(regs + 4UL) = 223U;
  *(regs + 5UL) = 22U;
  *(regs + 6UL) = 96U;
  *(regs + 7UL) = 128U;
  *(regs + 8UL) = 128U;
  *(regs + 9UL) = 0U;
  *(regs + 10UL) = 0U;
  *(regs + 11UL) = 0U;
  *(regs + 12UL) = 0U;
  *(regs + 13UL) = 0U;
  *(regs + 14UL) = 0U;
  *(regs + 15UL) = 0U;
  switch ((unsigned int )priv->id) {
  case 0U:
  *(regs + 16UL) = 255U;
  goto ldv_24024;
  case 1U:
  *(regs + 16UL) = 252U;
  goto ldv_24024;
  }
  ldv_24024:
  *(regs + 17UL) = 1U;
  *(regs + 18UL) = 132U;
  *(regs + 19UL) = 65U;
  *(regs + 20UL) = 1U;
  *(regs + 21UL) = 132U;
  *(regs + 22UL) = 64U;
  *(regs + 23UL) = 7U;
  *(regs + 24UL) = 0U;
  *(regs + 25UL) = 0U;
  *(regs + 26UL) = 150U;
  switch ((unsigned int )priv->id) {
  case 0U:
  *(regs + 27UL) = 15U;
  goto ldv_24027;
  case 1U:
  *(regs + 27UL) = 51U;
  goto ldv_24027;
  }
  ldv_24027:
  *(regs + 28UL) = 193U;
  *(regs + 29UL) = 0U;
  *(regs + 30UL) = 143U;
  *(regs + 31UL) = 0U;
  *(regs + 32UL) = 0U;
  switch ((unsigned int )priv->id) {
  case 0U:
  *(regs + 33UL) = 0U;
  goto ldv_24030;
  case 1U:
  *(regs + 33UL) = 140U;
  goto ldv_24030;
  }
  ldv_24030:
  *(regs + 34UL) = 0U;
  *(regs + 35UL) = 32U;
  switch ((unsigned int )priv->id) {
  case 0U:
  *(regs + 36UL) = 51U;
  goto ldv_24033;
  case 1U:
  *(regs + 36UL) = 179U;
  goto ldv_24033;
  }
  ldv_24033:
  *(regs + 37UL) = 72U;
  *(regs + 38UL) = 176U;
  __tda18271_write_regs(fe, 0, 39, 0);
  *(regs + 32UL) = 0U;
  __tda18271_write_regs(fe, 32, 1, 0);
  *(regs + 32UL) = 3U;
  __tda18271_write_regs(fe, 32, 1, 0);
  *(regs + 32UL) = 67U;
  __tda18271_write_regs(fe, 32, 1, 0);
  *(regs + 32UL) = 76U;
  __tda18271_write_regs(fe, 32, 1, 0);
  if ((unsigned int )priv->id == 0U) {
    *(regs + 35UL) = 160U;
    __tda18271_write_regs(fe, 35, 1, 0);
    *(regs + 35UL) = 167U;
    __tda18271_write_regs(fe, 35, 1, 0);
    *(regs + 35UL) = 231U;
    __tda18271_write_regs(fe, 35, 1, 0);
    *(regs + 35UL) = 236U;
    __tda18271_write_regs(fe, 35, 1, 0);
  } else {
  }
  *(regs + 5UL) = 31U;
  *(regs + 6UL) = 102U;
  *(regs + 7UL) = 129U;
  *(regs + 8UL) = 204U;
  *(regs + 9UL) = 108U;
  *(regs + 10UL) = 0U;
  *(regs + 11UL) = 0U;
  *(regs + 12UL) = 205U;
  *(regs + 13UL) = 119U;
  *(regs + 14UL) = 8U;
  *(regs + 15UL) = 0U;
  __tda18271_write_regs(fe, 5, 11, 0);
  if ((unsigned int )priv->id == 1U) {
    __tda18271_charge_pump_source(fe, 0, 1, 0);
    msleep(1U);
    __tda18271_charge_pump_source(fe, 0, 0, 0);
  } else {
  }
  msleep(5U);
  __tda18271_write_regs(fe, 3, 1, 0);
  msleep(5U);
  *(regs + 7UL) = 133U;
  *(regs + 8UL) = 203U;
  *(regs + 9UL) = 102U;
  *(regs + 10UL) = 112U;
  __tda18271_write_regs(fe, 5, 7, 0);
  msleep(5U);
  __tda18271_write_regs(fe, 4, 1, 0);
  msleep(30U);
  *(regs + 7UL) = 130U;
  *(regs + 8UL) = 168U;
  *(regs + 10UL) = 0U;
  *(regs + 12UL) = 169U;
  *(regs + 13UL) = 115U;
  *(regs + 14UL) = 26U;
  __tda18271_write_regs(fe, 5, 11, 0);
  msleep(5U);
  __tda18271_write_regs(fe, 3, 1, 0);
  msleep(5U);
  *(regs + 7UL) = 134U;
  *(regs + 8UL) = 168U;
  *(regs + 9UL) = 102U;
  *(regs + 10UL) = 160U;
  __tda18271_write_regs(fe, 5, 7, 0);
  msleep(5U);
  __tda18271_write_regs(fe, 4, 1, 0);
  msleep(30U);
  *(regs + 7UL) = 131U;
  *(regs + 8UL) = 152U;
  *(regs + 9UL) = 101U;
  *(regs + 10UL) = 0U;
  *(regs + 12UL) = 153U;
  *(regs + 13UL) = 113U;
  *(regs + 14UL) = 205U;
  __tda18271_write_regs(fe, 5, 11, 0);
  msleep(5U);
  __tda18271_write_regs(fe, 3, 1, 0);
  msleep(5U);
  *(regs + 7UL) = 135U;
  *(regs + 9UL) = 101U;
  *(regs + 10UL) = 80U;
  __tda18271_write_regs(fe, 5, 7, 0);
  msleep(5U);
  __tda18271_write_regs(fe, 4, 1, 0);
  msleep(30U);
  *(regs + 6UL) = 100U;
  __tda18271_write_regs(fe, 6, 1, 0);
  __tda18271_write_regs(fe, 3, 1, 0);
  i2c_unlock_adapter(priv->i2c_props.adap);
  tda18271_i2c_gate_ctrl(fe, 0);
  return (0);
}
}
int tda18271_set_standby_mode(struct dvb_frontend *fe , int sm , int sm_lt , int sm_xt )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  int tmp ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  if ((tda18271_debug & 8) != 0) {
    if (tda18271_debug & 1) {
      _tda_printk(priv, "\017", "tda18271_set_standby_mode", "sm = %d, sm_lt = %d, sm_xt = %d\n",
                  sm, sm_lt, sm_xt);
    } else {
    }
  } else {
  }
  *(regs + 5UL) = (unsigned int )*(regs + 5UL) & 31U;
  *(regs + 5UL) = (unsigned char )((int )((signed char )*(regs + 5UL)) | (((sm != 0 ? -128 : 0) | (sm_lt != 0 ? 64 : 0)) | (sm_xt != 0 ? 32 : 0)));
  tmp = tda18271_write_regs(fe, 5, 1);
  return (tmp);
}
}
int tda18271_calc_main_pll(struct dvb_frontend *fe , u32 freq )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  u8 d ;
  u8 pd ;
  u32 div ;
  int ret ;
  int tmp ;
  int __ret ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  tmp = tda18271_lookup_pll_map(fe, 0, & freq, & pd, & d);
  ret = tmp;
  __ret = ret < 0;
  if (__ret != 0) {
    _tda_printk(priv, "\v", "tda18271_calc_main_pll", "error %d on line %d\n", ret,
                611);
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  *(regs + 12UL) = (unsigned int )pd & 127U;
  div = ((u32 )d * (freq / 1000U) << 7) / 125U;
  *(regs + 13UL) = (unsigned int )((unsigned char )(div >> 16)) & 127U;
  *(regs + 14UL) = (unsigned char )(div >> 8);
  *(regs + 15UL) = (unsigned char )div;
  fail: ;
  return (ret);
}
}
int tda18271_calc_cal_pll(struct dvb_frontend *fe , u32 freq )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  u8 d ;
  u8 pd ;
  u32 div ;
  int ret ;
  int tmp ;
  int __ret ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  tmp = tda18271_lookup_pll_map(fe, 1, & freq, & pd, & d);
  ret = tmp;
  __ret = ret < 0;
  if (__ret != 0) {
    _tda_printk(priv, "\v", "tda18271_calc_cal_pll", "error %d on line %d\n", ret,
                634);
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  *(regs + 8UL) = pd;
  div = ((u32 )d * (freq / 1000U) << 7) / 125U;
  *(regs + 9UL) = (unsigned int )((unsigned char )(div >> 16)) & 127U;
  *(regs + 10UL) = (unsigned char )(div >> 8);
  *(regs + 11UL) = (unsigned char )div;
  fail: ;
  return (ret);
}
}
int tda18271_calc_bp_filter(struct dvb_frontend *fe , u32 *freq )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  u8 val ;
  int ret ;
  int tmp ;
  int __ret ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  tmp = tda18271_lookup_map(fe, 5, freq, & val);
  ret = tmp;
  __ret = ret < 0;
  if (__ret != 0) {
    _tda_printk(priv, "\v", "tda18271_calc_bp_filter", "error %d on line %d\n", ret,
                658);
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  *(regs + 3UL) = (unsigned int )*(regs + 3UL) & 248U;
  *(regs + 3UL) = (unsigned int )*(regs + 3UL) | ((unsigned int )val & 7U);
  fail: ;
  return (ret);
}
}
int tda18271_calc_km(struct dvb_frontend *fe , u32 *freq )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  u8 val ;
  int ret ;
  int tmp ;
  int __ret ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  tmp = tda18271_lookup_map(fe, 3, freq, & val);
  ret = tmp;
  __ret = ret < 0;
  if (__ret != 0) {
    _tda_printk(priv, "\v", "tda18271_calc_km", "error %d on line %d\n", ret, 675);
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  *(regs + 28UL) = (unsigned int )*(regs + 28UL) & 131U;
  *(regs + 28UL) = (unsigned int )*(regs + 28UL) | ((unsigned int )val & 124U);
  fail: ;
  return (ret);
}
}
int tda18271_calc_rf_band(struct dvb_frontend *fe , u32 *freq )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  u8 val ;
  int ret ;
  int tmp ;
  int __ret ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  tmp = tda18271_lookup_map(fe, 6, freq, & val);
  ret = tmp;
  __ret = ret < 0;
  if (__ret != 0) {
    _tda_printk(priv, "\v", "tda18271_calc_rf_band", "error %d on line %d\n", ret,
                692);
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  *(regs + 4UL) = (unsigned int )*(regs + 4UL) & 31U;
  *(regs + 4UL) = (unsigned char )((int )((signed char )*(regs + 4UL)) | (int )((signed char )((int )val << 5)));
  fail: ;
  return (ret);
}
}
int tda18271_calc_gain_taper(struct dvb_frontend *fe , u32 *freq )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  u8 val ;
  int ret ;
  int tmp ;
  int __ret ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  tmp = tda18271_lookup_map(fe, 7, freq, & val);
  ret = tmp;
  __ret = ret < 0;
  if (__ret != 0) {
    _tda_printk(priv, "\v", "tda18271_calc_gain_taper", "error %d on line %d\n", ret,
                709);
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  *(regs + 4UL) = (unsigned int )*(regs + 4UL) & 224U;
  *(regs + 4UL) = (unsigned int )*(regs + 4UL) | ((unsigned int )val & 31U);
  fail: ;
  return (ret);
}
}
int tda18271_calc_ir_measure(struct dvb_frontend *fe , u32 *freq )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  u8 val ;
  int ret ;
  int tmp ;
  int __ret ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  tmp = tda18271_lookup_map(fe, 8, freq, & val);
  ret = tmp;
  __ret = ret < 0;
  if (__ret != 0) {
    _tda_printk(priv, "\v", "tda18271_calc_ir_measure", "error %d on line %d\n", ret,
                726);
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  *(regs + 7UL) = (unsigned int )*(regs + 7UL) & 248U;
  *(regs + 7UL) = (unsigned int )*(regs + 7UL) | ((unsigned int )val & 7U);
  fail: ;
  return (ret);
}
}
int tda18271_calc_rf_cal(struct dvb_frontend *fe , u32 *freq )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  u8 val ;
  int ret ;
  int tmp ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  tmp = tda18271_lookup_map(fe, 2, freq, & val);
  ret = tmp;
  if (ret < 0) {
    goto fail;
  } else {
  }
  *(regs + 29UL) = val;
  fail: ;
  return (ret);
}
}
int _tda_printk(struct tda18271_priv *state , char const *level , char const *func ,
                char const *fmt , ...)
{
  struct va_format vaf ;
  va_list args ;
  int rtn ;
  int tmp ;
  {
  __builtin_va_start((__va_list_tag *)(& args), fmt);
  vaf.fmt = fmt;
  vaf.va = & args;
  if ((unsigned long )state != (unsigned long )((struct tda18271_priv *)0)) {
    tmp = i2c_adapter_id(state->i2c_props.adap);
    rtn = printk("%s%s: [%d-%04x|%c] %pV", level, func, tmp, (int )state->i2c_props.addr,
                 (unsigned int )state->role == 0U ? 77 : 83, & vaf);
  } else {
    rtn = printk("%s%s: %pV", level, func, & vaf);
  }
  __builtin_va_end((__va_list_tag *)(& args));
  return (rtn);
}
}
void ldv_main1_sequence_infinite_withcheck_stateful(void)
{
  int tmp ;
  int tmp___0 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_24169;
  ldv_24168:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  default: ;
  goto ldv_24167;
  }
  ldv_24167: ;
  ldv_24169:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    goto ldv_24168;
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
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add_tail(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head->prev, head);
  return;
}
}
extern void list_del(struct list_head * ) ;
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
int ldv_mutex_trylock_32(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_30(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_33(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_35(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_37(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_39(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_41(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_43(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_45(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_48(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_50(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_29(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_31(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_34(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_36(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_38(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_40(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_42(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_44(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_46(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_47(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_tda18271_list_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_tda18271_list_mutex(struct mutex *lock ) ;
extern void __const_udelay(unsigned long ) ;
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
struct dvb_frontend *tda18271_attach(struct dvb_frontend *fe , u8 addr , struct i2c_adapter *i2c ,
                                     struct tda18271_config *cfg ) ;
int tda18271_debug ;
static int tda18271_cal_on_startup = -1;
static struct mutex tda18271_list_mutex = {{1}, {{{{{0U}}, 3735899821U, 4294967295U, 0xffffffffffffffffUL, {0, {0, 0}, "tda18271_list_mutex.wait_lock",
                                                                     0, 0UL}}}}, {& tda18271_list_mutex.wait_list,
                                                                                  & tda18271_list_mutex.wait_list},
    0, 0, (void *)(& tda18271_list_mutex), {0, {0, 0}, "tda18271_list_mutex", 0, 0UL}};
static struct list_head hybrid_tuner_instance_list = {& hybrid_tuner_instance_list, & hybrid_tuner_instance_list};
static int tda18271_toggle_output(struct dvb_frontend *fe , int standby )
{
  struct tda18271_priv *priv ;
  int ret ;
  int tmp ;
  int __ret ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  tmp = tda18271_set_standby_mode(fe, standby != 0, (int )priv->output_opt & 1, ((unsigned int )priv->output_opt & 2U) != 0U);
  ret = tmp;
  __ret = ret < 0;
  if (__ret != 0) {
    _tda_printk(priv, "\v", "tda18271_toggle_output", "error %d on line %d\n", ret,
                87);
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  if (tda18271_debug & 1) {
    _tda_printk(priv, "\017", "tda18271_toggle_output", "%s mode: xtal oscillator %s, slave tuner loop thru %s\n",
                standby != 0 ? (char *)"standby" : (char *)"active", ((unsigned int )priv->output_opt & 2U) != 0U ? (char *)"off" : (char *)"on",
                (int )priv->output_opt & 1 ? (char *)"off" : (char *)"on");
  } else {
  }
  fail: ;
  return (ret);
}
}
__inline static int charge_pump_source(struct dvb_frontend *fe , int force )
{
  struct tda18271_priv *priv ;
  int tmp ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  tmp = tda18271_charge_pump_source(fe, (unsigned int )priv->role == 1U, force);
  return (tmp);
}
}
__inline static void tda18271_set_if_notch(struct dvb_frontend *fe )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  switch ((unsigned int )priv->mode) {
  case 0U:
  *(regs + 12UL) = (unsigned int )*(regs + 12UL) & 127U;
  goto ldv_24939;
  case 1U:
  *(regs + 12UL) = (unsigned int )*(regs + 12UL) | 128U;
  goto ldv_24939;
  }
  ldv_24939: ;
  return;
}
}
static int tda18271_channel_configuration(struct dvb_frontend *fe , struct tda18271_std_map_item *map ,
                                          u32 freq , u32 bw )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  int ret ;
  u32 N ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  *(regs + 5UL) = (unsigned int )*(regs + 5UL) & 224U;
  *(regs + 5UL) = (unsigned char )((int )((signed char )*(regs + 5UL)) | ((int )((signed char )((int )map->agc_mode << 3)) | (int )((signed char )map->std)));
  if ((unsigned int )priv->id == 1U) {
    *(regs + 5UL) = (unsigned int )*(regs + 5UL) & 251U;
  } else {
  }
  *(regs + 6UL) = (unsigned int )*(regs + 6UL) & 252U;
  *(regs + 6UL) = (unsigned int )*(regs + 6UL) & 227U;
  *(regs + 6UL) = (unsigned char )((int )((signed char )*(regs + 6UL)) | (int )((signed char )((int )map->if_lvl << 2)));
  *(regs + 6UL) = (unsigned int )*(regs + 6UL) & 127U;
  *(regs + 6UL) = (unsigned char )((int )((signed char )*(regs + 6UL)) | (int )((signed char )((int )map->fm_rfn << 7)));
  *(regs + 37UL) = 0U;
  *(regs + 37UL) = (int )*(regs + 37UL) | (int )map->rfagc_top;
  ret = tda18271_write_regs(fe, 37, 1);
  __ret = ret < 0;
  if (__ret != 0) {
    _tda_printk(priv, "\v", "tda18271_channel_configuration", "error %d on line %d\n",
                ret, 159);
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  *(regs + 3UL) = (unsigned int )*(regs + 3UL) | 64U;
  *(regs + 1UL) = (unsigned int )*(regs + 1UL) & 239U;
  tda18271_calc_ir_measure(fe, & freq);
  tda18271_calc_bp_filter(fe, & freq);
  tda18271_calc_rf_band(fe, & freq);
  tda18271_calc_gain_taper(fe, & freq);
  switch ((unsigned int )priv->role) {
  case 0U:
  *(regs + 16UL) = (unsigned int )*(regs + 16UL) | 4U;
  goto ldv_24956;
  case 1U:
  *(regs + 16UL) = (unsigned int )*(regs + 16UL) & 251U;
  goto ldv_24956;
  }
  ldv_24956:
  *(regs + 16UL) = (unsigned int )*(regs + 16UL) & 253U;
  *(regs + 16UL) = (unsigned int )*(regs + 16UL) & 254U;
  ret = tda18271_write_regs(fe, 16, 1);
  __ret___0 = ret < 0;
  if (__ret___0 != 0) {
    _tda_printk(priv, "\v", "tda18271_channel_configuration", "error %d on line %d\n",
                ret, 200);
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  N = (u32 )((int )map->if_freq * 1000) + freq;
  switch ((unsigned int )priv->role) {
  case 0U:
  tda18271_calc_main_pll(fe, N);
  tda18271_set_if_notch(fe);
  tda18271_write_regs(fe, 12, 4);
  goto ldv_24961;
  case 1U:
  tda18271_calc_cal_pll(fe, N);
  tda18271_write_regs(fe, 8, 4);
  *(regs + 12UL) = (unsigned int )*(regs + 8UL) & 127U;
  tda18271_set_if_notch(fe);
  tda18271_write_regs(fe, 12, 1);
  goto ldv_24961;
  }
  ldv_24961:
  ret = tda18271_write_regs(fe, 1, 7);
  __ret___1 = ret < 0;
  if (__ret___1 != 0) {
    _tda_printk(priv, "\v", "tda18271_channel_configuration", "error %d on line %d\n",
                ret, 224);
  } else {
  }
  if (__ret___1 != 0) {
    goto fail;
  } else {
  }
  charge_pump_source(fe, 1);
  msleep(1U);
  charge_pump_source(fe, 0);
  msleep(20U);
  if ((unsigned int )priv->id == 1U) {
    if ((unsigned int )*((unsigned char *)map + 2UL) != 0U) {
      *(regs + 5UL) = (unsigned int )*(regs + 5UL) & 251U;
    } else {
      *(regs + 5UL) = (unsigned int )*(regs + 5UL) | 4U;
    }
    ret = tda18271_write_regs(fe, 5, 1);
  } else {
  }
  fail: ;
  return (ret);
}
}
static int tda18271_read_thermometer(struct dvb_frontend *fe )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  int tm ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  *(regs + 1UL) = (unsigned int )*(regs + 1UL) | 16U;
  tda18271_write_regs(fe, 1, 1);
  tda18271_read_regs(fe);
  if ((((int )*(regs + 1UL) & 15) == 0 && ((int )*(regs + 1UL) & 32) != 0) || (((int )*(regs + 1UL) & 15) == 8 && ((int )*(regs + 1UL) & 32) == 0)) {
    if (((int )*(regs + 1UL) & 32) != 0) {
      *(regs + 1UL) = (unsigned int )*(regs + 1UL) & 223U;
    } else {
      *(regs + 1UL) = (unsigned int )*(regs + 1UL) | 32U;
    }
    tda18271_write_regs(fe, 1, 1);
    msleep(10U);
    tda18271_read_regs(fe);
  } else {
  }
  tm = tda18271_lookup_thermometer(fe);
  *(regs + 1UL) = (unsigned int )*(regs + 1UL) & 239U;
  tda18271_write_regs(fe, 1, 1);
  *(regs + 6UL) = (unsigned int )*(regs + 6UL) & 252U;
  tda18271_write_regs(fe, 6, 1);
  return (tm);
}
}
static int tda18271c2_rf_tracking_filters_correction(struct dvb_frontend *fe , u32 freq )
{
  struct tda18271_priv *priv ;
  struct tda18271_rf_tracking_filter_cal *map ;
  unsigned char *regs ;
  int i ;
  int ret ;
  u8 tm_current ;
  u8 dc_over_dt ;
  u8 rf_tab ;
  s32 rfcal_comp ;
  s32 approx ;
  int __ret ;
  int tmp ;
  int __ret___0 ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  map = (struct tda18271_rf_tracking_filter_cal *)(& priv->rf_cal_state);
  regs = (unsigned char *)(& priv->tda18271_regs);
  ret = tda18271_set_standby_mode(fe, 0, 0, 0);
  __ret = ret < 0;
  if (__ret != 0) {
    _tda_printk(priv, "\v", "tda18271c2_rf_tracking_filters_correction", "error %d on line %d\n",
                ret, 305);
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  tmp = tda18271_read_thermometer(fe);
  tm_current = (u8 )tmp;
  tda18271_calc_rf_cal(fe, & freq);
  rf_tab = *(regs + 29UL);
  i = tda18271_lookup_rf_band(fe, & freq, 0);
  __ret___0 = i < 0;
  if (__ret___0 != 0) {
    _tda_printk(priv, "\v", "tda18271c2_rf_tracking_filters_correction", "error %d on line %d\n",
                i, 317);
  } else {
  }
  if (__ret___0 != 0) {
    return (i);
  } else {
  }
  if ((map + (unsigned long )i)->rf3 == 0U || freq / 1000U < (map + (unsigned long )i)->rf2) {
    approx = ((map + (unsigned long )i)->rf_a1 * (int )(freq / 1000U - (map + (unsigned long )i)->rf1) + (map + (unsigned long )i)->rf_b1) + (int )rf_tab;
  } else {
    approx = ((map + (unsigned long )i)->rf_a2 * (int )(freq / 1000U - (map + (unsigned long )i)->rf2) + (map + (unsigned long )i)->rf_b2) + (int )rf_tab;
  }
  if (approx < 0) {
    approx = 0;
  } else {
  }
  if (approx > 255) {
    approx = 255;
  } else {
  }
  tda18271_lookup_map(fe, 4, & freq, & dc_over_dt);
  rfcal_comp = ((int )dc_over_dt * ((int )tm_current - (int )priv->tm_rfcal)) / 1000;
  *(regs + 29UL) = (int )((unsigned char )approx) + (int )((unsigned char )rfcal_comp);
  ret = tda18271_write_regs(fe, 29, 1);
  fail: ;
  return (ret);
}
}
static int tda18271_por(struct dvb_frontend *fe )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  int ret ;
  int __ret ;
  int __ret___0 ;
  int __ret___1 ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  *(regs + 27UL) = (unsigned int )*(regs + 27UL) & 223U;
  ret = tda18271_write_regs(fe, 27, 1);
  __ret = ret < 0;
  if (__ret != 0) {
    _tda_printk(priv, "\v", "tda18271_por", "error %d on line %d\n", ret, 353);
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  *(regs + 33UL) = (unsigned int )*(regs + 33UL) & 127U;
  *(regs + 33UL) = (unsigned int )*(regs + 33UL) & 252U;
  ret = tda18271_write_regs(fe, 33, 1);
  __ret___0 = ret < 0;
  if (__ret___0 != 0) {
    _tda_printk(priv, "\v", "tda18271_por", "error %d on line %d\n", ret, 359);
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  *(regs + 36UL) = (unsigned int )*(regs + 36UL) | 3U;
  ret = tda18271_set_standby_mode(fe, 1, 0, 0);
  __ret___1 = ret < 0;
  if (__ret___1 != 0) {
    _tda_printk(priv, "\v", "tda18271_por", "error %d on line %d\n", ret, 366);
  } else {
  }
  if (__ret___1 != 0) {
    goto fail;
  } else {
  }
  *(regs + 38UL) = (unsigned int )*(regs + 38UL) & 251U;
  *(regs + 38UL) = (unsigned int )*(regs + 38UL) & 253U;
  ret = tda18271_write_regs(fe, 36, 3);
  fail: ;
  return (ret);
}
}
static int tda18271_calibrate_rf(struct dvb_frontend *fe , u32 freq )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  u32 N ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  *(regs + 6UL) = (unsigned int )*(regs + 6UL) & 252U;
  tda18271_write_regs(fe, 6, 1);
  *(regs + 5UL) = (unsigned int )*(regs + 5UL) | 64U;
  *(regs + 33UL) = (unsigned int )*(regs + 33UL) | 3U;
  tda18271_write_regs(fe, 33, 1);
  tda18271_calc_bp_filter(fe, & freq);
  tda18271_calc_gain_taper(fe, & freq);
  tda18271_calc_rf_band(fe, & freq);
  tda18271_calc_km(fe, & freq);
  tda18271_write_regs(fe, 3, 3);
  tda18271_write_regs(fe, 28, 1);
  tda18271_charge_pump_source(fe, 0, 1);
  tda18271_charge_pump_source(fe, 1, 1);
  *(regs + 29UL) = 0U;
  tda18271_write_regs(fe, 29, 1);
  *(regs + 35UL) = (unsigned int )*(regs + 35UL) & 223U;
  tda18271_write_regs(fe, 35, 1);
  *(regs + 6UL) = (unsigned int )*(regs + 6UL) | 3U;
  tda18271_write_regs(fe, 6, 2);
  N = freq;
  tda18271_calc_cal_pll(fe, N);
  tda18271_write_regs(fe, 8, 4);
  N = N + 1000000U;
  tda18271_calc_main_pll(fe, N);
  tda18271_write_regs(fe, 12, 4);
  msleep(5U);
  tda18271_write_regs(fe, 4, 1);
  tda18271_write_regs(fe, 3, 1);
  tda18271_write_regs(fe, 4, 1);
  tda18271_write_regs(fe, 3, 1);
  tda18271_charge_pump_source(fe, 0, 0);
  tda18271_charge_pump_source(fe, 1, 0);
  msleep(10U);
  *(regs + 35UL) = (unsigned int )*(regs + 35UL) | 32U;
  tda18271_write_regs(fe, 35, 1);
  msleep(60U);
  *(regs + 6UL) = (unsigned int )*(regs + 6UL) & 252U;
  *(regs + 5UL) = (unsigned int )*(regs + 5UL) & 191U;
  *(regs + 33UL) = (unsigned int )*(regs + 33UL) & 252U;
  tda18271_write_regs(fe, 33, 1);
  tda18271_write_regs(fe, 5, 2);
  tda18271_write_regs(fe, 3, 1);
  tda18271_read_extended(fe);
  return ((int )*(regs + 29UL));
}
}
static int tda18271_powerscan(struct dvb_frontend *fe , u32 *freq_in , u32 *freq_out )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  int sgn ;
  int bcal ;
  int count ;
  int wait ;
  int ret ;
  u8 cid_target ;
  u16 count_limit ;
  u32 freq ;
  int __ret ;
  int __ret___0 ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  freq = *freq_in;
  tda18271_calc_rf_band(fe, & freq);
  tda18271_calc_rf_cal(fe, & freq);
  tda18271_calc_gain_taper(fe, & freq);
  tda18271_lookup_cid_target(fe, & freq, & cid_target, & count_limit);
  tda18271_write_regs(fe, 4, 1);
  tda18271_write_regs(fe, 29, 1);
  freq = freq + 1000000U;
  tda18271_calc_main_pll(fe, freq);
  tda18271_write_regs(fe, 12, 4);
  msleep(5U);
  *(regs + 6UL) = (unsigned int )*(regs + 6UL) & 252U;
  *(regs + 6UL) = (unsigned int )*(regs + 6UL) | 1U;
  tda18271_write_regs(fe, 6, 1);
  tda18271_write_regs(fe, 4, 1);
  ret = tda18271_read_extended(fe);
  __ret = ret < 0;
  if (__ret != 0) {
    _tda_printk(priv, "\v", "tda18271_powerscan", "error %d on line %d\n", ret, 518);
  } else {
  }
  if (__ret != 0) {
    return (ret);
  } else {
  }
  sgn = 1;
  *freq_out = *freq_in;
  bcal = 0;
  count = 0;
  wait = 0;
  goto ldv_25032;
  ldv_25034:
  freq = (*freq_in + (u32 )(sgn * count)) + 1000000U;
  tda18271_calc_main_pll(fe, freq);
  tda18271_write_regs(fe, 12, 4);
  if (wait != 0) {
    msleep(5U);
    wait = 0;
  } else {
    __const_udelay(429500UL);
  }
  tda18271_write_regs(fe, 4, 1);
  ret = tda18271_read_extended(fe);
  __ret___0 = ret < 0;
  if (__ret___0 != 0) {
    _tda_printk(priv, "\v", "tda18271_powerscan", "error %d on line %d\n", ret, 546);
  } else {
  }
  if (__ret___0 != 0) {
    return (ret);
  } else {
  }
  count = count + 200;
  if ((int )count_limit >= count) {
    goto ldv_25032;
  } else {
  }
  if (sgn <= 0) {
    goto ldv_25033;
  } else {
  }
  sgn = - sgn;
  count = 200;
  wait = 1;
  ldv_25032: ;
  if (((int )*(regs + 25UL) & 63) < (int )cid_target) {
    goto ldv_25034;
  } else {
  }
  ldv_25033: ;
  if (((int )*(regs + 25UL) & 63) >= (int )cid_target) {
    bcal = 1;
    *freq_out = freq - 1000000U;
  } else {
    bcal = 0;
  }
  if ((tda18271_debug & 16) != 0) {
    _tda_printk(priv, "\017", "tda18271_powerscan", "bcal = %d, freq_in = %d, freq_out = %d (freq = %d)\n",
                bcal, *freq_in, *freq_out, freq);
  } else {
  }
  return (bcal);
}
}
static int tda18271_powerscan_init(struct dvb_frontend *fe )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  int ret ;
  int __ret ;
  int __ret___0 ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  *(regs + 5UL) = (unsigned int )*(regs + 5UL) & 224U;
  *(regs + 5UL) = (unsigned int )*(regs + 5UL) | 18U;
  *(regs + 6UL) = (unsigned int )*(regs + 6UL) & 252U;
  *(regs + 6UL) = (unsigned int )*(regs + 6UL) & 227U;
  ret = tda18271_write_regs(fe, 5, 2);
  __ret = ret < 0;
  if (__ret != 0) {
    _tda_printk(priv, "\v", "tda18271_powerscan_init", "error %d on line %d\n", ret,
                591);
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  *(regs + 33UL) = (unsigned int )*(regs + 33UL) & 252U;
  ret = tda18271_write_regs(fe, 33, 1);
  __ret___0 = ret < 0;
  if (__ret___0 != 0) {
    _tda_printk(priv, "\v", "tda18271_powerscan_init", "error %d on line %d\n", ret,
                596);
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  *(regs + 36UL) = (unsigned int )*(regs + 36UL) & 252U;
  *(regs + 38UL) = (unsigned int )*(regs + 38UL) | 4U;
  *(regs + 38UL) = (unsigned int )*(regs + 38UL) | 2U;
  ret = tda18271_write_regs(fe, 36, 3);
  fail: ;
  return (ret);
}
}
static int tda18271_rf_tracking_filters_init(struct dvb_frontend *fe , u32 freq )
{
  struct tda18271_priv *priv ;
  struct tda18271_rf_tracking_filter_cal *map ;
  unsigned char *regs ;
  int bcal ;
  int rf ;
  int i ;
  s32 divisor ;
  s32 dividend ;
  u32 rf_default[3U] ;
  u32 rf_freq[3U] ;
  s32 prog_cal[3U] ;
  s32 prog_tab[3U] ;
  int __ret ;
  int __ret___0 ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  map = (struct tda18271_rf_tracking_filter_cal *)(& priv->rf_cal_state);
  regs = (unsigned char *)(& priv->tda18271_regs);
  i = tda18271_lookup_rf_band(fe, & freq, 0);
  __ret = i < 0;
  if (__ret != 0) {
    _tda_printk(priv, "\v", "tda18271_rf_tracking_filters_init", "error %d on line %d\n",
                i, 627);
  } else {
  }
  if (__ret != 0) {
    return (i);
  } else {
  }
  rf_default[0] = (map + (unsigned long )i)->rf1_def * 1000U;
  rf_default[1] = (map + (unsigned long )i)->rf2_def * 1000U;
  rf_default[2] = (map + (unsigned long )i)->rf3_def * 1000U;
  rf = 0;
  goto ldv_25075;
  ldv_25074: ;
  if (rf_default[rf] == 0U) {
    return (0);
  } else {
  }
  if ((tda18271_debug & 16) != 0) {
    _tda_printk(priv, "\017", "tda18271_rf_tracking_filters_init", "freq = %d, rf = %d\n",
                freq, rf);
  } else {
  }
  bcal = tda18271_powerscan(fe, (u32 *)(& rf_default) + (unsigned long )rf, (u32 *)(& rf_freq) + (unsigned long )rf);
  __ret___0 = bcal < 0;
  if (__ret___0 != 0) {
    _tda_printk(priv, "\v", "tda18271_rf_tracking_filters_init", "error %d on line %d\n",
                bcal, 641);
  } else {
  }
  if (__ret___0 != 0) {
    return (bcal);
  } else {
  }
  tda18271_calc_rf_cal(fe, (u32 *)(& rf_freq) + (unsigned long )rf);
  prog_tab[rf] = (int )*(regs + 29UL);
  if (bcal == 1) {
    prog_cal[rf] = tda18271_calibrate_rf(fe, rf_freq[rf]);
  } else {
    prog_cal[rf] = prog_tab[rf];
  }
  switch (rf) {
  case 0:
  (map + (unsigned long )i)->rf_a1 = 0;
  (map + (unsigned long )i)->rf_b1 = prog_cal[0] - prog_tab[0];
  (map + (unsigned long )i)->rf1 = rf_freq[0] / 1000U;
  goto ldv_25069;
  case 1:
  dividend = ((prog_cal[1] - prog_tab[1]) - prog_cal[0]) + prog_tab[0];
  divisor = (int )(rf_freq[1] - rf_freq[0]) / 1000;
  (map + (unsigned long )i)->rf_a1 = dividend / divisor;
  (map + (unsigned long )i)->rf2 = rf_freq[1] / 1000U;
  goto ldv_25069;
  case 2:
  dividend = ((prog_cal[2] - prog_tab[2]) - prog_cal[1]) + prog_tab[1];
  divisor = (int )(rf_freq[2] - rf_freq[1]) / 1000;
  (map + (unsigned long )i)->rf_a2 = dividend / divisor;
  (map + (unsigned long )i)->rf_b2 = prog_cal[1] - prog_tab[1];
  (map + (unsigned long )i)->rf3 = rf_freq[2] / 1000U;
  goto ldv_25069;
  default:
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--drivers/media/tuners/tda18271.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/14/dscv_tempdir/dscv/ri/32_7a/drivers/media/tuners/tda18271-fe.c.prepared"),
                       "i" (675), "i" (12UL));
  ldv_25073: ;
  goto ldv_25073;
  }
  ldv_25069:
  rf = rf + 1;
  ldv_25075: ;
  if (rf <= 2) {
    goto ldv_25074;
  } else {
  }
  return (0);
}
}
static int tda18271_calc_rf_filter_curve(struct dvb_frontend *fe )
{
  struct tda18271_priv *priv ;
  unsigned int i ;
  int ret ;
  int __ret ;
  int __ret___0 ;
  int tmp ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  printk("\016tda18271: performing RF tracking filter calibration\n");
  msleep(200U);
  ret = tda18271_powerscan_init(fe);
  __ret = ret < 0;
  if (__ret != 0) {
    _tda_printk(priv, "\v", "tda18271_calc_rf_filter_curve", "error %d on line %d\n",
                ret, 694);
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  i = 0U;
  goto ldv_25090;
  ldv_25089:
  ret = tda18271_rf_tracking_filters_init(fe, priv->rf_cal_state[i].rfmax * 1000U);
  __ret___0 = ret < 0;
  if (__ret___0 != 0) {
    _tda_printk(priv, "\v", "tda18271_calc_rf_filter_curve", "error %d on line %d\n",
                ret, 702);
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  i = i + 1U;
  ldv_25090: ;
  if (priv->rf_cal_state[i].rfmax != 0U) {
    goto ldv_25089;
  } else {
  }
  tmp = tda18271_read_thermometer(fe);
  priv->tm_rfcal = (u8 )tmp;
  fail: ;
  return (ret);
}
}
static int tda18271c2_rf_cal_init(struct dvb_frontend *fe )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  int ret ;
  int __ret ;
  int __ret___0 ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  if (((int )*(regs + 3UL) & 16) == 0) {
    priv->cal_initialized = 0U;
  } else {
  }
  if ((unsigned int )*((unsigned char *)priv + 116UL) != 0U) {
    return (0);
  } else {
  }
  ret = tda18271_calc_rf_filter_curve(fe);
  __ret = ret < 0;
  if (__ret != 0) {
    _tda_printk(priv, "\v", "tda18271c2_rf_cal_init", "error %d on line %d\n", ret,
                727);
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  ret = tda18271_por(fe);
  __ret___0 = ret < 0;
  if (__ret___0 != 0) {
    _tda_printk(priv, "\v", "tda18271c2_rf_cal_init", "error %d on line %d\n", ret,
                731);
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  printk("\016tda18271: RF tracking filter calibration complete\n");
  priv->cal_initialized = 1U;
  goto end;
  fail:
  printk("\016tda18271: RF tracking filter calibration failed!\n");
  end: ;
  return (ret);
}
}
static int tda18271c1_rf_tracking_filter_calibration(struct dvb_frontend *fe , u32 freq ,
                                                     u32 bw )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  int ret ;
  u32 N ;
  int __ret ;
  int tmp ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  N = 0U;
  tda18271_calc_bp_filter(fe, & freq);
  tda18271_write_regs(fe, 3, 1);
  *(regs + 19UL) = (unsigned int )*(regs + 19UL) & 7U;
  *(regs + 19UL) = (unsigned int )*(regs + 19UL) | 96U;
  tda18271_write_regs(fe, 19, 1);
  *(regs + 22UL) = 96U;
  tda18271_write_regs(fe, 22, 1);
  *(regs + 29UL) = 0U;
  tda18271_write_regs(fe, 29, 1);
  *(regs + 35UL) = 204U;
  tda18271_write_regs(fe, 35, 1);
  *(regs + 6UL) = (unsigned int )*(regs + 6UL) | 3U;
  switch ((unsigned int )priv->mode) {
  case 0U:
  N = freq - 1250000U;
  goto ldv_25115;
  case 1U:
  N = bw / 2U + freq;
  goto ldv_25115;
  }
  ldv_25115:
  tda18271_calc_cal_pll(fe, N);
  switch ((unsigned int )priv->mode) {
  case 0U:
  N = freq - 250000U;
  goto ldv_25118;
  case 1U:
  N = (bw / 2U + freq) + 1000000U;
  goto ldv_25118;
  }
  ldv_25118:
  tda18271_calc_main_pll(fe, N);
  ret = tda18271_write_regs(fe, 5, 11);
  __ret = ret < 0;
  if (__ret != 0) {
    _tda_printk(priv, "\v", "tda18271c1_rf_tracking_filter_calibration", "error %d on line %d\n",
                ret, 799);
  } else {
  }
  if (__ret != 0) {
    return (ret);
  } else {
  }
  msleep(5U);
  tda18271_calc_km(fe, & freq);
  tda18271_write_regs(fe, 28, 1);
  tda18271_calc_rf_band(fe, & freq);
  tda18271_calc_gain_taper(fe, & freq);
  tda18271_write_regs(fe, 4, 1);
  tda18271_write_regs(fe, 3, 1);
  tda18271_write_regs(fe, 4, 1);
  tda18271_write_regs(fe, 3, 1);
  *(regs + 19UL) = (unsigned int )*(regs + 19UL) & 7U;
  *(regs + 19UL) = (unsigned int )*(regs + 19UL) | 64U;
  tda18271_write_regs(fe, 19, 1);
  *(regs + 22UL) = 64U;
  tda18271_write_regs(fe, 22, 1);
  msleep(10U);
  *(regs + 35UL) = 236U;
  tda18271_write_regs(fe, 35, 1);
  msleep(60U);
  *(regs + 6UL) = (unsigned int )*(regs + 6UL) & 252U;
  tda18271_write_regs(fe, 6, 1);
  tda18271_write_regs(fe, 3, 1);
  tmp = tda18271_calc_rf_cal(fe, & freq);
  if (tmp == 0) {
    tda18271_write_regs(fe, 29, 1);
  } else {
  }
  return (0);
}
}
static int tda18271_ir_cal_init(struct dvb_frontend *fe )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  int ret ;
  int __ret ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  ret = tda18271_read_regs(fe);
  __ret = ret < 0;
  if (__ret != 0) {
    _tda_printk(priv, "\v", "tda18271_ir_cal_init", "error %d on line %d\n", ret,
                852);
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  if (((int )*(regs + 3UL) & 8) == 0) {
    ret = tda18271_init_regs(fe);
  } else {
  }
  fail: ;
  return (ret);
}
}
static int tda18271_init(struct dvb_frontend *fe )
{
  struct tda18271_priv *priv ;
  int ret ;
  int __ret ;
  int __ret___0 ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  ldv_mutex_lock_36(& priv->lock);
  ret = tda18271_set_standby_mode(fe, 0, 0, 0);
  __ret = ret < 0;
  if (__ret != 0) {
    _tda_printk(priv, "\v", "tda18271_init", "error %d on line %d\n", ret, 871);
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  ret = tda18271_ir_cal_init(fe);
  __ret___0 = ret < 0;
  if (__ret___0 != 0) {
    _tda_printk(priv, "\v", "tda18271_init", "error %d on line %d\n", ret, 876);
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  if ((unsigned int )priv->id == 1U) {
    tda18271c2_rf_cal_init(fe);
  } else {
  }
  fail:
  ldv_mutex_unlock_37(& priv->lock);
  return (ret);
}
}
static int tda18271_sleep(struct dvb_frontend *fe )
{
  struct tda18271_priv *priv ;
  int ret ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  ldv_mutex_lock_38(& priv->lock);
  ret = tda18271_toggle_output(fe, 1);
  ldv_mutex_unlock_39(& priv->lock);
  return (ret);
}
}
static int tda18271_agc(struct dvb_frontend *fe )
{
  struct tda18271_priv *priv ;
  int ret ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  ret = 0;
  switch (priv->config) {
  case 0U: ;
  if ((tda18271_debug & 8) != 0) {
    if (tda18271_debug & 1) {
      _tda_printk(priv, "\017", "tda18271_agc", "no agc configuration provided\n");
    } else {
    }
  } else {
  }
  goto ldv_25156;
  case 3U: ;
  if (tda18271_debug & 1) {
    _tda_printk(priv, "\017", "tda18271_agc", "invoking callback\n");
  } else {
  }
  if ((unsigned long )fe->callback != (unsigned long )((int (*)(void * , int , int ,
                                                                int ))0)) {
    ret = (*(fe->callback))((priv->i2c_props.adap)->algo_data, 0, 0, (int )priv->mode);
  } else {
  }
  goto ldv_25156;
  case 1U: ;
  case 2U: ;
  default:
  _tda_printk(priv, "\v", "tda18271_agc", "unsupported configuration: %d\n", priv->config);
  ret = -22;
  goto ldv_25156;
  }
  ldv_25156: ;
  return (ret);
}
}
static int tda18271_tune(struct dvb_frontend *fe , struct tda18271_std_map_item *map ,
                         u32 freq , u32 bw )
{
  struct tda18271_priv *priv ;
  int ret ;
  int __ret ;
  int __ret___0 ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  if (tda18271_debug & 1) {
    _tda_printk(priv, "\017", "tda18271_tune", "freq = %d, ifc = %d, bw = %d, agc_mode = %d, std = %d\n",
                freq, (int )map->if_freq, bw, (int )map->agc_mode, (int )map->std);
  } else {
  }
  ret = tda18271_agc(fe);
  __ret = ret < 0;
  if (__ret != 0) {
    _tda_printk(priv, "\v", "tda18271_tune", "error %d on line %d\n", ret, 945);
  } else {
  }
  if (__ret != 0) {
    _tda_printk(priv, "\f", "tda18271_tune", "failed to configure agc\n");
  } else {
  }
  ret = tda18271_init(fe);
  __ret___0 = ret < 0;
  if (__ret___0 != 0) {
    _tda_printk(priv, "\v", "tda18271_tune", "error %d on line %d\n", ret, 949);
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  ldv_mutex_lock_40(& priv->lock);
  switch ((unsigned int )priv->id) {
  case 0U:
  tda18271c1_rf_tracking_filter_calibration(fe, freq, bw);
  goto ldv_25176;
  case 1U:
  tda18271c2_rf_tracking_filters_correction(fe, freq);
  goto ldv_25176;
  }
  ldv_25176:
  ret = tda18271_channel_configuration(fe, map, freq, bw);
  ldv_mutex_unlock_41(& priv->lock);
  fail: ;
  return (ret);
}
}
static int tda18271_set_params(struct dvb_frontend *fe )
{
  struct dtv_frontend_properties *c ;
  u32 delsys ;
  u32 bw ;
  u32 freq ;
  struct tda18271_priv *priv ;
  struct tda18271_std_map *std_map ;
  struct tda18271_std_map_item *map ;
  int ret ;
  int __ret ;
  {
  c = & fe->dtv_property_cache;
  delsys = c->delivery_system;
  bw = c->bandwidth_hz;
  freq = c->frequency;
  priv = (struct tda18271_priv *)fe->tuner_priv;
  std_map = & priv->std;
  priv->mode = 1;
  switch (delsys) {
  case 11U:
  map = & std_map->atsc_6;
  bw = 6000000U;
  goto ldv_25190;
  case 8U: ;
  case 3U: ;
  case 16U: ;
  if (bw <= 6000000U) {
    map = & std_map->dvbt_6;
  } else
  if (bw <= 7000000U) {
    map = & std_map->dvbt_7;
  } else {
    map = & std_map->dvbt_8;
  }
  goto ldv_25190;
  case 2U:
  bw = 6000000U;
  case 1U: ;
  case 18U: ;
  if (bw <= 6000000U) {
    map = & std_map->qam_6;
  } else
  if (bw <= 7000000U) {
    map = & std_map->qam_7;
  } else {
    map = & std_map->qam_8;
  }
  goto ldv_25190;
  default:
  _tda_printk(priv, "\f", "tda18271_set_params", "modulation type not supported!\n");
  return (-22);
  }
  ldv_25190: ;
  if ((unsigned long )fe->ops.analog_ops.standby != (unsigned long )((void (*)(struct dvb_frontend * ))0)) {
    (*(fe->ops.analog_ops.standby))(fe);
  } else {
  }
  ret = tda18271_tune(fe, map, freq, bw);
  __ret = ret < 0;
  if (__ret != 0) {
    _tda_printk(priv, "\v", "tda18271_set_params", "error %d on line %d\n", ret, 1024);
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  priv->if_freq = map->if_freq;
  priv->frequency = freq;
  priv->bandwidth = bw;
  fail: ;
  return (ret);
}
}
static int tda18271_set_analog_params(struct dvb_frontend *fe , struct analog_parameters *params )
{
  struct tda18271_priv *priv ;
  struct tda18271_std_map *std_map ;
  struct tda18271_std_map_item *map ;
  char *mode ;
  int ret ;
  u32 freq ;
  int __ret ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  std_map = & priv->std;
  freq = ((params->frequency * (params->mode == 1U ? 1U : 1000U)) * 125U) / 2U;
  priv->mode = 0;
  if (params->mode == 1U) {
    map = & std_map->fm_radio;
    mode = (char *)"fm";
  } else
  if ((params->std & 46848ULL) != 0ULL) {
    map = & std_map->atv_mn;
    mode = (char *)"MN";
  } else
  if ((params->std & 65539ULL) != 0ULL) {
    map = & std_map->atv_b;
    mode = (char *)"B";
  } else
  if ((params->std & 786444ULL) != 0ULL) {
    map = & std_map->atv_gh;
    mode = (char *)"GH";
  } else
  if ((params->std & 16ULL) != 0ULL) {
    map = & std_map->atv_i;
    mode = (char *)"I";
  } else
  if ((params->std & 3277024ULL) != 0ULL) {
    map = & std_map->atv_dk;
    mode = (char *)"DK";
  } else
  if ((params->std & 4194304ULL) != 0ULL) {
    map = & std_map->atv_l;
    mode = (char *)"L";
  } else
  if ((params->std & 8388608ULL) != 0ULL) {
    map = & std_map->atv_lc;
    mode = (char *)"L\'";
  } else {
    map = & std_map->atv_i;
    mode = (char *)"xx";
  }
  if (tda18271_debug & 1) {
    _tda_printk(priv, "\017", "tda18271_set_analog_params", "setting tda18271 to system %s\n",
                mode);
  } else {
  }
  ret = tda18271_tune(fe, map, freq, 0U);
  __ret = ret < 0;
  if (__ret != 0) {
    _tda_printk(priv, "\v", "tda18271_set_analog_params", "error %d on line %d\n",
                ret, 1080);
  } else {
  }
  if (__ret != 0) {
    goto fail;
  } else {
  }
  priv->if_freq = map->if_freq;
  priv->frequency = freq;
  priv->bandwidth = 0U;
  fail: ;
  return (ret);
}
}
static int tda18271_release(struct dvb_frontend *fe )
{
  struct tda18271_priv *priv ;
  int __ret ;
  int tmp ;
  int tmp___0 ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  ldv_mutex_lock_42(& tda18271_list_mutex);
  if ((unsigned long )priv != (unsigned long )((struct tda18271_priv *)0)) {
    priv->i2c_props.count = priv->i2c_props.count - 1;
    __ret = priv->i2c_props.count;
    if (priv->i2c_props.count == 0) {
      if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
        tmp = i2c_adapter_id(priv->i2c_props.adap);
        tmp___0 = tmp;
      } else {
        tmp___0 = -1;
      }
      printk("\016%s %d-%04x: destroying instance\n", priv->i2c_props.name, tmp___0,
             (int )priv->i2c_props.addr);
      list_del(& priv->hybrid_tuner_instance_list);
      kfree((void const *)priv);
    } else {
    }
  } else {
  }
  ldv_mutex_unlock_43(& tda18271_list_mutex);
  fe->tuner_priv = 0;
  return (0);
}
}
static int tda18271_get_frequency(struct dvb_frontend *fe , u32 *frequency )
{
  struct tda18271_priv *priv ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  *frequency = priv->frequency;
  return (0);
}
}
static int tda18271_get_bandwidth(struct dvb_frontend *fe , u32 *bandwidth )
{
  struct tda18271_priv *priv ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  *bandwidth = priv->bandwidth;
  return (0);
}
}
static int tda18271_get_if_frequency(struct dvb_frontend *fe , u32 *frequency )
{
  struct tda18271_priv *priv ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  *frequency = (unsigned int )priv->if_freq * 1000U;
  return (0);
}
}
static int tda18271_dump_std_map(struct dvb_frontend *fe )
{
  struct tda18271_priv *priv ;
  struct tda18271_std_map *std ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  std = & priv->std;
  if (tda18271_debug & 1) {
    _tda_printk(priv, "\017", "tda18271_dump_std_map", "========== STANDARD MAP SETTINGS ==========\n");
  } else {
  }
  if (tda18271_debug & 1) {
    _tda_printk(priv, "\017", "tda18271_dump_std_map", "(%s) if_freq = %d, agc_mode = %d, std = %d, if_lvl = %d, rfagc_top = 0x%02x\n",
                (char *)"  fm  ", (int )std->fm_radio.if_freq, (int )std->fm_radio.agc_mode,
                (int )std->fm_radio.std, (int )std->fm_radio.if_lvl, (int )std->fm_radio.rfagc_top);
  } else {
  }
  if (tda18271_debug & 1) {
    _tda_printk(priv, "\017", "tda18271_dump_std_map", "(%s) if_freq = %d, agc_mode = %d, std = %d, if_lvl = %d, rfagc_top = 0x%02x\n",
                (char *)"atv b ", (int )std->atv_b.if_freq, (int )std->atv_b.agc_mode,
                (int )std->atv_b.std, (int )std->atv_b.if_lvl, (int )std->atv_b.rfagc_top);
  } else {
  }
  if (tda18271_debug & 1) {
    _tda_printk(priv, "\017", "tda18271_dump_std_map", "(%s) if_freq = %d, agc_mode = %d, std = %d, if_lvl = %d, rfagc_top = 0x%02x\n",
                (char *)"atv dk", (int )std->atv_dk.if_freq, (int )std->atv_dk.agc_mode,
                (int )std->atv_dk.std, (int )std->atv_dk.if_lvl, (int )std->atv_dk.rfagc_top);
  } else {
  }
  if (tda18271_debug & 1) {
    _tda_printk(priv, "\017", "tda18271_dump_std_map", "(%s) if_freq = %d, agc_mode = %d, std = %d, if_lvl = %d, rfagc_top = 0x%02x\n",
                (char *)"atv gh", (int )std->atv_gh.if_freq, (int )std->atv_gh.agc_mode,
                (int )std->atv_gh.std, (int )std->atv_gh.if_lvl, (int )std->atv_gh.rfagc_top);
  } else {
  }
  if (tda18271_debug & 1) {
    _tda_printk(priv, "\017", "tda18271_dump_std_map", "(%s) if_freq = %d, agc_mode = %d, std = %d, if_lvl = %d, rfagc_top = 0x%02x\n",
                (char *)"atv i ", (int )std->atv_i.if_freq, (int )std->atv_i.agc_mode,
                (int )std->atv_i.std, (int )std->atv_i.if_lvl, (int )std->atv_i.rfagc_top);
  } else {
  }
  if (tda18271_debug & 1) {
    _tda_printk(priv, "\017", "tda18271_dump_std_map", "(%s) if_freq = %d, agc_mode = %d, std = %d, if_lvl = %d, rfagc_top = 0x%02x\n",
                (char *)"atv l ", (int )std->atv_l.if_freq, (int )std->atv_l.agc_mode,
                (int )std->atv_l.std, (int )std->atv_l.if_lvl, (int )std->atv_l.rfagc_top);
  } else {
  }
  if (tda18271_debug & 1) {
    _tda_printk(priv, "\017", "tda18271_dump_std_map", "(%s) if_freq = %d, agc_mode = %d, std = %d, if_lvl = %d, rfagc_top = 0x%02x\n",
                (char *)"atv l\'", (int )std->atv_lc.if_freq, (int )std->atv_lc.agc_mode,
                (int )std->atv_lc.std, (int )std->atv_lc.if_lvl, (int )std->atv_lc.rfagc_top);
  } else {
  }
  if (tda18271_debug & 1) {
    _tda_printk(priv, "\017", "tda18271_dump_std_map", "(%s) if_freq = %d, agc_mode = %d, std = %d, if_lvl = %d, rfagc_top = 0x%02x\n",
                (char *)"atv mn", (int )std->atv_mn.if_freq, (int )std->atv_mn.agc_mode,
                (int )std->atv_mn.std, (int )std->atv_mn.if_lvl, (int )std->atv_mn.rfagc_top);
  } else {
  }
  if (tda18271_debug & 1) {
    _tda_printk(priv, "\017", "tda18271_dump_std_map", "(%s) if_freq = %d, agc_mode = %d, std = %d, if_lvl = %d, rfagc_top = 0x%02x\n",
                (char *)"atsc 6", (int )std->atsc_6.if_freq, (int )std->atsc_6.agc_mode,
                (int )std->atsc_6.std, (int )std->atsc_6.if_lvl, (int )std->atsc_6.rfagc_top);
  } else {
  }
  if (tda18271_debug & 1) {
    _tda_printk(priv, "\017", "tda18271_dump_std_map", "(%s) if_freq = %d, agc_mode = %d, std = %d, if_lvl = %d, rfagc_top = 0x%02x\n",
                (char *)"dvbt 6", (int )std->dvbt_6.if_freq, (int )std->dvbt_6.agc_mode,
                (int )std->dvbt_6.std, (int )std->dvbt_6.if_lvl, (int )std->dvbt_6.rfagc_top);
  } else {
  }
  if (tda18271_debug & 1) {
    _tda_printk(priv, "\017", "tda18271_dump_std_map", "(%s) if_freq = %d, agc_mode = %d, std = %d, if_lvl = %d, rfagc_top = 0x%02x\n",
                (char *)"dvbt 7", (int )std->dvbt_7.if_freq, (int )std->dvbt_7.agc_mode,
                (int )std->dvbt_7.std, (int )std->dvbt_7.if_lvl, (int )std->dvbt_7.rfagc_top);
  } else {
  }
  if (tda18271_debug & 1) {
    _tda_printk(priv, "\017", "tda18271_dump_std_map", "(%s) if_freq = %d, agc_mode = %d, std = %d, if_lvl = %d, rfagc_top = 0x%02x\n",
                (char *)"dvbt 8", (int )std->dvbt_8.if_freq, (int )std->dvbt_8.agc_mode,
                (int )std->dvbt_8.std, (int )std->dvbt_8.if_lvl, (int )std->dvbt_8.rfagc_top);
  } else {
  }
  if (tda18271_debug & 1) {
    _tda_printk(priv, "\017", "tda18271_dump_std_map", "(%s) if_freq = %d, agc_mode = %d, std = %d, if_lvl = %d, rfagc_top = 0x%02x\n",
                (char *)"qam 6 ", (int )std->qam_6.if_freq, (int )std->qam_6.agc_mode,
                (int )std->qam_6.std, (int )std->qam_6.if_lvl, (int )std->qam_6.rfagc_top);
  } else {
  }
  if (tda18271_debug & 1) {
    _tda_printk(priv, "\017", "tda18271_dump_std_map", "(%s) if_freq = %d, agc_mode = %d, std = %d, if_lvl = %d, rfagc_top = 0x%02x\n",
                (char *)"qam 8 ", (int )std->qam_8.if_freq, (int )std->qam_8.agc_mode,
                (int )std->qam_8.std, (int )std->qam_8.if_lvl, (int )std->qam_8.rfagc_top);
  } else {
  }
  return (0);
}
}
static int tda18271_update_std_map(struct dvb_frontend *fe , struct tda18271_std_map *map )
{
  struct tda18271_priv *priv ;
  struct tda18271_std_map *std ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  size_t __len___1 ;
  void *__ret___1 ;
  size_t __len___2 ;
  void *__ret___2 ;
  size_t __len___3 ;
  void *__ret___3 ;
  size_t __len___4 ;
  void *__ret___4 ;
  size_t __len___5 ;
  void *__ret___5 ;
  size_t __len___6 ;
  void *__ret___6 ;
  size_t __len___7 ;
  void *__ret___7 ;
  size_t __len___8 ;
  void *__ret___8 ;
  size_t __len___9 ;
  void *__ret___9 ;
  size_t __len___10 ;
  void *__ret___10 ;
  size_t __len___11 ;
  void *__ret___11 ;
  size_t __len___12 ;
  void *__ret___12 ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  std = & priv->std;
  if ((unsigned long )map == (unsigned long )((struct tda18271_std_map *)0)) {
    return (-22);
  } else {
  }
  if (((((int )map->fm_radio.if_freq + (int )map->fm_radio.agc_mode) + (int )map->fm_radio.std) + (int )map->fm_radio.if_lvl) + (int )map->fm_radio.rfagc_top > 0) {
    if (tda18271_debug & 1) {
      _tda_printk(priv, "\017", "tda18271_update_std_map", "Using custom std config for %s\n",
                  (char *)"fm");
    } else {
    }
    __len = 4UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& std->fm_radio), (void const *)(& map->fm_radio),
                       __len);
    } else {
      __ret = __builtin_memcpy((void *)(& std->fm_radio), (void const *)(& map->fm_radio),
                               __len);
    }
  } else {
  }
  if (((((int )map->atv_b.if_freq + (int )map->atv_b.agc_mode) + (int )map->atv_b.std) + (int )map->atv_b.if_lvl) + (int )map->atv_b.rfagc_top > 0) {
    if (tda18271_debug & 1) {
      _tda_printk(priv, "\017", "tda18271_update_std_map", "Using custom std config for %s\n",
                  (char *)"atv b");
    } else {
    }
    __len___0 = 4UL;
    if (__len___0 > 63UL) {
      __ret___0 = memcpy((void *)(& std->atv_b), (void const *)(& map->atv_b),
                           __len___0);
    } else {
      __ret___0 = __builtin_memcpy((void *)(& std->atv_b), (void const *)(& map->atv_b),
                                   __len___0);
    }
  } else {
  }
  if (((((int )map->atv_dk.if_freq + (int )map->atv_dk.agc_mode) + (int )map->atv_dk.std) + (int )map->atv_dk.if_lvl) + (int )map->atv_dk.rfagc_top > 0) {
    if (tda18271_debug & 1) {
      _tda_printk(priv, "\017", "tda18271_update_std_map", "Using custom std config for %s\n",
                  (char *)"atv dk");
    } else {
    }
    __len___1 = 4UL;
    if (__len___1 > 63UL) {
      __ret___1 = memcpy((void *)(& std->atv_dk), (void const *)(& map->atv_dk),
                           __len___1);
    } else {
      __ret___1 = __builtin_memcpy((void *)(& std->atv_dk), (void const *)(& map->atv_dk),
                                   __len___1);
    }
  } else {
  }
  if (((((int )map->atv_gh.if_freq + (int )map->atv_gh.agc_mode) + (int )map->atv_gh.std) + (int )map->atv_gh.if_lvl) + (int )map->atv_gh.rfagc_top > 0) {
    if (tda18271_debug & 1) {
      _tda_printk(priv, "\017", "tda18271_update_std_map", "Using custom std config for %s\n",
                  (char *)"atv gh");
    } else {
    }
    __len___2 = 4UL;
    if (__len___2 > 63UL) {
      __ret___2 = memcpy((void *)(& std->atv_gh), (void const *)(& map->atv_gh),
                           __len___2);
    } else {
      __ret___2 = __builtin_memcpy((void *)(& std->atv_gh), (void const *)(& map->atv_gh),
                                   __len___2);
    }
  } else {
  }
  if (((((int )map->atv_i.if_freq + (int )map->atv_i.agc_mode) + (int )map->atv_i.std) + (int )map->atv_i.if_lvl) + (int )map->atv_i.rfagc_top > 0) {
    if (tda18271_debug & 1) {
      _tda_printk(priv, "\017", "tda18271_update_std_map", "Using custom std config for %s\n",
                  (char *)"atv i");
    } else {
    }
    __len___3 = 4UL;
    if (__len___3 > 63UL) {
      __ret___3 = memcpy((void *)(& std->atv_i), (void const *)(& map->atv_i),
                           __len___3);
    } else {
      __ret___3 = __builtin_memcpy((void *)(& std->atv_i), (void const *)(& map->atv_i),
                                   __len___3);
    }
  } else {
  }
  if (((((int )map->atv_l.if_freq + (int )map->atv_l.agc_mode) + (int )map->atv_l.std) + (int )map->atv_l.if_lvl) + (int )map->atv_l.rfagc_top > 0) {
    if (tda18271_debug & 1) {
      _tda_printk(priv, "\017", "tda18271_update_std_map", "Using custom std config for %s\n",
                  (char *)"atv l");
    } else {
    }
    __len___4 = 4UL;
    if (__len___4 > 63UL) {
      __ret___4 = memcpy((void *)(& std->atv_l), (void const *)(& map->atv_l),
                           __len___4);
    } else {
      __ret___4 = __builtin_memcpy((void *)(& std->atv_l), (void const *)(& map->atv_l),
                                   __len___4);
    }
  } else {
  }
  if (((((int )map->atv_lc.if_freq + (int )map->atv_lc.agc_mode) + (int )map->atv_lc.std) + (int )map->atv_lc.if_lvl) + (int )map->atv_lc.rfagc_top > 0) {
    if (tda18271_debug & 1) {
      _tda_printk(priv, "\017", "tda18271_update_std_map", "Using custom std config for %s\n",
                  (char *)"atv l\'");
    } else {
    }
    __len___5 = 4UL;
    if (__len___5 > 63UL) {
      __ret___5 = memcpy((void *)(& std->atv_lc), (void const *)(& map->atv_lc),
                           __len___5);
    } else {
      __ret___5 = __builtin_memcpy((void *)(& std->atv_lc), (void const *)(& map->atv_lc),
                                   __len___5);
    }
  } else {
  }
  if (((((int )map->atv_mn.if_freq + (int )map->atv_mn.agc_mode) + (int )map->atv_mn.std) + (int )map->atv_mn.if_lvl) + (int )map->atv_mn.rfagc_top > 0) {
    if (tda18271_debug & 1) {
      _tda_printk(priv, "\017", "tda18271_update_std_map", "Using custom std config for %s\n",
                  (char *)"atv mn");
    } else {
    }
    __len___6 = 4UL;
    if (__len___6 > 63UL) {
      __ret___6 = memcpy((void *)(& std->atv_mn), (void const *)(& map->atv_mn),
                           __len___6);
    } else {
      __ret___6 = __builtin_memcpy((void *)(& std->atv_mn), (void const *)(& map->atv_mn),
                                   __len___6);
    }
  } else {
  }
  if (((((int )map->atsc_6.if_freq + (int )map->atsc_6.agc_mode) + (int )map->atsc_6.std) + (int )map->atsc_6.if_lvl) + (int )map->atsc_6.rfagc_top > 0) {
    if (tda18271_debug & 1) {
      _tda_printk(priv, "\017", "tda18271_update_std_map", "Using custom std config for %s\n",
                  (char *)"atsc 6");
    } else {
    }
    __len___7 = 4UL;
    if (__len___7 > 63UL) {
      __ret___7 = memcpy((void *)(& std->atsc_6), (void const *)(& map->atsc_6),
                           __len___7);
    } else {
      __ret___7 = __builtin_memcpy((void *)(& std->atsc_6), (void const *)(& map->atsc_6),
                                   __len___7);
    }
  } else {
  }
  if (((((int )map->dvbt_6.if_freq + (int )map->dvbt_6.agc_mode) + (int )map->dvbt_6.std) + (int )map->dvbt_6.if_lvl) + (int )map->dvbt_6.rfagc_top > 0) {
    if (tda18271_debug & 1) {
      _tda_printk(priv, "\017", "tda18271_update_std_map", "Using custom std config for %s\n",
                  (char *)"dvbt 6");
    } else {
    }
    __len___8 = 4UL;
    if (__len___8 > 63UL) {
      __ret___8 = memcpy((void *)(& std->dvbt_6), (void const *)(& map->dvbt_6),
                           __len___8);
    } else {
      __ret___8 = __builtin_memcpy((void *)(& std->dvbt_6), (void const *)(& map->dvbt_6),
                                   __len___8);
    }
  } else {
  }
  if (((((int )map->dvbt_7.if_freq + (int )map->dvbt_7.agc_mode) + (int )map->dvbt_7.std) + (int )map->dvbt_7.if_lvl) + (int )map->dvbt_7.rfagc_top > 0) {
    if (tda18271_debug & 1) {
      _tda_printk(priv, "\017", "tda18271_update_std_map", "Using custom std config for %s\n",
                  (char *)"dvbt 7");
    } else {
    }
    __len___9 = 4UL;
    if (__len___9 > 63UL) {
      __ret___9 = memcpy((void *)(& std->dvbt_7), (void const *)(& map->dvbt_7),
                           __len___9);
    } else {
      __ret___9 = __builtin_memcpy((void *)(& std->dvbt_7), (void const *)(& map->dvbt_7),
                                   __len___9);
    }
  } else {
  }
  if (((((int )map->dvbt_8.if_freq + (int )map->dvbt_8.agc_mode) + (int )map->dvbt_8.std) + (int )map->dvbt_8.if_lvl) + (int )map->dvbt_8.rfagc_top > 0) {
    if (tda18271_debug & 1) {
      _tda_printk(priv, "\017", "tda18271_update_std_map", "Using custom std config for %s\n",
                  (char *)"dvbt 8");
    } else {
    }
    __len___10 = 4UL;
    if (__len___10 > 63UL) {
      __ret___10 = memcpy((void *)(& std->dvbt_8), (void const *)(& map->dvbt_8),
                            __len___10);
    } else {
      __ret___10 = __builtin_memcpy((void *)(& std->dvbt_8), (void const *)(& map->dvbt_8),
                                    __len___10);
    }
  } else {
  }
  if (((((int )map->qam_6.if_freq + (int )map->qam_6.agc_mode) + (int )map->qam_6.std) + (int )map->qam_6.if_lvl) + (int )map->qam_6.rfagc_top > 0) {
    if (tda18271_debug & 1) {
      _tda_printk(priv, "\017", "tda18271_update_std_map", "Using custom std config for %s\n",
                  (char *)"qam 6");
    } else {
    }
    __len___11 = 4UL;
    if (__len___11 > 63UL) {
      __ret___11 = memcpy((void *)(& std->qam_6), (void const *)(& map->qam_6),
                            __len___11);
    } else {
      __ret___11 = __builtin_memcpy((void *)(& std->qam_6), (void const *)(& map->qam_6),
                                    __len___11);
    }
  } else {
  }
  if (((((int )map->qam_8.if_freq + (int )map->qam_8.agc_mode) + (int )map->qam_8.std) + (int )map->qam_8.if_lvl) + (int )map->qam_8.rfagc_top > 0) {
    if (tda18271_debug & 1) {
      _tda_printk(priv, "\017", "tda18271_update_std_map", "Using custom std config for %s\n",
                  (char *)"qam 8");
    } else {
    }
    __len___12 = 4UL;
    if (__len___12 > 63UL) {
      __ret___12 = memcpy((void *)(& std->qam_8), (void const *)(& map->qam_8),
                            __len___12);
    } else {
      __ret___12 = __builtin_memcpy((void *)(& std->qam_8), (void const *)(& map->qam_8),
                                    __len___12);
    }
  } else {
  }
  return (0);
}
}
static int tda18271_get_id(struct dvb_frontend *fe )
{
  struct tda18271_priv *priv ;
  unsigned char *regs ;
  char *name ;
  int ret ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  regs = (unsigned char *)(& priv->tda18271_regs);
  ldv_mutex_lock_44(& priv->lock);
  ret = tda18271_read_regs(fe);
  ldv_mutex_unlock_45(& priv->lock);
  if (ret != 0) {
    tmp = i2c_adapter_id(priv->i2c_props.adap);
    printk("\016Error reading device ID @ %d-%04x, bailing out.\n", tmp, (int )priv->i2c_props.addr);
    return (-5);
  } else {
  }
  switch ((int )*regs & 127) {
  case 3:
  name = (char *)"TDA18271HD/C1";
  priv->id = 0;
  goto ldv_25300;
  case 4:
  name = (char *)"TDA18271HD/C2";
  priv->id = 1;
  goto ldv_25300;
  default:
  tmp___0 = i2c_adapter_id(priv->i2c_props.adap);
  printk("\016Unknown device (%i) detected @ %d-%04x, device not supported.\n", (int )*regs,
         tmp___0, (int )priv->i2c_props.addr);
  return (-22);
  }
  ldv_25300:
  tmp___1 = i2c_adapter_id(priv->i2c_props.adap);
  printk("\016%s detected @ %d-%04x\n", name, tmp___1, (int )priv->i2c_props.addr);
  return (0);
}
}
static int tda18271_setup_configuration(struct dvb_frontend *fe , struct tda18271_config *cfg )
{
  struct tda18271_priv *priv ;
  {
  priv = (struct tda18271_priv *)fe->tuner_priv;
  priv->gate = (unsigned long )cfg != (unsigned long )((struct tda18271_config *)0) ? cfg->gate : 0;
  priv->role = (unsigned long )cfg != (unsigned long )((struct tda18271_config *)0) ? cfg->role : 0;
  priv->config = (unsigned long )cfg != (unsigned long )((struct tda18271_config *)0) ? cfg->config : 0U;
  priv->small_i2c = (unsigned long )cfg != (unsigned long )((struct tda18271_config *)0) ? cfg->small_i2c : 0;
  priv->output_opt = (unsigned long )cfg != (unsigned long )((struct tda18271_config *)0) ? cfg->output_opt : 0;
  return (0);
}
}
__inline static int tda18271_need_cal_on_startup(struct tda18271_config *cfg )
{
  {
  return (tda18271_cal_on_startup == -1 ? (unsigned long )cfg != (unsigned long )((struct tda18271_config *)0) && (unsigned int )*((unsigned char *)cfg + 24UL) != 0U : tda18271_cal_on_startup != 0);
}
}
static int tda18271_set_config(struct dvb_frontend *fe , void *priv_cfg )
{
  struct tda18271_config *cfg ;
  int tmp ;
  {
  cfg = (struct tda18271_config *)priv_cfg;
  tda18271_setup_configuration(fe, cfg);
  tmp = tda18271_need_cal_on_startup(cfg);
  if (tmp != 0) {
    tda18271_init(fe);
  } else {
  }
  if ((unsigned long )cfg != (unsigned long )((struct tda18271_config *)0) && (unsigned long )cfg->std_map != (unsigned long )((struct tda18271_std_map *)0)) {
    tda18271_update_std_map(fe, cfg->std_map);
  } else {
  }
  return (0);
}
}
static struct dvb_tuner_ops const tda18271_tuner_ops =
     {{{'N', 'X', 'P', ' ', 'T', 'D', 'A', '1', '8', '2', '7', '1', 'H', 'D', '\000'},
     45000000U, 864000000U, 62500U, 0U, 0U, 0U}, & tda18271_release, & tda18271_init,
    & tda18271_sleep, & tda18271_set_params, & tda18271_set_analog_params, 0, & tda18271_set_config,
    & tda18271_get_frequency, & tda18271_get_bandwidth, & tda18271_get_if_frequency,
    0, 0, 0, 0, 0, 0, 0};
struct dvb_frontend *tda18271_attach(struct dvb_frontend *fe , u8 addr , struct i2c_adapter *i2c ,
                                     struct tda18271_config *cfg )
{
  struct tda18271_priv *priv ;
  int instance ;
  int ret ;
  int __ret ;
  struct list_head const *__mptr ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  struct list_head const *__mptr___0 ;
  void *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  struct lock_class_key __key ;
  int __ret___0 ;
  int __ret___1 ;
  int tmp___6 ;
  int tmp___7 ;
  int __ret___2 ;
  int tmp___8 ;
  size_t __len ;
  void *__ret___3 ;
  {
  priv = 0;
  ldv_mutex_lock_46(& tda18271_list_mutex);
  __ret = 0;
  __mptr = (struct list_head const *)hybrid_tuner_instance_list.next;
  priv = (struct tda18271_priv *)__mptr + 0xffffffffffffffd8UL;
  goto ldv_25333;
  ldv_25332: ;
  if ((unsigned long )i2c != (unsigned long )((struct i2c_adapter *)0) && (unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
    tmp___1 = i2c_adapter_id(priv->i2c_props.adap);
    tmp___2 = i2c_adapter_id(i2c);
    if (tmp___1 == tmp___2 && (int )priv->i2c_props.addr == (int )addr) {
      if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
        tmp = i2c_adapter_id(priv->i2c_props.adap);
        tmp___0 = tmp;
      } else {
        tmp___0 = -1;
      }
      printk("\016%s %d-%04x: attaching existing instance\n", priv->i2c_props.name,
             tmp___0, (int )priv->i2c_props.addr);
      priv->i2c_props.count = priv->i2c_props.count + 1;
      __ret = priv->i2c_props.count;
      goto ldv_25331;
    } else {
    }
  } else {
  }
  __mptr___0 = (struct list_head const *)priv->hybrid_tuner_instance_list.next;
  priv = (struct tda18271_priv *)__mptr___0 + 0xffffffffffffffd8UL;
  ldv_25333: ;
  if ((unsigned long )(& priv->hybrid_tuner_instance_list) != (unsigned long )(& hybrid_tuner_instance_list)) {
    goto ldv_25332;
  } else {
  }
  ldv_25331: ;
  if (__ret == 0) {
    tmp___3 = kzalloc(760UL, 208U);
    priv = (struct tda18271_priv *)tmp___3;
    if ((unsigned long )priv == (unsigned long )((struct tda18271_priv *)0)) {
      goto __fail;
    } else {
    }
    priv->i2c_props.addr = addr;
    priv->i2c_props.adap = i2c;
    priv->i2c_props.name = (char *)"tda18271";
    if ((unsigned long )priv->i2c_props.adap != (unsigned long )((struct i2c_adapter *)0)) {
      tmp___4 = i2c_adapter_id(priv->i2c_props.adap);
      tmp___5 = tmp___4;
    } else {
      tmp___5 = -1;
    }
    printk("\016%s %d-%04x: creating new instance\n", priv->i2c_props.name, tmp___5,
           (int )priv->i2c_props.addr);
    list_add_tail(& priv->hybrid_tuner_instance_list, & hybrid_tuner_instance_list);
    priv->i2c_props.count = priv->i2c_props.count + 1;
    __ret = priv->i2c_props.count;
  } else {
  }
  __fail:
  instance = __ret;
  switch (instance) {
  case 0: ;
  goto fail;
  case 1:
  fe->tuner_priv = (void *)priv;
  tda18271_setup_configuration(fe, cfg);
  priv->cal_initialized = 0U;
  __mutex_init(& priv->lock, "&priv->lock", & __key);
  ret = tda18271_get_id(fe);
  __ret___0 = ret < 0;
  if (__ret___0 != 0) {
    _tda_printk(priv, "\v", "tda18271_attach", "error %d on line %d\n", ret, 1322);
  } else {
  }
  if (__ret___0 != 0) {
    goto fail;
  } else {
  }
  ret = tda18271_assign_map_layout(fe);
  __ret___1 = ret < 0;
  if (__ret___1 != 0) {
    _tda_printk(priv, "\v", "tda18271_attach", "error %d on line %d\n", ret, 1326);
  } else {
  }
  if (__ret___1 != 0) {
    goto fail;
  } else {
  }
  if ((unsigned int )*((unsigned char *)cfg + 24UL) != 0U) {
    tmp___6 = tda18271_need_cal_on_startup(cfg);
    if (tmp___6 == 0) {
      goto ldv_25345;
    } else {
    }
  } else {
  }
  ldv_mutex_lock_47(& priv->lock);
  tda18271_init_regs(fe);
  tmp___7 = tda18271_need_cal_on_startup(cfg);
  if (tmp___7 != 0 && (unsigned int )priv->id == 1U) {
    tda18271c2_rf_cal_init(fe);
  } else {
  }
  ret = tda18271_toggle_output(fe, 1);
  __ret___2 = ret < 0;
  if (__ret___2 != 0) {
    _tda_printk(priv, "\v", "tda18271_attach", "error %d on line %d\n", ret, 1343);
  } else {
  }
  ldv_mutex_unlock_48(& priv->lock);
  goto ldv_25345;
  default:
  fe->tuner_priv = (void *)priv;
  if ((unsigned long )cfg != (unsigned long )((struct tda18271_config *)0)) {
    if ((unsigned int )cfg->gate != 1U) {
      priv->gate = cfg->gate;
    } else {
    }
    if ((unsigned int )cfg->role != 0U) {
      priv->role = cfg->role;
    } else {
    }
    if (cfg->config != 0U) {
      priv->config = cfg->config;
    } else {
    }
    if ((unsigned int )cfg->small_i2c != 0U) {
      priv->small_i2c = cfg->small_i2c;
    } else {
    }
    if ((unsigned int )cfg->output_opt != 0U) {
      priv->output_opt = cfg->output_opt;
    } else {
    }
    if ((unsigned long )cfg->std_map != (unsigned long )((struct tda18271_std_map *)0)) {
      tda18271_update_std_map(fe, cfg->std_map);
    } else {
    }
  } else {
  }
  tmp___8 = tda18271_need_cal_on_startup(cfg);
  if (tmp___8 != 0) {
    tda18271_init(fe);
  } else {
  }
  goto ldv_25345;
  }
  ldv_25345: ;
  if ((unsigned long )cfg != (unsigned long )((struct tda18271_config *)0) && (unsigned long )cfg->std_map != (unsigned long )((struct tda18271_std_map *)0)) {
    tda18271_update_std_map(fe, cfg->std_map);
  } else {
  }
  ldv_mutex_unlock_49(& tda18271_list_mutex);
  __len = 288UL;
  if (__len > 63UL) {
    __ret___3 = memcpy((void *)(& fe->ops.tuner_ops), (void const *)(& tda18271_tuner_ops),
                         __len);
  } else {
    __ret___3 = __builtin_memcpy((void *)(& fe->ops.tuner_ops), (void const *)(& tda18271_tuner_ops),
                                 __len);
  }
  if ((tda18271_debug & 10) != 0) {
    tda18271_dump_std_map(fe);
  } else {
  }
  return (fe);
  fail:
  ldv_mutex_unlock_50(& tda18271_list_mutex);
  tda18271_release(fe);
  return (0);
}
}
extern void ldv_handler_precall(void) ;
int main(void)
{
  struct dvb_frontend *var_group1 ;
  struct analog_parameters *var_group2 ;
  void *var_tda18271_set_config_30_p1 ;
  u32 *var_tda18271_get_frequency_22_p1 ;
  u32 *var_tda18271_get_bandwidth_23_p1 ;
  u32 *var_tda18271_get_if_frequency_24_p1 ;
  int ldv_s_tda18271_tuner_ops_dvb_tuner_ops ;
  int tmp ;
  int tmp___0 ;
  {
  ldv_s_tda18271_tuner_ops_dvb_tuner_ops = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_25400;
  ldv_25399:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_s_tda18271_tuner_ops_dvb_tuner_ops == 0) {
    ldv_handler_precall();
    tda18271_release(var_group1);
    ldv_s_tda18271_tuner_ops_dvb_tuner_ops = 0;
  } else {
  }
  goto ldv_25389;
  case 1:
  ldv_handler_precall();
  tda18271_init(var_group1);
  goto ldv_25389;
  case 2:
  ldv_handler_precall();
  tda18271_sleep(var_group1);
  goto ldv_25389;
  case 3:
  ldv_handler_precall();
  tda18271_set_params(var_group1);
  goto ldv_25389;
  case 4:
  ldv_handler_precall();
  tda18271_set_analog_params(var_group1, var_group2);
  goto ldv_25389;
  case 5:
  ldv_handler_precall();
  tda18271_set_config(var_group1, var_tda18271_set_config_30_p1);
  goto ldv_25389;
  case 6:
  ldv_handler_precall();
  tda18271_get_frequency(var_group1, var_tda18271_get_frequency_22_p1);
  goto ldv_25389;
  case 7:
  ldv_handler_precall();
  tda18271_get_bandwidth(var_group1, var_tda18271_get_bandwidth_23_p1);
  goto ldv_25389;
  case 8:
  ldv_handler_precall();
  tda18271_get_if_frequency(var_group1, var_tda18271_get_if_frequency_24_p1);
  goto ldv_25389;
  default: ;
  goto ldv_25389;
  }
  ldv_25389: ;
  ldv_25400:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0 || ldv_s_tda18271_tuner_ops_dvb_tuner_ops != 0) {
    goto ldv_25399;
  } else {
  }
  ldv_check_final_state();
  return 0;
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
void ldv_mutex_lock_36(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_37(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_38(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_39(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_40(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_41(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_42(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_tda18271_list_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_43(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tda18271_list_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_44(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_45(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_46(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_tda18271_list_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_47(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_48(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_49(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tda18271_list_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_50(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tda18271_list_mutex(ldv_func_arg1);
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
static int ldv_mutex_tda18271_list_mutex ;
int ldv_mutex_lock_interruptible_tda18271_list_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_tda18271_list_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_tda18271_list_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_tda18271_list_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_tda18271_list_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_tda18271_list_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_tda18271_list_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_tda18271_list_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_tda18271_list_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_tda18271_list_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_tda18271_list_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_tda18271_list_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_tda18271_list_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_tda18271_list_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_tda18271_list_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_tda18271_list_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_tda18271_list_mutex == 1) {
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
void ldv_mutex_unlock_tda18271_list_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_tda18271_list_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_tda18271_list_mutex = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_cred_guard_mutex = 1;
  ldv_mutex_lock = 1;
  ldv_mutex_mutex = 1;
  ldv_mutex_tda18271_list_mutex = 1;
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
  if (ldv_mutex_tda18271_list_mutex == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
void __const_udelay(unsigned long arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int __i2c_transfer(struct i2c_adapter *arg0, struct i2c_msg *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void i2c_lock_adapter(struct i2c_adapter *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int i2c_transfer(struct i2c_adapter *arg0, struct i2c_msg *arg1, int arg2) {
  return __VERIFIER_nondet_int();
}
void i2c_unlock_adapter(struct i2c_adapter *arg0) {
  return;
}
void kfree(const void *arg0) {
  return;
}
void ldv_handler_precall() {
  return;
}
void list_del(struct list_head *arg0) {
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
int printk(const char *arg0, ...) {
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
