extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef long long __s64;
typedef unsigned long long __u64;
typedef unsigned char u8;
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
struct cpumask {
   unsigned long bits[64U] ;
};
typedef struct cpumask cpumask_t;
typedef struct cpumask *cpumask_var_t;
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
struct timespec;
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct completion {
   unsigned int done ;
   wait_queue_head_t wait ;
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
struct __anonstruct_ldv_7487_37 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_7489_36 {
   struct __anonstruct_ldv_7487_37 ldv_7487 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_7489_36 ldv_7489 ;
   unsigned char const *name ;
};
struct inode;
struct dentry_operations;
struct super_block;
union __anonunion_d_u_38 {
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
   union __anonunion_d_u_38 d_u ;
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
struct nameidata {
   struct path path ;
   struct qstr last ;
   struct path root ;
   struct inode *inode ;
   unsigned int flags ;
   unsigned int seq ;
   int last_type ;
   unsigned int depth ;
   char *saved_names[9U] ;
};
struct __anonstruct_nodemask_t_39 {
   unsigned long bits[16U] ;
};
typedef struct __anonstruct_nodemask_t_39 nodemask_t;
struct mnt_namespace;
struct vfsmount {
   struct dentry *mnt_root ;
   struct super_block *mnt_sb ;
   int mnt_flags ;
};
struct file_system_type;
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
struct radix_tree_node;
struct radix_tree_root {
   unsigned int height ;
   gfp_t gfp_mask ;
   struct radix_tree_node *rnode ;
};
struct rb_node {
   unsigned long __rb_parent_color ;
   struct rb_node *rb_right ;
   struct rb_node *rb_left ;
};
struct rb_root {
   struct rb_node *rb_node ;
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
struct rw_semaphore;
struct rw_semaphore {
   long count ;
   raw_spinlock_t wait_lock ;
   struct list_head wait_list ;
   struct lockdep_map dep_map ;
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
struct __anonstruct_mm_context_t_105 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_105 mm_context_t;
struct vm_area_struct;
struct block_device;
struct io_context;
struct export_operations;
struct iovec;
struct kiocb;
struct kobject;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct cred;
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
union __anonunion_ldv_12904_132 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_12904_132 ldv_12904 ;
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
struct address_space;
struct writeback_control;
union __anonunion_arg_134 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_133 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_134 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_133 read_descriptor_t;
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
union __anonunion_ldv_13340_135 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_13360_136 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_13376_137 {
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
   union __anonunion_ldv_13340_135 ldv_13340 ;
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
   union __anonunion_ldv_13360_136 ldv_13360 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_13376_137 ldv_13376 ;
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
union __anonunion_f_u_138 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_138 f_u ;
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
struct __anonstruct_afs_140 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_139 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_140 afs ;
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
   union __anonunion_fl_u_139 fl_u ;
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
struct mem_cgroup;
struct __anonstruct_ldv_16331_142 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_16332_141 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_16331_142 ldv_16331 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_16332_141 ldv_16332 ;
};
struct sock;
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
struct nsproxy;
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct user_struct;
struct signal_struct;
struct key_type;
struct keyring_list;
union __anonunion_ldv_17789_145 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_17798_146 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_147 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_148 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_17789_145 ldv_17789 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_17798_146 ldv_17798 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_147 type_data ;
   union __anonunion_payload_148 payload ;
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
union __anonunion_ldv_18077_150 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_18087_154 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_18089_153 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_18087_154 ldv_18087 ;
   int units ;
};
struct __anonstruct_ldv_18091_152 {
   union __anonunion_ldv_18089_153 ldv_18089 ;
   atomic_t _count ;
};
union __anonunion_ldv_18092_151 {
   unsigned long counters ;
   struct __anonstruct_ldv_18091_152 ldv_18091 ;
};
struct __anonstruct_ldv_18093_149 {
   union __anonunion_ldv_18077_150 ldv_18077 ;
   union __anonunion_ldv_18092_151 ldv_18092 ;
};
struct __anonstruct_ldv_18100_156 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_18104_155 {
   struct list_head lru ;
   struct __anonstruct_ldv_18100_156 ldv_18100 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_18109_157 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_18093_149 ldv_18093 ;
   union __anonunion_ldv_18104_155 ldv_18104 ;
   union __anonunion_ldv_18109_157 ldv_18109 ;
   unsigned long debug_flags ;
   int _last_nid ;
};
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct __anonstruct_linear_159 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_158 {
   struct __anonstruct_linear_159 linear ;
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
   union __anonunion_shared_158 shared ;
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
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_160 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_160 sigset_t;
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
struct __anonstruct__kill_162 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_163 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_164 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_165 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_166 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_167 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_168 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_161 {
   int _pad[28U] ;
   struct __anonstruct__kill_162 _kill ;
   struct __anonstruct__timer_163 _timer ;
   struct __anonstruct__rt_164 _rt ;
   struct __anonstruct__sigchld_165 _sigchld ;
   struct __anonstruct__sigfault_166 _sigfault ;
   struct __anonstruct__sigpoll_167 _sigpoll ;
   struct __anonstruct__sigsys_168 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_161 _sifields ;
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
union __anonunion_ki_obj_171 {
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
   union __anonunion_ki_obj_171 ki_obj ;
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
struct ipc_namespace;
struct nsproxy {
   atomic_t count ;
   struct uts_namespace *uts_ns ;
   struct ipc_namespace *ipc_ns ;
   struct mnt_namespace *mnt_ns ;
   struct pid_namespace *pid_ns ;
   struct net *net_ns ;
};
struct fprop_local_percpu {
   struct percpu_counter events ;
   unsigned int period ;
   raw_spinlock_t lock ;
};
enum writeback_sync_modes {
    WB_SYNC_NONE = 0,
    WB_SYNC_ALL = 1
} ;
struct writeback_control {
   long nr_to_write ;
   long pages_skipped ;
   loff_t range_start ;
   loff_t range_end ;
   enum writeback_sync_modes sync_mode ;
   unsigned char for_kupdate : 1 ;
   unsigned char for_background : 1 ;
   unsigned char tagged_writepages : 1 ;
   unsigned char for_reclaim : 1 ;
   unsigned char range_cyclic : 1 ;
};
struct bdi_writeback;
typedef int congested_fn(void * , int );
struct bdi_writeback {
   struct backing_dev_info *bdi ;
   unsigned int nr ;
   unsigned long last_old_flush ;
   unsigned long last_active ;
   struct task_struct *task ;
   struct timer_list wakeup_timer ;
   struct list_head b_dirty ;
   struct list_head b_io ;
   struct list_head b_more_io ;
   spinlock_t list_lock ;
};
struct backing_dev_info {
   struct list_head bdi_list ;
   unsigned long ra_pages ;
   unsigned long state ;
   unsigned int capabilities ;
   congested_fn *congested_fn ;
   void *congested_data ;
   char *name ;
   struct percpu_counter bdi_stat[4U] ;
   unsigned long bw_time_stamp ;
   unsigned long dirtied_stamp ;
   unsigned long written_stamp ;
   unsigned long write_bandwidth ;
   unsigned long avg_write_bandwidth ;
   unsigned long dirty_ratelimit ;
   unsigned long balanced_dirty_ratelimit ;
   struct fprop_local_percpu completions ;
   int dirty_exceeded ;
   unsigned int min_ratio ;
   unsigned int max_ratio ;
   unsigned int max_prop_frac ;
   struct bdi_writeback wb ;
   spinlock_t wb_lock ;
   struct list_head work_list ;
   struct device *dev ;
   struct timer_list laptop_mode_wb_timer ;
   struct dentry *debug_dir ;
   struct dentry *debug_stats ;
};
struct ecryptfs_crypt_stat;
struct ecryptfs_mount_crypt_stat;
struct crypto_blkcipher;
struct crypto_hash;
struct ecryptfs_crypt_stat {
   u32 flags ;
   unsigned int file_version ;
   size_t iv_bytes ;
   size_t metadata_size ;
   size_t extent_size ;
   size_t key_size ;
   size_t extent_shift ;
   unsigned int extent_mask ;
   struct ecryptfs_mount_crypt_stat *mount_crypt_stat ;
   struct crypto_blkcipher *tfm ;
   struct crypto_hash *hash_tfm ;
   unsigned char cipher[32U] ;
   unsigned char key[64U] ;
   unsigned char root_iv[16U] ;
   struct list_head keysig_list ;
   struct mutex keysig_list_mutex ;
   struct mutex cs_tfm_mutex ;
   struct mutex cs_hash_tfm_mutex ;
   struct mutex cs_mutex ;
};
struct ecryptfs_inode_info {
   struct inode vfs_inode ;
   struct inode *wii_inode ;
   struct mutex lower_file_mutex ;
   atomic_t lower_file_count ;
   struct file *lower_file ;
   struct ecryptfs_crypt_stat crypt_stat ;
};
struct ecryptfs_dentry_info {
   struct path lower_path ;
   struct ecryptfs_crypt_stat *crypt_stat ;
};
struct ecryptfs_mount_crypt_stat {
   u32 flags ;
   struct list_head global_auth_tok_list ;
   struct mutex global_auth_tok_list_mutex ;
   size_t global_default_cipher_key_size ;
   size_t global_default_fn_cipher_key_bytes ;
   unsigned char global_default_cipher_name[33U] ;
   unsigned char global_default_fn_cipher_name[33U] ;
   char global_default_fnek_sig[17U] ;
};
enum hrtimer_restart;
struct poll_table_struct {
   void (*_qproc)(struct file * , wait_queue_head_t * , struct poll_table_struct * ) ;
   unsigned long _key ;
};
typedef s32 compat_long_t;
typedef u32 compat_uptr_t;
struct compat_robust_list {
   compat_uptr_t next ;
};
struct compat_robust_list_head {
   struct compat_robust_list list ;
   compat_long_t futex_offset ;
   compat_uptr_t list_op_pending ;
};
struct ecryptfs_sb_info {
   struct super_block *wsi_sb ;
   struct ecryptfs_mount_crypt_stat mount_crypt_stat ;
   struct backing_dev_info bdi ;
};
struct ecryptfs_file_info {
   struct file *wfi_file ;
   struct ecryptfs_crypt_stat *crypt_stat ;
};
struct ecryptfs_getdents_callback {
   void *dirent ;
   struct dentry *dentry ;
   int (*filldir)(void * , char const * , int , loff_t , u64 , unsigned int ) ;
   int filldir_called ;
   int entries_written ;
};
typedef u64 dma_addr_t;
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
union __anonunion_ldv_6497_31 {
   struct __anonstruct_futex_32 futex ;
   struct __anonstruct_nanosleep_33 nanosleep ;
   struct __anonstruct_poll_34 poll ;
};
struct restart_block {
   long (*fn)(struct restart_block * ) ;
   union __anonunion_ldv_6497_31 ldv_6497 ;
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
enum hrtimer_restart;
struct scatterlist;
struct crypto_ablkcipher;
struct crypto_async_request;
struct crypto_aead;
struct crypto_rng;
struct crypto_tfm;
struct crypto_type;
struct aead_givcrypt_request;
struct skcipher_givcrypt_request;
struct crypto_async_request {
   struct list_head list ;
   void (*complete)(struct crypto_async_request * , int ) ;
   void *data ;
   struct crypto_tfm *tfm ;
   u32 flags ;
};
struct ablkcipher_request {
   struct crypto_async_request base ;
   unsigned int nbytes ;
   void *info ;
   struct scatterlist *src ;
   struct scatterlist *dst ;
   void *__ctx[] ;
};
struct aead_request {
   struct crypto_async_request base ;
   unsigned int assoclen ;
   unsigned int cryptlen ;
   u8 *iv ;
   struct scatterlist *assoc ;
   struct scatterlist *src ;
   struct scatterlist *dst ;
   void *__ctx[] ;
};
struct blkcipher_desc {
   struct crypto_blkcipher *tfm ;
   void *info ;
   u32 flags ;
};
struct hash_desc {
   struct crypto_hash *tfm ;
   u32 flags ;
};
struct ablkcipher_alg {
   int (*setkey)(struct crypto_ablkcipher * , u8 const * , unsigned int ) ;
   int (*encrypt)(struct ablkcipher_request * ) ;
   int (*decrypt)(struct ablkcipher_request * ) ;
   int (*givencrypt)(struct skcipher_givcrypt_request * ) ;
   int (*givdecrypt)(struct skcipher_givcrypt_request * ) ;
   char const *geniv ;
   unsigned int min_keysize ;
   unsigned int max_keysize ;
   unsigned int ivsize ;
};
struct aead_alg {
   int (*setkey)(struct crypto_aead * , u8 const * , unsigned int ) ;
   int (*setauthsize)(struct crypto_aead * , unsigned int ) ;
   int (*encrypt)(struct aead_request * ) ;
   int (*decrypt)(struct aead_request * ) ;
   int (*givencrypt)(struct aead_givcrypt_request * ) ;
   int (*givdecrypt)(struct aead_givcrypt_request * ) ;
   char const *geniv ;
   unsigned int ivsize ;
   unsigned int maxauthsize ;
};
struct blkcipher_alg {
   int (*setkey)(struct crypto_tfm * , u8 const * , unsigned int ) ;
   int (*encrypt)(struct blkcipher_desc * , struct scatterlist * , struct scatterlist * ,
                  unsigned int ) ;
   int (*decrypt)(struct blkcipher_desc * , struct scatterlist * , struct scatterlist * ,
                  unsigned int ) ;
   char const *geniv ;
   unsigned int min_keysize ;
   unsigned int max_keysize ;
   unsigned int ivsize ;
};
struct cipher_alg {
   unsigned int cia_min_keysize ;
   unsigned int cia_max_keysize ;
   int (*cia_setkey)(struct crypto_tfm * , u8 const * , unsigned int ) ;
   void (*cia_encrypt)(struct crypto_tfm * , u8 * , u8 const * ) ;
   void (*cia_decrypt)(struct crypto_tfm * , u8 * , u8 const * ) ;
};
struct compress_alg {
   int (*coa_compress)(struct crypto_tfm * , u8 const * , unsigned int , u8 * ,
                       unsigned int * ) ;
   int (*coa_decompress)(struct crypto_tfm * , u8 const * , unsigned int , u8 * ,
                         unsigned int * ) ;
};
struct rng_alg {
   int (*rng_make_random)(struct crypto_rng * , u8 * , unsigned int ) ;
   int (*rng_reset)(struct crypto_rng * , u8 * , unsigned int ) ;
   unsigned int seedsize ;
};
union __anonunion_cra_u_155 {
   struct ablkcipher_alg ablkcipher ;
   struct aead_alg aead ;
   struct blkcipher_alg blkcipher ;
   struct cipher_alg cipher ;
   struct compress_alg compress ;
   struct rng_alg rng ;
};
struct crypto_alg {
   struct list_head cra_list ;
   struct list_head cra_users ;
   u32 cra_flags ;
   unsigned int cra_blocksize ;
   unsigned int cra_ctxsize ;
   unsigned int cra_alignmask ;
   int cra_priority ;
   atomic_t cra_refcnt ;
   char cra_name[64U] ;
   char cra_driver_name[64U] ;
   struct crypto_type const *cra_type ;
   union __anonunion_cra_u_155 cra_u ;
   int (*cra_init)(struct crypto_tfm * ) ;
   void (*cra_exit)(struct crypto_tfm * ) ;
   void (*cra_destroy)(struct crypto_alg * ) ;
   struct module *cra_module ;
};
struct ablkcipher_tfm {
   int (*setkey)(struct crypto_ablkcipher * , u8 const * , unsigned int ) ;
   int (*encrypt)(struct ablkcipher_request * ) ;
   int (*decrypt)(struct ablkcipher_request * ) ;
   int (*givencrypt)(struct skcipher_givcrypt_request * ) ;
   int (*givdecrypt)(struct skcipher_givcrypt_request * ) ;
   struct crypto_ablkcipher *base ;
   unsigned int ivsize ;
   unsigned int reqsize ;
};
struct aead_tfm {
   int (*setkey)(struct crypto_aead * , u8 const * , unsigned int ) ;
   int (*encrypt)(struct aead_request * ) ;
   int (*decrypt)(struct aead_request * ) ;
   int (*givencrypt)(struct aead_givcrypt_request * ) ;
   int (*givdecrypt)(struct aead_givcrypt_request * ) ;
   struct crypto_aead *base ;
   unsigned int ivsize ;
   unsigned int authsize ;
   unsigned int reqsize ;
};
struct blkcipher_tfm {
   void *iv ;
   int (*setkey)(struct crypto_tfm * , u8 const * , unsigned int ) ;
   int (*encrypt)(struct blkcipher_desc * , struct scatterlist * , struct scatterlist * ,
                  unsigned int ) ;
   int (*decrypt)(struct blkcipher_desc * , struct scatterlist * , struct scatterlist * ,
                  unsigned int ) ;
};
struct cipher_tfm {
   int (*cit_setkey)(struct crypto_tfm * , u8 const * , unsigned int ) ;
   void (*cit_encrypt_one)(struct crypto_tfm * , u8 * , u8 const * ) ;
   void (*cit_decrypt_one)(struct crypto_tfm * , u8 * , u8 const * ) ;
};
struct hash_tfm {
   int (*init)(struct hash_desc * ) ;
   int (*update)(struct hash_desc * , struct scatterlist * , unsigned int ) ;
   int (*final)(struct hash_desc * , u8 * ) ;
   int (*digest)(struct hash_desc * , struct scatterlist * , unsigned int , u8 * ) ;
   int (*setkey)(struct crypto_hash * , u8 const * , unsigned int ) ;
   unsigned int digestsize ;
};
struct compress_tfm {
   int (*cot_compress)(struct crypto_tfm * , u8 const * , unsigned int , u8 * ,
                       unsigned int * ) ;
   int (*cot_decompress)(struct crypto_tfm * , u8 const * , unsigned int , u8 * ,
                         unsigned int * ) ;
};
struct rng_tfm {
   int (*rng_gen_random)(struct crypto_rng * , u8 * , unsigned int ) ;
   int (*rng_reset)(struct crypto_rng * , u8 * , unsigned int ) ;
};
union __anonunion_crt_u_156 {
   struct ablkcipher_tfm ablkcipher ;
   struct aead_tfm aead ;
   struct blkcipher_tfm blkcipher ;
   struct cipher_tfm cipher ;
   struct hash_tfm hash ;
   struct compress_tfm compress ;
   struct rng_tfm rng ;
};
struct crypto_tfm {
   u32 crt_flags ;
   union __anonunion_crt_u_156 crt_u ;
   void (*exit)(struct crypto_tfm * ) ;
   struct crypto_alg *__crt_alg ;
   void *__crt_ctx[] ;
};
struct crypto_ablkcipher {
   struct crypto_tfm base ;
};
struct crypto_aead {
   struct crypto_tfm base ;
};
struct crypto_blkcipher {
   struct crypto_tfm base ;
};
struct crypto_hash {
   struct crypto_tfm base ;
};
struct crypto_rng {
   struct crypto_tfm base ;
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
struct scatterlist {
   unsigned long sg_magic ;
   unsigned long page_link ;
   unsigned int offset ;
   unsigned int length ;
   dma_addr_t dma_address ;
   unsigned int dma_length ;
};
struct __va_list_tag;
typedef struct __va_list_tag __va_list_tag;
typedef __builtin_va_list __gnuc_va_list[1U];
typedef __gnuc_va_list va_list[1U];
typedef short s16;
typedef void (*ctor_fn_t)(void);
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct static_key;
enum hrtimer_restart;
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
struct kobj_attribute {
   struct attribute attr ;
   ssize_t (*show)(struct kobject * , struct kobj_attribute * , char * ) ;
   ssize_t (*store)(struct kobject * , struct kobj_attribute * , char const * ,
                    size_t ) ;
};
struct kernel_param;
struct kernel_param_ops {
   int (*set)(char const * , struct kernel_param const * ) ;
   int (*get)(char * , struct kernel_param const * ) ;
   void (*free)(void * ) ;
};
struct kparam_string;
struct kparam_array;
union __anonunion_ldv_14548_137 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_14548_137 ldv_14548 ;
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
struct exception_table_entry {
   int insn ;
   int fixup ;
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
struct sg_table {
   struct scatterlist *sgl ;
   unsigned int nents ;
   unsigned int orig_nents ;
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
struct match_token {
   int token ;
   char const *pattern ;
};
struct __anonstruct_substring_t_173 {
   char *from ;
   char *to ;
};
typedef struct __anonstruct_substring_t_173 substring_t;
struct ecryptfs_session_key {
   u32 flags ;
   u32 encrypted_key_size ;
   u32 decrypted_key_size ;
   u8 encrypted_key[512U] ;
   u8 decrypted_key[64U] ;
};
struct ecryptfs_password {
   u32 password_bytes ;
   s32 hash_algo ;
   u32 hash_iterations ;
   u32 session_key_encryption_key_bytes ;
   u32 flags ;
   u8 session_key_encryption_key[64U] ;
   u8 signature[17U] ;
   u8 salt[8U] ;
};
struct ecryptfs_private_key {
   u32 key_size ;
   u32 data_len ;
   u8 signature[17U] ;
   char pki_type[17U] ;
   u8 data[] ;
};
union __anonunion_token_187 {
   struct ecryptfs_password password ;
   struct ecryptfs_private_key private_key ;
};
struct ecryptfs_auth_tok {
   u16 version ;
   u16 token_type ;
   u32 flags ;
   struct ecryptfs_session_key session_key ;
   u8 reserved[32U] ;
   union __anonunion_token_187 token ;
};
struct ecryptfs_global_auth_tok {
   u32 flags ;
   struct list_head mount_crypt_stat_list ;
   struct key *global_auth_tok_key ;
   unsigned char sig[17U] ;
};
struct ecryptfs_key_tfm {
   struct crypto_blkcipher *key_tfm ;
   size_t key_size ;
   struct mutex key_tfm_mutex ;
   struct list_head key_tfm_list ;
   unsigned char cipher_name[33U] ;
};
struct ecryptfs_cache_info {
   struct kmem_cache **cache ;
   char const *name ;
   size_t size ;
   void (*ctor)(void * ) ;
};
typedef int ldv_func_ret_type___2;
typedef int ldv_func_ret_type___8;
struct __anonstruct___kernel_fsid_t_5 {
   int val[2U] ;
};
typedef struct __anonstruct___kernel_fsid_t_5 __kernel_fsid_t;
struct seq_operations;
enum hrtimer_restart;
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
struct kstatfs {
   long f_type ;
   long f_bsize ;
   u64 f_blocks ;
   u64 f_bfree ;
   u64 f_bavail ;
   u64 f_files ;
   u64 f_ffree ;
   __kernel_fsid_t f_fsid ;
   long f_namelen ;
   long f_frsize ;
   long f_flags ;
   long f_spare[4U] ;
};
typedef __u64 __be64;
enum hrtimer_restart;
typedef int filler_t(void * , struct page * );
enum hrtimer_restart;
typedef __u16 __be16;
typedef __u32 __be32;
enum hrtimer_restart;
struct ecryptfs_key_sig {
   struct list_head crypt_stat_list ;
   char keysig[17U] ;
};
struct ecryptfs_filename {
   struct list_head crypt_stat_list ;
   u32 flags ;
   u32 seq_no ;
   char *filename ;
   char *encrypted_filename ;
   size_t filename_size ;
   size_t encrypted_filename_size ;
   char fnek_sig[16U] ;
   char dentry_name[57U] ;
};
struct ecryptfs_flag_map_elem {
   u32 file_flag ;
   u32 local_flag ;
};
struct ecryptfs_cipher_code_str_map_elem {
   char cipher_str[16U] ;
   u8 cipher_code ;
};
typedef unsigned char __u8;
struct perf_event_attr;
enum hrtimer_restart;
struct ring_buffer;
struct ring_buffer_iter;
struct trace_seq;
struct cgroup_subsys_state;
struct trace_seq {
   unsigned char buffer[4096U] ;
   unsigned int len ;
   unsigned int readpos ;
   int full ;
};
union __anonunion_ldv_22028_170 {
   __u64 sample_period ;
   __u64 sample_freq ;
};
union __anonunion_ldv_22057_171 {
   __u32 wakeup_events ;
   __u32 wakeup_watermark ;
};
union __anonunion_ldv_22062_172 {
   __u64 bp_addr ;
   __u64 config1 ;
};
union __anonunion_ldv_22066_173 {
   __u64 bp_len ;
   __u64 config2 ;
};
struct perf_event_attr {
   __u32 type ;
   __u32 size ;
   __u64 config ;
   union __anonunion_ldv_22028_170 ldv_22028 ;
   __u64 sample_type ;
   __u64 read_format ;
   unsigned char disabled : 1 ;
   unsigned char inherit : 1 ;
   unsigned char pinned : 1 ;
   unsigned char exclusive : 1 ;
   unsigned char exclude_user : 1 ;
   unsigned char exclude_kernel : 1 ;
   unsigned char exclude_hv : 1 ;
   unsigned char exclude_idle : 1 ;
   unsigned char mmap : 1 ;
   unsigned char comm : 1 ;
   unsigned char freq : 1 ;
   unsigned char inherit_stat : 1 ;
   unsigned char enable_on_exec : 1 ;
   unsigned char task : 1 ;
   unsigned char watermark : 1 ;
   unsigned char precise_ip : 2 ;
   unsigned char mmap_data : 1 ;
   unsigned char sample_id_all : 1 ;
   unsigned char exclude_host : 1 ;
   unsigned char exclude_guest : 1 ;
   unsigned char exclude_callchain_kernel : 1 ;
   unsigned char exclude_callchain_user : 1 ;
   unsigned long __reserved_1 : 41 ;
   union __anonunion_ldv_22057_171 ldv_22057 ;
   __u32 bp_type ;
   union __anonunion_ldv_22062_172 ldv_22062 ;
   union __anonunion_ldv_22066_173 ldv_22066 ;
   __u64 branch_sample_type ;
   __u64 sample_regs_user ;
   __u32 sample_stack_user ;
   __u32 __reserved_2 ;
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
struct simple_xattrs {
   struct list_head head ;
   spinlock_t lock ;
};
struct cgroupfs_root;
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
struct __anonstruct_local_t_182 {
   atomic_long_t a ;
};
typedef struct __anonstruct_local_t_182 local_t;
struct __anonstruct_local64_t_183 {
   local_t a ;
};
typedef struct __anonstruct_local64_t_183 local64_t;
struct arch_hw_breakpoint {
   unsigned long address ;
   u8 len ;
   u8 type ;
};
struct pmu;
struct pidmap {
   atomic_t nr_free ;
   void *page ;
};
struct bsd_acct_struct;
struct pid_namespace {
   struct kref kref ;
   struct pidmap pidmap[128U] ;
   int last_pid ;
   int nr_hashed ;
   struct task_struct *child_reaper ;
   struct kmem_cache *pid_cachep ;
   unsigned int level ;
   struct pid_namespace *parent ;
   struct vfsmount *proc_mnt ;
   struct bsd_acct_struct *bacct ;
   struct user_namespace *user_ns ;
   struct work_struct proc_work ;
   kgid_t pid_gid ;
   int hide_pid ;
   int reboot ;
   unsigned int proc_inum ;
};
struct irq_work {
   unsigned long flags ;
   struct llist_node llnode ;
   void (*func)(struct irq_work * ) ;
};
struct perf_callchain_entry {
   __u64 nr ;
   __u64 ip[127U] ;
};
struct perf_raw_record {
   u32 size ;
   void *data ;
};
struct perf_branch_entry {
   __u64 from ;
   __u64 to ;
   unsigned char mispred : 1 ;
   unsigned char predicted : 1 ;
   unsigned long reserved : 62 ;
};
struct perf_branch_stack {
   __u64 nr ;
   struct perf_branch_entry entries[0U] ;
};
struct perf_regs_user {
   __u64 abi ;
   struct pt_regs *regs ;
};
struct hw_perf_event_extra {
   u64 config ;
   unsigned int reg ;
   int alloc ;
   int idx ;
};
struct __anonstruct_ldv_27551_185 {
   u64 config ;
   u64 last_tag ;
   unsigned long config_base ;
   unsigned long event_base ;
   int event_base_rdpmc ;
   int idx ;
   int last_cpu ;
   struct hw_perf_event_extra extra_reg ;
   struct hw_perf_event_extra branch_reg ;
};
struct __anonstruct_ldv_27554_186 {
   struct hrtimer hrtimer ;
};
struct __anonstruct_ldv_27559_187 {
   struct arch_hw_breakpoint info ;
   struct list_head bp_list ;
   struct task_struct *bp_target ;
};
union __anonunion_ldv_27560_184 {
   struct __anonstruct_ldv_27551_185 ldv_27551 ;
   struct __anonstruct_ldv_27554_186 ldv_27554 ;
   struct __anonstruct_ldv_27559_187 ldv_27559 ;
};
struct hw_perf_event {
   union __anonunion_ldv_27560_184 ldv_27560 ;
   int state ;
   local64_t prev_count ;
   u64 sample_period ;
   u64 last_period ;
   local64_t period_left ;
   u64 interrupts_seq ;
   u64 interrupts ;
   u64 freq_time_stamp ;
   u64 freq_count_stamp ;
};
struct perf_cpu_context;
struct pmu {
   struct list_head entry ;
   struct device *dev ;
   struct attribute_group const **attr_groups ;
   char *name ;
   int type ;
   int *pmu_disable_count ;
   struct perf_cpu_context *pmu_cpu_context ;
   int task_ctx_nr ;
   void (*pmu_enable)(struct pmu * ) ;
   void (*pmu_disable)(struct pmu * ) ;
   int (*event_init)(struct perf_event * ) ;
   int (*add)(struct perf_event * , int ) ;
   void (*del)(struct perf_event * , int ) ;
   void (*start)(struct perf_event * , int ) ;
   void (*stop)(struct perf_event * , int ) ;
   void (*read)(struct perf_event * ) ;
   void (*start_txn)(struct pmu * ) ;
   int (*commit_txn)(struct pmu * ) ;
   void (*cancel_txn)(struct pmu * ) ;
   int (*event_idx)(struct perf_event * ) ;
   void (*flush_branch_stack)(void) ;
};
enum perf_event_active_state {
    PERF_EVENT_STATE_ERROR = -2,
    PERF_EVENT_STATE_OFF = -1,
    PERF_EVENT_STATE_INACTIVE = 0,
    PERF_EVENT_STATE_ACTIVE = 1
} ;
struct perf_sample_data;
struct perf_cgroup_info {
   u64 time ;
   u64 timestamp ;
};
struct perf_cgroup {
   struct cgroup_subsys_state css ;
   struct perf_cgroup_info *info ;
};
struct event_filter;
struct perf_event {
   struct list_head group_entry ;
   struct list_head event_entry ;
   struct list_head sibling_list ;
   struct hlist_node hlist_entry ;
   int nr_siblings ;
   int group_flags ;
   struct perf_event *group_leader ;
   struct pmu *pmu ;
   enum perf_event_active_state state ;
   unsigned int attach_state ;
   local64_t count ;
   atomic64_t child_count ;
   u64 total_time_enabled ;
   u64 total_time_running ;
   u64 tstamp_enabled ;
   u64 tstamp_running ;
   u64 tstamp_stopped ;
   u64 shadow_ctx_time ;
   struct perf_event_attr attr ;
   u16 header_size ;
   u16 id_header_size ;
   u16 read_size ;
   struct hw_perf_event hw ;
   struct perf_event_context *ctx ;
   atomic_long_t refcount ;
   atomic64_t child_total_time_enabled ;
   atomic64_t child_total_time_running ;
   struct mutex child_mutex ;
   struct list_head child_list ;
   struct perf_event *parent ;
   int oncpu ;
   int cpu ;
   struct list_head owner_entry ;
   struct task_struct *owner ;
   struct mutex mmap_mutex ;
   atomic_t mmap_count ;
   int mmap_locked ;
   struct user_struct *mmap_user ;
   struct ring_buffer *rb ;
   struct list_head rb_entry ;
   wait_queue_head_t waitq ;
   struct fasync_struct *fasync ;
   int pending_wakeup ;
   int pending_kill ;
   int pending_disable ;
   struct irq_work pending ;
   atomic_t event_limit ;
   void (*destroy)(struct perf_event * ) ;
   struct callback_head callback_head ;
   struct pid_namespace *ns ;
   u64 id ;
   void (*overflow_handler)(struct perf_event * , struct perf_sample_data * , struct pt_regs * ) ;
   void *overflow_handler_context ;
   struct ftrace_event_call *tp_event ;
   struct event_filter *filter ;
   struct perf_cgroup *cgrp ;
   int cgrp_defer_enabled ;
};
enum perf_event_context_type {
    task_context = 0,
    cpu_context = 1
} ;
struct perf_event_context {
   struct pmu *pmu ;
   enum perf_event_context_type type ;
   raw_spinlock_t lock ;
   struct mutex mutex ;
   struct list_head pinned_groups ;
   struct list_head flexible_groups ;
   struct list_head event_list ;
   int nr_events ;
   int nr_active ;
   int is_active ;
   int nr_stat ;
   int nr_freq ;
   int rotate_disable ;
   atomic_t refcount ;
   struct task_struct *task ;
   u64 time ;
   u64 timestamp ;
   struct perf_event_context *parent_ctx ;
   u64 parent_gen ;
   u64 generation ;
   int pin_count ;
   int nr_cgroups ;
   int nr_branch_stack ;
   struct callback_head callback_head ;
};
struct perf_cpu_context {
   struct perf_event_context ctx ;
   struct perf_event_context *task_ctx ;
   int active_oncpu ;
   int exclusive ;
   struct list_head rotation_list ;
   int jiffies_interval ;
   struct pmu *unique_pmu ;
   struct perf_cgroup *cgrp ;
};
struct __anonstruct_tid_entry_188 {
   u32 pid ;
   u32 tid ;
};
struct __anonstruct_cpu_entry_189 {
   u32 cpu ;
   u32 reserved ;
};
struct perf_sample_data {
   u64 type ;
   u64 ip ;
   struct __anonstruct_tid_entry_188 tid_entry ;
   u64 time ;
   u64 addr ;
   u64 id ;
   u64 stream_id ;
   struct __anonstruct_cpu_entry_189 cpu_entry ;
   u64 period ;
   struct perf_callchain_entry *callchain ;
   struct perf_raw_record *raw ;
   struct perf_branch_stack *br_stack ;
   struct perf_regs_user regs_user ;
   u64 stack_user_size ;
};
struct trace_array;
struct tracer;
struct trace_entry {
   unsigned short type ;
   unsigned char flags ;
   unsigned char preempt_count ;
   int pid ;
   int padding ;
};
struct trace_iterator {
   struct trace_array *tr ;
   struct tracer *trace ;
   void *private ;
   int cpu_file ;
   struct mutex mutex ;
   struct ring_buffer_iter **buffer_iter ;
   unsigned long iter_flags ;
   struct trace_seq tmp_seq ;
   struct trace_seq seq ;
   struct trace_entry *ent ;
   unsigned long lost_events ;
   int leftover ;
   int ent_size ;
   int cpu ;
   u64 ts ;
   loff_t pos ;
   long idx ;
   cpumask_var_t started ;
};
struct trace_event;
enum print_line_t;
struct trace_event_functions {
   enum print_line_t (*trace)(struct trace_iterator * , int , struct trace_event * ) ;
   enum print_line_t (*raw)(struct trace_iterator * , int , struct trace_event * ) ;
   enum print_line_t (*hex)(struct trace_iterator * , int , struct trace_event * ) ;
   enum print_line_t (*binary)(struct trace_iterator * , int , struct trace_event * ) ;
};
struct trace_event {
   struct hlist_node node ;
   struct list_head list ;
   int type ;
   struct trace_event_functions *funcs ;
};
enum print_line_t {
    TRACE_TYPE_PARTIAL_LINE = 0,
    TRACE_TYPE_HANDLED = 1,
    TRACE_TYPE_UNHANDLED = 2,
    TRACE_TYPE_NO_CONSUME = 3
} ;
enum trace_reg {
    TRACE_REG_REGISTER = 0,
    TRACE_REG_UNREGISTER = 1,
    TRACE_REG_PERF_REGISTER = 2,
    TRACE_REG_PERF_UNREGISTER = 3,
    TRACE_REG_PERF_OPEN = 4,
    TRACE_REG_PERF_CLOSE = 5,
    TRACE_REG_PERF_ADD = 6,
    TRACE_REG_PERF_DEL = 7
} ;
struct ftrace_event_class {
   char *system ;
   void *probe ;
   void *perf_probe ;
   int (*reg)(struct ftrace_event_call * , enum trace_reg , void * ) ;
   int (*define_fields)(struct ftrace_event_call * ) ;
   struct list_head *(*get_fields)(struct ftrace_event_call * ) ;
   struct list_head fields ;
   int (*raw_init)(struct ftrace_event_call * ) ;
};
struct ftrace_event_call {
   struct list_head list ;
   struct ftrace_event_class *class ;
   char *name ;
   struct dentry *dir ;
   struct trace_event event ;
   char const *print_fmt ;
   struct event_filter *filter ;
   void *mod ;
   void *data ;
   unsigned int flags ;
   int perf_refcount ;
   struct hlist_head *perf_events ;
};
struct user_key_payload {
   struct callback_head rcu ;
   unsigned short datalen ;
   char data[0U] ;
};
struct encrypted_key_payload {
   struct callback_head rcu ;
   char *format ;
   char *master_desc ;
   char *datalen ;
   u8 *iv ;
   u8 *encrypted_data ;
   unsigned short datablob_len ;
   unsigned short decrypted_datalen ;
   unsigned short payload_datalen ;
   unsigned short encrypted_key_format ;
   u8 *decrypted_data ;
   u8 payload_data[0U] ;
};
struct ecryptfs_key_record {
   unsigned char type ;
   size_t enc_key_size ;
   unsigned char sig[8U] ;
   unsigned char enc_key[512U] ;
};
struct ecryptfs_auth_tok_list_item {
   unsigned char encrypted_session_key[64U] ;
   struct list_head list ;
   struct ecryptfs_auth_tok auth_tok ;
};
struct ecryptfs_message {
   u32 index ;
   u32 data_len ;
   u8 data[] ;
};
struct ecryptfs_msg_ctx {
   u8 state ;
   u8 type ;
   u32 index ;
   u32 counter ;
   size_t msg_size ;
   struct ecryptfs_message *msg ;
   struct task_struct *task ;
   struct list_head node ;
   struct list_head daemon_out_list ;
   struct mutex mux ;
};
struct ecryptfs_write_tag_70_packet_silly_stack {
   u8 cipher_code ;
   size_t max_packet_size ;
   size_t packet_size_len ;
   size_t block_aligned_filename_size ;
   size_t block_size ;
   size_t i ;
   size_t j ;
   size_t num_rand_bytes ;
   struct mutex *tfm_mutex ;
   char *block_aligned_filename ;
   struct ecryptfs_auth_tok *auth_tok ;
   struct scatterlist src_sg[2U] ;
   struct scatterlist dst_sg[2U] ;
   struct blkcipher_desc desc ;
   char iv[16U] ;
   char hash[16U] ;
   char tmp_hash[16U] ;
   struct hash_desc hash_desc ;
   struct scatterlist hash_sg ;
};
struct ecryptfs_parse_tag_70_packet_silly_stack {
   u8 cipher_code ;
   size_t max_packet_size ;
   size_t packet_size_len ;
   size_t parsed_tag_70_packet_size ;
   size_t block_aligned_filename_size ;
   size_t block_size ;
   size_t i ;
   struct mutex *tfm_mutex ;
   char *decrypted_filename ;
   struct ecryptfs_auth_tok *auth_tok ;
   struct scatterlist src_sg[2U] ;
   struct scatterlist dst_sg[2U] ;
   struct blkcipher_desc desc ;
   char fnek_sig_hex[17U] ;
   char iv[16U] ;
   char cipher_string[32U] ;
};
typedef int ldv_func_ret_type___4;
enum hrtimer_restart;
struct uid_gid_extent {
   u32 first ;
   u32 lower_first ;
   u32 count ;
};
struct uid_gid_map {
   u32 nr_extents ;
   struct uid_gid_extent extent[5U] ;
};
struct user_namespace {
   struct uid_gid_map uid_map ;
   struct uid_gid_map gid_map ;
   struct uid_gid_map projid_map ;
   struct kref kref ;
   struct user_namespace *parent ;
   kuid_t owner ;
   kgid_t group ;
   unsigned int proc_inum ;
};
struct ecryptfs_daemon {
   u32 flags ;
   u32 num_queued_msg_ctx ;
   struct file *file ;
   struct mutex mux ;
   struct list_head msg_ctx_out_queue ;
   wait_queue_head_t wait ;
   struct hlist_node euid_chain ;
};
typedef int ldv_func_ret_type___3;
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
enum hrtimer_restart;
struct miscdevice {
   int minor ;
   char const *name ;
   struct file_operations const *fops ;
   struct list_head list ;
   struct device *parent ;
   struct device *this_device ;
   char const *nodename ;
   umode_t mode ;
};
struct pollfd {
   int fd ;
   short events ;
   short revents ;
};
typedef struct poll_table_struct poll_table;
enum hrtimer_restart;
struct ecryptfs_open_req {
   struct file **lower_file ;
   struct path path ;
   struct completion done ;
   struct list_head kthread_ctl_list ;
};
struct ecryptfs_kthread_ctl {
   u32 flags ;
   struct mutex mux ;
   struct list_head req_list ;
   wait_queue_head_t wait ;
};
enum hrtimer_restart;
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_4(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
extern void dput(struct dentry * ) ;
extern void mntput(struct vfsmount * ) ;
extern void fsstack_copy_attr_all(struct inode * , struct inode const * ) ;
extern void kmem_cache_free(struct kmem_cache * , void * ) ;
__inline static struct ecryptfs_inode_info *ecryptfs_inode_to_private(struct inode *inode )
{
  struct inode const *__mptr ;
  {
  __mptr = (struct inode const *)inode;
  return ((struct ecryptfs_inode_info *)__mptr);
}
}
__inline static struct inode *ecryptfs_inode_to_lower(struct inode *inode )
{
  struct ecryptfs_inode_info *tmp ;
  {
  tmp = ecryptfs_inode_to_private(inode);
  return (tmp->wii_inode);
}
}
__inline static struct ecryptfs_dentry_info *ecryptfs_dentry_to_private(struct dentry *dentry )
{
  {
  return ((struct ecryptfs_dentry_info *)dentry->d_fsdata);
}
}
__inline static struct dentry *ecryptfs_dentry_to_lower(struct dentry *dentry )
{
  {
  return (((struct ecryptfs_dentry_info *)dentry->d_fsdata)->lower_path.dentry);
}
}
__inline static struct vfsmount *ecryptfs_dentry_to_lower_mnt(struct dentry *dentry )
{
  {
  return (((struct ecryptfs_dentry_info *)dentry->d_fsdata)->lower_path.mnt);
}
}
struct dentry_operations const ecryptfs_dops ;
struct kmem_cache *ecryptfs_dentry_info_cache ;
static int ecryptfs_d_revalidate(struct dentry *dentry , unsigned int flags )
{
  struct dentry *lower_dentry ;
  struct vfsmount *lower_mnt ;
  int rc ;
  struct inode *lower_inode ;
  struct inode *tmp ;
  {
  rc = 1;
  if ((flags & 64U) != 0U) {
    return (-10);
  } else {
  }
  lower_dentry = ecryptfs_dentry_to_lower(dentry);
  lower_mnt = ecryptfs_dentry_to_lower_mnt(dentry);
  if ((unsigned long )lower_dentry->d_op == (unsigned long )((struct dentry_operations const *)0) || (unsigned long )(lower_dentry->d_op)->d_revalidate == (unsigned long )((int (* )(struct dentry * ,
                                                                                                                                                                                                   unsigned int ))0)) {
    goto out;
  } else {
  }
  rc = (*((lower_dentry->d_op)->d_revalidate))(lower_dentry, flags);
  if ((unsigned long )dentry->d_inode != (unsigned long )((struct inode *)0)) {
    tmp = ecryptfs_inode_to_lower(dentry->d_inode);
    lower_inode = tmp;
    fsstack_copy_attr_all(dentry->d_inode, (struct inode const *)lower_inode);
  } else {
  }
  out: ;
  return (rc);
}
}
static void ecryptfs_d_release(struct dentry *dentry )
{
  struct dentry *tmp ;
  struct vfsmount *tmp___0 ;
  struct dentry *tmp___1 ;
  struct ecryptfs_dentry_info *tmp___2 ;
  struct ecryptfs_dentry_info *tmp___3 ;
  {
  tmp___3 = ecryptfs_dentry_to_private(dentry);
  if ((unsigned long )tmp___3 != (unsigned long )((struct ecryptfs_dentry_info *)0)) {
    tmp___1 = ecryptfs_dentry_to_lower(dentry);
    if ((unsigned long )tmp___1 != (unsigned long )((struct dentry *)0)) {
      tmp = ecryptfs_dentry_to_lower(dentry);
      dput(tmp);
      tmp___0 = ecryptfs_dentry_to_lower_mnt(dentry);
      mntput(tmp___0);
    } else {
    }
    tmp___2 = ecryptfs_dentry_to_private(dentry);
    kmem_cache_free(ecryptfs_dentry_info_cache, (void *)tmp___2);
  } else {
  }
  return;
}
}
struct dentry_operations const ecryptfs_dops =
     {& ecryptfs_d_revalidate, 0, 0, 0, & ecryptfs_d_release, 0, 0, 0, 0, 0};
void ldv_check_final_state(void) ;
void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
void ldv_main0_sequence_infinite_withcheck_stateful(void)
{
  struct dentry *var_group1 ;
  unsigned int var_ecryptfs_d_revalidate_0_p1 ;
  int tmp ;
  int tmp___0 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_24676;
  ldv_24675:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_handler_precall();
  ecryptfs_d_revalidate(var_group1, var_ecryptfs_d_revalidate_0_p1);
  goto ldv_24672;
  case 1:
  ldv_handler_precall();
  ecryptfs_d_release(var_group1);
  goto ldv_24672;
  default: ;
  goto ldv_24672;
  }
  ldv_24672: ;
  ldv_24676:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    goto ldv_24675;
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
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_4(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern int printk(char const * , ...) ;
extern void *memset(void * , int , size_t ) ;
void ldv_mutex_unlock_10(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_12(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_9(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_11(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_13(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_cs_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_cs_mutex(struct mutex *lock ) ;
__inline static loff_t i_size_read(struct inode const *inode )
{
  {
  return ((loff_t )inode->i_size);
}
}
extern void touch_atime(struct path * ) ;
extern int filemap_write_and_wait(struct address_space * ) ;
extern int vfs_fsync(struct file * , int ) ;
extern loff_t default_llseek(struct file * , loff_t , int ) ;
extern int generic_file_mmap(struct file * , struct vm_area_struct * ) ;
extern ssize_t generic_file_aio_read(struct kiocb * , struct iovec const * , unsigned long ,
                                     loff_t ) ;
extern ssize_t generic_file_aio_write(struct kiocb * , struct iovec const * , unsigned long ,
                                      loff_t ) ;
extern ssize_t do_sync_read(struct file * , char * , size_t , loff_t * ) ;
extern ssize_t do_sync_write(struct file * , char const * , size_t , loff_t * ) ;
extern ssize_t generic_file_splice_read(struct file * , loff_t * , struct pipe_inode_info * ,
                                        size_t , unsigned int ) ;
extern loff_t generic_file_llseek(struct file * , loff_t , int ) ;
extern int vfs_readdir(struct file * , int (*)(void * , char const * , int , loff_t ,
                                               u64 , unsigned int ) , void * ) ;
extern ssize_t generic_read_dir(struct file * , char * , size_t , loff_t * ) ;
extern void kfree(void const * ) ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
__inline static void *kmem_cache_zalloc(struct kmem_cache *k , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmem_cache_alloc(k, flags | 32768U);
  return (tmp);
}
}
extern ssize_t wait_on_sync_kiocb(struct kiocb * ) ;
__inline static void fsstack_copy_attr_atime(struct inode *dest , struct inode const *src )
{
  {
  dest->i_atime = src->i_atime;
  return;
}
}
__inline static struct ecryptfs_file_info *ecryptfs_file_to_private(struct file *file )
{
  {
  return ((struct ecryptfs_file_info *)file->private_data);
}
}
__inline static void ecryptfs_set_file_private(struct file *file , struct ecryptfs_file_info *file_info )
{
  {
  file->private_data = (void *)file_info;
  return;
}
}
__inline static struct file *ecryptfs_file_to_lower(struct file *file )
{
  {
  return (((struct ecryptfs_file_info *)file->private_data)->wfi_file);
}
}
__inline static void ecryptfs_set_file_lower(struct file *file , struct file *lower_file )
{
  {
  ((struct ecryptfs_file_info *)file->private_data)->wfi_file = lower_file;
  return;
}
}
__inline static struct ecryptfs_sb_info *ecryptfs_superblock_to_private(struct super_block *sb )
{
  {
  return ((struct ecryptfs_sb_info *)sb->s_fs_info);
}
}
void __ecryptfs_printk(char const *fmt , ...) ;
struct file_operations const ecryptfs_main_fops ;
struct file_operations const ecryptfs_dir_fops ;
struct kmem_cache *ecryptfs_file_info_cache ;
int ecryptfs_initialize_file(struct dentry *ecryptfs_dentry , struct inode *ecryptfs_inode ) ;
int ecryptfs_decode_and_decrypt_filename(char **plaintext_name , size_t *plaintext_name_size ,
                                         struct dentry *ecryptfs_dir_dentry , char const *name ,
                                         size_t name_size ) ;
int ecryptfs_read_metadata(struct dentry *ecryptfs_dentry ) ;
int ecryptfs_get_lower_file(struct dentry *dentry , struct inode *inode ) ;
void ecryptfs_put_lower_file(struct inode *inode ) ;
static ssize_t ecryptfs_read_update_atime(struct kiocb *iocb , struct iovec const *iov ,
                                          unsigned long nr_segs , loff_t pos )
{
  ssize_t rc ;
  struct path lower ;
  struct file *file ;
  {
  file = iocb->ki_filp;
  rc = generic_file_aio_read(iocb, iov, nr_segs, pos);
  if (rc == -529L) {
    rc = wait_on_sync_kiocb(iocb);
  } else {
  }
  if (rc >= 0L) {
    lower.dentry = ecryptfs_dentry_to_lower(file->f_path.dentry);
    lower.mnt = ecryptfs_dentry_to_lower_mnt(file->f_path.dentry);
    touch_atime(& lower);
  } else {
  }
  return (rc);
}
}
static int ecryptfs_filldir(void *dirent , char const *lower_name , int lower_namelen ,
                            loff_t offset , u64 ino , unsigned int d_type )
{
  struct ecryptfs_getdents_callback *buf ;
  size_t name_size ;
  char *name ;
  int rc ;
  {
  buf = (struct ecryptfs_getdents_callback *)dirent;
  buf->filldir_called = buf->filldir_called + 1;
  rc = ecryptfs_decode_and_decrypt_filename(& name, & name_size, buf->dentry, lower_name,
                                            (size_t )lower_namelen);
  if (rc != 0) {
    printk("\v%s: Error attempting to decode and decrypt filename [%s]; rc = [%d]\n",
           "ecryptfs_filldir", lower_name, rc);
    goto out;
  } else {
  }
  rc = (*(buf->filldir))(buf->dirent, (char const *)name, (int )name_size, offset,
                         ino, d_type);
  kfree((void const *)name);
  if (rc >= 0) {
    buf->entries_written = buf->entries_written + 1;
  } else {
  }
  out: ;
  return (rc);
}
}
static int ecryptfs_readdir(struct file *file , void *dirent , int (*filldir)(void * ,
                                                                              char const * ,
                                                                              int ,
                                                                              loff_t ,
                                                                              u64 ,
                                                                              unsigned int ) )
{
  int rc ;
  struct file *lower_file ;
  struct inode *inode ;
  struct ecryptfs_getdents_callback buf ;
  {
  lower_file = ecryptfs_file_to_lower(file);
  lower_file->f_pos = file->f_pos;
  inode = (file->f_path.dentry)->d_inode;
  memset((void *)(& buf), 0, 32UL);
  buf.dirent = dirent;
  buf.dentry = file->f_path.dentry;
  buf.filldir = filldir;
  buf.filldir_called = 0;
  buf.entries_written = 0;
  rc = vfs_readdir(lower_file, & ecryptfs_filldir, (void *)(& buf));
  file->f_pos = lower_file->f_pos;
  if (rc < 0) {
    goto out;
  } else {
  }
  if (buf.filldir_called != 0 && buf.entries_written == 0) {
    goto out;
  } else {
  }
  if (rc >= 0) {
    fsstack_copy_attr_atime(inode, (struct inode const *)(lower_file->f_path.dentry)->d_inode);
  } else {
  }
  out: ;
  return (rc);
}
}
static int read_or_initialize_metadata(struct dentry *dentry )
{
  struct inode *inode ;
  struct ecryptfs_mount_crypt_stat *mount_crypt_stat ;
  struct ecryptfs_crypt_stat *crypt_stat ;
  int rc ;
  struct ecryptfs_inode_info *tmp ;
  struct ecryptfs_sb_info *tmp___0 ;
  struct inode *tmp___1 ;
  loff_t tmp___2 ;
  {
  inode = dentry->d_inode;
  tmp = ecryptfs_inode_to_private(inode);
  crypt_stat = & tmp->crypt_stat;
  tmp___0 = ecryptfs_superblock_to_private(inode->i_sb);
  mount_crypt_stat = & tmp___0->mount_crypt_stat;
  ldv_mutex_lock_13(& crypt_stat->cs_mutex);
  if ((crypt_stat->flags & 2U) != 0U && (crypt_stat->flags & 64U) != 0U) {
    rc = 0;
    goto out;
  } else {
  }
  rc = ecryptfs_read_metadata(dentry);
  if (rc == 0) {
    goto out;
  } else {
  }
  if ((int )mount_crypt_stat->flags & 1) {
    crypt_stat->flags = crypt_stat->flags & 4294950907U;
    rc = 0;
    goto out;
  } else {
  }
  if ((mount_crypt_stat->flags & 2U) == 0U) {
    tmp___1 = ecryptfs_inode_to_lower(inode);
    tmp___2 = i_size_read((struct inode const *)tmp___1);
    if (tmp___2 == 0LL) {
      rc = ecryptfs_initialize_file(dentry, inode);
      if (rc == 0) {
        goto out;
      } else {
      }
    } else {
    }
  } else {
  }
  rc = -5;
  out:
  ldv_mutex_unlock_14(& crypt_stat->cs_mutex);
  return (rc);
}
}
static int ecryptfs_open(struct inode *inode , struct file *file )
{
  int rc ;
  struct ecryptfs_crypt_stat *crypt_stat ;
  struct ecryptfs_mount_crypt_stat *mount_crypt_stat ;
  struct dentry *ecryptfs_dentry ;
  struct dentry *lower_dentry ;
  struct ecryptfs_file_info *file_info ;
  struct ecryptfs_sb_info *tmp ;
  void *tmp___0 ;
  struct ecryptfs_inode_info *tmp___1 ;
  struct ecryptfs_inode_info *tmp___2 ;
  struct ecryptfs_inode_info *tmp___3 ;
  loff_t tmp___4 ;
  struct ecryptfs_file_info *tmp___5 ;
  {
  rc = 0;
  crypt_stat = 0;
  ecryptfs_dentry = file->f_path.dentry;
  tmp = ecryptfs_superblock_to_private(ecryptfs_dentry->d_sb);
  mount_crypt_stat = & tmp->mount_crypt_stat;
  if ((mount_crypt_stat->flags & 4U) != 0U && (((((int )file->f_flags & 1 || (file->f_flags & 2U) != 0U) || (file->f_flags & 64U) != 0U) || (file->f_flags & 512U) != 0U) || (file->f_flags & 1024U) != 0U)) {
    printk("\fMount has encrypted view enabled; files may only be read\n");
    rc = -1;
    goto out;
  } else {
  }
  tmp___0 = kmem_cache_zalloc(ecryptfs_file_info_cache, 208U);
  file_info = (struct ecryptfs_file_info *)tmp___0;
  ecryptfs_set_file_private(file, file_info);
  if ((unsigned long )file_info == (unsigned long )((struct ecryptfs_file_info *)0)) {
    __ecryptfs_printk("\v%s: Error attempting to allocate memory\n", "ecryptfs_open");
    rc = -12;
    goto out;
  } else {
  }
  lower_dentry = ecryptfs_dentry_to_lower(ecryptfs_dentry);
  tmp___1 = ecryptfs_inode_to_private(inode);
  crypt_stat = & tmp___1->crypt_stat;
  ldv_mutex_lock_15(& crypt_stat->cs_mutex);
  if ((crypt_stat->flags & 2U) == 0U) {
    __ecryptfs_printk("\017%s: Setting flags for stat...\n", "ecryptfs_open");
    crypt_stat->flags = crypt_stat->flags | 6U;
  } else {
  }
  ldv_mutex_unlock_16(& crypt_stat->cs_mutex);
  rc = ecryptfs_get_lower_file(ecryptfs_dentry, inode);
  if (rc != 0) {
    printk("\v%s: Error attempting to initialize the lower file for the dentry with name [%s]; rc = [%d]\n",
           "ecryptfs_open", ecryptfs_dentry->d_name.name, rc);
    goto out_free;
  } else {
  }
  tmp___2 = ecryptfs_inode_to_private(inode);
  if (((tmp___2->lower_file)->f_flags & 3U) == 0U && (file->f_flags & 3U) != 0U) {
    rc = -1;
    printk("\f%s: Lower file is RO; eCryptfs file must hence be opened RO\n", "ecryptfs_open");
    goto out_put;
  } else {
  }
  tmp___3 = ecryptfs_inode_to_private(inode);
  ecryptfs_set_file_lower(file, tmp___3->lower_file);
  if (((int )(ecryptfs_dentry->d_inode)->i_mode & 61440) == 16384) {
    __ecryptfs_printk("\017%s: This is a directory\n", "ecryptfs_open");
    ldv_mutex_lock_17(& crypt_stat->cs_mutex);
    crypt_stat->flags = crypt_stat->flags & 4294967291U;
    ldv_mutex_unlock_18(& crypt_stat->cs_mutex);
    rc = 0;
    goto out;
  } else {
  }
  rc = read_or_initialize_metadata(ecryptfs_dentry);
  if (rc != 0) {
    goto out_put;
  } else {
  }
  tmp___4 = i_size_read((struct inode const *)inode);
  __ecryptfs_printk("\017%s: inode w/ addr = [0x%p], i_ino = [0x%.16lx] size: [0x%.16llx]\n",
                    "ecryptfs_open", inode, inode->i_ino, (unsigned long long )tmp___4);
  goto out;
  out_put:
  ecryptfs_put_lower_file(inode);
  out_free:
  tmp___5 = ecryptfs_file_to_private(file);
  kmem_cache_free(ecryptfs_file_info_cache, (void *)tmp___5);
  out: ;
  return (rc);
}
}
static int ecryptfs_flush(struct file *file , fl_owner_t td )
{
  struct file *lower_file ;
  struct file *tmp ;
  int tmp___0 ;
  {
  tmp = ecryptfs_file_to_lower(file);
  lower_file = tmp;
  if ((unsigned long )lower_file->f_op != (unsigned long )((struct file_operations const *)0) && (unsigned long )(lower_file->f_op)->flush != (unsigned long )((int (* )(struct file * ,
                                                                                                                                                                                      fl_owner_t ))0)) {
    filemap_write_and_wait(file->f_mapping);
    tmp___0 = (*((lower_file->f_op)->flush))(lower_file, td);
    return (tmp___0);
  } else {
  }
  return (0);
}
}
static int ecryptfs_release(struct inode *inode , struct file *file )
{
  struct ecryptfs_file_info *tmp ;
  {
  ecryptfs_put_lower_file(inode);
  tmp = ecryptfs_file_to_private(file);
  kmem_cache_free(ecryptfs_file_info_cache, (void *)tmp);
  return (0);
}
}
static int ecryptfs_fsync(struct file *file , loff_t start , loff_t end , int datasync )
{
  struct file *tmp ;
  int tmp___0 ;
  {
  tmp = ecryptfs_file_to_lower(file);
  tmp___0 = vfs_fsync(tmp, datasync);
  return (tmp___0);
}
}
static int ecryptfs_fasync(int fd , struct file *file , int flag )
{
  int rc ;
  struct file *lower_file ;
  {
  rc = 0;
  lower_file = 0;
  lower_file = ecryptfs_file_to_lower(file);
  if ((unsigned long )lower_file->f_op != (unsigned long )((struct file_operations const *)0) && (unsigned long )(lower_file->f_op)->fasync != (unsigned long )((int (* )(int ,
                                                                                                                                                                                       struct file * ,
                                                                                                                                                                                       int ))0)) {
    rc = (*((lower_file->f_op)->fasync))(fd, lower_file, flag);
  } else {
  }
  return (rc);
}
}
static long ecryptfs_unlocked_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  struct file *lower_file ;
  long rc ;
  struct ecryptfs_file_info *tmp ;
  {
  lower_file = 0;
  rc = -25L;
  tmp = ecryptfs_file_to_private(file);
  if ((unsigned long )tmp != (unsigned long )((struct ecryptfs_file_info *)0)) {
    lower_file = ecryptfs_file_to_lower(file);
  } else {
  }
  if (((unsigned long )lower_file != (unsigned long )((struct file *)0) && (unsigned long )lower_file->f_op != (unsigned long )((struct file_operations const *)0)) && (unsigned long )(lower_file->f_op)->unlocked_ioctl != (unsigned long )((long (* )(struct file * ,
                                                                                                                                                                                                                                                                      unsigned int ,
                                                                                                                                                                                                                                                                      unsigned long ))0)) {
    rc = (*((lower_file->f_op)->unlocked_ioctl))(lower_file, cmd, arg);
  } else {
  }
  return (rc);
}
}
static long ecryptfs_compat_ioctl(struct file *file , unsigned int cmd , unsigned long arg )
{
  struct file *lower_file ;
  long rc ;
  struct ecryptfs_file_info *tmp ;
  {
  lower_file = 0;
  rc = -515L;
  tmp = ecryptfs_file_to_private(file);
  if ((unsigned long )tmp != (unsigned long )((struct ecryptfs_file_info *)0)) {
    lower_file = ecryptfs_file_to_lower(file);
  } else {
  }
  if (((unsigned long )lower_file != (unsigned long )((struct file *)0) && (unsigned long )lower_file->f_op != (unsigned long )((struct file_operations const *)0)) && (unsigned long )(lower_file->f_op)->compat_ioctl != (unsigned long )((long (* )(struct file * ,
                                                                                                                                                                                                                                                                    unsigned int ,
                                                                                                                                                                                                                                                                    unsigned long ))0)) {
    rc = (*((lower_file->f_op)->compat_ioctl))(lower_file, cmd, arg);
  } else {
  }
  return (rc);
}
}
struct file_operations const ecryptfs_dir_fops =
     {0, & default_llseek, & generic_read_dir, 0, 0, 0, & ecryptfs_readdir, 0, & ecryptfs_unlocked_ioctl,
    & ecryptfs_compat_ioctl, 0, & ecryptfs_open, & ecryptfs_flush, & ecryptfs_release,
    & ecryptfs_fsync, 0, & ecryptfs_fasync, 0, 0, 0, 0, 0, 0, & generic_file_splice_read,
    0, 0, 0};
struct file_operations const ecryptfs_main_fops =
     {0, & generic_file_llseek, & do_sync_read, & do_sync_write, & ecryptfs_read_update_atime,
    & generic_file_aio_write, & ecryptfs_readdir, 0, & ecryptfs_unlocked_ioctl, & ecryptfs_compat_ioctl,
    & generic_file_mmap, & ecryptfs_open, & ecryptfs_flush, & ecryptfs_release, & ecryptfs_fsync,
    0, & ecryptfs_fasync, 0, 0, 0, 0, 0, 0, & generic_file_splice_read, 0, 0, 0};
extern void ldv_check_return_value(int ) ;
void ldv_main1_sequence_infinite_withcheck_stateful(void)
{
  struct file *var_group1 ;
  void *var_ecryptfs_readdir_2_p1 ;
  int (*var_ecryptfs_readdir_2_p2)(void * , char const * , int , loff_t , u64 ,
                                   unsigned int ) ;
  unsigned int var_ecryptfs_unlocked_ioctl_9_p1 ;
  unsigned long var_ecryptfs_unlocked_ioctl_9_p2 ;
  unsigned int var_ecryptfs_compat_ioctl_10_p1 ;
  unsigned long var_ecryptfs_compat_ioctl_10_p2 ;
  struct inode *var_group2 ;
  int res_ecryptfs_open_4 ;
  fl_owner_t var_ecryptfs_flush_5_p1 ;
  loff_t var_ecryptfs_fsync_7_p1 ;
  loff_t var_ecryptfs_fsync_7_p2 ;
  int var_ecryptfs_fsync_7_p3 ;
  int var_ecryptfs_fasync_8_p0 ;
  int var_ecryptfs_fasync_8_p2 ;
  struct kiocb *var_group3 ;
  struct iovec const *var_ecryptfs_read_update_atime_0_p1 ;
  unsigned long var_ecryptfs_read_update_atime_0_p2 ;
  loff_t var_ecryptfs_read_update_atime_0_p3 ;
  int ldv_s_ecryptfs_dir_fops_file_operations ;
  int ldv_s_ecryptfs_main_fops_file_operations ;
  int tmp ;
  int tmp___0 ;
  {
  ldv_s_ecryptfs_dir_fops_file_operations = 0;
  ldv_s_ecryptfs_main_fops_file_operations = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_29222;
  ldv_29221:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_s_ecryptfs_dir_fops_file_operations == 0) {
    ldv_handler_precall();
    res_ecryptfs_open_4 = ecryptfs_open(var_group2, var_group1);
    ldv_check_return_value(res_ecryptfs_open_4);
    if (res_ecryptfs_open_4 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_ecryptfs_dir_fops_file_operations = ldv_s_ecryptfs_dir_fops_file_operations + 1;
  } else {
  }
  goto ldv_29203;
  case 1: ;
  if (ldv_s_ecryptfs_dir_fops_file_operations == 1) {
    ldv_handler_precall();
    ecryptfs_release(var_group2, var_group1);
    ldv_s_ecryptfs_dir_fops_file_operations = 0;
  } else {
  }
  goto ldv_29203;
  case 2:
  ldv_handler_precall();
  ecryptfs_readdir(var_group1, var_ecryptfs_readdir_2_p1, var_ecryptfs_readdir_2_p2);
  goto ldv_29203;
  case 3:
  ldv_handler_precall();
  ecryptfs_unlocked_ioctl(var_group1, var_ecryptfs_unlocked_ioctl_9_p1, var_ecryptfs_unlocked_ioctl_9_p2);
  goto ldv_29203;
  case 4:
  ldv_handler_precall();
  ecryptfs_compat_ioctl(var_group1, var_ecryptfs_compat_ioctl_10_p1, var_ecryptfs_compat_ioctl_10_p2);
  goto ldv_29203;
  case 5:
  ldv_handler_precall();
  ecryptfs_flush(var_group1, var_ecryptfs_flush_5_p1);
  goto ldv_29203;
  case 6:
  ldv_handler_precall();
  ecryptfs_fsync(var_group1, var_ecryptfs_fsync_7_p1, var_ecryptfs_fsync_7_p2, var_ecryptfs_fsync_7_p3);
  goto ldv_29203;
  case 7:
  ldv_handler_precall();
  ecryptfs_fasync(var_ecryptfs_fasync_8_p0, var_group1, var_ecryptfs_fasync_8_p2);
  goto ldv_29203;
  case 8: ;
  if (ldv_s_ecryptfs_main_fops_file_operations == 0) {
    ldv_handler_precall();
    res_ecryptfs_open_4 = ecryptfs_open(var_group2, var_group1);
    ldv_check_return_value(res_ecryptfs_open_4);
    if (res_ecryptfs_open_4 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_ecryptfs_main_fops_file_operations = ldv_s_ecryptfs_main_fops_file_operations + 1;
  } else {
  }
  goto ldv_29203;
  case 9: ;
  if (ldv_s_ecryptfs_main_fops_file_operations == 1) {
    ldv_handler_precall();
    ecryptfs_release(var_group2, var_group1);
    ldv_s_ecryptfs_main_fops_file_operations = 0;
  } else {
  }
  goto ldv_29203;
  case 10:
  ldv_handler_precall();
  ecryptfs_read_update_atime(var_group3, var_ecryptfs_read_update_atime_0_p1, var_ecryptfs_read_update_atime_0_p2,
                             var_ecryptfs_read_update_atime_0_p3);
  goto ldv_29203;
  case 11:
  ldv_handler_precall();
  ecryptfs_readdir(var_group1, var_ecryptfs_readdir_2_p1, var_ecryptfs_readdir_2_p2);
  goto ldv_29203;
  case 12:
  ldv_handler_precall();
  ecryptfs_unlocked_ioctl(var_group1, var_ecryptfs_unlocked_ioctl_9_p1, var_ecryptfs_unlocked_ioctl_9_p2);
  goto ldv_29203;
  case 13:
  ldv_handler_precall();
  ecryptfs_compat_ioctl(var_group1, var_ecryptfs_compat_ioctl_10_p1, var_ecryptfs_compat_ioctl_10_p2);
  goto ldv_29203;
  case 14:
  ldv_handler_precall();
  ecryptfs_flush(var_group1, var_ecryptfs_flush_5_p1);
  goto ldv_29203;
  case 15:
  ldv_handler_precall();
  ecryptfs_fsync(var_group1, var_ecryptfs_fsync_7_p1, var_ecryptfs_fsync_7_p2, var_ecryptfs_fsync_7_p3);
  goto ldv_29203;
  case 16:
  ldv_handler_precall();
  ecryptfs_fasync(var_ecryptfs_fasync_8_p0, var_group1, var_ecryptfs_fasync_8_p2);
  goto ldv_29203;
  default: ;
  goto ldv_29203;
  }
  ldv_29203: ;
  ldv_29222:
  tmp___0 = __VERIFIER_nondet_int();
  if ((tmp___0 != 0 || ldv_s_ecryptfs_dir_fops_file_operations != 0) || ldv_s_ecryptfs_main_fops_file_operations != 0) {
    goto ldv_29221;
  } else {
  }
  ldv_module_exit: ;
  ldv_check_final_state();
  return;
}
}
void ldv_mutex_lock_9(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_10(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_11(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_12(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_13(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cs_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_14(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cs_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cs_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cs_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_17(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cs_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_18(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cs_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
long ldv__builtin_expect(long exp , long c ) ;
extern void __bad_percpu_size(void) ;
extern void *memcpy(void * , void const * , size_t ) ;
extern size_t strlen(char const * ) ;
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
__inline static void *ERR_CAST(void const *ptr )
{
  {
  return ((void *)ptr);
}
}
extern void mutex_lock_nested(struct mutex * , unsigned int ) ;
void ldv_mutex_lock_nested_33(struct mutex *ldv_func_arg1 , unsigned int ldv_func_arg2 ) ;
void ldv_mutex_unlock_30(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_34(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_36(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_38(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_42(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_43(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_44(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_46(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_48(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_50(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_29(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_31(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_35(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_37(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_39(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_41(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_45(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_47(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_49(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_51(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_i_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_i_mutex(struct mutex *lock ) ;
extern unsigned long kernel_stack ;
__inline static struct thread_info *current_thread_info(void)
{
  struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6520;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6520;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6520;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6520;
  default:
  __bad_percpu_size();
  }
  ldv_6520:
  ti = (struct thread_info *)(pfo_ret__ - 8152UL);
  return (ti);
}
}
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
extern void truncate_setsize(struct inode * , loff_t ) ;
extern void d_instantiate(struct dentry * , struct inode * ) ;
extern void d_drop(struct dentry * ) ;
extern void d_rehash(struct dentry * ) ;
__inline static void d_add(struct dentry *entry , struct inode *inode )
{
  {
  d_instantiate(entry, inode);
  d_rehash(entry);
  return;
}
}
__inline static struct dentry *dget_dlock(struct dentry *dentry )
{
  {
  if ((unsigned long )dentry != (unsigned long )((struct dentry *)0)) {
    dentry->d_count = dentry->d_count + 1U;
  } else {
  }
  return (dentry);
}
}
__inline static struct dentry *dget(struct dentry *dentry )
{
  {
  if ((unsigned long )dentry != (unsigned long )((struct dentry *)0)) {
    spin_lock(& dentry->d_lock);
    dget_dlock(dentry);
    spin_unlock(& dentry->d_lock);
  } else {
  }
  return (dentry);
}
}
extern struct dentry *dget_parent(struct dentry * ) ;
__inline static void i_size_write(struct inode *inode , loff_t i_size )
{
  {
  inode->i_size = i_size;
  return;
}
}
extern int vfs_create(struct inode * , struct dentry * , umode_t , bool ) ;
extern int vfs_mkdir(struct inode * , struct dentry * , umode_t ) ;
extern int vfs_mknod(struct inode * , struct dentry * , umode_t , dev_t ) ;
extern int vfs_symlink(struct inode * , struct dentry * , char const * ) ;
extern int vfs_link(struct dentry * , struct inode * , struct dentry * ) ;
extern int vfs_rmdir(struct inode * , struct dentry * ) ;
extern int vfs_unlink(struct inode * , struct dentry * ) ;
extern int vfs_rename(struct inode * , struct dentry * , struct inode * , struct dentry * ) ;
extern void clear_nlink(struct inode * ) ;
extern void set_nlink(struct inode * , unsigned int ) ;
extern void init_special_inode(struct inode * , umode_t , dev_t ) ;
extern void make_bad_inode(struct inode * ) ;
extern int notify_change(struct dentry * , struct iattr * ) ;
extern int inode_permission(struct inode * , int ) ;
extern void iput(struct inode * ) ;
extern struct inode *igrab(struct inode * ) ;
extern struct inode *iget5_locked(struct super_block * , unsigned long , int (*)(struct inode * ,
                                                                                  void * ) ,
                                  int (*)(struct inode * , void * ) , void * ) ;
extern void unlock_new_inode(struct inode * ) ;
extern int generic_readlink(struct dentry * , char * , int ) ;
extern void generic_fillattr(struct inode * , struct kstat * ) ;
extern int vfs_getattr(struct vfsmount * , struct dentry * , struct kstat * ) ;
extern int inode_change_ok(struct inode const * , struct iattr * ) ;
extern int inode_newsize_ok(struct inode const * , loff_t ) ;
extern struct dentry *lookup_one_len(char const * , struct dentry * , int ) ;
extern struct dentry *lock_rename(struct dentry * , struct dentry * ) ;
extern void unlock_rename(struct dentry * , struct dentry * ) ;
__inline static void nd_set_link(struct nameidata *nd , char *path )
{
  {
  nd->saved_names[nd->depth] = path;
  return;
}
}
__inline static char *nd_get_link(struct nameidata *nd )
{
  {
  return (nd->saved_names[nd->depth]);
}
}
extern struct vfsmount *mntget(struct vfsmount * ) ;
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
extern void fsstack_copy_inode_size(struct inode * , struct inode * ) ;
__inline static void fsstack_copy_attr_times(struct inode *dest , struct inode const *src )
{
  {
  dest->i_atime = src->i_atime;
  dest->i_mtime = src->i_mtime;
  dest->i_ctime = src->i_ctime;
  return;
}
}
extern int vfs_setxattr(struct dentry * , char const * , void const * , size_t ,
                        int ) ;
__inline static size_t ecryptfs_lower_header_size(struct ecryptfs_crypt_stat *crypt_stat )
{
  {
  if ((crypt_stat->flags & 128U) != 0U) {
    return (0UL);
  } else {
  }
  return (crypt_stat->metadata_size);
}
}
__inline static void ecryptfs_set_inode_lower(struct inode *inode , struct inode *lower_inode )
{
  struct ecryptfs_inode_info *tmp ;
  {
  tmp = ecryptfs_inode_to_private(inode);
  tmp->wii_inode = lower_inode;
  return;
}
}
__inline static struct super_block *ecryptfs_superblock_to_lower(struct super_block *sb )
{
  {
  return (((struct ecryptfs_sb_info *)sb->s_fs_info)->wsi_sb);
}
}
__inline static void ecryptfs_set_dentry_private(struct dentry *dentry , struct ecryptfs_dentry_info *dentry_info )
{
  {
  dentry->d_fsdata = (void *)dentry_info;
  return;
}
}
__inline static void ecryptfs_set_dentry_lower(struct dentry *dentry , struct dentry *lower_dentry )
{
  {
  ((struct ecryptfs_dentry_info *)dentry->d_fsdata)->lower_path.dentry = lower_dentry;
  return;
}
}
__inline static void ecryptfs_set_dentry_lower_mnt(struct dentry *dentry , struct vfsmount *lower_mnt )
{
  {
  ((struct ecryptfs_dentry_info *)dentry->d_fsdata)->lower_path.mnt = lower_mnt;
  return;
}
}
struct inode_operations const ecryptfs_main_iops ;
struct inode_operations const ecryptfs_dir_iops ;
struct inode_operations const ecryptfs_symlink_iops ;
struct address_space_operations const ecryptfs_aops ;
struct inode *ecryptfs_get_inode(struct inode *lower_inode , struct super_block *sb ) ;
int ecryptfs_encrypt_and_encode_filename(char **encoded_name , size_t *encoded_name_size ,
                                         struct ecryptfs_crypt_stat *crypt_stat ,
                                         struct ecryptfs_mount_crypt_stat *mount_crypt_stat ,
                                         char const *name , size_t name_size ) ;
void ecryptfs_init_crypt_stat(struct ecryptfs_crypt_stat *crypt_stat ) ;
int ecryptfs_write_inode_size_to_metadata(struct inode *ecryptfs_inode ) ;
int ecryptfs_write_metadata(struct dentry *ecryptfs_dentry , struct inode *ecryptfs_inode ) ;
int ecryptfs_new_file_context(struct inode *ecryptfs_inode ) ;
int ecryptfs_read_and_validate_header_region(struct inode *inode ) ;
int ecryptfs_read_and_validate_xattr_region(struct dentry *dentry , struct inode *inode ) ;
void ecryptfs_set_default_sizes(struct ecryptfs_crypt_stat *crypt_stat ) ;
int ecryptfs_truncate(struct dentry *dentry , loff_t new_length ) ;
ssize_t ecryptfs_getxattr_lower(struct dentry *lower_dentry , char const *name ,
                                void *value , size_t size ) ;
int ecryptfs_setxattr(struct dentry *dentry , char const *name , void const *value ,
                      size_t size , int flags ) ;
int ecryptfs_write(struct inode *ecryptfs_inode , char *data , loff_t offset , size_t size ) ;
static struct dentry *lock_parent(struct dentry *dentry )
{
  struct dentry *dir ;
  {
  dir = dget_parent(dentry);
  ldv_mutex_lock_nested_33(& (dir->d_inode)->i_mutex, 1U);
  return (dir);
}
}
static void unlock_dir(struct dentry *dir )
{
  {
  ldv_mutex_unlock_34(& (dir->d_inode)->i_mutex);
  dput(dir);
  return;
}
}
static int ecryptfs_inode_test(struct inode *inode , void *lower_inode )
{
  struct inode *tmp ;
  {
  tmp = ecryptfs_inode_to_lower(inode);
  if ((unsigned long )tmp == (unsigned long )((struct inode *)lower_inode)) {
    return (1);
  } else {
  }
  return (0);
}
}
static int ecryptfs_inode_set(struct inode *inode , void *opaque )
{
  struct inode *lower_inode ;
  {
  lower_inode = (struct inode *)opaque;
  ecryptfs_set_inode_lower(inode, lower_inode);
  fsstack_copy_attr_all(inode, (struct inode const *)lower_inode);
  fsstack_copy_inode_size(inode, lower_inode);
  inode->i_ino = lower_inode->i_ino;
  inode->i_version = inode->i_version + 1ULL;
  (inode->i_mapping)->a_ops = & ecryptfs_aops;
  (inode->i_mapping)->backing_dev_info = (inode->i_sb)->s_bdi;
  if (((int )inode->i_mode & 61440) == 40960) {
    inode->i_op = & ecryptfs_symlink_iops;
  } else
  if (((int )inode->i_mode & 61440) == 16384) {
    inode->i_op = & ecryptfs_dir_iops;
  } else {
    inode->i_op = & ecryptfs_main_iops;
  }
  if (((int )inode->i_mode & 61440) == 16384) {
    inode->i_fop = & ecryptfs_dir_fops;
  } else
  if (((((int )inode->i_mode & 61440) == 8192 || ((int )inode->i_mode & 61440) == 24576) || ((int )inode->i_mode & 61440) == 4096) || ((int )inode->i_mode & 61440) == 49152) {
    init_special_inode(inode, (int )inode->i_mode, inode->i_rdev);
  } else {
    inode->i_fop = & ecryptfs_main_fops;
  }
  return (0);
}
}
static struct inode *__ecryptfs_get_inode(struct inode *lower_inode , struct super_block *sb )
{
  struct inode *inode ;
  void *tmp ;
  struct super_block *tmp___0 ;
  void *tmp___1 ;
  struct inode *tmp___2 ;
  void *tmp___3 ;
  {
  tmp___0 = ecryptfs_superblock_to_lower(sb);
  if ((unsigned long )lower_inode->i_sb != (unsigned long )tmp___0) {
    tmp = ERR_PTR(-18L);
    return ((struct inode *)tmp);
  } else {
  }
  tmp___2 = igrab(lower_inode);
  if ((unsigned long )tmp___2 == (unsigned long )((struct inode *)0)) {
    tmp___1 = ERR_PTR(-116L);
    return ((struct inode *)tmp___1);
  } else {
  }
  inode = iget5_locked(sb, (unsigned long )lower_inode, & ecryptfs_inode_test, & ecryptfs_inode_set,
                       (void *)lower_inode);
  if ((unsigned long )inode == (unsigned long )((struct inode *)0)) {
    iput(lower_inode);
    tmp___3 = ERR_PTR(-13L);
    return ((struct inode *)tmp___3);
  } else {
  }
  if ((inode->i_state & 8UL) == 0UL) {
    iput(lower_inode);
  } else {
  }
  return (inode);
}
}
struct inode *ecryptfs_get_inode(struct inode *lower_inode , struct super_block *sb )
{
  struct inode *inode ;
  struct inode *tmp ;
  long tmp___0 ;
  {
  tmp = __ecryptfs_get_inode(lower_inode, sb);
  inode = tmp;
  tmp___0 = IS_ERR((void const *)inode);
  if (tmp___0 == 0L && (inode->i_state & 8UL) != 0UL) {
    unlock_new_inode(inode);
  } else {
  }
  return (inode);
}
}
static int ecryptfs_interpose(struct dentry *lower_dentry , struct dentry *dentry ,
                              struct super_block *sb )
{
  struct inode *inode ;
  struct inode *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = ecryptfs_get_inode(lower_dentry->d_inode, sb);
  inode = tmp;
  tmp___1 = IS_ERR((void const *)inode);
  if (tmp___1 != 0L) {
    tmp___0 = PTR_ERR((void const *)inode);
    return ((int )tmp___0);
  } else {
  }
  d_instantiate(dentry, inode);
  return (0);
}
}
static int ecryptfs_do_unlink(struct inode *dir , struct dentry *dentry , struct inode *inode )
{
  struct dentry *lower_dentry ;
  struct dentry *tmp ;
  struct inode *lower_dir_inode ;
  struct inode *tmp___0 ;
  struct dentry *lower_dir_dentry ;
  int rc ;
  struct inode *tmp___1 ;
  {
  tmp = ecryptfs_dentry_to_lower(dentry);
  lower_dentry = tmp;
  tmp___0 = ecryptfs_inode_to_lower(dir);
  lower_dir_inode = tmp___0;
  dget(lower_dentry);
  lower_dir_dentry = lock_parent(lower_dentry);
  rc = vfs_unlink(lower_dir_inode, lower_dentry);
  if (rc != 0) {
    printk("\vError in vfs_unlink; rc = [%d]\n", rc);
    goto out_unlock;
  } else {
  }
  fsstack_copy_attr_times(dir, (struct inode const *)lower_dir_inode);
  tmp___1 = ecryptfs_inode_to_lower(inode);
  set_nlink(inode, tmp___1->ldv_13340.i_nlink);
  inode->i_ctime = dir->i_ctime;
  d_drop(dentry);
  out_unlock:
  unlock_dir(lower_dir_dentry);
  dput(lower_dentry);
  return (rc);
}
}
static struct inode *ecryptfs_do_create(struct inode *directory_inode , struct dentry *ecryptfs_dentry ,
                                        umode_t mode )
{
  int rc ;
  struct dentry *lower_dentry ;
  struct dentry *lower_dir_dentry ;
  struct inode *inode ;
  void *tmp ;
  long tmp___0 ;
  void *tmp___1 ;
  long tmp___2 ;
  {
  lower_dentry = ecryptfs_dentry_to_lower(ecryptfs_dentry);
  lower_dir_dentry = lock_parent(lower_dentry);
  tmp___0 = IS_ERR((void const *)lower_dir_dentry);
  if (tmp___0 != 0L) {
    __ecryptfs_printk("\v%s: Error locking directory of dentry\n", "ecryptfs_do_create");
    tmp = ERR_CAST((void const *)lower_dir_dentry);
    inode = (struct inode *)tmp;
    goto out;
  } else {
  }
  rc = vfs_create(lower_dir_dentry->d_inode, lower_dentry, (int )mode, 1);
  if (rc != 0) {
    printk("\v%s: Failure to create dentry in lower fs; rc = [%d]\n", "ecryptfs_do_create",
           rc);
    tmp___1 = ERR_PTR((long )rc);
    inode = (struct inode *)tmp___1;
    goto out_lock;
  } else {
  }
  inode = __ecryptfs_get_inode(lower_dentry->d_inode, directory_inode->i_sb);
  tmp___2 = IS_ERR((void const *)inode);
  if (tmp___2 != 0L) {
    vfs_unlink(lower_dir_dentry->d_inode, lower_dentry);
    goto out_lock;
  } else {
  }
  fsstack_copy_attr_times(directory_inode, (struct inode const *)lower_dir_dentry->d_inode);
  fsstack_copy_inode_size(directory_inode, lower_dir_dentry->d_inode);
  out_lock:
  unlock_dir(lower_dir_dentry);
  out: ;
  return (inode);
}
}
int ecryptfs_initialize_file(struct dentry *ecryptfs_dentry , struct inode *ecryptfs_inode )
{
  struct ecryptfs_crypt_stat *crypt_stat ;
  struct ecryptfs_inode_info *tmp ;
  int rc ;
  {
  tmp = ecryptfs_inode_to_private(ecryptfs_inode);
  crypt_stat = & tmp->crypt_stat;
  rc = 0;
  if (((int )ecryptfs_inode->i_mode & 61440) == 16384) {
    __ecryptfs_printk("\017%s: This is a directory\n", "ecryptfs_initialize_file");
    crypt_stat->flags = crypt_stat->flags & 4294967291U;
    goto out;
  } else {
  }
  __ecryptfs_printk("\017%s: Initializing crypto context\n", "ecryptfs_initialize_file");
  rc = ecryptfs_new_file_context(ecryptfs_inode);
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Error creating new file context; rc = [%d]\n", "ecryptfs_initialize_file",
                      rc);
    goto out;
  } else {
  }
  rc = ecryptfs_get_lower_file(ecryptfs_dentry, ecryptfs_inode);
  if (rc != 0) {
    printk("\v%s: Error attempting to initialize the lower file for the dentry with name [%s]; rc = [%d]\n",
           "ecryptfs_initialize_file", ecryptfs_dentry->d_name.name, rc);
    goto out;
  } else {
  }
  rc = ecryptfs_write_metadata(ecryptfs_dentry, ecryptfs_inode);
  if (rc != 0) {
    printk("\vError writing headers; rc = [%d]\n", rc);
  } else {
  }
  ecryptfs_put_lower_file(ecryptfs_inode);
  out: ;
  return (rc);
}
}
static int ecryptfs_create(struct inode *directory_inode , struct dentry *ecryptfs_dentry ,
                           umode_t mode , bool excl )
{
  struct inode *ecryptfs_inode ;
  int rc ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  ecryptfs_inode = ecryptfs_do_create(directory_inode, ecryptfs_dentry, (int )mode);
  tmp___0 = IS_ERR((void const *)ecryptfs_inode);
  tmp___1 = ldv__builtin_expect(tmp___0 != 0L, 0L);
  if (tmp___1 != 0L) {
    __ecryptfs_printk("\f%s: Failed to create file inlower filesystem\n", "ecryptfs_create");
    tmp = PTR_ERR((void const *)ecryptfs_inode);
    rc = (int )tmp;
    goto out;
  } else {
  }
  rc = ecryptfs_initialize_file(ecryptfs_dentry, ecryptfs_inode);
  if (rc != 0) {
    ecryptfs_do_unlink(directory_inode, ecryptfs_dentry, ecryptfs_inode);
    make_bad_inode(ecryptfs_inode);
    unlock_new_inode(ecryptfs_inode);
    iput(ecryptfs_inode);
    goto out;
  } else {
  }
  unlock_new_inode(ecryptfs_inode);
  d_instantiate(ecryptfs_dentry, ecryptfs_inode);
  out: ;
  return (rc);
}
}
static int ecryptfs_i_size_read(struct dentry *dentry , struct inode *inode )
{
  struct ecryptfs_crypt_stat *crypt_stat ;
  int rc ;
  struct ecryptfs_inode_info *tmp ;
  {
  rc = ecryptfs_get_lower_file(dentry, inode);
  if (rc != 0) {
    printk("\v%s: Error attempting to initialize the lower file for the dentry with name [%s]; rc = [%d]\n",
           "ecryptfs_i_size_read", dentry->d_name.name, rc);
    return (rc);
  } else {
  }
  tmp = ecryptfs_inode_to_private(inode);
  crypt_stat = & tmp->crypt_stat;
  if ((crypt_stat->flags & 2U) == 0U) {
    ecryptfs_set_default_sizes(crypt_stat);
  } else {
  }
  rc = ecryptfs_read_and_validate_header_region(inode);
  ecryptfs_put_lower_file(inode);
  if (rc != 0) {
    rc = ecryptfs_read_and_validate_xattr_region(dentry, inode);
    if (rc == 0) {
      crypt_stat->flags = crypt_stat->flags | 128U;
    } else {
    }
  } else {
  }
  return (0);
}
}
static int ecryptfs_lookup_interpose(struct dentry *dentry , struct dentry *lower_dentry ,
                                     struct inode *dir_inode )
{
  struct inode *inode ;
  struct inode *lower_inode ;
  struct ecryptfs_dentry_info *dentry_info ;
  struct vfsmount *lower_mnt ;
  int rc ;
  void *tmp ;
  struct vfsmount *tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  {
  lower_inode = lower_dentry->d_inode;
  rc = 0;
  tmp = kmem_cache_alloc(ecryptfs_dentry_info_cache, 208U);
  dentry_info = (struct ecryptfs_dentry_info *)tmp;
  if ((unsigned long )dentry_info == (unsigned long )((struct ecryptfs_dentry_info *)0)) {
    printk("\v%s: Out of memory whilst attempting to allocate ecryptfs_dentry_info struct\n",
           "ecryptfs_lookup_interpose");
    dput(lower_dentry);
    return (-12);
  } else {
  }
  tmp___0 = ecryptfs_dentry_to_lower_mnt(dentry->d_parent);
  lower_mnt = mntget(tmp___0);
  fsstack_copy_attr_atime(dir_inode, (struct inode const *)(lower_dentry->d_parent)->d_inode);
  tmp___1 = ldv__builtin_expect(lower_dentry->d_count == 0U, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/ecryptfs/ecryptfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/24/dscv_tempdir/dscv/ri/32_7a/fs/ecryptfs/inode.c.prepared"),
                         "i" (497), "i" (12UL));
    ldv_27556: ;
    goto ldv_27556;
  } else {
  }
  ecryptfs_set_dentry_private(dentry, dentry_info);
  ecryptfs_set_dentry_lower(dentry, lower_dentry);
  ecryptfs_set_dentry_lower_mnt(dentry, lower_mnt);
  if ((unsigned long )lower_dentry->d_inode == (unsigned long )((struct inode *)0)) {
    d_add(dentry, 0);
    return (0);
  } else {
  }
  inode = __ecryptfs_get_inode(lower_inode, dir_inode->i_sb);
  tmp___4 = IS_ERR((void const *)inode);
  if (tmp___4 != 0L) {
    tmp___2 = PTR_ERR((void const *)inode);
    printk("\v%s: Error interposing; rc = [%ld]\n", "ecryptfs_lookup_interpose", tmp___2);
    tmp___3 = PTR_ERR((void const *)inode);
    return ((int )tmp___3);
  } else {
  }
  if (((int )inode->i_mode & 61440) == 32768) {
    rc = ecryptfs_i_size_read(dentry, inode);
    if (rc != 0) {
      make_bad_inode(inode);
      return (rc);
    } else {
    }
  } else {
  }
  if ((inode->i_state & 8UL) != 0UL) {
    unlock_new_inode(inode);
  } else {
  }
  d_add(dentry, inode);
  return (rc);
}
}
static struct dentry *ecryptfs_lookup(struct inode *ecryptfs_dir_inode , struct dentry *ecryptfs_dentry ,
                                      unsigned int flags )
{
  char *encrypted_and_encoded_name ;
  size_t encrypted_and_encoded_name_size ;
  struct ecryptfs_mount_crypt_stat *mount_crypt_stat ;
  struct dentry *lower_dir_dentry ;
  struct dentry *lower_dentry ;
  int rc ;
  long tmp ;
  long tmp___0 ;
  struct ecryptfs_sb_info *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  void *tmp___4 ;
  {
  encrypted_and_encoded_name = 0;
  mount_crypt_stat = 0;
  rc = 0;
  lower_dir_dentry = ecryptfs_dentry_to_lower(ecryptfs_dentry->d_parent);
  ldv_mutex_lock_35(& (lower_dir_dentry->d_inode)->i_mutex);
  lower_dentry = lookup_one_len((char const *)ecryptfs_dentry->d_name.name, lower_dir_dentry,
                                (int )ecryptfs_dentry->d_name.ldv_7489.ldv_7487.len);
  ldv_mutex_unlock_36(& (lower_dir_dentry->d_inode)->i_mutex);
  tmp___0 = IS_ERR((void const *)lower_dentry);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)lower_dentry);
    rc = (int )tmp;
    __ecryptfs_printk("\017%s: %s: lookup_one_len() returned [%d] on lower_dentry = [%s]\n",
                      "ecryptfs_lookup", "ecryptfs_lookup", rc, ecryptfs_dentry->d_name.name);
    goto out;
  } else {
  }
  if ((unsigned long )lower_dentry->d_inode != (unsigned long )((struct inode *)0)) {
    goto interpose;
  } else {
  }
  tmp___1 = ecryptfs_superblock_to_private(ecryptfs_dentry->d_sb);
  mount_crypt_stat = & tmp___1->mount_crypt_stat;
  if ((unsigned long )mount_crypt_stat == (unsigned long )((struct ecryptfs_mount_crypt_stat *)0) || (mount_crypt_stat->flags & 16U) == 0U) {
    goto interpose;
  } else {
  }
  dput(lower_dentry);
  rc = ecryptfs_encrypt_and_encode_filename(& encrypted_and_encoded_name, & encrypted_and_encoded_name_size,
                                            0, mount_crypt_stat, (char const *)ecryptfs_dentry->d_name.name,
                                            (size_t )ecryptfs_dentry->d_name.ldv_7489.ldv_7487.len);
  if (rc != 0) {
    printk("\v%s: Error attempting to encrypt and encode filename; rc = [%d]\n", "ecryptfs_lookup",
           rc);
    goto out;
  } else {
  }
  ldv_mutex_lock_37(& (lower_dir_dentry->d_inode)->i_mutex);
  lower_dentry = lookup_one_len((char const *)encrypted_and_encoded_name, lower_dir_dentry,
                                (int )encrypted_and_encoded_name_size);
  ldv_mutex_unlock_38(& (lower_dir_dentry->d_inode)->i_mutex);
  tmp___3 = IS_ERR((void const *)lower_dentry);
  if (tmp___3 != 0L) {
    tmp___2 = PTR_ERR((void const *)lower_dentry);
    rc = (int )tmp___2;
    __ecryptfs_printk("\017%s: %s: lookup_one_len() returned [%d] on lower_dentry = [%s]\n",
                      "ecryptfs_lookup", "ecryptfs_lookup", rc, encrypted_and_encoded_name);
    goto out;
  } else {
  }
  interpose:
  rc = ecryptfs_lookup_interpose(ecryptfs_dentry, lower_dentry, ecryptfs_dir_inode);
  out:
  kfree((void const *)encrypted_and_encoded_name);
  tmp___4 = ERR_PTR((long )rc);
  return ((struct dentry *)tmp___4);
}
}
static int ecryptfs_link(struct dentry *old_dentry , struct inode *dir , struct dentry *new_dentry )
{
  struct dentry *lower_old_dentry ;
  struct dentry *lower_new_dentry ;
  struct dentry *lower_dir_dentry ;
  u64 file_size_save ;
  int rc ;
  loff_t tmp ;
  struct inode *tmp___0 ;
  {
  tmp = i_size_read((struct inode const *)old_dentry->d_inode);
  file_size_save = (u64 )tmp;
  lower_old_dentry = ecryptfs_dentry_to_lower(old_dentry);
  lower_new_dentry = ecryptfs_dentry_to_lower(new_dentry);
  dget(lower_old_dentry);
  dget(lower_new_dentry);
  lower_dir_dentry = lock_parent(lower_new_dentry);
  rc = vfs_link(lower_old_dentry, lower_dir_dentry->d_inode, lower_new_dentry);
  if (rc != 0 || (unsigned long )lower_new_dentry->d_inode == (unsigned long )((struct inode *)0)) {
    goto out_lock;
  } else {
  }
  rc = ecryptfs_interpose(lower_new_dentry, new_dentry, dir->i_sb);
  if (rc != 0) {
    goto out_lock;
  } else {
  }
  fsstack_copy_attr_times(dir, (struct inode const *)lower_dir_dentry->d_inode);
  fsstack_copy_inode_size(dir, lower_dir_dentry->d_inode);
  tmp___0 = ecryptfs_inode_to_lower(old_dentry->d_inode);
  set_nlink(old_dentry->d_inode, tmp___0->ldv_13340.i_nlink);
  i_size_write(new_dentry->d_inode, (loff_t )file_size_save);
  out_lock:
  unlock_dir(lower_dir_dentry);
  dput(lower_new_dentry);
  dput(lower_old_dentry);
  return (rc);
}
}
static int ecryptfs_unlink(struct inode *dir , struct dentry *dentry )
{
  int tmp ;
  {
  tmp = ecryptfs_do_unlink(dir, dentry, dentry->d_inode);
  return (tmp);
}
}
static int ecryptfs_symlink(struct inode *dir , struct dentry *dentry , char const *symname )
{
  int rc ;
  struct dentry *lower_dentry ;
  struct dentry *lower_dir_dentry ;
  char *encoded_symname ;
  size_t encoded_symlen ;
  struct ecryptfs_mount_crypt_stat *mount_crypt_stat ;
  struct ecryptfs_sb_info *tmp ;
  size_t tmp___0 ;
  {
  mount_crypt_stat = 0;
  lower_dentry = ecryptfs_dentry_to_lower(dentry);
  dget(lower_dentry);
  lower_dir_dentry = lock_parent(lower_dentry);
  tmp = ecryptfs_superblock_to_private(dir->i_sb);
  mount_crypt_stat = & tmp->mount_crypt_stat;
  tmp___0 = strlen(symname);
  rc = ecryptfs_encrypt_and_encode_filename(& encoded_symname, & encoded_symlen, 0,
                                            mount_crypt_stat, symname, tmp___0);
  if (rc != 0) {
    goto out_lock;
  } else {
  }
  rc = vfs_symlink(lower_dir_dentry->d_inode, lower_dentry, (char const *)encoded_symname);
  kfree((void const *)encoded_symname);
  if (rc != 0 || (unsigned long )lower_dentry->d_inode == (unsigned long )((struct inode *)0)) {
    goto out_lock;
  } else {
  }
  rc = ecryptfs_interpose(lower_dentry, dentry, dir->i_sb);
  if (rc != 0) {
    goto out_lock;
  } else {
  }
  fsstack_copy_attr_times(dir, (struct inode const *)lower_dir_dentry->d_inode);
  fsstack_copy_inode_size(dir, lower_dir_dentry->d_inode);
  out_lock:
  unlock_dir(lower_dir_dentry);
  dput(lower_dentry);
  if ((unsigned long )dentry->d_inode == (unsigned long )((struct inode *)0)) {
    d_drop(dentry);
  } else {
  }
  return (rc);
}
}
static int ecryptfs_mkdir(struct inode *dir , struct dentry *dentry , umode_t mode )
{
  int rc ;
  struct dentry *lower_dentry ;
  struct dentry *lower_dir_dentry ;
  {
  lower_dentry = ecryptfs_dentry_to_lower(dentry);
  lower_dir_dentry = lock_parent(lower_dentry);
  rc = vfs_mkdir(lower_dir_dentry->d_inode, lower_dentry, (int )mode);
  if (rc != 0 || (unsigned long )lower_dentry->d_inode == (unsigned long )((struct inode *)0)) {
    goto out;
  } else {
  }
  rc = ecryptfs_interpose(lower_dentry, dentry, dir->i_sb);
  if (rc != 0) {
    goto out;
  } else {
  }
  fsstack_copy_attr_times(dir, (struct inode const *)lower_dir_dentry->d_inode);
  fsstack_copy_inode_size(dir, lower_dir_dentry->d_inode);
  set_nlink(dir, (lower_dir_dentry->d_inode)->ldv_13340.i_nlink);
  out:
  unlock_dir(lower_dir_dentry);
  if ((unsigned long )dentry->d_inode == (unsigned long )((struct inode *)0)) {
    d_drop(dentry);
  } else {
  }
  return (rc);
}
}
static int ecryptfs_rmdir(struct inode *dir , struct dentry *dentry )
{
  struct dentry *lower_dentry ;
  struct dentry *lower_dir_dentry ;
  int rc ;
  {
  lower_dentry = ecryptfs_dentry_to_lower(dentry);
  dget(dentry);
  lower_dir_dentry = lock_parent(lower_dentry);
  dget(lower_dentry);
  rc = vfs_rmdir(lower_dir_dentry->d_inode, lower_dentry);
  dput(lower_dentry);
  if (rc == 0 && (unsigned long )dentry->d_inode != (unsigned long )((struct inode *)0)) {
    clear_nlink(dentry->d_inode);
  } else {
  }
  fsstack_copy_attr_times(dir, (struct inode const *)lower_dir_dentry->d_inode);
  set_nlink(dir, (lower_dir_dentry->d_inode)->ldv_13340.i_nlink);
  unlock_dir(lower_dir_dentry);
  if (rc == 0) {
    d_drop(dentry);
  } else {
  }
  dput(dentry);
  return (rc);
}
}
static int ecryptfs_mknod(struct inode *dir , struct dentry *dentry , umode_t mode ,
                          dev_t dev )
{
  int rc ;
  struct dentry *lower_dentry ;
  struct dentry *lower_dir_dentry ;
  {
  lower_dentry = ecryptfs_dentry_to_lower(dentry);
  lower_dir_dentry = lock_parent(lower_dentry);
  rc = vfs_mknod(lower_dir_dentry->d_inode, lower_dentry, (int )mode, dev);
  if (rc != 0 || (unsigned long )lower_dentry->d_inode == (unsigned long )((struct inode *)0)) {
    goto out;
  } else {
  }
  rc = ecryptfs_interpose(lower_dentry, dentry, dir->i_sb);
  if (rc != 0) {
    goto out;
  } else {
  }
  fsstack_copy_attr_times(dir, (struct inode const *)lower_dir_dentry->d_inode);
  fsstack_copy_inode_size(dir, lower_dir_dentry->d_inode);
  out:
  unlock_dir(lower_dir_dentry);
  if ((unsigned long )dentry->d_inode == (unsigned long )((struct inode *)0)) {
    d_drop(dentry);
  } else {
  }
  return (rc);
}
}
static int ecryptfs_rename(struct inode *old_dir , struct dentry *old_dentry , struct inode *new_dir ,
                           struct dentry *new_dentry )
{
  int rc ;
  struct dentry *lower_old_dentry ;
  struct dentry *lower_new_dentry ;
  struct dentry *lower_old_dir_dentry ;
  struct dentry *lower_new_dir_dentry ;
  struct dentry *trap ;
  struct inode *target_inode ;
  struct inode *tmp ;
  {
  trap = 0;
  lower_old_dentry = ecryptfs_dentry_to_lower(old_dentry);
  lower_new_dentry = ecryptfs_dentry_to_lower(new_dentry);
  dget(lower_old_dentry);
  dget(lower_new_dentry);
  lower_old_dir_dentry = dget_parent(lower_old_dentry);
  lower_new_dir_dentry = dget_parent(lower_new_dentry);
  target_inode = new_dentry->d_inode;
  trap = lock_rename(lower_old_dir_dentry, lower_new_dir_dentry);
  if ((unsigned long )trap == (unsigned long )lower_old_dentry) {
    rc = -22;
    goto out_lock;
  } else {
  }
  if ((unsigned long )trap == (unsigned long )lower_new_dentry) {
    rc = -39;
    goto out_lock;
  } else {
  }
  rc = vfs_rename(lower_old_dir_dentry->d_inode, lower_old_dentry, lower_new_dir_dentry->d_inode,
                  lower_new_dentry);
  if (rc != 0) {
    goto out_lock;
  } else {
  }
  if ((unsigned long )target_inode != (unsigned long )((struct inode *)0)) {
    tmp = ecryptfs_inode_to_lower(target_inode);
    fsstack_copy_attr_all(target_inode, (struct inode const *)tmp);
  } else {
  }
  fsstack_copy_attr_all(new_dir, (struct inode const *)lower_new_dir_dentry->d_inode);
  if ((unsigned long )new_dir != (unsigned long )old_dir) {
    fsstack_copy_attr_all(old_dir, (struct inode const *)lower_old_dir_dentry->d_inode);
  } else {
  }
  out_lock:
  unlock_rename(lower_old_dir_dentry, lower_new_dir_dentry);
  dput(lower_new_dir_dentry);
  dput(lower_old_dir_dentry);
  dput(lower_new_dentry);
  dput(lower_old_dentry);
  return (rc);
}
}
static int ecryptfs_readlink_lower(struct dentry *dentry , char **buf , size_t *bufsiz )
{
  struct dentry *lower_dentry ;
  struct dentry *tmp ;
  char *lower_buf ;
  mm_segment_t old_fs ;
  int rc ;
  void *tmp___0 ;
  struct thread_info *tmp___1 ;
  struct thread_info *tmp___2 ;
  mm_segment_t __constr_expr_0 ;
  struct thread_info *tmp___3 ;
  {
  tmp = ecryptfs_dentry_to_lower(dentry);
  lower_dentry = tmp;
  tmp___0 = kmalloc(4096UL, 208U);
  lower_buf = (char *)tmp___0;
  if ((unsigned long )lower_buf == (unsigned long )((char *)0)) {
    rc = -12;
    goto out;
  } else {
  }
  tmp___1 = current_thread_info();
  old_fs = tmp___1->addr_limit;
  tmp___2 = current_thread_info();
  __constr_expr_0.seg = 0xffffffffffffffffUL;
  tmp___2->addr_limit = __constr_expr_0;
  rc = (*(((lower_dentry->d_inode)->i_op)->readlink))(lower_dentry, lower_buf, 4096);
  tmp___3 = current_thread_info();
  tmp___3->addr_limit = old_fs;
  if (rc < 0) {
    goto out;
  } else {
  }
  rc = ecryptfs_decode_and_decrypt_filename(buf, bufsiz, dentry, (char const *)lower_buf,
                                            (size_t )rc);
  out:
  kfree((void const *)lower_buf);
  return (rc);
}
}
static void *ecryptfs_follow_link(struct dentry *dentry , struct nameidata *nd )
{
  char *buf ;
  size_t len ;
  int rc ;
  struct dentry *tmp ;
  {
  len = 4096UL;
  rc = ecryptfs_readlink_lower(dentry, & buf, & len);
  if (rc != 0) {
    goto out;
  } else {
  }
  tmp = ecryptfs_dentry_to_lower(dentry);
  fsstack_copy_attr_atime(dentry->d_inode, (struct inode const *)tmp->d_inode);
  *(buf + len) = 0;
  out:
  nd_set_link(nd, buf);
  return (0);
}
}
static void ecryptfs_put_link(struct dentry *dentry , struct nameidata *nd , void *ptr )
{
  char *buf ;
  char *tmp ;
  long tmp___0 ;
  {
  tmp = nd_get_link(nd);
  buf = tmp;
  tmp___0 = IS_ERR((void const *)buf);
  if (tmp___0 == 0L) {
    kfree((void const *)buf);
  } else {
  }
  return;
}
}
static loff_t upper_size_to_lower_size(struct ecryptfs_crypt_stat *crypt_stat , loff_t upper_size )
{
  loff_t lower_size ;
  size_t tmp ;
  loff_t num_extents ;
  {
  tmp = ecryptfs_lower_header_size(crypt_stat);
  lower_size = (loff_t )tmp;
  if (upper_size != 0LL) {
    num_extents = upper_size >> (int )crypt_stat->extent_shift;
    if (((loff_t )(~ crypt_stat->extent_mask) & upper_size) != 0LL) {
      num_extents = num_extents + 1LL;
    } else {
    }
    lower_size = (loff_t )((unsigned long long )crypt_stat->extent_size * (unsigned long long )num_extents + (unsigned long long )lower_size);
  } else {
  }
  return (lower_size);
}
}
static int truncate_upper(struct dentry *dentry , struct iattr *ia , struct iattr *lower_ia )
{
  int rc ;
  struct inode *inode ;
  struct ecryptfs_crypt_stat *crypt_stat ;
  loff_t i_size ;
  loff_t tmp ;
  loff_t lower_size_before_truncate ;
  loff_t lower_size_after_truncate ;
  long tmp___0 ;
  struct ecryptfs_inode_info *tmp___1 ;
  char zero[1U] ;
  size_t num_zeros ;
  char *zeros_virt ;
  void *tmp___2 ;
  {
  rc = 0;
  inode = dentry->d_inode;
  tmp = i_size_read((struct inode const *)inode);
  i_size = tmp;
  tmp___0 = ldv__builtin_expect(ia->ia_size == i_size, 0L);
  if (tmp___0 != 0L) {
    lower_ia->ia_valid = lower_ia->ia_valid & 4294967287U;
    return (0);
  } else {
  }
  rc = ecryptfs_get_lower_file(dentry, inode);
  if (rc != 0) {
    return (rc);
  } else {
  }
  tmp___1 = ecryptfs_inode_to_private(dentry->d_inode);
  crypt_stat = & tmp___1->crypt_stat;
  if (ia->ia_size > i_size) {
    zero[0] = 0;
    lower_ia->ia_valid = lower_ia->ia_valid & 4294967287U;
    rc = ecryptfs_write(inode, (char *)(& zero), ia->ia_size + -1LL, 1UL);
  } else {
    num_zeros = (size_t )(4096ULL - ((unsigned long long )ia->ia_size & 4095ULL));
    if ((crypt_stat->flags & 4U) == 0U) {
      truncate_setsize(inode, ia->ia_size);
      lower_ia->ia_size = ia->ia_size;
      lower_ia->ia_valid = lower_ia->ia_valid | 8U;
      goto out;
    } else {
    }
    if (num_zeros != 0UL) {
      tmp___2 = kzalloc(num_zeros, 208U);
      zeros_virt = (char *)tmp___2;
      if ((unsigned long )zeros_virt == (unsigned long )((char *)0)) {
        rc = -12;
        goto out;
      } else {
      }
      rc = ecryptfs_write(inode, zeros_virt, ia->ia_size, num_zeros);
      kfree((void const *)zeros_virt);
      if (rc != 0) {
        printk("\vError attempting to zero out the remainder of the end page on reducing truncate; rc = [%d]\n",
               rc);
        goto out;
      } else {
      }
    } else {
    }
    truncate_setsize(inode, ia->ia_size);
    rc = ecryptfs_write_inode_size_to_metadata(inode);
    if (rc != 0) {
      printk("\vProblem with ecryptfs_write_inode_size_to_metadata; rc = [%d]\n",
             rc);
      goto out;
    } else {
    }
    lower_size_before_truncate = upper_size_to_lower_size(crypt_stat, i_size);
    lower_size_after_truncate = upper_size_to_lower_size(crypt_stat, ia->ia_size);
    if (lower_size_after_truncate < lower_size_before_truncate) {
      lower_ia->ia_size = lower_size_after_truncate;
      lower_ia->ia_valid = lower_ia->ia_valid | 8U;
    } else {
      lower_ia->ia_valid = lower_ia->ia_valid & 4294967287U;
    }
  }
  out:
  ecryptfs_put_lower_file(inode);
  return (rc);
}
}
static int ecryptfs_inode_newsize_ok(struct inode *inode , loff_t offset )
{
  struct ecryptfs_crypt_stat *crypt_stat ;
  loff_t lower_oldsize ;
  loff_t lower_newsize ;
  struct ecryptfs_inode_info *tmp ;
  loff_t tmp___0 ;
  int tmp___1 ;
  {
  tmp = ecryptfs_inode_to_private(inode);
  crypt_stat = & tmp->crypt_stat;
  tmp___0 = i_size_read((struct inode const *)inode);
  lower_oldsize = upper_size_to_lower_size(crypt_stat, tmp___0);
  lower_newsize = upper_size_to_lower_size(crypt_stat, offset);
  if (lower_newsize > lower_oldsize) {
    tmp___1 = inode_newsize_ok((struct inode const *)inode, lower_newsize);
    return (tmp___1);
  } else {
  }
  return (0);
}
}
int ecryptfs_truncate(struct dentry *dentry , loff_t new_length )
{
  struct iattr ia ;
  struct iattr lower_ia ;
  int rc ;
  struct dentry *lower_dentry ;
  struct dentry *tmp ;
  {
  ia.ia_valid = 8U;
  ia.ia_mode = (unsigned short)0;
  ia.ia_uid = 0U;
  ia.ia_gid = 0U;
  ia.ia_size = new_length;
  ia.ia_atime.tv_sec = 0L;
  ia.ia_atime.tv_nsec = 0L;
  ia.ia_mtime.tv_sec = 0L;
  ia.ia_mtime.tv_nsec = 0L;
  ia.ia_ctime.tv_sec = 0L;
  ia.ia_ctime.tv_nsec = 0L;
  ia.ia_file = 0;
  lower_ia.ia_valid = 0U;
  lower_ia.ia_mode = (unsigned short)0;
  lower_ia.ia_uid = 0U;
  lower_ia.ia_gid = 0U;
  lower_ia.ia_size = 0LL;
  lower_ia.ia_atime.tv_sec = 0L;
  lower_ia.ia_atime.tv_nsec = 0L;
  lower_ia.ia_mtime.tv_sec = 0L;
  lower_ia.ia_mtime.tv_nsec = 0L;
  lower_ia.ia_ctime.tv_sec = 0L;
  lower_ia.ia_ctime.tv_nsec = 0L;
  lower_ia.ia_file = 0;
  rc = ecryptfs_inode_newsize_ok(dentry->d_inode, new_length);
  if (rc != 0) {
    return (rc);
  } else {
  }
  rc = truncate_upper(dentry, & ia, & lower_ia);
  if (rc == 0 && (lower_ia.ia_valid & 8U) != 0U) {
    tmp = ecryptfs_dentry_to_lower(dentry);
    lower_dentry = tmp;
    ldv_mutex_lock_39(& (lower_dentry->d_inode)->i_mutex);
    rc = notify_change(lower_dentry, & lower_ia);
    ldv_mutex_unlock_40(& (lower_dentry->d_inode)->i_mutex);
  } else {
  }
  return (rc);
}
}
static int ecryptfs_permission(struct inode *inode , int mask )
{
  struct inode *tmp ;
  int tmp___0 ;
  {
  tmp = ecryptfs_inode_to_lower(inode);
  tmp___0 = inode_permission(tmp, mask);
  return (tmp___0);
}
}
static int ecryptfs_setattr(struct dentry *dentry , struct iattr *ia )
{
  int rc ;
  struct dentry *lower_dentry ;
  struct iattr lower_ia ;
  struct inode *inode ;
  struct inode *lower_inode ;
  struct ecryptfs_crypt_stat *crypt_stat ;
  struct ecryptfs_inode_info *tmp ;
  struct ecryptfs_mount_crypt_stat *mount_crypt_stat ;
  struct ecryptfs_sb_info *tmp___0 ;
  size_t __len ;
  void *__ret ;
  {
  rc = 0;
  tmp = ecryptfs_inode_to_private(dentry->d_inode);
  crypt_stat = & tmp->crypt_stat;
  if ((crypt_stat->flags & 1U) == 0U) {
    ecryptfs_init_crypt_stat(crypt_stat);
  } else {
  }
  inode = dentry->d_inode;
  lower_inode = ecryptfs_inode_to_lower(inode);
  lower_dentry = ecryptfs_dentry_to_lower(dentry);
  ldv_mutex_lock_41(& crypt_stat->cs_mutex);
  if (((int )(dentry->d_inode)->i_mode & 61440) == 16384) {
    crypt_stat->flags = crypt_stat->flags & 4294967291U;
  } else
  if (((int )(dentry->d_inode)->i_mode & 61440) == 32768 && ((crypt_stat->flags & 2U) == 0U || (crypt_stat->flags & 64U) == 0U)) {
    tmp___0 = ecryptfs_superblock_to_private(dentry->d_sb);
    mount_crypt_stat = & tmp___0->mount_crypt_stat;
    rc = ecryptfs_get_lower_file(dentry, inode);
    if (rc != 0) {
      ldv_mutex_unlock_42(& crypt_stat->cs_mutex);
      goto out;
    } else {
    }
    rc = ecryptfs_read_metadata(dentry);
    ecryptfs_put_lower_file(inode);
    if (rc != 0) {
      if ((mount_crypt_stat->flags & 1U) == 0U) {
        rc = -5;
        printk("\fEither the lower file is not in a valid eCryptfs format, or the key could not be retrieved. Plaintext passthrough mode is not enabled; returning -EIO\n");
        ldv_mutex_unlock_43(& crypt_stat->cs_mutex);
        goto out;
      } else {
      }
      rc = 0;
      crypt_stat->flags = crypt_stat->flags & 4294950907U;
    } else {
    }
  } else {
  }
  ldv_mutex_unlock_44(& crypt_stat->cs_mutex);
  rc = inode_change_ok((struct inode const *)inode, ia);
  if (rc != 0) {
    goto out;
  } else {
  }
  if ((ia->ia_valid & 8U) != 0U) {
    rc = ecryptfs_inode_newsize_ok(inode, ia->ia_size);
    if (rc != 0) {
      goto out;
    } else {
    }
  } else {
  }
  __len = 80UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& lower_ia), (void const *)ia, __len);
  } else {
    __ret = __builtin_memcpy((void *)(& lower_ia), (void const *)ia, __len);
  }
  if ((ia->ia_valid & 8192U) != 0U) {
    lower_ia.ia_file = ecryptfs_file_to_lower(ia->ia_file);
  } else {
  }
  if ((ia->ia_valid & 8U) != 0U) {
    rc = truncate_upper(dentry, ia, & lower_ia);
    if (rc < 0) {
      goto out;
    } else {
    }
  } else {
  }
  if ((lower_ia.ia_valid & 6144U) != 0U) {
    lower_ia.ia_valid = lower_ia.ia_valid & 4294967294U;
  } else {
  }
  ldv_mutex_lock_45(& (lower_dentry->d_inode)->i_mutex);
  rc = notify_change(lower_dentry, & lower_ia);
  ldv_mutex_unlock_46(& (lower_dentry->d_inode)->i_mutex);
  out:
  fsstack_copy_attr_all(inode, (struct inode const *)lower_inode);
  return (rc);
}
}
int ecryptfs_getattr_link(struct vfsmount *mnt , struct dentry *dentry , struct kstat *stat )
{
  struct ecryptfs_mount_crypt_stat *mount_crypt_stat ;
  int rc ;
  struct ecryptfs_sb_info *tmp ;
  char *target ;
  size_t targetsiz ;
  {
  rc = 0;
  tmp = ecryptfs_superblock_to_private(dentry->d_sb);
  mount_crypt_stat = & tmp->mount_crypt_stat;
  generic_fillattr(dentry->d_inode, stat);
  if ((mount_crypt_stat->flags & 16U) != 0U) {
    rc = ecryptfs_readlink_lower(dentry, & target, & targetsiz);
    if (rc == 0) {
      kfree((void const *)target);
      stat->size = (loff_t )targetsiz;
    } else {
    }
  } else {
  }
  return (rc);
}
}
int ecryptfs_getattr(struct vfsmount *mnt , struct dentry *dentry , struct kstat *stat )
{
  struct kstat lower_stat ;
  int rc ;
  struct dentry *tmp ;
  struct vfsmount *tmp___0 ;
  struct inode *tmp___1 ;
  {
  tmp = ecryptfs_dentry_to_lower(dentry);
  tmp___0 = ecryptfs_dentry_to_lower_mnt(dentry);
  rc = vfs_getattr(tmp___0, tmp, & lower_stat);
  if (rc == 0) {
    tmp___1 = ecryptfs_inode_to_lower(dentry->d_inode);
    fsstack_copy_attr_all(dentry->d_inode, (struct inode const *)tmp___1);
    generic_fillattr(dentry->d_inode, stat);
    stat->blocks = lower_stat.blocks;
  } else {
  }
  return (rc);
}
}
int ecryptfs_setxattr(struct dentry *dentry , char const *name , void const *value ,
                      size_t size , int flags )
{
  int rc ;
  struct dentry *lower_dentry ;
  {
  rc = 0;
  lower_dentry = ecryptfs_dentry_to_lower(dentry);
  if ((unsigned long )((lower_dentry->d_inode)->i_op)->setxattr == (unsigned long )((int (* )(struct dentry * ,
                                                                                                         char const * ,
                                                                                                         void const * ,
                                                                                                         size_t ,
                                                                                                         int ))0)) {
    rc = -95;
    goto out;
  } else {
  }
  rc = vfs_setxattr(lower_dentry, name, value, size, flags);
  if (rc == 0) {
    fsstack_copy_attr_all(dentry->d_inode, (struct inode const *)lower_dentry->d_inode);
  } else {
  }
  out: ;
  return (rc);
}
}
ssize_t ecryptfs_getxattr_lower(struct dentry *lower_dentry , char const *name ,
                                void *value , size_t size )
{
  int rc ;
  ssize_t tmp ;
  {
  rc = 0;
  if ((unsigned long )((lower_dentry->d_inode)->i_op)->getxattr == (unsigned long )((ssize_t (* )(struct dentry * ,
                                                                                                             char const * ,
                                                                                                             void * ,
                                                                                                             size_t ))0)) {
    rc = -95;
    goto out;
  } else {
  }
  ldv_mutex_lock_47(& (lower_dentry->d_inode)->i_mutex);
  tmp = (*(((lower_dentry->d_inode)->i_op)->getxattr))(lower_dentry, name, value,
                                                       size);
  rc = (int )tmp;
  ldv_mutex_unlock_48(& (lower_dentry->d_inode)->i_mutex);
  out: ;
  return ((ssize_t )rc);
}
}
static ssize_t ecryptfs_getxattr(struct dentry *dentry , char const *name , void *value ,
                                 size_t size )
{
  struct dentry *tmp ;
  ssize_t tmp___0 ;
  {
  tmp = ecryptfs_dentry_to_lower(dentry);
  tmp___0 = ecryptfs_getxattr_lower(tmp, name, value, size);
  return (tmp___0);
}
}
static ssize_t ecryptfs_listxattr(struct dentry *dentry , char *list , size_t size )
{
  int rc ;
  struct dentry *lower_dentry ;
  ssize_t tmp ;
  {
  rc = 0;
  lower_dentry = ecryptfs_dentry_to_lower(dentry);
  if ((unsigned long )((lower_dentry->d_inode)->i_op)->listxattr == (unsigned long )((ssize_t (* )(struct dentry * ,
                                                                                                              char * ,
                                                                                                              size_t ))0)) {
    rc = -95;
    goto out;
  } else {
  }
  ldv_mutex_lock_49(& (lower_dentry->d_inode)->i_mutex);
  tmp = (*(((lower_dentry->d_inode)->i_op)->listxattr))(lower_dentry, list, size);
  rc = (int )tmp;
  ldv_mutex_unlock_50(& (lower_dentry->d_inode)->i_mutex);
  out: ;
  return ((ssize_t )rc);
}
}
static int ecryptfs_removexattr(struct dentry *dentry , char const *name )
{
  int rc ;
  struct dentry *lower_dentry ;
  {
  rc = 0;
  lower_dentry = ecryptfs_dentry_to_lower(dentry);
  if ((unsigned long )((lower_dentry->d_inode)->i_op)->removexattr == (unsigned long )((int (* )(struct dentry * ,
                                                                                                            char const * ))0)) {
    rc = -95;
    goto out;
  } else {
  }
  ldv_mutex_lock_51(& (lower_dentry->d_inode)->i_mutex);
  rc = (*(((lower_dentry->d_inode)->i_op)->removexattr))(lower_dentry, name);
  ldv_mutex_unlock_52(& (lower_dentry->d_inode)->i_mutex);
  out: ;
  return (rc);
}
}
struct inode_operations const ecryptfs_symlink_iops =
     {0, & ecryptfs_follow_link, & ecryptfs_permission, 0, & generic_readlink, & ecryptfs_put_link,
    0, 0, 0, 0, 0, 0, 0, 0, & ecryptfs_setattr, & ecryptfs_getattr_link, & ecryptfs_setxattr,
    & ecryptfs_getxattr, & ecryptfs_listxattr, & ecryptfs_removexattr, 0, 0, 0};
struct inode_operations const ecryptfs_dir_iops =
     {& ecryptfs_lookup, 0, & ecryptfs_permission, 0, 0, 0, & ecryptfs_create, & ecryptfs_link,
    & ecryptfs_unlink, & ecryptfs_symlink, & ecryptfs_mkdir, & ecryptfs_rmdir, & ecryptfs_mknod,
    & ecryptfs_rename, & ecryptfs_setattr, 0, & ecryptfs_setxattr, & ecryptfs_getxattr,
    & ecryptfs_listxattr, & ecryptfs_removexattr, 0, 0, 0};
struct inode_operations const ecryptfs_main_iops =
     {0, 0, & ecryptfs_permission, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & ecryptfs_setattr,
    & ecryptfs_getattr, & ecryptfs_setxattr, & ecryptfs_getxattr, & ecryptfs_listxattr,
    & ecryptfs_removexattr, 0, 0, 0};
void ldv_main2_sequence_infinite_withcheck_stateful(void)
{
  struct dentry *var_group1 ;
  struct nameidata *var_group2 ;
  void *var_ecryptfs_put_link_23_p2 ;
  struct inode *var_group3 ;
  int var_ecryptfs_permission_28_p1 ;
  struct iattr *var_group4 ;
  struct vfsmount *var_group5 ;
  struct kstat *var_ecryptfs_getattr_link_30_p2 ;
  char const *var_ecryptfs_setxattr_32_p1 ;
  void const *var_ecryptfs_setxattr_32_p2 ;
  size_t var_ecryptfs_setxattr_32_p3 ;
  int var_ecryptfs_setxattr_32_p4 ;
  char const *var_ecryptfs_getxattr_34_p1 ;
  void *var_ecryptfs_getxattr_34_p2 ;
  size_t var_ecryptfs_getxattr_34_p3 ;
  char *var_ecryptfs_listxattr_35_p1 ;
  size_t var_ecryptfs_listxattr_35_p2 ;
  char const *var_ecryptfs_removexattr_36_p1 ;
  umode_t var_ecryptfs_create_10_p2 ;
  bool var_ecryptfs_create_10_p3 ;
  unsigned int var_ecryptfs_lookup_13_p2 ;
  struct dentry *var_ecryptfs_link_14_p2 ;
  char const *var_ecryptfs_symlink_16_p2 ;
  umode_t var_ecryptfs_mkdir_17_p2 ;
  umode_t var_ecryptfs_mknod_19_p2 ;
  dev_t var_ecryptfs_mknod_19_p3 ;
  struct inode *var_ecryptfs_rename_20_p2 ;
  struct dentry *var_ecryptfs_rename_20_p3 ;
  struct kstat *var_ecryptfs_getattr_31_p2 ;
  int tmp ;
  int tmp___0 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_27855;
  ldv_27854:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_handler_precall();
  ecryptfs_follow_link(var_group1, var_group2);
  goto ldv_27822;
  case 1:
  ldv_handler_precall();
  ecryptfs_put_link(var_group1, var_group2, var_ecryptfs_put_link_23_p2);
  goto ldv_27822;
  case 2:
  ldv_handler_precall();
  ecryptfs_permission(var_group3, var_ecryptfs_permission_28_p1);
  goto ldv_27822;
  case 3:
  ldv_handler_precall();
  ecryptfs_setattr(var_group1, var_group4);
  goto ldv_27822;
  case 4:
  ldv_handler_precall();
  ecryptfs_getattr_link(var_group5, var_group1, var_ecryptfs_getattr_link_30_p2);
  goto ldv_27822;
  case 5:
  ldv_handler_precall();
  ecryptfs_setxattr(var_group1, var_ecryptfs_setxattr_32_p1, var_ecryptfs_setxattr_32_p2,
                    var_ecryptfs_setxattr_32_p3, var_ecryptfs_setxattr_32_p4);
  goto ldv_27822;
  case 6:
  ldv_handler_precall();
  ecryptfs_getxattr(var_group1, var_ecryptfs_getxattr_34_p1, var_ecryptfs_getxattr_34_p2,
                    var_ecryptfs_getxattr_34_p3);
  goto ldv_27822;
  case 7:
  ldv_handler_precall();
  ecryptfs_listxattr(var_group1, var_ecryptfs_listxattr_35_p1, var_ecryptfs_listxattr_35_p2);
  goto ldv_27822;
  case 8:
  ldv_handler_precall();
  ecryptfs_removexattr(var_group1, var_ecryptfs_removexattr_36_p1);
  goto ldv_27822;
  case 9:
  ldv_handler_precall();
  ecryptfs_create(var_group3, var_group1, (int )var_ecryptfs_create_10_p2, (int )var_ecryptfs_create_10_p3);
  goto ldv_27822;
  case 10:
  ldv_handler_precall();
  ecryptfs_lookup(var_group3, var_group1, var_ecryptfs_lookup_13_p2);
  goto ldv_27822;
  case 11:
  ldv_handler_precall();
  ecryptfs_link(var_group1, var_group3, var_ecryptfs_link_14_p2);
  goto ldv_27822;
  case 12:
  ldv_handler_precall();
  ecryptfs_unlink(var_group3, var_group1);
  goto ldv_27822;
  case 13:
  ldv_handler_precall();
  ecryptfs_symlink(var_group3, var_group1, var_ecryptfs_symlink_16_p2);
  goto ldv_27822;
  case 14:
  ldv_handler_precall();
  ecryptfs_mkdir(var_group3, var_group1, (int )var_ecryptfs_mkdir_17_p2);
  goto ldv_27822;
  case 15:
  ldv_handler_precall();
  ecryptfs_rmdir(var_group3, var_group1);
  goto ldv_27822;
  case 16:
  ldv_handler_precall();
  ecryptfs_mknod(var_group3, var_group1, (int )var_ecryptfs_mknod_19_p2, var_ecryptfs_mknod_19_p3);
  goto ldv_27822;
  case 17:
  ldv_handler_precall();
  ecryptfs_rename(var_group3, var_group1, var_ecryptfs_rename_20_p2, var_ecryptfs_rename_20_p3);
  goto ldv_27822;
  case 18:
  ldv_handler_precall();
  ecryptfs_permission(var_group3, var_ecryptfs_permission_28_p1);
  goto ldv_27822;
  case 19:
  ldv_handler_precall();
  ecryptfs_setattr(var_group1, var_group4);
  goto ldv_27822;
  case 20:
  ldv_handler_precall();
  ecryptfs_setxattr(var_group1, var_ecryptfs_setxattr_32_p1, var_ecryptfs_setxattr_32_p2,
                    var_ecryptfs_setxattr_32_p3, var_ecryptfs_setxattr_32_p4);
  goto ldv_27822;
  case 21:
  ldv_handler_precall();
  ecryptfs_getxattr(var_group1, var_ecryptfs_getxattr_34_p1, var_ecryptfs_getxattr_34_p2,
                    var_ecryptfs_getxattr_34_p3);
  goto ldv_27822;
  case 22:
  ldv_handler_precall();
  ecryptfs_listxattr(var_group1, var_ecryptfs_listxattr_35_p1, var_ecryptfs_listxattr_35_p2);
  goto ldv_27822;
  case 23:
  ldv_handler_precall();
  ecryptfs_removexattr(var_group1, var_ecryptfs_removexattr_36_p1);
  goto ldv_27822;
  case 24:
  ldv_handler_precall();
  ecryptfs_permission(var_group3, var_ecryptfs_permission_28_p1);
  goto ldv_27822;
  case 25:
  ldv_handler_precall();
  ecryptfs_setattr(var_group1, var_group4);
  goto ldv_27822;
  case 26:
  ldv_handler_precall();
  ecryptfs_getattr(var_group5, var_group1, var_ecryptfs_getattr_31_p2);
  goto ldv_27822;
  case 27:
  ldv_handler_precall();
  ecryptfs_setxattr(var_group1, var_ecryptfs_setxattr_32_p1, var_ecryptfs_setxattr_32_p2,
                    var_ecryptfs_setxattr_32_p3, var_ecryptfs_setxattr_32_p4);
  goto ldv_27822;
  case 28:
  ldv_handler_precall();
  ecryptfs_getxattr(var_group1, var_ecryptfs_getxattr_34_p1, var_ecryptfs_getxattr_34_p2,
                    var_ecryptfs_getxattr_34_p3);
  goto ldv_27822;
  case 29:
  ldv_handler_precall();
  ecryptfs_listxattr(var_group1, var_ecryptfs_listxattr_35_p1, var_ecryptfs_listxattr_35_p2);
  goto ldv_27822;
  case 30:
  ldv_handler_precall();
  ecryptfs_removexattr(var_group1, var_ecryptfs_removexattr_36_p1);
  goto ldv_27822;
  default: ;
  goto ldv_27822;
  }
  ldv_27822: ;
  ldv_27855:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    goto ldv_27854;
  } else {
  }
  ldv_check_final_state();
  return;
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
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_32(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_nested_33(struct mutex *ldv_func_arg1 , unsigned int ldv_func_arg2 )
{
  {
  ldv_mutex_lock_i_mutex(ldv_func_arg1);
  mutex_lock_nested(ldv_func_arg1, ldv_func_arg2);
  return;
}
}
void ldv_mutex_unlock_34(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_35(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_36(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_37(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_38(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_39(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_41(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cs_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_42(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cs_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_43(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cs_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_44(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cs_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_45(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_46(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_47(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_48(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_49(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_50(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_51(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern int vprintk(char const * , __va_list_tag * ) ;
extern long simple_strtol(char const * , char ** , unsigned int ) ;
extern int snprintf(char * , size_t , char const * , ...) ;
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
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
extern char *strcpy(char * , char const * ) ;
extern char *strncpy(char * , char const * , __kernel_size_t ) ;
extern char *strsep(char ** , char const * ) ;
extern void warn_slowpath_null(char const * , int const ) ;
extern void __xadd_wrong_size(void) ;
__inline static void atomic_set(atomic_t *v , int i )
{
  {
  v->counter = i;
  return;
}
}
__inline static int atomic_add_return(int i , atomic_t *v )
{
  int __ret ;
  {
  __ret = i;
  switch (4UL) {
  case 1UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddb %b0, %1\n": "+q" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5474;
  case 2UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddw %w0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5474;
  case 4UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddl %0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5474;
  case 8UL:
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; xaddq %q0, %1\n": "+r" (__ret),
                       "+m" (v->counter): : "memory", "cc");
  goto ldv_5474;
  default:
  __xadd_wrong_size();
  }
  ldv_5474: ;
  return (__ret + i);
}
}
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_80(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_78(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_81(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_83(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_85(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_87(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_89(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_90(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_91(struct mutex *ldv_func_arg1 ) ;
extern int atomic_dec_and_mutex_lock(atomic_t * , struct mutex * ) ;
int ldv_atomic_dec_and_mutex_lock_86(atomic_t *ldv_func_arg1 , struct mutex *ldv_func_arg2 ) ;
void ldv_mutex_lock_77(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_79(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_82(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_84(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_88(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_key_tfm_list_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_key_tfm_list_mutex(struct mutex *lock ) ;
int ldv_atomic_dec_and_mutex_lock_lower_file_count(atomic_t *cnt , struct mutex *lock ) ;
void ldv_mutex_lock_lower_file_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_lower_file_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_mutex(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex(struct mutex *lock ) ;
extern void rcu_barrier(void) ;
extern int debug_lockdep_rcu_enabled(void) ;
extern struct dentry *d_make_root(struct inode * ) ;
extern void fput(struct file * ) ;
extern struct user_namespace init_user_ns ;
__inline static uid_t __kuid_val(kuid_t uid )
{
  {
  return (uid);
}
}
__inline static bool uid_eq(kuid_t left , kuid_t right )
{
  uid_t tmp ;
  uid_t tmp___0 ;
  {
  tmp = __kuid_val(left);
  tmp___0 = __kuid_val(right);
  return (tmp == tmp___0);
}
}
__inline static uid_t from_kuid(struct user_namespace *to , kuid_t kuid )
{
  uid_t tmp ;
  {
  tmp = __kuid_val(kuid);
  return (tmp);
}
}
extern void up_write(struct rw_semaphore * ) ;
extern int sysfs_create_group(struct kobject * , struct attribute_group const * ) ;
extern void sysfs_remove_group(struct kobject * , struct attribute_group const * ) ;
extern struct kobject *kobject_create_and_add(char const * , struct kobject * ) ;
extern void kobject_put(struct kobject * ) ;
extern struct module __this_module ;
extern void path_put(struct path * ) ;
extern int kern_path(char const * , unsigned int , struct path * ) ;
extern struct kmem_cache *kmem_cache_create(char const * , size_t , size_t , unsigned long ,
                                            void (*)(void * ) ) ;
extern void kmem_cache_destroy(struct kmem_cache * ) ;
__inline static uid_t i_uid_read(struct inode const *inode )
{
  uid_t tmp ;
  {
  tmp = from_kuid(& init_user_ns, inode->i_uid);
  return (tmp);
}
}
extern void kill_anon_super(struct super_block * ) ;
extern void deactivate_locked_super(struct super_block * ) ;
extern int set_anon_super(struct super_block * , void * ) ;
extern struct super_block *sget(struct file_system_type * , int (*)(struct super_block * ,
                                                                    void * ) , int (*)(struct super_block * ,
                                                                                       void * ) ,
                                int , void * ) ;
extern int register_filesystem(struct file_system_type * ) ;
extern int unregister_filesystem(struct file_system_type * ) ;
extern struct kobject *fs_kobj ;
extern void inode_init_once(struct inode * ) ;
extern int match_token(char * , struct match_token const * , substring_t * ) ;
extern void bdi_destroy(struct backing_dev_info * ) ;
extern int bdi_setup_and_register(struct backing_dev_info * , char * , unsigned int ) ;
struct mutex key_tfm_list_mutex ;
__inline static void ecryptfs_set_superblock_private(struct super_block *sb , struct ecryptfs_sb_info *sb_info )
{
  {
  sb->s_fs_info = (void *)sb_info;
  return;
}
}
__inline static void ecryptfs_set_superblock_lower(struct super_block *sb , struct super_block *lower_sb )
{
  {
  ((struct ecryptfs_sb_info *)sb->s_fs_info)->wsi_sb = lower_sb;
  return;
}
}
struct super_operations const ecryptfs_sops ;
int ecryptfs_verbosity ;
unsigned int ecryptfs_message_buf_len ;
long ecryptfs_message_wait_timeout ;
unsigned int ecryptfs_number_of_users ;
struct kmem_cache *ecryptfs_auth_tok_list_item_cache ;
struct kmem_cache *ecryptfs_inode_info_cache ;
struct kmem_cache *ecryptfs_sb_info_cache ;
struct kmem_cache *ecryptfs_header_cache ;
struct kmem_cache *ecryptfs_xattr_cache ;
struct kmem_cache *ecryptfs_key_record_cache ;
struct kmem_cache *ecryptfs_key_sig_cache ;
struct kmem_cache *ecryptfs_global_auth_tok_cache ;
struct kmem_cache *ecryptfs_key_tfm_cache ;
void ecryptfs_destroy_mount_crypt_stat(struct ecryptfs_mount_crypt_stat *mount_crypt_stat ) ;
u8 ecryptfs_code_for_cipher_string(char *cipher_name , size_t key_bytes ) ;
int ecryptfs_init_messaging(void) ;
void ecryptfs_release_messaging(void) ;
int ecryptfs_add_global_auth_tok(struct ecryptfs_mount_crypt_stat *mount_crypt_stat ,
                                 char *sig , u32 global_auth_tok_flags ) ;
int ecryptfs_add_new_key_tfm(struct ecryptfs_key_tfm **key_tfm , char *cipher_name ,
                             size_t key_size ) ;
int ecryptfs_init_crypto(void) ;
int ecryptfs_destroy_crypto(void) ;
int ecryptfs_tfm_exists(char *cipher_name , struct ecryptfs_key_tfm **key_tfm ) ;
int ecryptfs_keyring_auth_tok_for_sig(struct key **auth_tok_key , struct ecryptfs_auth_tok **auth_tok ,
                                      char *sig ) ;
int ecryptfs_init_kthread(void) ;
void ecryptfs_destroy_kthread(void) ;
int ecryptfs_privileged_open(struct file **lower_file , struct dentry *lower_dentry ,
                             struct vfsmount *lower_mnt , struct cred const *cred ) ;
int ecryptfs_verbosity = 0;
unsigned int ecryptfs_message_buf_len = 32U;
long ecryptfs_message_wait_timeout = 3L;
unsigned int ecryptfs_number_of_users = 4U;
void __ecryptfs_printk(char const *fmt , ...)
{
  va_list args ;
  {
  __builtin_va_start((__va_list_tag *)(& args), fmt);
  if ((int )((signed char )*(fmt + 1UL)) == 55) {
    if (ecryptfs_verbosity > 0) {
      vprintk(fmt, (__va_list_tag *)(& args));
    } else {
      vprintk(fmt, (__va_list_tag *)(& args));
    }
  } else {
  }
  __builtin_va_end((__va_list_tag *)(& args));
  return;
}
}
static int ecryptfs_init_lower_file(struct dentry *dentry , struct file **lower_file )
{
  struct cred const *cred ;
  int tmp ;
  struct task_struct *tmp___0 ;
  struct dentry *lower_dentry ;
  struct dentry *tmp___1 ;
  struct vfsmount *lower_mnt ;
  struct vfsmount *tmp___2 ;
  int rc ;
  {
  tmp = debug_lockdep_rcu_enabled();
  tmp___0 = get_current();
  cred = tmp___0->cred;
  tmp___1 = ecryptfs_dentry_to_lower(dentry);
  lower_dentry = tmp___1;
  tmp___2 = ecryptfs_dentry_to_lower_mnt(dentry);
  lower_mnt = tmp___2;
  rc = ecryptfs_privileged_open(lower_file, lower_dentry, lower_mnt, cred);
  if (rc != 0) {
    printk("\vError opening lower file for lower_dentry [0x%p] and lower_mnt [0x%p]; rc = [%d]\n",
           lower_dentry, lower_mnt, rc);
    *lower_file = 0;
  } else {
  }
  return (rc);
}
}
int ecryptfs_get_lower_file(struct dentry *dentry , struct inode *inode )
{
  struct ecryptfs_inode_info *inode_info ;
  int count ;
  int rc ;
  bool __warned ;
  int __ret_warn_once ;
  int __ret_warn_on ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  rc = 0;
  inode_info = ecryptfs_inode_to_private(inode);
  ldv_mutex_lock_84(& inode_info->lower_file_mutex);
  count = atomic_add_return(1, & inode_info->lower_file_count);
  __ret_warn_once = count <= 0;
  tmp___1 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___1 != 0L) {
    __ret_warn_on = ! __warned;
    tmp = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp != 0L) {
      warn_slowpath_null("/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/ecryptfs/ecryptfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/24/dscv_tempdir/dscv/ri/32_7a/fs/ecryptfs/main.c.prepared",
                         282);
    } else {
    }
    tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
    if (tmp___0 != 0L) {
      __warned = 1;
    } else {
    }
  } else {
  }
  tmp___2 = ldv__builtin_expect(__ret_warn_once != 0, 0L);
  if (tmp___2 != 0L) {
    rc = -22;
  } else
  if (count == 1) {
    rc = ecryptfs_init_lower_file(dentry, & inode_info->lower_file);
    if (rc != 0) {
      atomic_set(& inode_info->lower_file_count, 0);
    } else {
    }
  } else {
  }
  ldv_mutex_unlock_85(& inode_info->lower_file_mutex);
  return (rc);
}
}
void ecryptfs_put_lower_file(struct inode *inode )
{
  struct ecryptfs_inode_info *inode_info ;
  int tmp ;
  {
  inode_info = ecryptfs_inode_to_private(inode);
  tmp = ldv_atomic_dec_and_mutex_lock_86(& inode_info->lower_file_count, & inode_info->lower_file_mutex);
  if (tmp != 0) {
    filemap_write_and_wait(inode->i_mapping);
    fput(inode_info->lower_file);
    inode_info->lower_file = 0;
    ldv_mutex_unlock_87(& inode_info->lower_file_mutex);
  } else {
  }
  return;
}
}
static struct match_token const tokens[15U] =
  { {0, "sig=%s"},
        {1, "ecryptfs_sig=%s"},
        {2, "cipher=%s"},
        {3, "ecryptfs_cipher=%s"},
        {4, "ecryptfs_key_bytes=%u"},
        {5, "ecryptfs_passthrough"},
        {6, "ecryptfs_xattr_metadata"},
        {7, "ecryptfs_encrypted_view"},
        {8, "ecryptfs_fnek_sig=%s"},
        {9, "ecryptfs_fn_cipher=%s"},
        {10, "ecryptfs_fn_key_bytes=%u"},
        {11, "ecryptfs_unlink_sigs"},
        {12, "ecryptfs_mount_auth_tok_only"},
        {13, "ecryptfs_check_dev_ruid"},
        {14, 0}};
static int ecryptfs_init_global_auth_toks(struct ecryptfs_mount_crypt_stat *mount_crypt_stat )
{
  struct ecryptfs_global_auth_tok *global_auth_tok ;
  struct ecryptfs_auth_tok *auth_tok ;
  int rc ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  rc = 0;
  __mptr = (struct list_head const *)mount_crypt_stat->global_auth_tok_list.next;
  global_auth_tok = (struct ecryptfs_global_auth_tok *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_32009;
  ldv_32008:
  rc = ecryptfs_keyring_auth_tok_for_sig(& global_auth_tok->global_auth_tok_key, & auth_tok,
                                         (char *)(& global_auth_tok->sig));
  if (rc != 0) {
    printk("\vCould not find valid key in user session keyring for sig specified in mount option: [%s]\n",
           (unsigned char *)(& global_auth_tok->sig));
    global_auth_tok->flags = global_auth_tok->flags | 1U;
    goto out;
  } else {
    global_auth_tok->flags = global_auth_tok->flags & 4294967294U;
    up_write(& (global_auth_tok->global_auth_tok_key)->sem);
  }
  __mptr___0 = (struct list_head const *)global_auth_tok->mount_crypt_stat_list.next;
  global_auth_tok = (struct ecryptfs_global_auth_tok *)__mptr___0 + 0xfffffffffffffff8UL;
  ldv_32009: ;
  if ((unsigned long )global_auth_tok != (unsigned long )mount_crypt_stat) {
    goto ldv_32008;
  } else {
  }
  out: ;
  return (rc);
}
}
static void ecryptfs_init_mount_crypt_stat(struct ecryptfs_mount_crypt_stat *mount_crypt_stat )
{
  struct lock_class_key __key ;
  {
  memset((void *)mount_crypt_stat, 0, 296UL);
  INIT_LIST_HEAD(& mount_crypt_stat->global_auth_tok_list);
  __mutex_init(& mount_crypt_stat->global_auth_tok_list_mutex, "&mount_crypt_stat->global_auth_tok_list_mutex",
               & __key);
  mount_crypt_stat->flags = mount_crypt_stat->flags | 8U;
  return;
}
}
static int ecryptfs_parse_options(struct ecryptfs_sb_info *sbi , char *options , uid_t *check_ruid )
{
  char *p ;
  int rc ;
  int sig_set ;
  int cipher_name_set ;
  int fn_cipher_name_set ;
  int cipher_key_bytes ;
  int cipher_key_bytes_set ;
  int fn_cipher_key_bytes ;
  int fn_cipher_key_bytes_set ;
  struct ecryptfs_mount_crypt_stat *mount_crypt_stat ;
  substring_t args[3U] ;
  int token ;
  char *sig_src ;
  char *cipher_name_dst ;
  char *cipher_name_src ;
  char *fn_cipher_name_dst ;
  char *fn_cipher_name_src ;
  char *fnek_dst ;
  char *fnek_src ;
  char *cipher_key_bytes_src ;
  char *fn_cipher_key_bytes_src ;
  u8 cipher_code ;
  long tmp ;
  long tmp___0 ;
  int cipher_name_len ;
  size_t tmp___1 ;
  long tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  {
  rc = 0;
  sig_set = 0;
  cipher_name_set = 0;
  fn_cipher_name_set = 0;
  cipher_key_bytes_set = 0;
  fn_cipher_key_bytes_set = 0;
  mount_crypt_stat = & sbi->mount_crypt_stat;
  *check_ruid = 0U;
  if ((unsigned long )options == (unsigned long )((char *)0)) {
    rc = -22;
    goto out;
  } else {
  }
  ecryptfs_init_mount_crypt_stat(mount_crypt_stat);
  goto ldv_32043;
  ldv_32062: ;
  if ((int )((signed char )*p) == 0) {
    goto ldv_32043;
  } else {
  }
  token = match_token(p, (struct match_token const *)(& tokens), (substring_t *)(& args));
  switch (token) {
  case 0: ;
  case 1:
  sig_src = args[0].from;
  rc = ecryptfs_add_global_auth_tok(mount_crypt_stat, sig_src, 0U);
  if (rc != 0) {
    printk("\vError attempting to register global sig; rc = [%d]\n", rc);
    goto out;
  } else {
  }
  sig_set = 1;
  goto ldv_32046;
  case 2: ;
  case 3:
  cipher_name_src = args[0].from;
  cipher_name_dst = (char *)(& mount_crypt_stat->global_default_cipher_name);
  strncpy(cipher_name_dst, (char const *)cipher_name_src, 32UL);
  *(cipher_name_dst + 32UL) = 0;
  cipher_name_set = 1;
  goto ldv_32046;
  case 4:
  cipher_key_bytes_src = args[0].from;
  tmp = simple_strtol((char const *)cipher_key_bytes_src, & cipher_key_bytes_src,
                      0U);
  cipher_key_bytes = (int )tmp;
  mount_crypt_stat->global_default_cipher_key_size = (size_t )cipher_key_bytes;
  cipher_key_bytes_set = 1;
  goto ldv_32046;
  case 5:
  mount_crypt_stat->flags = mount_crypt_stat->flags | 1U;
  goto ldv_32046;
  case 6:
  mount_crypt_stat->flags = mount_crypt_stat->flags | 2U;
  goto ldv_32046;
  case 7:
  mount_crypt_stat->flags = mount_crypt_stat->flags | 2U;
  mount_crypt_stat->flags = mount_crypt_stat->flags | 4U;
  goto ldv_32046;
  case 8:
  fnek_src = args[0].from;
  fnek_dst = (char *)(& mount_crypt_stat->global_default_fnek_sig);
  strncpy(fnek_dst, (char const *)fnek_src, 16UL);
  mount_crypt_stat->global_default_fnek_sig[16] = 0;
  rc = ecryptfs_add_global_auth_tok(mount_crypt_stat, (char *)(& mount_crypt_stat->global_default_fnek_sig),
                                    2U);
  if (rc != 0) {
    printk("\vError attempting to register global fnek sig [%s]; rc = [%d]\n", (char *)(& mount_crypt_stat->global_default_fnek_sig),
           rc);
    goto out;
  } else {
  }
  mount_crypt_stat->flags = mount_crypt_stat->flags | 48U;
  goto ldv_32046;
  case 9:
  fn_cipher_name_src = args[0].from;
  fn_cipher_name_dst = (char *)(& mount_crypt_stat->global_default_fn_cipher_name);
  strncpy(fn_cipher_name_dst, (char const *)fn_cipher_name_src, 32UL);
  mount_crypt_stat->global_default_fn_cipher_name[32] = 0U;
  fn_cipher_name_set = 1;
  goto ldv_32046;
  case 10:
  fn_cipher_key_bytes_src = args[0].from;
  tmp___0 = simple_strtol((char const *)fn_cipher_key_bytes_src, & fn_cipher_key_bytes_src,
                          0U);
  fn_cipher_key_bytes = (int )tmp___0;
  mount_crypt_stat->global_default_fn_cipher_key_bytes = (size_t )fn_cipher_key_bytes;
  fn_cipher_key_bytes_set = 1;
  goto ldv_32046;
  case 11:
  mount_crypt_stat->flags = mount_crypt_stat->flags | 8192U;
  goto ldv_32046;
  case 12:
  mount_crypt_stat->flags = mount_crypt_stat->flags | 128U;
  goto ldv_32046;
  case 13:
  *check_ruid = 1U;
  goto ldv_32046;
  case 14: ;
  default:
  printk("\f%s: eCryptfs: unrecognized option [%s]\n", "ecryptfs_parse_options", p);
  }
  ldv_32046: ;
  ldv_32043:
  p = strsep(& options, ",");
  if ((unsigned long )p != (unsigned long )((char *)0)) {
    goto ldv_32062;
  } else {
  }
  if (sig_set == 0) {
    rc = -22;
    __ecryptfs_printk("\v%s: You must supply at least one valid auth tok signature as a mount parameter; see the eCryptfs README\n",
                      "ecryptfs_parse_options");
    goto out;
  } else {
  }
  if (cipher_name_set == 0) {
    tmp___1 = strlen("aes");
    cipher_name_len = (int )tmp___1;
    tmp___2 = ldv__builtin_expect(cipher_name_len > 31, 0L);
    if (tmp___2 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/ecryptfs/ecryptfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/24/dscv_tempdir/dscv/ri/32_7a/fs/ecryptfs/main.c.prepared"),
                           "i" (547), "i" (12UL));
      ldv_32065: ;
      goto ldv_32065;
    } else {
    }
    strcpy((char *)(& mount_crypt_stat->global_default_cipher_name), "aes");
  } else {
  }
  if ((mount_crypt_stat->flags & 16U) != 0U && fn_cipher_name_set == 0) {
    strcpy((char *)(& mount_crypt_stat->global_default_fn_cipher_name), (char const *)(& mount_crypt_stat->global_default_cipher_name));
  } else {
  }
  if (cipher_key_bytes_set == 0) {
    mount_crypt_stat->global_default_cipher_key_size = 0UL;
  } else {
  }
  if ((mount_crypt_stat->flags & 16U) != 0U && fn_cipher_key_bytes_set == 0) {
    mount_crypt_stat->global_default_fn_cipher_key_bytes = mount_crypt_stat->global_default_cipher_key_size;
  } else {
  }
  cipher_code = ecryptfs_code_for_cipher_string((char *)(& mount_crypt_stat->global_default_cipher_name),
                                                mount_crypt_stat->global_default_cipher_key_size);
  if ((unsigned int )cipher_code == 0U) {
    __ecryptfs_printk("\v%s: eCryptfs doesn\'t support cipher: %s", "ecryptfs_parse_options",
                      (unsigned char *)(& mount_crypt_stat->global_default_cipher_name));
    rc = -22;
    goto out;
  } else {
  }
  ldv_mutex_lock_88(& key_tfm_list_mutex);
  tmp___3 = ecryptfs_tfm_exists((char *)(& mount_crypt_stat->global_default_cipher_name),
                                0);
  if (tmp___3 == 0) {
    rc = ecryptfs_add_new_key_tfm(0, (char *)(& mount_crypt_stat->global_default_cipher_name),
                                  mount_crypt_stat->global_default_cipher_key_size);
    if (rc != 0) {
      printk("\vError attempting to initialize cipher with name = [%s] and key size = [%td]; rc = [%d]\n",
             (unsigned char *)(& mount_crypt_stat->global_default_cipher_name), mount_crypt_stat->global_default_cipher_key_size,
             rc);
      rc = -22;
      ldv_mutex_unlock_89(& key_tfm_list_mutex);
      goto out;
    } else {
    }
  } else {
  }
  if ((mount_crypt_stat->flags & 16U) != 0U) {
    tmp___4 = ecryptfs_tfm_exists((char *)(& mount_crypt_stat->global_default_fn_cipher_name),
                                  0);
    if (tmp___4 == 0) {
      rc = ecryptfs_add_new_key_tfm(0, (char *)(& mount_crypt_stat->global_default_fn_cipher_name),
                                    mount_crypt_stat->global_default_fn_cipher_key_bytes);
      if (rc != 0) {
        printk("\vError attempting to initialize cipher with name = [%s] and key size = [%td]; rc = [%d]\n",
               (unsigned char *)(& mount_crypt_stat->global_default_fn_cipher_name),
               mount_crypt_stat->global_default_fn_cipher_key_bytes, rc);
        rc = -22;
        ldv_mutex_unlock_90(& key_tfm_list_mutex);
        goto out;
      } else {
      }
    } else {
    }
  } else {
  }
  ldv_mutex_unlock_91(& key_tfm_list_mutex);
  rc = ecryptfs_init_global_auth_toks(mount_crypt_stat);
  if (rc != 0) {
    printk("\fOne or more global auth toks could not properly register; rc = [%d]\n",
           rc);
  } else {
  }
  out: ;
  return (rc);
}
}
static struct file_system_type ecryptfs_fs_type ;
static struct dentry *ecryptfs_mount(struct file_system_type *fs_type , int flags ,
                                     char const *dev_name___0 , void *raw_data )
{
  struct super_block *s ;
  struct ecryptfs_sb_info *sbi ;
  struct ecryptfs_dentry_info *root_info ;
  char const *err ;
  struct inode *inode ;
  struct path path ;
  uid_t check_ruid ;
  int rc ;
  void *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  struct task_struct *tmp___3 ;
  uid_t tmp___4 ;
  uid_t tmp___5 ;
  int tmp___6 ;
  struct task_struct *tmp___7 ;
  bool tmp___8 ;
  int tmp___9 ;
  long tmp___10 ;
  long tmp___11 ;
  void *tmp___12 ;
  struct dentry *tmp___13 ;
  void *tmp___14 ;
  {
  err = "Getting sb failed";
  tmp = kmem_cache_zalloc(ecryptfs_sb_info_cache, 208U);
  sbi = (struct ecryptfs_sb_info *)tmp;
  if ((unsigned long )sbi == (unsigned long )((struct ecryptfs_sb_info *)0)) {
    rc = -12;
    goto out;
  } else {
  }
  rc = ecryptfs_parse_options(sbi, (char *)raw_data, & check_ruid);
  if (rc != 0) {
    err = "Error parsing options";
    goto out;
  } else {
  }
  s = sget(fs_type, 0, & set_anon_super, flags, 0);
  tmp___1 = IS_ERR((void const *)s);
  if (tmp___1 != 0L) {
    tmp___0 = PTR_ERR((void const *)s);
    rc = (int )tmp___0;
    goto out;
  } else {
  }
  rc = bdi_setup_and_register(& sbi->bdi, (char *)"ecryptfs", 4U);
  if (rc != 0) {
    goto out1;
  } else {
  }
  ecryptfs_set_superblock_private(s, sbi);
  s->s_bdi = & sbi->bdi;
  sbi = 0;
  s->s_op = & ecryptfs_sops;
  s->s_d_op = & ecryptfs_dops;
  err = "Reading sb failed";
  rc = kern_path(dev_name___0, 3U, & path);
  if (rc != 0) {
    __ecryptfs_printk("\f%s: kern_path() failed\n", "ecryptfs_mount");
    goto out1;
  } else {
  }
  if ((unsigned long )((path.dentry)->d_sb)->s_type == (unsigned long )(& ecryptfs_fs_type)) {
    rc = -22;
    printk("\vMount on filesystem of type eCryptfs explicitly disallowed due to known incompatibilities\n");
    goto out_free;
  } else {
  }
  if (check_ruid != 0U) {
    tmp___6 = debug_lockdep_rcu_enabled();
    tmp___7 = get_current();
    tmp___8 = uid_eq(((path.dentry)->d_inode)->i_uid, (tmp___7->cred)->uid);
    if (tmp___8) {
      tmp___9 = 0;
    } else {
      tmp___9 = 1;
    }
    if (tmp___9) {
      rc = -1;
      tmp___2 = debug_lockdep_rcu_enabled();
      tmp___3 = get_current();
      tmp___4 = from_kuid(& init_user_ns, (tmp___3->cred)->uid);
      tmp___5 = i_uid_read((struct inode const *)(path.dentry)->d_inode);
      printk("\vMount of device (uid: %d) not owned by requested user (uid: %d)\n",
             tmp___5, tmp___4);
      goto out_free;
    } else {
    }
  } else {
  }
  ecryptfs_set_superblock_lower(s, (path.dentry)->d_sb);
  s->s_flags = (unsigned long )(flags & -65537);
  s->s_flags = s->s_flags | (((path.dentry)->d_sb)->s_flags & 65537UL);
  s->s_maxbytes = ((path.dentry)->d_sb)->s_maxbytes;
  s->s_blocksize = ((path.dentry)->d_sb)->s_blocksize;
  s->s_magic = 61791UL;
  inode = ecryptfs_get_inode((path.dentry)->d_inode, s);
  tmp___10 = PTR_ERR((void const *)inode);
  rc = (int )tmp___10;
  tmp___11 = IS_ERR((void const *)inode);
  if (tmp___11 != 0L) {
    goto out_free;
  } else {
  }
  s->s_root = d_make_root(inode);
  if ((unsigned long )s->s_root == (unsigned long )((struct dentry *)0)) {
    rc = -12;
    goto out_free;
  } else {
  }
  rc = -12;
  tmp___12 = kmem_cache_zalloc(ecryptfs_dentry_info_cache, 208U);
  root_info = (struct ecryptfs_dentry_info *)tmp___12;
  if ((unsigned long )root_info == (unsigned long )((struct ecryptfs_dentry_info *)0)) {
    goto out_free;
  } else {
  }
  ecryptfs_set_dentry_private(s->s_root, root_info);
  ecryptfs_set_dentry_lower(s->s_root, path.dentry);
  ecryptfs_set_dentry_lower_mnt(s->s_root, path.mnt);
  s->s_flags = s->s_flags | 1073741824UL;
  tmp___13 = dget(s->s_root);
  return (tmp___13);
  out_free:
  path_put(& path);
  out1:
  deactivate_locked_super(s);
  out: ;
  if ((unsigned long )sbi != (unsigned long )((struct ecryptfs_sb_info *)0)) {
    ecryptfs_destroy_mount_crypt_stat(& sbi->mount_crypt_stat);
    kmem_cache_free(ecryptfs_sb_info_cache, (void *)sbi);
  } else {
  }
  printk("\v%s; rc = [%d]\n", err, rc);
  tmp___14 = ERR_PTR((long )rc);
  return ((struct dentry *)tmp___14);
}
}
static void ecryptfs_kill_block_super(struct super_block *sb )
{
  struct ecryptfs_sb_info *sb_info ;
  struct ecryptfs_sb_info *tmp ;
  {
  tmp = ecryptfs_superblock_to_private(sb);
  sb_info = tmp;
  kill_anon_super(sb);
  if ((unsigned long )sb_info == (unsigned long )((struct ecryptfs_sb_info *)0)) {
    return;
  } else {
  }
  ecryptfs_destroy_mount_crypt_stat(& sb_info->mount_crypt_stat);
  bdi_destroy(& sb_info->bdi);
  kmem_cache_free(ecryptfs_sb_info_cache, (void *)sb_info);
  return;
}
}
static struct file_system_type ecryptfs_fs_type =
     {"ecryptfs", 0, & ecryptfs_mount, & ecryptfs_kill_block_super, & __this_module,
    0, {0}, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
              {(char)0}}}, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                             {(char)0}, {(char)0}, {(char)0}}}, {{{(char)0}, {(char)0},
                                                                  {(char)0}, {(char)0},
                                                                  {(char)0}, {(char)0},
                                                                  {(char)0}, {(char)0}}},
    {{{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
       {(char)0}}}, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                      {(char)0}, {(char)0}}}, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
      {(char)0}}}, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                     {(char)0}, {(char)0}}}, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}};
static void inode_info_init_once(void *vptr )
{
  struct ecryptfs_inode_info *ei ;
  {
  ei = (struct ecryptfs_inode_info *)vptr;
  inode_init_once(& ei->vfs_inode);
  return;
}
}
static struct ecryptfs_cache_info ecryptfs_cache_infos[11U] =
  { {& ecryptfs_auth_tok_list_item_cache, "ecryptfs_auth_tok_list_item", 824UL, 0},
        {& ecryptfs_file_info_cache,
      "ecryptfs_file_cache", 16UL, 0},
        {& ecryptfs_dentry_info_cache, "ecryptfs_dentry_info_cache", 24UL, 0},
        {& ecryptfs_inode_info_cache, "ecryptfs_inode_cache", 2104UL, & inode_info_init_once},
        {& ecryptfs_sb_info_cache,
      "ecryptfs_sb_cache", 1568UL, 0},
        {& ecryptfs_header_cache, "ecryptfs_headers", 4096UL, 0},
        {& ecryptfs_xattr_cache, "ecryptfs_xattr_cache", 4096UL, 0},
        {& ecryptfs_key_record_cache, "ecryptfs_key_record_cache", 536UL, 0},
        {& ecryptfs_key_sig_cache, "ecryptfs_key_sig_cache", 40UL, 0},
        {& ecryptfs_global_auth_tok_cache, "ecryptfs_global_auth_tok_cache", 56UL, 0},
        {& ecryptfs_key_tfm_cache,
      "ecryptfs_key_tfm_cache", 240UL, 0}};
static void ecryptfs_free_kmem_caches(void)
{
  int i ;
  struct ecryptfs_cache_info *info ;
  {
  rcu_barrier();
  i = 0;
  goto ldv_32114;
  ldv_32113:
  info = (struct ecryptfs_cache_info *)(& ecryptfs_cache_infos) + (unsigned long )i;
  if ((unsigned long )*(info->cache) != (unsigned long )((struct kmem_cache *)0)) {
    kmem_cache_destroy(*(info->cache));
  } else {
  }
  i = i + 1;
  ldv_32114: ;
  if ((unsigned int )i <= 10U) {
    goto ldv_32113;
  } else {
  }
  return;
}
}
static int ecryptfs_init_kmem_caches(void)
{
  int i ;
  struct ecryptfs_cache_info *info ;
  {
  i = 0;
  goto ldv_32125;
  ldv_32124:
  info = (struct ecryptfs_cache_info *)(& ecryptfs_cache_infos) + (unsigned long )i;
  *(info->cache) = kmem_cache_create(info->name, info->size, 0UL, 8192UL, info->ctor);
  if ((unsigned long )*(info->cache) == (unsigned long )((struct kmem_cache *)0)) {
    ecryptfs_free_kmem_caches();
    __ecryptfs_printk("\f%s: %s: kmem_cache_create failed\n", "ecryptfs_init_kmem_caches",
                      info->name);
    return (-12);
  } else {
  }
  i = i + 1;
  ldv_32125: ;
  if ((unsigned int )i <= 10U) {
    goto ldv_32124;
  } else {
  }
  return (0);
}
}
static struct kobject *ecryptfs_kobj ;
static ssize_t version_show(struct kobject *kobj , struct kobj_attribute *attr , char *buff )
{
  int tmp ;
  {
  tmp = snprintf(buff, 4096UL, "%d\n", 375);
  return ((ssize_t )tmp);
}
}
static struct kobj_attribute version_attr = {{"version", 292U, (_Bool)0, 0, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                                     {(char)0}, {(char)0}, {(char)0}}}}, & version_show,
    0};
static struct attribute *attributes[2U] = { & version_attr.attr, 0};
static struct attribute_group attr_group = {0, 0, (struct attribute **)(& attributes)};
static int do_sysfs_registration(void)
{
  int rc ;
  {
  ecryptfs_kobj = kobject_create_and_add("ecryptfs", fs_kobj);
  if ((unsigned long )ecryptfs_kobj == (unsigned long )((struct kobject *)0)) {
    printk("\vUnable to create ecryptfs kset\n");
    rc = -12;
    goto out;
  } else {
  }
  rc = sysfs_create_group(ecryptfs_kobj, (struct attribute_group const *)(& attr_group));
  if (rc != 0) {
    printk("\vUnable to create ecryptfs version attributes\n");
    kobject_put(ecryptfs_kobj);
  } else {
  }
  out: ;
  return (rc);
}
}
static void do_sysfs_unregistration(void)
{
  {
  sysfs_remove_group(ecryptfs_kobj, (struct attribute_group const *)(& attr_group));
  kobject_put(ecryptfs_kobj);
  return;
}
}
static int ecryptfs_init(void)
{
  int rc ;
  {
  rc = ecryptfs_init_kmem_caches();
  if (rc != 0) {
    printk("\vFailed to allocate one or more kmem_cache objects\n");
    goto out;
  } else {
  }
  rc = do_sysfs_registration();
  if (rc != 0) {
    printk("\vsysfs registration failed\n");
    goto out_free_kmem_caches;
  } else {
  }
  rc = ecryptfs_init_kthread();
  if (rc != 0) {
    printk("\v%s: kthread initialization failed; rc = [%d]\n", "ecryptfs_init", rc);
    goto out_do_sysfs_unregistration;
  } else {
  }
  rc = ecryptfs_init_messaging();
  if (rc != 0) {
    printk("\vFailure occurred while attempting to initialize the communications channel to ecryptfsd\n");
    goto out_destroy_kthread;
  } else {
  }
  rc = ecryptfs_init_crypto();
  if (rc != 0) {
    printk("\vFailure whilst attempting to init crypto; rc = [%d]\n", rc);
    goto out_release_messaging;
  } else {
  }
  rc = register_filesystem(& ecryptfs_fs_type);
  if (rc != 0) {
    printk("\vFailed to register filesystem\n");
    goto out_destroy_crypto;
  } else {
  }
  if (ecryptfs_verbosity > 0) {
    printk("\neCryptfs verbosity set to %d. Secret values will be written to the syslog!\n",
           ecryptfs_verbosity);
  } else {
  }
  goto out;
  out_destroy_crypto:
  ecryptfs_destroy_crypto();
  out_release_messaging:
  ecryptfs_release_messaging();
  out_destroy_kthread:
  ecryptfs_destroy_kthread();
  out_do_sysfs_unregistration:
  do_sysfs_unregistration();
  out_free_kmem_caches:
  ecryptfs_free_kmem_caches();
  out: ;
  return (rc);
}
}
static void ecryptfs_exit(void)
{
  int rc ;
  {
  rc = ecryptfs_destroy_crypto();
  if (rc != 0) {
    printk("\vFailure whilst attempting to destroy crypto; rc = [%d]\n", rc);
  } else {
  }
  ecryptfs_release_messaging();
  ecryptfs_destroy_kthread();
  do_sysfs_unregistration();
  unregister_filesystem(& ecryptfs_fs_type);
  ecryptfs_free_kmem_caches();
  return;
}
}
int main(void)
{
  struct file_system_type *var_group1 ;
  int var_ecryptfs_mount_6_p1 ;
  char const *var_ecryptfs_mount_6_p2 ;
  void *var_ecryptfs_mount_6_p3 ;
  struct super_block *var_group2 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = ecryptfs_init();
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_32199;
  ldv_32198:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0:
  ldv_handler_precall();
  ecryptfs_mount(var_group1, var_ecryptfs_mount_6_p1, var_ecryptfs_mount_6_p2, var_ecryptfs_mount_6_p3);
  goto ldv_32195;
  case 1:
  ldv_handler_precall();
  ecryptfs_kill_block_super(var_group2);
  goto ldv_32195;
  default: ;
  goto ldv_32195;
  }
  ldv_32195: ;
  ldv_32199:
  tmp___1 = __VERIFIER_nondet_int();
  if (tmp___1 != 0) {
    goto ldv_32198;
  } else {
  }
  ldv_handler_precall();
  ecryptfs_exit();
  ldv_final:
  ldv_check_final_state();
  return 0;
}
}
void ldv_mutex_lock_77(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_78(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_79(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_80(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_81(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_82(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_83(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_84(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lower_file_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_85(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lower_file_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_atomic_dec_and_mutex_lock_86(atomic_t *ldv_func_arg1 , struct mutex *ldv_func_arg2 )
{
  ldv_func_ret_type___8 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = atomic_dec_and_mutex_lock(ldv_func_arg1, ldv_func_arg2);
  ldv_func_res = tmp;
  tmp___0 = ldv_atomic_dec_and_mutex_lock_lower_file_count(ldv_func_arg1, ldv_func_arg2);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_unlock_87(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lower_file_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_88(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_key_tfm_list_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_89(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_key_tfm_list_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_90(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_key_tfm_list_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_91(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_key_tfm_list_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_108(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_110(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_112(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_107(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_109(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_111(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_global_auth_tok_list_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_global_auth_tok_list_mutex(struct mutex *lock ) ;
extern void call_rcu_sched(struct callback_head * , void (*)(struct callback_head * ) ) ;
extern void clear_inode(struct inode * ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
extern void truncate_inode_pages(struct address_space * , loff_t ) ;
struct kmem_cache *ecryptfs_inode_info_cache ;
void ecryptfs_destroy_crypt_stat(struct ecryptfs_crypt_stat *crypt_stat ) ;
int ecryptfs_set_f_namelen(long *namelen , long lower_namelen , struct ecryptfs_mount_crypt_stat *mount_crypt_stat ) ;
static struct inode *ecryptfs_alloc_inode(struct super_block *sb )
{
  struct ecryptfs_inode_info *inode_info ;
  struct inode *inode ;
  void *tmp ;
  long tmp___0 ;
  struct lock_class_key __key ;
  {
  inode = 0;
  tmp = kmem_cache_alloc(ecryptfs_inode_info_cache, 208U);
  inode_info = (struct ecryptfs_inode_info *)tmp;
  tmp___0 = ldv__builtin_expect((unsigned long )inode_info == (unsigned long )((struct ecryptfs_inode_info *)0),
                             0L);
  if (tmp___0 != 0L) {
    goto out;
  } else {
  }
  ecryptfs_init_crypt_stat(& inode_info->crypt_stat);
  __mutex_init(& inode_info->lower_file_mutex, "&inode_info->lower_file_mutex", & __key);
  atomic_set(& inode_info->lower_file_count, 0);
  inode_info->lower_file = 0;
  inode = & inode_info->vfs_inode;
  out: ;
  return (inode);
}
}
static void ecryptfs_i_callback(struct callback_head *head )
{
  struct inode *inode ;
  struct callback_head const *__mptr ;
  struct ecryptfs_inode_info *inode_info ;
  {
  __mptr = (struct callback_head const *)head;
  inode = (struct inode *)__mptr + 0xfffffffffffffe28UL;
  inode_info = ecryptfs_inode_to_private(inode);
  kmem_cache_free(ecryptfs_inode_info_cache, (void *)inode_info);
  return;
}
}
static void ecryptfs_destroy_inode(struct inode *inode )
{
  struct ecryptfs_inode_info *inode_info ;
  long tmp ;
  {
  inode_info = ecryptfs_inode_to_private(inode);
  tmp = ldv__builtin_expect((unsigned long )inode_info->lower_file != (unsigned long )((struct file *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/ecryptfs/ecryptfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/24/dscv_tempdir/dscv/ri/32_7a/fs/ecryptfs/super.c.prepared"),
                         "i" (227), "i" (12UL));
    ldv_25976: ;
    goto ldv_25976;
  } else {
  }
  ecryptfs_destroy_crypt_stat(& inode_info->crypt_stat);
  call_rcu_sched(& inode->ldv_13360.i_rcu, & ecryptfs_i_callback);
  return;
}
}
static int ecryptfs_statfs(struct dentry *dentry , struct kstatfs *buf )
{
  struct dentry *lower_dentry ;
  struct dentry *tmp ;
  int rc ;
  struct ecryptfs_sb_info *tmp___0 ;
  {
  tmp = ecryptfs_dentry_to_lower(dentry);
  lower_dentry = tmp;
  if ((unsigned long )((lower_dentry->d_sb)->s_op)->statfs == (unsigned long )((int (* )(struct dentry * ,
                                                                                                    struct kstatfs * ))0)) {
    return (-38);
  } else {
  }
  rc = (*(((lower_dentry->d_sb)->s_op)->statfs))(lower_dentry, buf);
  if (rc != 0) {
    return (rc);
  } else {
  }
  buf->f_type = 61791L;
  tmp___0 = ecryptfs_superblock_to_private(dentry->d_sb);
  rc = ecryptfs_set_f_namelen(& buf->f_namelen, buf->f_namelen, & tmp___0->mount_crypt_stat);
  return (rc);
}
}
static void ecryptfs_evict_inode(struct inode *inode )
{
  struct inode *tmp ;
  {
  truncate_inode_pages(& inode->i_data, 0LL);
  clear_inode(inode);
  tmp = ecryptfs_inode_to_lower(inode);
  iput(tmp);
  return;
}
}
static int ecryptfs_show_options(struct seq_file *m , struct dentry *root )
{
  struct super_block *sb ;
  struct ecryptfs_mount_crypt_stat *mount_crypt_stat ;
  struct ecryptfs_sb_info *tmp ;
  struct ecryptfs_global_auth_tok *walker ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  sb = root->d_sb;
  tmp = ecryptfs_superblock_to_private(sb);
  mount_crypt_stat = & tmp->mount_crypt_stat;
  ldv_mutex_lock_111(& mount_crypt_stat->global_auth_tok_list_mutex);
  __mptr = (struct list_head const *)mount_crypt_stat->global_auth_tok_list.next;
  walker = (struct ecryptfs_global_auth_tok *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_25998;
  ldv_25997: ;
  if ((walker->flags & 2U) != 0U) {
    seq_printf(m, ",ecryptfs_fnek_sig=%s", (unsigned char *)(& walker->sig));
  } else {
    seq_printf(m, ",ecryptfs_sig=%s", (unsigned char *)(& walker->sig));
  }
  __mptr___0 = (struct list_head const *)walker->mount_crypt_stat_list.next;
  walker = (struct ecryptfs_global_auth_tok *)__mptr___0 + 0xfffffffffffffff8UL;
  ldv_25998: ;
  if ((unsigned long )walker != (unsigned long )mount_crypt_stat) {
    goto ldv_25997;
  } else {
  }
  ldv_mutex_unlock_112(& mount_crypt_stat->global_auth_tok_list_mutex);
  seq_printf(m, ",ecryptfs_cipher=%s", (unsigned char *)(& mount_crypt_stat->global_default_cipher_name));
  if (mount_crypt_stat->global_default_cipher_key_size != 0UL) {
    seq_printf(m, ",ecryptfs_key_bytes=%zd", mount_crypt_stat->global_default_cipher_key_size);
  } else {
  }
  if ((int )mount_crypt_stat->flags & 1) {
    seq_printf(m, ",ecryptfs_passthrough");
  } else {
  }
  if ((mount_crypt_stat->flags & 2U) != 0U) {
    seq_printf(m, ",ecryptfs_xattr_metadata");
  } else {
  }
  if ((mount_crypt_stat->flags & 4U) != 0U) {
    seq_printf(m, ",ecryptfs_encrypted_view");
  } else {
  }
  if ((mount_crypt_stat->flags & 8192U) != 0U) {
    seq_printf(m, ",ecryptfs_unlink_sigs");
  } else {
  }
  if ((mount_crypt_stat->flags & 128U) != 0U) {
    seq_printf(m, ",ecryptfs_mount_auth_tok_only");
  } else {
  }
  return (0);
}
}
struct super_operations const ecryptfs_sops =
     {& ecryptfs_alloc_inode, & ecryptfs_destroy_inode, 0, 0, 0, & ecryptfs_evict_inode,
    0, 0, 0, 0, & ecryptfs_statfs, 0, 0, & ecryptfs_show_options, 0, 0, 0, 0, 0, 0,
    0, 0};
void ldv_main4_sequence_infinite_withcheck_stateful(void)
{
  struct super_block *var_group1 ;
  struct inode *var_group2 ;
  struct dentry *var_group3 ;
  struct kstatfs *var_group4 ;
  struct seq_file *var_group5 ;
  int tmp ;
  int tmp___0 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_26030;
  ldv_26029:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_handler_precall();
  ecryptfs_alloc_inode(var_group1);
  goto ldv_26023;
  case 1:
  ldv_handler_precall();
  ecryptfs_destroy_inode(var_group2);
  goto ldv_26023;
  case 2:
  ldv_handler_precall();
  ecryptfs_statfs(var_group3, var_group4);
  goto ldv_26023;
  case 3:
  ldv_handler_precall();
  ecryptfs_evict_inode(var_group2);
  goto ldv_26023;
  case 4:
  ldv_handler_precall();
  ecryptfs_show_options(var_group5, var_group3);
  goto ldv_26023;
  default: ;
  goto ldv_26023;
  }
  ldv_26023: ;
  ldv_26030:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    goto ldv_26029;
  } else {
  }
  ldv_check_final_state();
  return;
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
void ldv_mutex_lock_109(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_110(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_111(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_global_auth_tok_list_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_112(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_global_auth_tok_list_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
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
__inline static int test_and_set_bit_lock(int nr , unsigned long volatile *addr )
{
  int tmp ;
  {
  tmp = test_and_set_bit(nr, addr);
  return (tmp);
}
}
__inline static int constant_test_bit(unsigned int nr , unsigned long const volatile *addr )
{
  {
  return ((int )((unsigned long )*(addr + (unsigned long )(nr / 64U)) >> ((int )nr & 63)) & 1);
}
}
__inline static __u64 __arch_swab64(__u64 val )
{
  {
  __asm__ ("bswapq %0": "=r" (val): "0" (val));
  return (val);
}
}
__inline static __u64 __fswab64(__u64 val )
{
  __u64 tmp ;
  {
  tmp = __arch_swab64(val);
  return (tmp);
}
}
extern void __might_sleep(char const * , int , int ) ;
void ldv_mutex_unlock_120(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_122(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_124(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_119(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_121(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_123(struct mutex *ldv_func_arg1 ) ;
__inline static struct thread_info *current_thread_info___0(void)
{
  struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6379;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6379;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6379;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6379;
  default:
  __bad_percpu_size();
  }
  ldv_6379:
  ti = (struct thread_info *)(pfo_ret__ - 8152UL);
  return (ti);
}
}
__inline static int PageUptodate(struct page *page )
{
  int ret ;
  int tmp ;
  {
  tmp = constant_test_bit(3U, (unsigned long const volatile *)(& page->flags));
  ret = tmp;
  if (ret != 0) {
    __asm__ volatile ("": : : "memory");
  } else {
  }
  return (ret);
}
}
__inline static void SetPageUptodate(struct page *page )
{
  {
  __asm__ volatile ("": : : "memory");
  set_bit(3U, (unsigned long volatile *)(& page->flags));
  return;
}
}
__inline static void ClearPageUptodate(struct page *page )
{
  {
  clear_bit(3, (unsigned long volatile *)(& page->flags));
  return;
}
}
extern void put_page(struct page * ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 80L) << 12) + 0xffff880000000000UL));
}
}
__inline static void pagefault_disable(void)
{
  struct thread_info *tmp ;
  {
  tmp = current_thread_info___0();
  tmp->preempt_count = tmp->preempt_count + 1;
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void pagefault_enable(void)
{
  struct thread_info *tmp ;
  {
  __asm__ volatile ("": : : "memory");
  tmp = current_thread_info___0();
  tmp->preempt_count = tmp->preempt_count + -1;
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void *kmap_atomic(struct page *page )
{
  void *tmp ;
  {
  pagefault_disable();
  tmp = lowmem_page_address((struct page const *)page);
  return (tmp);
}
}
__inline static void __kunmap_atomic(void *addr )
{
  {
  pagefault_enable();
  return;
}
}
__inline static void zero_user_segments(struct page *page , unsigned int start1 ,
                                        unsigned int end1 , unsigned int start2 ,
                                        unsigned int end2 )
{
  void *kaddr ;
  void *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  tmp = kmap_atomic(page);
  kaddr = tmp;
  tmp___0 = ldv__builtin_expect(end1 > 4096U, 0L);
  if (tmp___0 != 0L) {
    goto _L;
  } else {
    tmp___1 = ldv__builtin_expect(end2 > 4096U, 0L);
    if (tmp___1 != 0L) {
      _L:
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/highmem.h"),
                           "i" (198), "i" (12UL));
      ldv_20290: ;
      goto ldv_20290;
    } else {
    }
  }
  if (end1 > start1) {
    memset(kaddr + (unsigned long )start1, 0, (size_t )(end1 - start1));
  } else {
  }
  if (end2 > start2) {
    memset(kaddr + (unsigned long )start2, 0, (size_t )(end2 - start2));
  } else {
  }
  __kunmap_atomic(kaddr);
  return;
}
}
__inline static void zero_user_segment(struct page *page , unsigned int start , unsigned int end )
{
  {
  zero_user_segments(page, start, end, 0U, 0U);
  return;
}
}
__inline static void zero_user(struct page *page , unsigned int start , unsigned int size )
{
  {
  zero_user_segments(page, start, start + size, 0U, 0U);
  return;
}
}
extern struct page *grab_cache_page_write_begin(struct address_space * , unsigned long ,
                                                unsigned int ) ;
extern struct page *read_cache_page(struct address_space * , unsigned long , filler_t * ,
                                    void * ) ;
__inline static struct page *read_mapping_page(struct address_space *mapping , unsigned long index ,
                                               void *data )
{
  filler_t *filler ;
  struct page *tmp ;
  {
  filler = (filler_t *)(mapping->a_ops)->readpage;
  tmp = read_cache_page(mapping, index, filler, data);
  return (tmp);
}
}
extern void __lock_page(struct page * ) ;
extern void unlock_page(struct page * ) ;
__inline static int trylock_page(struct page *page )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = test_and_set_bit_lock(0, (unsigned long volatile *)(& page->flags));
  tmp___0 = ldv__builtin_expect(tmp == 0, 1L);
  return ((int )tmp___0);
}
}
__inline static void lock_page(struct page *page )
{
  int tmp ;
  {
  __might_sleep("include/linux/pagemap.h", 350, 0);
  tmp = trylock_page(page);
  if (tmp == 0) {
    __lock_page(page);
  } else {
  }
  return;
}
}
__inline static void put_unaligned_be64(u64 val , void *p )
{
  __u64 tmp ;
  {
  tmp = __fswab64(val);
  *((__be64 *)p) = tmp;
  return;
}
}
struct kmem_cache *ecryptfs_xattr_cache ;
int ecryptfs_encrypt_page(struct page *page ) ;
int ecryptfs_decrypt_page(struct page *page ) ;
void ecryptfs_write_crypt_stat_flags(char *page_virt , struct ecryptfs_crypt_stat *crypt_stat ,
                                     size_t *written ) ;
int ecryptfs_read_xattr_region(char *page_virt , struct inode *ecryptfs_inode ) ;
void ecryptfs_write_header_metadata(char *virt , struct ecryptfs_crypt_stat *crypt_stat ,
                                    size_t *written ) ;
int ecryptfs_write_lower(struct inode *ecryptfs_inode , char *data , loff_t offset ,
                         size_t size ) ;
int ecryptfs_write_lower_page_segment(struct inode *ecryptfs_inode , struct page *page_for_lower ,
                                      size_t offset_in_page , size_t size ) ;
int ecryptfs_read_lower_page_segment(struct page *page_for_ecryptfs , unsigned long page_index___0 ,
                                     size_t offset_in_page , size_t size , struct inode *ecryptfs_inode ) ;
struct page *ecryptfs_get_locked_page(struct inode *inode , loff_t index ) ;
struct page *ecryptfs_get_locked_page(struct inode *inode , loff_t index )
{
  struct page *page ;
  struct page *tmp ;
  long tmp___0 ;
  {
  tmp = read_mapping_page(inode->i_mapping, (unsigned long )index, 0);
  page = tmp;
  tmp___0 = IS_ERR((void const *)page);
  if (tmp___0 == 0L) {
    lock_page(page);
  } else {
  }
  return (page);
}
}
static int ecryptfs_writepage(struct page *page , struct writeback_control *wbc )
{
  int rc ;
  {
  rc = ecryptfs_encrypt_page(page);
  if (rc != 0) {
    __ecryptfs_printk("\f%s: Error encrypting page (upper index [0x%.16lx])\n", "ecryptfs_writepage",
                      page->ldv_18093.ldv_18077.index);
    ClearPageUptodate(page);
    goto out;
  } else {
  }
  SetPageUptodate(page);
  out:
  unlock_page(page);
  return (rc);
}
}
static void strip_xattr_flag(char *page_virt , struct ecryptfs_crypt_stat *crypt_stat )
{
  size_t written ;
  {
  if ((crypt_stat->flags & 128U) != 0U) {
    crypt_stat->flags = crypt_stat->flags & 4294967167U;
    ecryptfs_write_crypt_stat_flags(page_virt, crypt_stat, & written);
    crypt_stat->flags = crypt_stat->flags | 128U;
  } else {
  }
  return;
}
}
static int ecryptfs_copy_up_encrypted_with_header(struct page *page , struct ecryptfs_crypt_stat *crypt_stat )
{
  loff_t extent_num_in_page ;
  loff_t num_extents_per_page ;
  int rc ;
  loff_t view_extent_num ;
  size_t num_header_extents_at_front ;
  char *page_virt ;
  void *tmp ;
  size_t written ;
  loff_t lower_offset ;
  {
  extent_num_in_page = 0LL;
  num_extents_per_page = (loff_t )(4096UL / crypt_stat->extent_size);
  rc = 0;
  goto ldv_27289;
  ldv_27288:
  view_extent_num = (long long )page->ldv_18093.ldv_18077.index * num_extents_per_page + extent_num_in_page;
  num_header_extents_at_front = crypt_stat->metadata_size / crypt_stat->extent_size;
  if ((unsigned long long )view_extent_num < (unsigned long long )num_header_extents_at_front) {
    tmp = kmap_atomic(page);
    page_virt = (char *)tmp;
    memset((void *)page_virt, 0, 4096UL);
    if (view_extent_num == 0LL) {
      rc = ecryptfs_read_xattr_region(page_virt, (page->mapping)->host);
      strip_xattr_flag(page_virt + 16UL, crypt_stat);
      ecryptfs_write_header_metadata(page_virt + 20UL, crypt_stat, & written);
    } else {
    }
    __kunmap_atomic((void *)page_virt);
    if (rc != 0) {
      printk("\v%s: Error reading xattr region; rc = [%d]\n", "ecryptfs_copy_up_encrypted_with_header",
             rc);
      goto out;
    } else {
    }
  } else {
    lower_offset = (loff_t )((unsigned long long )crypt_stat->extent_size * (unsigned long long )view_extent_num - (unsigned long long )crypt_stat->metadata_size);
    rc = ecryptfs_read_lower_page_segment(page, (unsigned long )(lower_offset >> 12),
                                          (size_t )lower_offset & 4095UL, crypt_stat->extent_size,
                                          (page->mapping)->host);
    if (rc != 0) {
      printk("\v%s: Error attempting to read extent at offset [%lld] in the lower file; rc = [%d]\n",
             "ecryptfs_copy_up_encrypted_with_header", lower_offset, rc);
      goto out;
    } else {
    }
  }
  extent_num_in_page = extent_num_in_page + 1LL;
  ldv_27289: ;
  if (extent_num_in_page < num_extents_per_page) {
    goto ldv_27288;
  } else {
  }
  out: ;
  return (rc);
}
}
static int ecryptfs_readpage(struct file *file , struct page *page )
{
  struct ecryptfs_crypt_stat *crypt_stat ;
  struct ecryptfs_inode_info *tmp ;
  int rc ;
  {
  tmp = ecryptfs_inode_to_private((page->mapping)->host);
  crypt_stat = & tmp->crypt_stat;
  rc = 0;
  if ((unsigned long )crypt_stat == (unsigned long )((struct ecryptfs_crypt_stat *)0) || (crypt_stat->flags & 4U) == 0U) {
    rc = ecryptfs_read_lower_page_segment(page, page->ldv_18093.ldv_18077.index, 0UL,
                                          4096UL, (page->mapping)->host);
  } else
  if ((crypt_stat->flags & 256U) != 0U) {
    if ((crypt_stat->flags & 128U) != 0U) {
      rc = ecryptfs_copy_up_encrypted_with_header(page, crypt_stat);
      if (rc != 0) {
        printk("\v%s: Error attempting to copy the encrypted content from the lower file whilst inserting the metadata from the xattr into the header; rc = [%d]\n",
               "ecryptfs_readpage", rc);
        goto out;
      } else {
      }
    } else {
      rc = ecryptfs_read_lower_page_segment(page, page->ldv_18093.ldv_18077.index,
                                            0UL, 4096UL, (page->mapping)->host);
      if (rc != 0) {
        printk("\vError reading page; rc = [%d]\n", rc);
        goto out;
      } else {
      }
    }
  } else {
    rc = ecryptfs_decrypt_page(page);
    if (rc != 0) {
      __ecryptfs_printk("\v%s: Error decrypting page; rc = [%d]\n", "ecryptfs_readpage",
                        rc);
      goto out;
    } else {
    }
  }
  out: ;
  if (rc != 0) {
    ClearPageUptodate(page);
  } else {
    SetPageUptodate(page);
  }
  __ecryptfs_printk("\017%s: Unlocking page with index = [0x%.16lx]\n", "ecryptfs_readpage",
                    page->ldv_18093.ldv_18077.index);
  unlock_page(page);
  return (rc);
}
}
static int fill_zeros_to_end_of_page(struct page *page , unsigned int to )
{
  struct inode *inode ;
  int end_byte_in_page ;
  loff_t tmp ;
  loff_t tmp___0 ;
  {
  inode = (page->mapping)->host;
  tmp = i_size_read((struct inode const *)inode);
  if ((unsigned long long )tmp / 4096ULL != (unsigned long long )page->ldv_18093.ldv_18077.index) {
    goto out;
  } else {
  }
  tmp___0 = i_size_read((struct inode const *)inode);
  end_byte_in_page = (int )tmp___0 & 4095;
  if ((unsigned int )end_byte_in_page < to) {
    end_byte_in_page = (int )to;
  } else {
  }
  zero_user_segment(page, (unsigned int )end_byte_in_page, 4096U);
  out: ;
  return (0);
}
}
static int ecryptfs_write_begin(struct file *file , struct address_space *mapping ,
                                loff_t pos , unsigned int len , unsigned int flags ,
                                struct page **pagep , void **fsdata )
{
  unsigned long index ;
  struct page *page ;
  loff_t prev_page_end_size ;
  int rc ;
  struct ecryptfs_crypt_stat *crypt_stat ;
  struct ecryptfs_inode_info *tmp ;
  loff_t tmp___0 ;
  int tmp___1 ;
  loff_t tmp___2 ;
  loff_t tmp___3 ;
  long tmp___4 ;
  {
  index = (unsigned long )(pos >> 12);
  rc = 0;
  page = grab_cache_page_write_begin(mapping, index, flags);
  if ((unsigned long )page == (unsigned long )((struct page *)0)) {
    return (-12);
  } else {
  }
  *pagep = page;
  prev_page_end_size = (long long )index << 12;
  tmp___1 = PageUptodate(page);
  if (tmp___1 == 0) {
    tmp = ecryptfs_inode_to_private(mapping->host);
    crypt_stat = & tmp->crypt_stat;
    if ((crypt_stat->flags & 4U) == 0U) {
      rc = ecryptfs_read_lower_page_segment(page, index, 0UL, 4096UL, mapping->host);
      if (rc != 0) {
        printk("\v%s: Error attemping to read lower page segment; rc = [%d]\n", "ecryptfs_write_begin",
               rc);
        ClearPageUptodate(page);
        goto out;
      } else {
        SetPageUptodate(page);
      }
    } else
    if ((crypt_stat->flags & 256U) != 0U) {
      if ((crypt_stat->flags & 128U) != 0U) {
        rc = ecryptfs_copy_up_encrypted_with_header(page, crypt_stat);
        if (rc != 0) {
          printk("\v%s: Error attempting to copy the encrypted content from the lower file whilst inserting the metadata from the xattr into the header; rc = [%d]\n",
                 "ecryptfs_write_begin", rc);
          ClearPageUptodate(page);
          goto out;
        } else {
        }
        SetPageUptodate(page);
      } else {
        rc = ecryptfs_read_lower_page_segment(page, index, 0UL, 4096UL, mapping->host);
        if (rc != 0) {
          printk("\v%s: Error reading page; rc = [%d]\n", "ecryptfs_write_begin",
                 rc);
          ClearPageUptodate(page);
          goto out;
        } else {
        }
        SetPageUptodate(page);
      }
    } else {
      tmp___0 = i_size_read((struct inode const *)(page->mapping)->host);
      if (tmp___0 <= prev_page_end_size) {
        zero_user(page, 0U, 4096U);
      } else {
        rc = ecryptfs_decrypt_page(page);
        if (rc != 0) {
          printk("\v%s: Error decrypting page at index [%ld]; rc = [%d]\n", "ecryptfs_write_begin",
                 page->ldv_18093.ldv_18077.index, rc);
          ClearPageUptodate(page);
          goto out;
        } else {
        }
      }
      SetPageUptodate(page);
    }
  } else {
  }
  if (index != 0UL) {
    tmp___2 = i_size_read((struct inode const *)(page->mapping)->host);
    if (tmp___2 < prev_page_end_size) {
      rc = ecryptfs_truncate(file->f_path.dentry, prev_page_end_size);
      if (rc != 0) {
        printk("\v%s: Error on attempt to truncate to (higher) offset [%lld]; rc = [%d]\n",
               "ecryptfs_write_begin", prev_page_end_size, rc);
        goto out;
      } else {
      }
    } else {
    }
  } else {
  }
  tmp___3 = i_size_read((struct inode const *)mapping->host);
  if (tmp___3 == prev_page_end_size && pos != 0LL) {
    zero_user(page, 0U, 4096U);
  } else {
  }
  out:
  tmp___4 = ldv__builtin_expect(rc != 0, 0L);
  if (tmp___4 != 0L) {
    unlock_page(page);
    put_page(page);
    *pagep = 0;
  } else {
  }
  return (rc);
}
}
static int ecryptfs_write_inode_size_to_header(struct inode *ecryptfs_inode )
{
  char *file_size_virt ;
  int rc ;
  void *tmp ;
  loff_t tmp___0 ;
  {
  tmp = kmalloc(8UL, 208U);
  file_size_virt = (char *)tmp;
  if ((unsigned long )file_size_virt == (unsigned long )((char *)0)) {
    rc = -12;
    goto out;
  } else {
  }
  tmp___0 = i_size_read((struct inode const *)ecryptfs_inode);
  put_unaligned_be64((u64 )tmp___0, (void *)file_size_virt);
  rc = ecryptfs_write_lower(ecryptfs_inode, file_size_virt, 0LL, 8UL);
  kfree((void const *)file_size_virt);
  if (rc < 0) {
    printk("\v%s: Error writing file size to header; rc = [%d]\n", "ecryptfs_write_inode_size_to_header",
           rc);
  } else {
    rc = 0;
  }
  out: ;
  return (rc);
}
}
static int ecryptfs_write_inode_size_to_xattr(struct inode *ecryptfs_inode )
{
  ssize_t size ;
  void *xattr_virt ;
  struct dentry *lower_dentry ;
  struct ecryptfs_inode_info *tmp ;
  struct inode *lower_inode ;
  int rc ;
  loff_t tmp___0 ;
  {
  tmp = ecryptfs_inode_to_private(ecryptfs_inode);
  lower_dentry = (tmp->lower_file)->f_path.dentry;
  lower_inode = lower_dentry->d_inode;
  if ((unsigned long )(lower_inode->i_op)->getxattr == (unsigned long )((ssize_t (* )(struct dentry * ,
                                                                                                 char const * ,
                                                                                                 void * ,
                                                                                                 size_t ))0) || (unsigned long )(lower_inode->i_op)->setxattr == (unsigned long )((int (* )(struct dentry * ,
                                                                                                                                                                                                        char const * ,
                                                                                                                                                                                                        void const * ,
                                                                                                                                                                                                        size_t ,
                                                                                                                                                                                                        int ))0)) {
    printk("\fNo support for setting xattr in lower filesystem\n");
    rc = -38;
    goto out;
  } else {
  }
  xattr_virt = kmem_cache_alloc(ecryptfs_xattr_cache, 208U);
  if ((unsigned long )xattr_virt == (unsigned long )((void *)0)) {
    printk("\vOut of memory whilst attempting to write inode size to xattr\n");
    rc = -12;
    goto out;
  } else {
  }
  ldv_mutex_lock_123(& lower_inode->i_mutex);
  size = (*((lower_inode->i_op)->getxattr))(lower_dentry, "user.ecryptfs", xattr_virt,
                                            4096UL);
  if (size < 0L) {
    size = 8L;
  } else {
  }
  tmp___0 = i_size_read((struct inode const *)ecryptfs_inode);
  put_unaligned_be64((u64 )tmp___0, xattr_virt);
  rc = (*((lower_inode->i_op)->setxattr))(lower_dentry, "user.ecryptfs", (void const *)xattr_virt,
                                          (size_t )size, 0);
  ldv_mutex_unlock_124(& lower_inode->i_mutex);
  if (rc != 0) {
    printk("\vError whilst attempting to write inode size to lower file xattr; rc = [%d]\n",
           rc);
  } else {
  }
  kmem_cache_free(ecryptfs_xattr_cache, xattr_virt);
  out: ;
  return (rc);
}
}
int ecryptfs_write_inode_size_to_metadata(struct inode *ecryptfs_inode )
{
  struct ecryptfs_crypt_stat *crypt_stat ;
  struct ecryptfs_inode_info *tmp ;
  long tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  tmp = ecryptfs_inode_to_private(ecryptfs_inode);
  crypt_stat = & tmp->crypt_stat;
  tmp___0 = ldv__builtin_expect((crypt_stat->flags & 4U) == 0U, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/ecryptfs/ecryptfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/24/dscv_tempdir/dscv/ri/32_7a/fs/ecryptfs/mmap.c.prepared"),
                         "i" (596), "i" (12UL));
    ldv_27343: ;
    goto ldv_27343;
  } else {
  }
  if ((crypt_stat->flags & 128U) != 0U) {
    tmp___1 = ecryptfs_write_inode_size_to_xattr(ecryptfs_inode);
    return (tmp___1);
  } else {
    tmp___2 = ecryptfs_write_inode_size_to_header(ecryptfs_inode);
    return (tmp___2);
  }
}
}
static int ecryptfs_write_end(struct file *file , struct address_space *mapping ,
                              loff_t pos , unsigned int len , unsigned int copied ,
                              struct page *page , void *fsdata )
{
  unsigned long index ;
  unsigned int from ;
  unsigned int to ;
  struct inode *ecryptfs_inode ;
  struct ecryptfs_crypt_stat *crypt_stat ;
  struct ecryptfs_inode_info *tmp ;
  int rc ;
  struct inode *tmp___0 ;
  loff_t tmp___1 ;
  loff_t tmp___2 ;
  {
  index = (unsigned long )(pos >> 12);
  from = (unsigned int )pos & 4095U;
  to = from + copied;
  ecryptfs_inode = mapping->host;
  tmp = ecryptfs_inode_to_private(ecryptfs_inode);
  crypt_stat = & tmp->crypt_stat;
  __ecryptfs_printk("\017%s: Calling fill_zeros_to_end_of_page(page w/ index = [0x%.16lx], to = [%d])\n",
                    "ecryptfs_write_end", index, to);
  if ((crypt_stat->flags & 4U) == 0U) {
    rc = ecryptfs_write_lower_page_segment(ecryptfs_inode, page, 0UL, (size_t )to);
    if (rc == 0) {
      rc = (int )copied;
      tmp___0 = ecryptfs_inode_to_lower(ecryptfs_inode);
      fsstack_copy_inode_size(ecryptfs_inode, tmp___0);
    } else {
    }
    goto out;
  } else {
  }
  rc = fill_zeros_to_end_of_page(page, to);
  if (rc != 0) {
    __ecryptfs_printk("\f%s: Error attempting to fill zeros in page with index = [0x%.16lx]\n",
                      "ecryptfs_write_end", index);
    goto out;
  } else {
  }
  rc = ecryptfs_encrypt_page(page);
  if (rc != 0) {
    __ecryptfs_printk("\f%s: Error encrypting page (upper index [0x%.16lx])\n", "ecryptfs_write_end",
                      index);
    goto out;
  } else {
  }
  tmp___2 = i_size_read((struct inode const *)ecryptfs_inode);
  if ((loff_t )copied + pos > tmp___2) {
    i_size_write(ecryptfs_inode, (loff_t )copied + pos);
    tmp___1 = i_size_read((struct inode const *)ecryptfs_inode);
    __ecryptfs_printk("\017%s: Expanded file size to [0x%.16llx]\n", "ecryptfs_write_end",
                      (unsigned long long )tmp___1);
  } else {
  }
  rc = ecryptfs_write_inode_size_to_metadata(ecryptfs_inode);
  if (rc != 0) {
    printk("\vError writing inode size to metadata; rc = [%d]\n", rc);
  } else {
    rc = (int )copied;
  }
  out:
  unlock_page(page);
  put_page(page);
  return (rc);
}
}
static sector_t ecryptfs_bmap(struct address_space *mapping , sector_t block )
{
  int rc ;
  struct inode *inode ;
  struct inode *lower_inode ;
  sector_t tmp ;
  {
  rc = 0;
  inode = mapping->host;
  lower_inode = ecryptfs_inode_to_lower(inode);
  if ((unsigned long )((lower_inode->i_mapping)->a_ops)->bmap != (unsigned long )((sector_t (* )(struct address_space * ,
                                                                                                            sector_t ))0)) {
    tmp = (*(((lower_inode->i_mapping)->a_ops)->bmap))(lower_inode->i_mapping, block);
    rc = (int )tmp;
  } else {
  }
  return ((sector_t )rc);
}
}
struct address_space_operations const ecryptfs_aops =
     {& ecryptfs_writepage, & ecryptfs_readpage, 0, 0, 0, & ecryptfs_write_begin, & ecryptfs_write_end,
    & ecryptfs_bmap, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
void ldv_main5_sequence_infinite_withcheck_stateful(void)
{
  struct page *var_group1 ;
  struct writeback_control *var_group2 ;
  struct file *var_group3 ;
  struct address_space *var_group4 ;
  loff_t var_ecryptfs_write_begin_6_p2 ;
  unsigned int var_ecryptfs_write_begin_6_p3 ;
  unsigned int var_ecryptfs_write_begin_6_p4 ;
  struct page **var_ecryptfs_write_begin_6_p5 ;
  void **var_ecryptfs_write_begin_6_p6 ;
  loff_t var_ecryptfs_write_end_10_p2 ;
  unsigned int var_ecryptfs_write_end_10_p3 ;
  unsigned int var_ecryptfs_write_end_10_p4 ;
  struct page *var_ecryptfs_write_end_10_p5 ;
  void *var_ecryptfs_write_end_10_p6 ;
  sector_t var_ecryptfs_bmap_11_p1 ;
  int tmp ;
  int tmp___0 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_27408;
  ldv_27407:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_handler_precall();
  ecryptfs_writepage(var_group1, var_group2);
  goto ldv_27401;
  case 1:
  ldv_handler_precall();
  ecryptfs_readpage(var_group3, var_group1);
  goto ldv_27401;
  case 2:
  ldv_handler_precall();
  ecryptfs_write_begin(var_group3, var_group4, var_ecryptfs_write_begin_6_p2, var_ecryptfs_write_begin_6_p3,
                       var_ecryptfs_write_begin_6_p4, var_ecryptfs_write_begin_6_p5,
                       var_ecryptfs_write_begin_6_p6);
  goto ldv_27401;
  case 3:
  ldv_handler_precall();
  ecryptfs_write_end(var_group3, var_group4, var_ecryptfs_write_end_10_p2, var_ecryptfs_write_end_10_p3,
                     var_ecryptfs_write_end_10_p4, var_ecryptfs_write_end_10_p5, var_ecryptfs_write_end_10_p6);
  goto ldv_27401;
  case 4:
  ldv_handler_precall();
  ecryptfs_bmap(var_group4, var_ecryptfs_bmap_11_p1);
  goto ldv_27401;
  default: ;
  goto ldv_27401;
  }
  ldv_27401: ;
  ldv_27408:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    goto ldv_27407;
  } else {
  }
  ldv_check_final_state();
  return;
}
}
void ldv_mutex_lock_119(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_120(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_121(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_122(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_123(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_124(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex(ldv_func_arg1);
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
void ldv_mutex_unlock_132(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_131(struct mutex *ldv_func_arg1 ) ;
__inline static struct thread_info *current_thread_info___1(void)
{
  struct thread_info *ti ;
  unsigned long pfo_ret__ ;
  {
  switch (8UL) {
  case 1UL:
  __asm__ ("movb %%gs:%P1,%0": "=q" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6363;
  case 2UL:
  __asm__ ("movw %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6363;
  case 4UL:
  __asm__ ("movl %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6363;
  case 8UL:
  __asm__ ("movq %%gs:%P1,%0": "=r" (pfo_ret__): "p" (& kernel_stack));
  goto ldv_6363;
  default:
  __bad_percpu_size();
  }
  ldv_6363:
  ti = (struct thread_info *)(pfo_ret__ - 8152UL);
  return (ti);
}
}
__inline static int test_ti_thread_flag(struct thread_info *ti , int flag )
{
  int tmp ;
  {
  tmp = variable_test_bit(flag, (unsigned long const volatile *)(& ti->flags));
  return (tmp);
}
}
extern ssize_t vfs_read(struct file * , char * , size_t , loff_t * ) ;
extern ssize_t vfs_write(struct file * , char const * , size_t , loff_t * ) ;
extern void __mark_inode_dirty(struct inode * , int ) ;
__inline static void mark_inode_dirty_sync(struct inode *inode )
{
  {
  __mark_inode_dirty(inode, 1);
  return;
}
}
__inline static void pagefault_disable___0(void)
{
  struct thread_info *tmp ;
  {
  tmp = current_thread_info___1();
  tmp->preempt_count = tmp->preempt_count + 1;
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void pagefault_enable___0(void)
{
  struct thread_info *tmp ;
  {
  __asm__ volatile ("": : : "memory");
  tmp = current_thread_info___1();
  tmp->preempt_count = tmp->preempt_count + -1;
  __asm__ volatile ("": : : "memory");
  return;
}
}
__inline static void *kmap(struct page *page )
{
  void *tmp ;
  {
  __might_sleep("include/linux/highmem.h", 58, 0);
  tmp = lowmem_page_address((struct page const *)page);
  return (tmp);
}
}
__inline static void kunmap(struct page *page )
{
  {
  return;
}
}
__inline static void *kmap_atomic___0(struct page *page )
{
  void *tmp ;
  {
  pagefault_disable___0();
  tmp = lowmem_page_address((struct page const *)page);
  return (tmp);
}
}
__inline static void __kunmap_atomic___0(void *addr )
{
  {
  pagefault_enable___0();
  return;
}
}
__inline static int sigismember(sigset_t *set , int _sig )
{
  unsigned long sig ;
  {
  sig = (unsigned long )(_sig + -1);
  return ((int )(set->sig[0] >> (int )sig) & 1);
}
}
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
__inline static int __fatal_signal_pending(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = sigismember(& p->pending.signal, 9);
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  return ((int )tmp___0);
}
}
__inline static int fatal_signal_pending(struct task_struct *p )
{
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  tmp = signal_pending(p);
  if (tmp != 0) {
    tmp___0 = __fatal_signal_pending(p);
    if (tmp___0 != 0) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  } else {
    tmp___1 = 0;
  }
  return (tmp___1);
}
}
int ecryptfs_read_lower(char *data , loff_t offset , size_t size , struct inode *ecryptfs_inode ) ;
int ecryptfs_write_lower(struct inode *ecryptfs_inode , char *data , loff_t offset ,
                         size_t size )
{
  struct file *lower_file ;
  mm_segment_t fs_save ;
  ssize_t rc ;
  struct ecryptfs_inode_info *tmp ;
  struct thread_info *tmp___0 ;
  struct thread_info *tmp___1 ;
  mm_segment_t __constr_expr_0 ;
  struct thread_info *tmp___2 ;
  {
  tmp = ecryptfs_inode_to_private(ecryptfs_inode);
  lower_file = tmp->lower_file;
  if ((unsigned long )lower_file == (unsigned long )((struct file *)0)) {
    return (-5);
  } else {
  }
  tmp___0 = current_thread_info___1();
  fs_save = tmp___0->addr_limit;
  tmp___1 = current_thread_info___1();
  __constr_expr_0.seg = 0xffffffffffffffffUL;
  tmp___1->addr_limit = __constr_expr_0;
  rc = vfs_write(lower_file, (char const *)data, size, & offset);
  tmp___2 = current_thread_info___1();
  tmp___2->addr_limit = fs_save;
  mark_inode_dirty_sync(ecryptfs_inode);
  return ((int )rc);
}
}
int ecryptfs_write_lower_page_segment(struct inode *ecryptfs_inode , struct page *page_for_lower ,
                                      size_t offset_in_page , size_t size )
{
  char *virt ;
  loff_t offset ;
  int rc ;
  void *tmp ;
  {
  offset = (loff_t )((unsigned long long )((long long )page_for_lower->ldv_18093.ldv_18077.index << 12) + (unsigned long long )offset_in_page);
  tmp = kmap(page_for_lower);
  virt = (char *)tmp;
  rc = ecryptfs_write_lower(ecryptfs_inode, virt, offset, size);
  if (rc > 0) {
    rc = 0;
  } else {
  }
  kunmap(page_for_lower);
  return (rc);
}
}
int ecryptfs_write(struct inode *ecryptfs_inode , char *data , loff_t offset , size_t size )
{
  struct page *ecryptfs_page ;
  struct ecryptfs_crypt_stat *crypt_stat ;
  char *ecryptfs_page_virt ;
  loff_t ecryptfs_file_size ;
  loff_t tmp ;
  loff_t data_offset ;
  loff_t pos ;
  int rc ;
  struct ecryptfs_inode_info *tmp___0 ;
  unsigned long ecryptfs_page_idx ;
  size_t start_offset_in_page ;
  size_t num_bytes ;
  loff_t total_remaining_bytes ;
  struct task_struct *tmp___1 ;
  int tmp___2 ;
  loff_t total_remaining_zeros ;
  long tmp___3 ;
  long tmp___4 ;
  void *tmp___5 ;
  size_t __len ;
  void *__ret ;
  int rc2 ;
  {
  tmp = i_size_read((struct inode const *)ecryptfs_inode);
  ecryptfs_file_size = tmp;
  data_offset = 0LL;
  rc = 0;
  tmp___0 = ecryptfs_inode_to_private(ecryptfs_inode);
  crypt_stat = & tmp___0->crypt_stat;
  if (offset > ecryptfs_file_size) {
    pos = ecryptfs_file_size;
  } else {
    pos = offset;
  }
  goto ldv_25676;
  ldv_25675:
  ecryptfs_page_idx = (unsigned long )(pos >> 12);
  start_offset_in_page = (size_t )pos & 4095UL;
  num_bytes = 4096UL - start_offset_in_page;
  total_remaining_bytes = (loff_t )(((unsigned long long )offset + (unsigned long long )size) - (unsigned long long )pos);
  tmp___1 = get_current();
  tmp___2 = fatal_signal_pending(tmp___1);
  if (tmp___2 != 0) {
    rc = -4;
    goto ldv_25668;
  } else {
  }
  if ((unsigned long long )total_remaining_bytes < (unsigned long long )num_bytes) {
    num_bytes = (size_t )total_remaining_bytes;
  } else {
  }
  if (pos < offset) {
    total_remaining_zeros = offset - pos;
    if ((unsigned long long )total_remaining_zeros < (unsigned long long )num_bytes) {
      num_bytes = (size_t )total_remaining_zeros;
    } else {
    }
  } else {
  }
  ecryptfs_page = ecryptfs_get_locked_page(ecryptfs_inode, (loff_t )ecryptfs_page_idx);
  tmp___4 = IS_ERR((void const *)ecryptfs_page);
  if (tmp___4 != 0L) {
    tmp___3 = PTR_ERR((void const *)ecryptfs_page);
    rc = (int )tmp___3;
    printk("\v%s: Error getting page at index [%ld] from eCryptfs inode mapping; rc = [%d]\n",
           "ecryptfs_write", ecryptfs_page_idx, rc);
    goto out;
  } else {
  }
  tmp___5 = kmap_atomic___0(ecryptfs_page);
  ecryptfs_page_virt = (char *)tmp___5;
  if (pos < offset || start_offset_in_page == 0UL) {
    memset((void *)(ecryptfs_page_virt + start_offset_in_page), 0, 4096UL - start_offset_in_page);
  } else {
  }
  if (pos >= offset) {
    __len = num_bytes;
    __ret = __builtin_memcpy((void *)(ecryptfs_page_virt + start_offset_in_page),
                             (void const *)data + (unsigned long )data_offset, __len);
    data_offset = (loff_t )((unsigned long long )data_offset + (unsigned long long )num_bytes);
  } else {
  }
  __kunmap_atomic___0((void *)ecryptfs_page_virt);
  SetPageUptodate(ecryptfs_page);
  unlock_page(ecryptfs_page);
  if ((crypt_stat->flags & 4U) != 0U) {
    rc = ecryptfs_encrypt_page(ecryptfs_page);
  } else {
    rc = ecryptfs_write_lower_page_segment(ecryptfs_inode, ecryptfs_page, start_offset_in_page,
                                           (size_t )data_offset);
  }
  put_page(ecryptfs_page);
  if (rc != 0) {
    printk("\v%s: Error encrypting page; rc = [%d]\n", "ecryptfs_write", rc);
    goto out;
  } else {
  }
  pos = (loff_t )((unsigned long long )pos + (unsigned long long )num_bytes);
  ldv_25676: ;
  if ((unsigned long long )pos < (unsigned long long )offset + (unsigned long long )size) {
    goto ldv_25675;
  } else {
  }
  ldv_25668: ;
  if (pos > ecryptfs_file_size) {
    i_size_write(ecryptfs_inode, pos);
    if ((crypt_stat->flags & 4U) != 0U) {
      rc2 = ecryptfs_write_inode_size_to_metadata(ecryptfs_inode);
      if (rc2 != 0) {
        printk("\vProblem with ecryptfs_write_inode_size_to_metadata; rc = [%d]\n",
               rc2);
        if (rc == 0) {
          rc = rc2;
        } else {
        }
        goto out;
      } else {
      }
    } else {
    }
  } else {
  }
  out: ;
  return (rc);
}
}
int ecryptfs_read_lower(char *data , loff_t offset , size_t size , struct inode *ecryptfs_inode )
{
  struct file *lower_file ;
  mm_segment_t fs_save ;
  ssize_t rc ;
  struct ecryptfs_inode_info *tmp ;
  struct thread_info *tmp___0 ;
  struct thread_info *tmp___1 ;
  mm_segment_t __constr_expr_0 ;
  struct thread_info *tmp___2 ;
  {
  tmp = ecryptfs_inode_to_private(ecryptfs_inode);
  lower_file = tmp->lower_file;
  if ((unsigned long )lower_file == (unsigned long )((struct file *)0)) {
    return (-5);
  } else {
  }
  tmp___0 = current_thread_info___1();
  fs_save = tmp___0->addr_limit;
  tmp___1 = current_thread_info___1();
  __constr_expr_0.seg = 0xffffffffffffffffUL;
  tmp___1->addr_limit = __constr_expr_0;
  rc = vfs_read(lower_file, data, size, & offset);
  tmp___2 = current_thread_info___1();
  tmp___2->addr_limit = fs_save;
  return ((int )rc);
}
}
int ecryptfs_read_lower_page_segment(struct page *page_for_ecryptfs , unsigned long page_index___0 ,
                                     size_t offset_in_page , size_t size , struct inode *ecryptfs_inode )
{
  char *virt ;
  loff_t offset ;
  int rc ;
  void *tmp ;
  {
  offset = (loff_t )((unsigned long long )((long long )page_index___0 << 12) + (unsigned long long )offset_in_page);
  tmp = kmap(page_for_ecryptfs);
  virt = (char *)tmp;
  rc = ecryptfs_read_lower(virt, offset, size, ecryptfs_inode);
  if (rc > 0) {
    rc = 0;
  } else {
  }
  kunmap(page_for_ecryptfs);
  return (rc);
}
}
void ldv_mutex_lock_131(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_132(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
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
{
  __u32 tmp ;
  {
  tmp = __arch_swab32(val);
  return (tmp);
}
}
__inline static __u16 __swab16p(__u16 const *p )
{
  __u16 tmp ;
  {
  tmp = __fswab16((int )*p);
  return (tmp);
}
}
__inline static __u32 __swab32p(__u32 const *p )
{
  __u32 tmp ;
  {
  tmp = __fswab32(*p);
  return (tmp);
}
}
__inline static __u64 __swab64p(__u64 const *p )
{
  __u64 tmp ;
  {
  tmp = __fswab64(*p);
  return (tmp);
}
}
__inline static __u64 __be64_to_cpup(__be64 const *p )
{
  __u64 tmp ;
  {
  tmp = __swab64p(p);
  return (tmp);
}
}
__inline static __u32 __be32_to_cpup(__be32 const *p )
{
  __u32 tmp ;
  {
  tmp = __swab32p(p);
  return (tmp);
}
}
__inline static __u16 __be16_to_cpup(__be16 const *p )
{
  __u16 tmp ;
  {
  tmp = __swab16p(p);
  return (tmp);
}
}
extern int sprintf(char * , char const * , ...) ;
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
__inline static int __get_order(unsigned long size )
{
  int order ;
  {
  size = size - 1UL;
  size = size >> 12;
  order = fls64((__u64 )size);
  return (order);
}
}
extern int strcmp(char const * , char const * ) ;
extern int strncmp(char const * , char const * , __kernel_size_t ) ;
__inline static int atomic_read(atomic_t const *v )
{
  {
  return ((int )*((int volatile *)(& v->counter)));
}
}
__inline static int mutex_is_locked(struct mutex *lock )
{
  int tmp ;
  {
  tmp = atomic_read((atomic_t const *)(& lock->count));
  return (tmp != 1);
}
}
void ldv_mutex_unlock_136(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_138(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_140(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_142(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_144(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_145(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_147(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_148(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_150(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_153(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_154(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_156(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_158(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_160(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_135(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_137(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_139(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_141(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_143(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_146(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_149(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_151(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_152(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_155(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_157(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_159(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_cs_hash_tfm_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_cs_hash_tfm_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_cs_tfm_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_cs_tfm_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_keysig_list_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_keysig_list_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_tfm_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_tfm_mutex(struct mutex *lock ) ;
extern struct page *alloc_pages_current(gfp_t , unsigned int ) ;
__inline static struct page *alloc_pages(gfp_t gfp_mask , unsigned int order )
{
  struct page *tmp ;
  {
  tmp = alloc_pages_current(gfp_mask, order);
  return (tmp);
}
}
extern void __free_pages(struct page * , unsigned int ) ;
extern void free_pages(unsigned long , unsigned int ) ;
extern void get_random_bytes(void * , int ) ;
extern void key_put(struct key * ) ;
extern struct crypto_tfm *crypto_alloc_base(char const * , u32 , u32 ) ;
__inline static void crypto_free_tfm(struct crypto_tfm *tfm )
{
  {
  return;
}
}
__inline static unsigned int crypto_tfm_alg_blocksize(struct crypto_tfm *tfm )
{
  {
  return ((tfm->__crt_alg)->cra_blocksize);
}
}
__inline static void crypto_tfm_set_flags(struct crypto_tfm *tfm , u32 flags )
{
  {
  tfm->crt_flags = tfm->crt_flags | flags;
  return;
}
}
__inline static struct crypto_blkcipher *__crypto_blkcipher_cast(struct crypto_tfm *tfm )
{
  {
  return ((struct crypto_blkcipher *)tfm);
}
}
__inline static struct crypto_blkcipher *crypto_alloc_blkcipher(char const *alg_name ,
                                                                u32 type , u32 mask )
{
  struct crypto_tfm *tmp ;
  struct crypto_blkcipher *tmp___0 ;
  {
  type = type & 4294967280U;
  type = type | 4U;
  mask = mask | 15U;
  tmp = crypto_alloc_base(alg_name, type, mask);
  tmp___0 = __crypto_blkcipher_cast(tmp);
  return (tmp___0);
}
}
__inline static struct crypto_tfm *crypto_blkcipher_tfm(struct crypto_blkcipher *tfm )
{
  {
  return (& tfm->base);
}
}
__inline static void crypto_free_blkcipher(struct crypto_blkcipher *tfm )
{
  struct crypto_tfm *tmp ;
  {
  tmp = crypto_blkcipher_tfm(tfm);
  crypto_free_tfm(tmp);
  return;
}
}
__inline static struct blkcipher_tfm *crypto_blkcipher_crt(struct crypto_blkcipher *tfm )
{
  struct crypto_tfm *tmp ;
  {
  tmp = crypto_blkcipher_tfm(tfm);
  return (& tmp->crt_u.blkcipher);
}
}
__inline static struct blkcipher_alg *crypto_blkcipher_alg(struct crypto_blkcipher *tfm )
{
  struct crypto_tfm *tmp ;
  {
  tmp = crypto_blkcipher_tfm(tfm);
  return (& (tmp->__crt_alg)->cra_u.blkcipher);
}
}
__inline static unsigned int crypto_blkcipher_blocksize(struct crypto_blkcipher *tfm )
{
  struct crypto_tfm *tmp ;
  unsigned int tmp___0 ;
  {
  tmp = crypto_blkcipher_tfm(tfm);
  tmp___0 = crypto_tfm_alg_blocksize(tmp);
  return (tmp___0);
}
}
__inline static void crypto_blkcipher_set_flags(struct crypto_blkcipher *tfm , u32 flags )
{
  struct crypto_tfm *tmp ;
  {
  tmp = crypto_blkcipher_tfm(tfm);
  crypto_tfm_set_flags(tmp, flags);
  return;
}
}
__inline static int crypto_blkcipher_setkey(struct crypto_blkcipher *tfm , u8 const *key ,
                                            unsigned int keylen )
{
  struct blkcipher_tfm *tmp ;
  struct crypto_tfm *tmp___0 ;
  int tmp___1 ;
  {
  tmp = crypto_blkcipher_crt(tfm);
  tmp___0 = crypto_blkcipher_tfm(tfm);
  tmp___1 = (*(tmp->setkey))(tmp___0, key, keylen);
  return (tmp___1);
}
}
__inline static int crypto_blkcipher_encrypt_iv(struct blkcipher_desc *desc , struct scatterlist *dst ,
                                                struct scatterlist *src , unsigned int nbytes )
{
  struct blkcipher_tfm *tmp ;
  int tmp___0 ;
  {
  tmp = crypto_blkcipher_crt(desc->tfm);
  tmp___0 = (*(tmp->encrypt))(desc, dst, src, nbytes);
  return (tmp___0);
}
}
__inline static int crypto_blkcipher_decrypt_iv(struct blkcipher_desc *desc , struct scatterlist *dst ,
                                                struct scatterlist *src , unsigned int nbytes )
{
  struct blkcipher_tfm *tmp ;
  int tmp___0 ;
  {
  tmp = crypto_blkcipher_crt(desc->tfm);
  tmp___0 = (*(tmp->decrypt))(desc, dst, src, nbytes);
  return (tmp___0);
}
}
__inline static struct crypto_hash *__crypto_hash_cast(struct crypto_tfm *tfm )
{
  {
  return ((struct crypto_hash *)tfm);
}
}
__inline static struct crypto_hash *crypto_alloc_hash(char const *alg_name , u32 type ,
                                                      u32 mask )
{
  struct crypto_tfm *tmp ;
  struct crypto_hash *tmp___0 ;
  {
  type = type & 4294967280U;
  mask = mask & 4294967280U;
  type = type | 8U;
  mask = mask | 14U;
  tmp = crypto_alloc_base(alg_name, type, mask);
  tmp___0 = __crypto_hash_cast(tmp);
  return (tmp___0);
}
}
__inline static struct crypto_tfm *crypto_hash_tfm(struct crypto_hash *tfm )
{
  {
  return (& tfm->base);
}
}
__inline static void crypto_free_hash(struct crypto_hash *tfm )
{
  struct crypto_tfm *tmp ;
  {
  tmp = crypto_hash_tfm(tfm);
  crypto_free_tfm(tmp);
  return;
}
}
__inline static struct hash_tfm *crypto_hash_crt(struct crypto_hash *tfm )
{
  struct crypto_tfm *tmp ;
  {
  tmp = crypto_hash_tfm(tfm);
  return (& tmp->crt_u.hash);
}
}
__inline static int crypto_hash_init(struct hash_desc *desc )
{
  struct hash_tfm *tmp ;
  int tmp___0 ;
  {
  tmp = crypto_hash_crt(desc->tfm);
  tmp___0 = (*(tmp->init))(desc);
  return (tmp___0);
}
}
__inline static int crypto_hash_update(struct hash_desc *desc , struct scatterlist *sg ,
                                       unsigned int nbytes )
{
  struct hash_tfm *tmp ;
  int tmp___0 ;
  {
  tmp = crypto_hash_crt(desc->tfm);
  tmp___0 = (*(tmp->update))(desc, sg, nbytes);
  return (tmp___0);
}
}
__inline static int crypto_hash_final(struct hash_desc *desc , u8 *out )
{
  struct hash_tfm *tmp ;
  int tmp___0 ;
  {
  tmp = crypto_hash_crt(desc->tfm);
  tmp___0 = (*(tmp->final))(desc, out);
  return (tmp___0);
}
}
__inline static void sg_assign_page(struct scatterlist *sg , struct page *page )
{
  unsigned long page_link ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  page_link = sg->page_link & 3UL;
  tmp = ldv__builtin_expect(((unsigned long )page & 3UL) != 0UL, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (65), "i" (12UL));
    ldv_23465: ;
    goto ldv_23465;
  } else {
  }
  tmp___0 = ldv__builtin_expect(sg->sg_magic != 2271560481UL, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (67), "i" (12UL));
    ldv_23466: ;
    goto ldv_23466;
  } else {
  }
  tmp___1 = ldv__builtin_expect((long )((int )sg->page_link) & 1L, 0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"include/linux/scatterlist.h"),
                         "i" (68), "i" (12UL));
    ldv_23467: ;
    goto ldv_23467;
  } else {
  }
  sg->page_link = page_link | (unsigned long )page;
  return;
}
}
__inline static void sg_set_page(struct scatterlist *sg , struct page *page , unsigned int len ,
                                 unsigned int offset )
{
  {
  sg_assign_page(sg, page);
  sg->offset = offset;
  sg->length = len;
  return;
}
}
extern void sg_init_table(struct scatterlist * , unsigned int ) ;
extern void sg_init_one(struct scatterlist * , void const * , unsigned int ) ;
__inline static u16 get_unaligned_be16(void const *p )
{
  __u16 tmp ;
  {
  tmp = __be16_to_cpup((__be16 const *)p);
  return (tmp);
}
}
__inline static u32 get_unaligned_be32(void const *p )
{
  __u32 tmp ;
  {
  tmp = __be32_to_cpup((__be32 const *)p);
  return (tmp);
}
}
__inline static u64 get_unaligned_be64(void const *p )
{
  __u64 tmp ;
  {
  tmp = __be64_to_cpup((__be64 const *)p);
  return (tmp);
}
}
__inline static void put_unaligned_be16(u16 val , void *p )
{
  __u16 tmp ;
  {
  tmp = __fswab16((int )val);
  *((__be16 *)p) = tmp;
  return;
}
}
__inline static void put_unaligned_be32(u32 val , void *p )
{
  __u32 tmp ;
  {
  tmp = __fswab32(val);
  *((__be32 *)p) = tmp;
  return;
}
}
void ecryptfs_to_hex(char *dst , char *src , size_t src_size ) ;
void ecryptfs_from_hex(char *dst , char *src , int dst_size ) ;
struct mutex key_tfm_list_mutex ;
struct kmem_cache *ecryptfs_header_cache ;
struct kmem_cache *ecryptfs_key_tfm_cache ;
void ecryptfs_i_size_init(char const *page_virt , struct inode *inode ) ;
void ecryptfs_dump_hex(char *data , int bytes ) ;
int virt_to_scatterlist(void const *addr , int size , struct scatterlist *sg , int sg_size ) ;
int ecryptfs_compute_root_iv(struct ecryptfs_crypt_stat *crypt_stat ) ;
int ecryptfs_init_crypt_ctx(struct ecryptfs_crypt_stat *crypt_stat ) ;
int ecryptfs_cipher_code_to_string(char *str , u8 cipher_code ) ;
int ecryptfs_generate_key_packet_set(char *dest_base , struct ecryptfs_crypt_stat *crypt_stat ,
                                     struct dentry *ecryptfs_dentry , size_t *len ,
                                     size_t max ) ;
int ecryptfs_parse_packet_set(struct ecryptfs_crypt_stat *crypt_stat , unsigned char *src ,
                              struct dentry *ecryptfs_dentry ) ;
int ecryptfs_add_keysig(struct ecryptfs_crypt_stat *crypt_stat , char *sig ) ;
int ecryptfs_get_tfm_and_mutex_for_cipher_name(struct crypto_blkcipher **tfm , struct mutex **tfm_mutex ,
                                               char *cipher_name ) ;
int ecryptfs_write_tag_70_packet(char *dest , size_t *remaining_bytes , size_t *packet_size ,
                                 struct ecryptfs_mount_crypt_stat *mount_crypt_stat ,
                                 char *filename , size_t filename_size ) ;
int ecryptfs_parse_tag_70_packet(char **filename , size_t *filename_size , size_t *packet_size ,
                                 struct ecryptfs_mount_crypt_stat *mount_crypt_stat ,
                                 char *data , size_t max_packet_size ) ;
int ecryptfs_derive_iv(char *iv , struct ecryptfs_crypt_stat *crypt_stat , loff_t offset ) ;
static int ecryptfs_decrypt_page_offset(struct ecryptfs_crypt_stat *crypt_stat , struct page *dst_page ,
                                        int dst_offset , struct page *src_page , int src_offset ,
                                        int size , unsigned char *iv ) ;
static int ecryptfs_encrypt_page_offset(struct ecryptfs_crypt_stat *crypt_stat , struct page *dst_page ,
                                        int dst_offset , struct page *src_page , int src_offset ,
                                        int size , unsigned char *iv ) ;
void ecryptfs_to_hex(char *dst , char *src , size_t src_size )
{
  int x ;
  {
  x = 0;
  goto ldv_27424;
  ldv_27423:
  sprintf(dst + (unsigned long )(x * 2), "%.2x", (int )((unsigned char )*(src + (unsigned long )x)));
  x = x + 1;
  ldv_27424: ;
  if ((size_t )x < src_size) {
    goto ldv_27423;
  } else {
  }
  return;
}
}
void ecryptfs_from_hex(char *dst , char *src , int dst_size )
{
  int x ;
  char tmp[3U] ;
  unsigned int tmp___0 ;
  long tmp___1 ;
  {
  tmp[0] = 0;
  tmp___0 = 1U;
  while (1) {
    if (tmp___0 >= 3U) {
      break;
    } else {
    }
    tmp[tmp___0] = (char)0;
    tmp___0 = tmp___0 + 1U;
  }
  x = 0;
  goto ldv_27434;
  ldv_27433:
  tmp[0] = *(src + (unsigned long )(x * 2));
  tmp[1] = *(src + ((unsigned long )(x * 2) + 1UL));
  tmp___1 = simple_strtol((char const *)(& tmp), 0, 16U);
  *(dst + (unsigned long )x) = (char )tmp___1;
  x = x + 1;
  ldv_27434: ;
  if (x < dst_size) {
    goto ldv_27433;
  } else {
  }
  return;
}
}
static int ecryptfs_calculate_md5(char *dst , struct ecryptfs_crypt_stat *crypt_stat ,
                                  char *src , int len )
{
  struct scatterlist sg ;
  struct hash_desc desc ;
  int rc ;
  long tmp ;
  long tmp___0 ;
  {
  desc.tfm = crypt_stat->hash_tfm;
  desc.flags = 512U;
  rc = 0;
  ldv_mutex_lock_139(& crypt_stat->cs_hash_tfm_mutex);
  sg_init_one(& sg, (void const *)src, (unsigned int )len);
  if ((unsigned long )desc.tfm == (unsigned long )((struct crypto_hash *)0)) {
    desc.tfm = crypto_alloc_hash("md5", 0U, 128U);
    tmp___0 = IS_ERR((void const *)desc.tfm);
    if (tmp___0 != 0L) {
      tmp = PTR_ERR((void const *)desc.tfm);
      rc = (int )tmp;
      __ecryptfs_printk("\v%s: Error attempting to allocate crypto context; rc = [%d]\n",
                        "ecryptfs_calculate_md5", rc);
      goto out;
    } else {
    }
    crypt_stat->hash_tfm = desc.tfm;
  } else {
  }
  rc = crypto_hash_init(& desc);
  if (rc != 0) {
    printk("\v%s: Error initializing crypto hash; rc = [%d]\n", "ecryptfs_calculate_md5",
           rc);
    goto out;
  } else {
  }
  rc = crypto_hash_update(& desc, & sg, (unsigned int )len);
  if (rc != 0) {
    printk("\v%s: Error updating crypto hash; rc = [%d]\n", "ecryptfs_calculate_md5",
           rc);
    goto out;
  } else {
  }
  rc = crypto_hash_final(& desc, (u8 *)dst);
  if (rc != 0) {
    printk("\v%s: Error finalizing crypto hash; rc = [%d]\n", "ecryptfs_calculate_md5",
           rc);
    goto out;
  } else {
  }
  out:
  ldv_mutex_unlock_140(& crypt_stat->cs_hash_tfm_mutex);
  return (rc);
}
}
static int ecryptfs_crypto_api_algify_cipher_name(char **algified_name , char *cipher_name ,
                                                  char *chaining_modifier )
{
  int cipher_name_len ;
  size_t tmp ;
  int chaining_modifier_len ;
  size_t tmp___0 ;
  int algified_name_len ;
  int rc ;
  void *tmp___1 ;
  {
  tmp = strlen((char const *)cipher_name);
  cipher_name_len = (int )tmp;
  tmp___0 = strlen((char const *)chaining_modifier);
  chaining_modifier_len = (int )tmp___0;
  algified_name_len = (chaining_modifier_len + cipher_name_len) + 3;
  tmp___1 = kmalloc((size_t )algified_name_len, 208U);
  *algified_name = (char *)tmp___1;
  if ((unsigned long )*algified_name == (unsigned long )((char *)0)) {
    rc = -12;
    goto out;
  } else {
  }
  snprintf(*algified_name, (size_t )algified_name_len, "%s(%s)", chaining_modifier,
           cipher_name);
  rc = 0;
  out: ;
  return (rc);
}
}
int ecryptfs_derive_iv(char *iv , struct ecryptfs_crypt_stat *crypt_stat , loff_t offset )
{
  int rc ;
  char dst[16U] ;
  char src[32U] ;
  long tmp ;
  size_t __len ;
  void *__ret ;
  long tmp___0 ;
  size_t __len___0 ;
  void *__ret___0 ;
  long tmp___1 ;
  {
  rc = 0;
  tmp = ldv__builtin_expect(ecryptfs_verbosity > 0, 0L);
  if (tmp != 0L) {
    __ecryptfs_printk("\017%s: root iv:\n", "ecryptfs_derive_iv");
    ecryptfs_dump_hex((char *)(& crypt_stat->root_iv), (int )crypt_stat->iv_bytes);
  } else {
  }
  __len = crypt_stat->iv_bytes;
  __ret = __builtin_memcpy((void *)(& src), (void const *)(& crypt_stat->root_iv),
                           __len);
  memset((void *)(& src) + crypt_stat->iv_bytes, 0, 16UL);
  snprintf((char *)(& src) + crypt_stat->iv_bytes, 16UL, "%lld", offset);
  tmp___0 = ldv__builtin_expect(ecryptfs_verbosity > 0, 0L);
  if (tmp___0 != 0L) {
    __ecryptfs_printk("\017%s: source:\n", "ecryptfs_derive_iv");
    ecryptfs_dump_hex((char *)(& src), (int )((unsigned int )crypt_stat->iv_bytes + 16U));
  } else {
  }
  rc = ecryptfs_calculate_md5((char *)(& dst), crypt_stat, (char *)(& src), (int )((unsigned int )crypt_stat->iv_bytes + 16U));
  if (rc != 0) {
    __ecryptfs_printk("\f%s: Error attempting to compute MD5 while generating IV for a page\n",
                      "ecryptfs_derive_iv");
    goto out;
  } else {
  }
  __len___0 = crypt_stat->iv_bytes;
  __ret___0 = __builtin_memcpy((void *)iv, (void const *)(& dst), __len___0);
  tmp___1 = ldv__builtin_expect(ecryptfs_verbosity > 0, 0L);
  if (tmp___1 != 0L) {
    __ecryptfs_printk("\017%s: derived iv:\n", "ecryptfs_derive_iv");
    ecryptfs_dump_hex(iv, (int )crypt_stat->iv_bytes);
  } else {
  }
  out: ;
  return (rc);
}
}
void ecryptfs_init_crypt_stat(struct ecryptfs_crypt_stat *crypt_stat )
{
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  struct lock_class_key __key___2 ;
  {
  memset((void *)crypt_stat, 0, 880UL);
  INIT_LIST_HEAD(& crypt_stat->keysig_list);
  __mutex_init(& crypt_stat->keysig_list_mutex, "&crypt_stat->keysig_list_mutex",
               & __key);
  __mutex_init(& crypt_stat->cs_mutex, "&crypt_stat->cs_mutex", & __key___0);
  __mutex_init(& crypt_stat->cs_tfm_mutex, "&crypt_stat->cs_tfm_mutex", & __key___1);
  __mutex_init(& crypt_stat->cs_hash_tfm_mutex, "&crypt_stat->cs_hash_tfm_mutex",
               & __key___2);
  crypt_stat->flags = crypt_stat->flags | 1U;
  return;
}
}
void ecryptfs_destroy_crypt_stat(struct ecryptfs_crypt_stat *crypt_stat )
{
  struct ecryptfs_key_sig *key_sig ;
  struct ecryptfs_key_sig *key_sig_tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  if ((unsigned long )crypt_stat->tfm != (unsigned long )((struct crypto_blkcipher *)0)) {
    crypto_free_blkcipher(crypt_stat->tfm);
  } else {
  }
  if ((unsigned long )crypt_stat->hash_tfm != (unsigned long )((struct crypto_hash *)0)) {
    crypto_free_hash(crypt_stat->hash_tfm);
  } else {
  }
  __mptr = (struct list_head const *)crypt_stat->keysig_list.next;
  key_sig = (struct ecryptfs_key_sig *)__mptr;
  __mptr___0 = (struct list_head const *)key_sig->crypt_stat_list.next;
  key_sig_tmp = (struct ecryptfs_key_sig *)__mptr___0;
  goto ldv_27492;
  ldv_27491:
  list_del(& key_sig->crypt_stat_list);
  kmem_cache_free(ecryptfs_key_sig_cache, (void *)key_sig);
  key_sig = key_sig_tmp;
  __mptr___1 = (struct list_head const *)key_sig_tmp->crypt_stat_list.next;
  key_sig_tmp = (struct ecryptfs_key_sig *)__mptr___1;
  ldv_27492: ;
  if ((unsigned long )(& key_sig->crypt_stat_list) != (unsigned long )(& crypt_stat->keysig_list)) {
    goto ldv_27491;
  } else {
  }
  memset((void *)crypt_stat, 0, 880UL);
  return;
}
}
void ecryptfs_destroy_mount_crypt_stat(struct ecryptfs_mount_crypt_stat *mount_crypt_stat )
{
  struct ecryptfs_global_auth_tok *auth_tok ;
  struct ecryptfs_global_auth_tok *auth_tok_tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  if ((mount_crypt_stat->flags & 8U) == 0U) {
    return;
  } else {
  }
  ldv_mutex_lock_141(& mount_crypt_stat->global_auth_tok_list_mutex);
  __mptr = (struct list_head const *)mount_crypt_stat->global_auth_tok_list.next;
  auth_tok = (struct ecryptfs_global_auth_tok *)__mptr + 0xfffffffffffffff8UL;
  __mptr___0 = (struct list_head const *)auth_tok->mount_crypt_stat_list.next;
  auth_tok_tmp = (struct ecryptfs_global_auth_tok *)__mptr___0 + 0xfffffffffffffff8UL;
  goto ldv_27506;
  ldv_27505:
  list_del(& auth_tok->mount_crypt_stat_list);
  if ((unsigned long )auth_tok->global_auth_tok_key != (unsigned long )((struct key *)0) && (auth_tok->flags & 1U) == 0U) {
    key_put(auth_tok->global_auth_tok_key);
  } else {
  }
  kmem_cache_free(ecryptfs_global_auth_tok_cache, (void *)auth_tok);
  auth_tok = auth_tok_tmp;
  __mptr___1 = (struct list_head const *)auth_tok_tmp->mount_crypt_stat_list.next;
  auth_tok_tmp = (struct ecryptfs_global_auth_tok *)__mptr___1 + 0xfffffffffffffff8UL;
  ldv_27506: ;
  if ((unsigned long )auth_tok != (unsigned long )mount_crypt_stat) {
    goto ldv_27505;
  } else {
  }
  ldv_mutex_unlock_142(& mount_crypt_stat->global_auth_tok_list_mutex);
  memset((void *)mount_crypt_stat, 0, 296UL);
  return;
}
}
int virt_to_scatterlist(void const *addr , int size , struct scatterlist *sg , int sg_size )
{
  int i ;
  struct page *pg ;
  int offset ;
  int remainder_of_page ;
  unsigned long tmp ;
  {
  i = 0;
  sg_init_table(sg, (unsigned int )sg_size);
  goto ldv_27519;
  ldv_27518:
  tmp = __phys_addr((unsigned long )addr);
  pg = 0xffffea0000000000UL + (tmp >> 12);
  offset = (int )((long )addr) & 4095;
  if ((unsigned long )sg != (unsigned long )((struct scatterlist *)0)) {
    sg_set_page(sg + (unsigned long )i, pg, 0U, (unsigned int )offset);
  } else {
  }
  remainder_of_page = (int )(4096U - (unsigned int )offset);
  if (size >= remainder_of_page) {
    if ((unsigned long )sg != (unsigned long )((struct scatterlist *)0)) {
      (sg + (unsigned long )i)->length = (unsigned int )remainder_of_page;
    } else {
    }
    addr = addr + (unsigned long )remainder_of_page;
    size = size - remainder_of_page;
  } else {
    if ((unsigned long )sg != (unsigned long )((struct scatterlist *)0)) {
      (sg + (unsigned long )i)->length = (unsigned int )size;
    } else {
    }
    addr = addr + (unsigned long )size;
    size = 0;
  }
  i = i + 1;
  ldv_27519: ;
  if (size > 0 && i < sg_size) {
    goto ldv_27518;
  } else {
  }
  if (size > 0) {
    return (-12);
  } else {
  }
  return (i);
}
}
static int encrypt_scatterlist(struct ecryptfs_crypt_stat *crypt_stat , struct scatterlist *dest_sg ,
                               struct scatterlist *src_sg , int size , unsigned char *iv )
{
  struct blkcipher_desc desc ;
  int rc ;
  long tmp ;
  long tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  {
  desc.tfm = crypt_stat->tfm;
  desc.info = (void *)iv;
  desc.flags = 512U;
  rc = 0;
  tmp = ldv__builtin_expect((unsigned long )crypt_stat == (unsigned long )((struct ecryptfs_crypt_stat *)0),
                         0L);
  if (tmp != 0L) {
    tmp___1 = 1;
  } else {
    tmp___0 = ldv__builtin_expect((unsigned long )crypt_stat->tfm == (unsigned long )((struct crypto_blkcipher *)0),
                               0L);
    if (tmp___0 != 0L) {
      tmp___1 = 1;
    } else {
      tmp___1 = 0;
    }
  }
  if (tmp___1 != 0) {
    goto _L;
  } else {
    tmp___2 = ldv__builtin_expect((crypt_stat->flags & 1U) == 0U, 0L);
    if (tmp___2 != 0L) {
      _L:
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/ecryptfs/ecryptfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/24/dscv_tempdir/dscv/ri/32_7a/fs/ecryptfs/crypto.c.prepared"),
                           "i" (484), "i" (12UL));
      ldv_27530: ;
      goto ldv_27530;
    } else {
    }
  }
  tmp___3 = ldv__builtin_expect(ecryptfs_verbosity > 0, 0L);
  if (tmp___3 != 0L) {
    __ecryptfs_printk("\017%s: Key size [%zd]; key:\n", "encrypt_scatterlist", crypt_stat->key_size);
    ecryptfs_dump_hex((char *)(& crypt_stat->key), (int )crypt_stat->key_size);
  } else {
  }
  ldv_mutex_lock_143(& crypt_stat->cs_tfm_mutex);
  if ((crypt_stat->flags & 512U) == 0U) {
    rc = crypto_blkcipher_setkey(crypt_stat->tfm, (u8 const *)(& crypt_stat->key),
                                 (unsigned int )crypt_stat->key_size);
    crypt_stat->flags = crypt_stat->flags | 512U;
  } else {
  }
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Error setting key; rc = [%d]\n", "encrypt_scatterlist",
                      rc);
    ldv_mutex_unlock_144(& crypt_stat->cs_tfm_mutex);
    rc = -22;
    goto out;
  } else {
  }
  __ecryptfs_printk("\017%s: Encrypting [%d] bytes.\n", "encrypt_scatterlist", size);
  crypto_blkcipher_encrypt_iv(& desc, dest_sg, src_sg, (unsigned int )size);
  ldv_mutex_unlock_145(& crypt_stat->cs_tfm_mutex);
  out: ;
  return (rc);
}
}
static void ecryptfs_lower_offset_for_extent(loff_t *offset , loff_t extent_num ,
                                             struct ecryptfs_crypt_stat *crypt_stat )
{
  size_t tmp ;
  {
  tmp = ecryptfs_lower_header_size(crypt_stat);
  *offset = (loff_t )((unsigned long long )tmp + (unsigned long long )crypt_stat->extent_size * (unsigned long long )extent_num);
  return;
}
}
static int ecryptfs_encrypt_extent(struct page *enc_extent_page , struct ecryptfs_crypt_stat *crypt_stat ,
                                   struct page *page , unsigned long extent_offset )
{
  loff_t extent_base ;
  char extent_iv[16U] ;
  int rc ;
  {
  extent_base = (loff_t )((unsigned long long )page->ldv_18093.ldv_18077.index * (unsigned long long )(4096UL / crypt_stat->extent_size));
  rc = ecryptfs_derive_iv((char *)(& extent_iv), crypt_stat, (loff_t )((unsigned long long )extent_base + (unsigned long long )extent_offset));
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Error attempting to derive IV for extent [0x%.16llx]; rc = [%d]\n",
                      "ecryptfs_encrypt_extent", (unsigned long long )extent_base + (unsigned long long )extent_offset,
                      rc);
    goto out;
  } else {
  }
  rc = ecryptfs_encrypt_page_offset(crypt_stat, enc_extent_page, 0, page, (int )((unsigned int )crypt_stat->extent_size * (unsigned int )extent_offset),
                                    (int )crypt_stat->extent_size, (unsigned char *)(& extent_iv));
  if (rc < 0) {
    printk("\v%s: Error attempting to encrypt page with page->index = [%ld], extent_offset = [%ld]; rc = [%d]\n",
           "ecryptfs_encrypt_extent", page->ldv_18093.ldv_18077.index, extent_offset,
           rc);
    goto out;
  } else {
  }
  rc = 0;
  out: ;
  return (rc);
}
}
int ecryptfs_encrypt_page(struct page *page )
{
  struct inode *ecryptfs_inode ;
  struct ecryptfs_crypt_stat *crypt_stat ;
  char *enc_extent_virt ;
  struct page *enc_extent_page ;
  loff_t extent_offset ;
  int rc ;
  struct ecryptfs_inode_info *tmp ;
  long tmp___0 ;
  void *tmp___1 ;
  loff_t offset ;
  {
  enc_extent_page = 0;
  rc = 0;
  ecryptfs_inode = (page->mapping)->host;
  tmp = ecryptfs_inode_to_private(ecryptfs_inode);
  crypt_stat = & tmp->crypt_stat;
  tmp___0 = ldv__builtin_expect((crypt_stat->flags & 4U) == 0U, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/ecryptfs/ecryptfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/24/dscv_tempdir/dscv/ri/32_7a/fs/ecryptfs/crypto.c.prepared"),
                         "i" (600), "i" (12UL));
    ldv_27558: ;
    goto ldv_27558;
  } else {
  }
  enc_extent_page = alloc_pages(131280U, 0U);
  if ((unsigned long )enc_extent_page == (unsigned long )((struct page *)0)) {
    rc = -12;
    __ecryptfs_printk("\v%s: Error allocating memory for encrypted extent\n", "ecryptfs_encrypt_page");
    goto out;
  } else {
  }
  tmp___1 = kmap(enc_extent_page);
  enc_extent_virt = (char *)tmp___1;
  extent_offset = 0LL;
  goto ldv_27563;
  ldv_27562:
  rc = ecryptfs_encrypt_extent(enc_extent_page, crypt_stat, page, (unsigned long )extent_offset);
  if (rc != 0) {
    printk("\v%s: Error encrypting extent; rc = [%d]\n", "ecryptfs_encrypt_page",
           rc);
    goto out;
  } else {
  }
  ecryptfs_lower_offset_for_extent(& offset, (loff_t )((unsigned long long )page->ldv_18093.ldv_18077.index * (unsigned long long )(4096UL / crypt_stat->extent_size) + (unsigned long long )extent_offset),
                                   crypt_stat);
  rc = ecryptfs_write_lower(ecryptfs_inode, enc_extent_virt, offset, crypt_stat->extent_size);
  if (rc < 0) {
    __ecryptfs_printk("\v%s: Error attempting to write lower page; rc = [%d]\n", "ecryptfs_encrypt_page",
                      rc);
    goto out;
  } else {
  }
  extent_offset = extent_offset + 1LL;
  ldv_27563: ;
  if ((unsigned long long )extent_offset < (unsigned long long )(4096UL / crypt_stat->extent_size)) {
    goto ldv_27562;
  } else {
  }
  rc = 0;
  out: ;
  if ((unsigned long )enc_extent_page != (unsigned long )((struct page *)0)) {
    kunmap(enc_extent_page);
    __free_pages(enc_extent_page, 0U);
  } else {
  }
  return (rc);
}
}
static int ecryptfs_decrypt_extent(struct page *page , struct ecryptfs_crypt_stat *crypt_stat ,
                                   struct page *enc_extent_page , unsigned long extent_offset )
{
  loff_t extent_base ;
  char extent_iv[16U] ;
  int rc ;
  {
  extent_base = (loff_t )((unsigned long long )page->ldv_18093.ldv_18077.index * (unsigned long long )(4096UL / crypt_stat->extent_size));
  rc = ecryptfs_derive_iv((char *)(& extent_iv), crypt_stat, (loff_t )((unsigned long long )extent_base + (unsigned long long )extent_offset));
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Error attempting to derive IV for extent [0x%.16llx]; rc = [%d]\n",
                      "ecryptfs_decrypt_extent", (unsigned long long )extent_base + (unsigned long long )extent_offset,
                      rc);
    goto out;
  } else {
  }
  rc = ecryptfs_decrypt_page_offset(crypt_stat, page, (int )((unsigned int )crypt_stat->extent_size * (unsigned int )extent_offset),
                                    enc_extent_page, 0, (int )crypt_stat->extent_size,
                                    (unsigned char *)(& extent_iv));
  if (rc < 0) {
    printk("\v%s: Error attempting to decrypt to page with page->index = [%ld], extent_offset = [%ld]; rc = [%d]\n",
           "ecryptfs_decrypt_extent", page->ldv_18093.ldv_18077.index, extent_offset,
           rc);
    goto out;
  } else {
  }
  rc = 0;
  out: ;
  return (rc);
}
}
int ecryptfs_decrypt_page(struct page *page )
{
  struct inode *ecryptfs_inode ;
  struct ecryptfs_crypt_stat *crypt_stat ;
  char *enc_extent_virt ;
  struct page *enc_extent_page ;
  unsigned long extent_offset ;
  int rc ;
  struct ecryptfs_inode_info *tmp ;
  long tmp___0 ;
  void *tmp___1 ;
  loff_t offset ;
  {
  enc_extent_page = 0;
  rc = 0;
  ecryptfs_inode = (page->mapping)->host;
  tmp = ecryptfs_inode_to_private(ecryptfs_inode);
  crypt_stat = & tmp->crypt_stat;
  tmp___0 = ldv__builtin_expect((crypt_stat->flags & 4U) == 0U, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/ecryptfs/ecryptfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/24/dscv_tempdir/dscv/ri/32_7a/fs/ecryptfs/crypto.c.prepared"),
                         "i" (708), "i" (12UL));
    ldv_27585: ;
    goto ldv_27585;
  } else {
  }
  enc_extent_page = alloc_pages(131280U, 0U);
  if ((unsigned long )enc_extent_page == (unsigned long )((struct page *)0)) {
    rc = -12;
    __ecryptfs_printk("\v%s: Error allocating memory for encrypted extent\n", "ecryptfs_decrypt_page");
    goto out;
  } else {
  }
  tmp___1 = kmap(enc_extent_page);
  enc_extent_virt = (char *)tmp___1;
  extent_offset = 0UL;
  goto ldv_27590;
  ldv_27589:
  ecryptfs_lower_offset_for_extent(& offset, (loff_t )(page->ldv_18093.ldv_18077.index * (4096UL / crypt_stat->extent_size) + extent_offset),
                                   crypt_stat);
  rc = ecryptfs_read_lower(enc_extent_virt, offset, crypt_stat->extent_size, ecryptfs_inode);
  if (rc < 0) {
    __ecryptfs_printk("\v%s: Error attempting to read lower page; rc = [%d]\n", "ecryptfs_decrypt_page",
                      rc);
    goto out;
  } else {
  }
  rc = ecryptfs_decrypt_extent(page, crypt_stat, enc_extent_page, extent_offset);
  if (rc != 0) {
    printk("\v%s: Error encrypting extent; rc = [%d]\n", "ecryptfs_decrypt_page",
           rc);
    goto out;
  } else {
  }
  extent_offset = extent_offset + 1UL;
  ldv_27590: ;
  if (4096UL / crypt_stat->extent_size > extent_offset) {
    goto ldv_27589;
  } else {
  }
  out: ;
  if ((unsigned long )enc_extent_page != (unsigned long )((struct page *)0)) {
    kunmap(enc_extent_page);
    __free_pages(enc_extent_page, 0U);
  } else {
  }
  return (rc);
}
}
static int decrypt_scatterlist(struct ecryptfs_crypt_stat *crypt_stat , struct scatterlist *dest_sg ,
                               struct scatterlist *src_sg , int size , unsigned char *iv )
{
  struct blkcipher_desc desc ;
  int rc ;
  {
  desc.tfm = crypt_stat->tfm;
  desc.info = (void *)iv;
  desc.flags = 512U;
  rc = 0;
  ldv_mutex_lock_146(& crypt_stat->cs_tfm_mutex);
  rc = crypto_blkcipher_setkey(crypt_stat->tfm, (u8 const *)(& crypt_stat->key),
                               (unsigned int )crypt_stat->key_size);
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Error setting key; rc = [%d]\n", "decrypt_scatterlist",
                      rc);
    ldv_mutex_unlock_147(& crypt_stat->cs_tfm_mutex);
    rc = -22;
    goto out;
  } else {
  }
  __ecryptfs_printk("\017%s: Decrypting [%d] bytes.\n", "decrypt_scatterlist", size);
  rc = crypto_blkcipher_decrypt_iv(& desc, dest_sg, src_sg, (unsigned int )size);
  ldv_mutex_unlock_148(& crypt_stat->cs_tfm_mutex);
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Error decrypting; rc = [%d]\n", "decrypt_scatterlist",
                      rc);
    goto out;
  } else {
  }
  rc = size;
  out: ;
  return (rc);
}
}
static int ecryptfs_encrypt_page_offset(struct ecryptfs_crypt_stat *crypt_stat , struct page *dst_page ,
                                        int dst_offset , struct page *src_page , int src_offset ,
                                        int size , unsigned char *iv )
{
  struct scatterlist src_sg ;
  struct scatterlist dst_sg ;
  int tmp ;
  {
  sg_init_table(& src_sg, 1U);
  sg_init_table(& dst_sg, 1U);
  sg_set_page(& src_sg, src_page, (unsigned int )size, (unsigned int )src_offset);
  sg_set_page(& dst_sg, dst_page, (unsigned int )size, (unsigned int )dst_offset);
  tmp = encrypt_scatterlist(crypt_stat, & dst_sg, & src_sg, size, iv);
  return (tmp);
}
}
static int ecryptfs_decrypt_page_offset(struct ecryptfs_crypt_stat *crypt_stat , struct page *dst_page ,
                                        int dst_offset , struct page *src_page , int src_offset ,
                                        int size , unsigned char *iv )
{
  struct scatterlist src_sg ;
  struct scatterlist dst_sg ;
  int tmp ;
  {
  sg_init_table(& src_sg, 1U);
  sg_set_page(& src_sg, src_page, (unsigned int )size, (unsigned int )src_offset);
  sg_init_table(& dst_sg, 1U);
  sg_set_page(& dst_sg, dst_page, (unsigned int )size, (unsigned int )dst_offset);
  tmp = decrypt_scatterlist(crypt_stat, & dst_sg, & src_sg, size, iv);
  return (tmp);
}
}
int ecryptfs_init_crypt_ctx(struct ecryptfs_crypt_stat *crypt_stat )
{
  char *full_alg_name ;
  int rc ;
  size_t tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  rc = -22;
  if ((unsigned long )(& crypt_stat->cipher) == (unsigned long )((unsigned char (*)[32U])0)) {
    __ecryptfs_printk("\v%s: No cipher specified\n", "ecryptfs_init_crypt_ctx");
    goto out;
  } else {
  }
  tmp = strlen((char const *)(& crypt_stat->cipher));
  __ecryptfs_printk("\017%s: Initializing cipher [%s]; strlen = [%d]; key_size_bits = [%zd]\n",
                    "ecryptfs_init_crypt_ctx", (unsigned char *)(& crypt_stat->cipher),
                    (int )tmp, crypt_stat->key_size << 3);
  if ((unsigned long )crypt_stat->tfm != (unsigned long )((struct crypto_blkcipher *)0)) {
    rc = 0;
    goto out;
  } else {
  }
  ldv_mutex_lock_149(& crypt_stat->cs_tfm_mutex);
  rc = ecryptfs_crypto_api_algify_cipher_name(& full_alg_name, (char *)(& crypt_stat->cipher),
                                              (char *)"cbc");
  if (rc != 0) {
    goto out_unlock;
  } else {
  }
  crypt_stat->tfm = crypto_alloc_blkcipher((char const *)full_alg_name, 0U, 128U);
  kfree((void const *)full_alg_name);
  tmp___1 = IS_ERR((void const *)crypt_stat->tfm);
  if (tmp___1 != 0L) {
    tmp___0 = PTR_ERR((void const *)crypt_stat->tfm);
    rc = (int )tmp___0;
    crypt_stat->tfm = 0;
    __ecryptfs_printk("\v%s: cryptfs: init_crypt_ctx(): Error initializing cipher [%s]\n",
                      "ecryptfs_init_crypt_ctx", (unsigned char *)(& crypt_stat->cipher));
    goto out_unlock;
  } else {
  }
  crypto_blkcipher_set_flags(crypt_stat->tfm, 256U);
  rc = 0;
  out_unlock:
  ldv_mutex_unlock_150(& crypt_stat->cs_tfm_mutex);
  out: ;
  return (rc);
}
}
static void set_extent_mask_and_shift(struct ecryptfs_crypt_stat *crypt_stat )
{
  int extent_size_tmp ;
  {
  crypt_stat->extent_mask = 4294967295U;
  crypt_stat->extent_shift = 0UL;
  if (crypt_stat->extent_size == 0UL) {
    return;
  } else {
  }
  extent_size_tmp = (int )crypt_stat->extent_size;
  goto ldv_27638;
  ldv_27637:
  extent_size_tmp = extent_size_tmp >> 1;
  crypt_stat->extent_mask = crypt_stat->extent_mask << 1;
  crypt_stat->extent_shift = crypt_stat->extent_shift + 1UL;
  ldv_27638: ;
  if ((extent_size_tmp & 1) == 0) {
    goto ldv_27637;
  } else {
  }
  return;
}
}
void ecryptfs_set_default_sizes(struct ecryptfs_crypt_stat *crypt_stat )
{
  {
  crypt_stat->extent_size = 4096UL;
  set_extent_mask_and_shift(crypt_stat);
  crypt_stat->iv_bytes = 16UL;
  if ((crypt_stat->flags & 128U) != 0U) {
    crypt_stat->metadata_size = 8192UL;
  } else {
    crypt_stat->metadata_size = 8192UL;
  }
  return;
}
}
int ecryptfs_compute_root_iv(struct ecryptfs_crypt_stat *crypt_stat )
{
  int rc ;
  char dst[16U] ;
  long tmp ;
  long tmp___0 ;
  size_t __len ;
  void *__ret ;
  {
  rc = 0;
  tmp = ldv__builtin_expect(crypt_stat->iv_bytes > 16UL, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/ecryptfs/ecryptfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/24/dscv_tempdir/dscv/ri/32_7a/fs/ecryptfs/crypto.c.prepared"),
                         "i" (952), "i" (12UL));
    ldv_27648: ;
    goto ldv_27648;
  } else {
  }
  tmp___0 = ldv__builtin_expect(crypt_stat->iv_bytes == 0UL, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/ecryptfs/ecryptfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/24/dscv_tempdir/dscv/ri/32_7a/fs/ecryptfs/crypto.c.prepared"),
                         "i" (953), "i" (12UL));
    ldv_27649: ;
    goto ldv_27649;
  } else {
  }
  if ((crypt_stat->flags & 64U) == 0U) {
    rc = -22;
    __ecryptfs_printk("\f%s: Session key not valid; cannot generate root IV\n", "ecryptfs_compute_root_iv");
    goto out;
  } else {
  }
  rc = ecryptfs_calculate_md5((char *)(& dst), crypt_stat, (char *)(& crypt_stat->key),
                              (int )crypt_stat->key_size);
  if (rc != 0) {
    __ecryptfs_printk("\f%s: Error attempting to compute MD5 while generating root IV\n",
                      "ecryptfs_compute_root_iv");
    goto out;
  } else {
  }
  __len = crypt_stat->iv_bytes;
  __ret = __builtin_memcpy((void *)(& crypt_stat->root_iv), (void const *)(& dst),
                           __len);
  out: ;
  if (rc != 0) {
    memset((void *)(& crypt_stat->root_iv), 0, crypt_stat->iv_bytes);
    crypt_stat->flags = crypt_stat->flags | 8U;
  } else {
  }
  return (rc);
}
}
static void ecryptfs_generate_new_key(struct ecryptfs_crypt_stat *crypt_stat )
{
  long tmp ;
  {
  get_random_bytes((void *)(& crypt_stat->key), (int )crypt_stat->key_size);
  crypt_stat->flags = crypt_stat->flags | 64U;
  ecryptfs_compute_root_iv(crypt_stat);
  tmp = ldv__builtin_expect(ecryptfs_verbosity > 0, 0L);
  if (tmp != 0L) {
    __ecryptfs_printk("\017%s: Generated new session key:\n", "ecryptfs_generate_new_key");
    ecryptfs_dump_hex((char *)(& crypt_stat->key), (int )crypt_stat->key_size);
  } else {
  }
  return;
}
}
static void ecryptfs_copy_mount_wide_flags_to_inode_flags(struct ecryptfs_crypt_stat *crypt_stat ,
                                                          struct ecryptfs_mount_crypt_stat *mount_crypt_stat )
{
  {
  if ((mount_crypt_stat->flags & 2U) != 0U) {
    crypt_stat->flags = crypt_stat->flags | 128U;
  } else {
  }
  if ((mount_crypt_stat->flags & 4U) != 0U) {
    crypt_stat->flags = crypt_stat->flags | 256U;
  } else {
  }
  if ((mount_crypt_stat->flags & 16U) != 0U) {
    crypt_stat->flags = crypt_stat->flags | 1024U;
    if ((mount_crypt_stat->flags & 32U) != 0U) {
      crypt_stat->flags = crypt_stat->flags | 2048U;
    } else
    if ((mount_crypt_stat->flags & 64U) != 0U) {
      crypt_stat->flags = crypt_stat->flags | 4096U;
    } else {
    }
  } else {
  }
  return;
}
}
static int ecryptfs_copy_mount_wide_sigs_to_inode_sigs(struct ecryptfs_crypt_stat *crypt_stat ,
                                                       struct ecryptfs_mount_crypt_stat *mount_crypt_stat )
{
  struct ecryptfs_global_auth_tok *global_auth_tok ;
  int rc ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  {
  rc = 0;
  ldv_mutex_lock_151(& crypt_stat->keysig_list_mutex);
  ldv_mutex_lock_152(& mount_crypt_stat->global_auth_tok_list_mutex);
  __mptr = (struct list_head const *)mount_crypt_stat->global_auth_tok_list.next;
  global_auth_tok = (struct ecryptfs_global_auth_tok *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_27676;
  ldv_27675: ;
  if ((global_auth_tok->flags & 2U) != 0U) {
    goto ldv_27673;
  } else {
  }
  rc = ecryptfs_add_keysig(crypt_stat, (char *)(& global_auth_tok->sig));
  if (rc != 0) {
    printk("\vError adding keysig; rc = [%d]\n", rc);
    goto out;
  } else {
  }
  ldv_27673:
  __mptr___0 = (struct list_head const *)global_auth_tok->mount_crypt_stat_list.next;
  global_auth_tok = (struct ecryptfs_global_auth_tok *)__mptr___0 + 0xfffffffffffffff8UL;
  ldv_27676: ;
  if ((unsigned long )global_auth_tok != (unsigned long )mount_crypt_stat) {
    goto ldv_27675;
  } else {
  }
  out:
  ldv_mutex_unlock_153(& mount_crypt_stat->global_auth_tok_list_mutex);
  ldv_mutex_unlock_154(& crypt_stat->keysig_list_mutex);
  return (rc);
}
}
static void ecryptfs_set_default_crypt_stat_vals(struct ecryptfs_crypt_stat *crypt_stat ,
                                                 struct ecryptfs_mount_crypt_stat *mount_crypt_stat )
{
  {
  ecryptfs_copy_mount_wide_flags_to_inode_flags(crypt_stat, mount_crypt_stat);
  ecryptfs_set_default_sizes(crypt_stat);
  strcpy((char *)(& crypt_stat->cipher), "aes");
  crypt_stat->key_size = 16UL;
  crypt_stat->flags = crypt_stat->flags & 4294967231U;
  crypt_stat->file_version = 3U;
  crypt_stat->mount_crypt_stat = mount_crypt_stat;
  return;
}
}
int ecryptfs_new_file_context(struct inode *ecryptfs_inode )
{
  struct ecryptfs_crypt_stat *crypt_stat ;
  struct ecryptfs_inode_info *tmp ;
  struct ecryptfs_mount_crypt_stat *mount_crypt_stat ;
  struct ecryptfs_sb_info *tmp___0 ;
  int cipher_name_len ;
  int rc ;
  size_t tmp___1 ;
  size_t __len ;
  void *__ret ;
  {
  tmp = ecryptfs_inode_to_private(ecryptfs_inode);
  crypt_stat = & tmp->crypt_stat;
  tmp___0 = ecryptfs_superblock_to_private(ecryptfs_inode->i_sb);
  mount_crypt_stat = & tmp___0->mount_crypt_stat;
  rc = 0;
  ecryptfs_set_default_crypt_stat_vals(crypt_stat, mount_crypt_stat);
  crypt_stat->flags = crypt_stat->flags | 68U;
  ecryptfs_copy_mount_wide_flags_to_inode_flags(crypt_stat, mount_crypt_stat);
  rc = ecryptfs_copy_mount_wide_sigs_to_inode_sigs(crypt_stat, mount_crypt_stat);
  if (rc != 0) {
    printk("\vError attempting to copy mount-wide key sigs to the inode key sigs; rc = [%d]\n",
           rc);
    goto out;
  } else {
  }
  tmp___1 = strlen((char const *)(& mount_crypt_stat->global_default_cipher_name));
  cipher_name_len = (int )tmp___1;
  __len = (size_t )cipher_name_len;
  __ret = __builtin_memcpy((void *)(& crypt_stat->cipher), (void const *)(& mount_crypt_stat->global_default_cipher_name),
                           __len);
  crypt_stat->cipher[cipher_name_len] = 0U;
  crypt_stat->key_size = mount_crypt_stat->global_default_cipher_key_size;
  ecryptfs_generate_new_key(crypt_stat);
  rc = ecryptfs_init_crypt_ctx(crypt_stat);
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Error initializing cryptographic context for cipher [%s]: rc = [%d]\n",
                      "ecryptfs_new_file_context", (unsigned char *)(& crypt_stat->cipher),
                      rc);
  } else {
  }
  out: ;
  return (rc);
}
}
static int ecryptfs_validate_marker(char *data )
{
  u32 m_1 ;
  u32 m_2 ;
  {
  m_1 = get_unaligned_be32((void const *)data);
  m_2 = get_unaligned_be32((void const *)data + 4U);
  if ((m_1 ^ 1015134197U) == m_2) {
    return (0);
  } else {
  }
  __ecryptfs_printk("\017%s: m_1 = [0x%.8x]; m_2 = [0x%.8x]; MAGIC_ECRYPTFS_MARKER = [0x%.8x]\n",
                    "ecryptfs_validate_marker", m_1, m_2, 1015134197);
  __ecryptfs_printk("\017%s: (m_1 ^ MAGIC_ECRYPTFS_MARKER) = [0x%.8x]\n", "ecryptfs_validate_marker",
                    m_1 ^ 1015134197U);
  return (-22);
}
}
static struct ecryptfs_flag_map_elem ecryptfs_flag_map[4U] = { {1U, 16U},
        {2U, 4U},
        {4U, 128U},
        {8U, 1024U}};
static int ecryptfs_process_flags(struct ecryptfs_crypt_stat *crypt_stat , char *page_virt ,
                                  int *bytes_read )
{
  int rc ;
  int i ;
  u32 flags ;
  {
  rc = 0;
  flags = get_unaligned_be32((void const *)page_virt);
  i = 0;
  goto ldv_27713;
  ldv_27712: ;
  if ((ecryptfs_flag_map[i].file_flag & flags) != 0U) {
    crypt_stat->flags = crypt_stat->flags | ecryptfs_flag_map[i].local_flag;
  } else {
    crypt_stat->flags = crypt_stat->flags & ~ ecryptfs_flag_map[i].local_flag;
  }
  i = i + 1;
  ldv_27713: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_27712;
  } else {
  }
  crypt_stat->file_version = flags >> 24;
  *bytes_read = 4;
  return (rc);
}
}
static void write_ecryptfs_marker(char *page_virt , size_t *written )
{
  u32 m_1 ;
  u32 m_2 ;
  {
  get_random_bytes((void *)(& m_1), 4);
  m_2 = m_1 ^ 1015134197U;
  put_unaligned_be32(m_1, (void *)page_virt);
  page_virt = page_virt + 4UL;
  put_unaligned_be32(m_2, (void *)page_virt);
  *written = 8UL;
  return;
}
}
void ecryptfs_write_crypt_stat_flags(char *page_virt , struct ecryptfs_crypt_stat *crypt_stat ,
                                     size_t *written )
{
  u32 flags ;
  int i ;
  {
  flags = 0U;
  i = 0;
  goto ldv_27729;
  ldv_27728: ;
  if ((crypt_stat->flags & ecryptfs_flag_map[i].local_flag) != 0U) {
    flags = ecryptfs_flag_map[i].file_flag | flags;
  } else {
  }
  i = i + 1;
  ldv_27729: ;
  if ((unsigned int )i <= 3U) {
    goto ldv_27728;
  } else {
  }
  flags = (u32 )((int )((unsigned char )crypt_stat->file_version) << 24) | flags;
  put_unaligned_be32(flags, (void *)page_virt);
  *written = 4UL;
  return;
}
}
static struct ecryptfs_cipher_code_str_map_elem ecryptfs_cipher_code_str_map[8U] =
  { {{'a', 'e', 's', '\000'}, 7U},
        {{'b', 'l', 'o', 'w', 'f', 'i', 's', 'h', '\000'}, 4U},
        {{'d', 'e', 's', '3', '_', 'e', 'd', 'e', '\000'}, 2U},
        {{'c', 'a', 's', 't', '5', '\000'}, 3U},
        {{'t', 'w', 'o', 'f', 'i', 's', 'h', '\000'}, 10U},
        {{'c', 'a', 's', 't', '6', '\000'}, 11U},
        {{'a', 'e', 's', '\000'}, 8U},
        {{'a', 'e', 's', '\000'}, 9U}};
u8 ecryptfs_code_for_cipher_string(char *cipher_name , size_t key_bytes )
{
  int i ;
  u8 code ;
  struct ecryptfs_cipher_code_str_map_elem *map ;
  int tmp ;
  int tmp___0 ;
  {
  code = 0U;
  map = (struct ecryptfs_cipher_code_str_map_elem *)(& ecryptfs_cipher_code_str_map);
  tmp___0 = strcmp((char const *)cipher_name, "aes");
  if (tmp___0 == 0) {
    switch (key_bytes) {
    case 16UL:
    code = 7U;
    goto ldv_27743;
    case 24UL:
    code = 8U;
    goto ldv_27743;
    case 32UL:
    code = 9U;
    }
    ldv_27743: ;
  } else {
    i = 0;
    goto ldv_27750;
    ldv_27749:
    tmp = strcmp((char const *)cipher_name, (char const *)(& (map + (unsigned long )i)->cipher_str));
    if (tmp == 0) {
      code = (map + (unsigned long )i)->cipher_code;
      goto ldv_27748;
    } else {
    }
    i = i + 1;
    ldv_27750: ;
    if ((unsigned int )i <= 7U) {
      goto ldv_27749;
    } else {
    }
    ldv_27748: ;
  }
  return (code);
}
}
int ecryptfs_cipher_code_to_string(char *str , u8 cipher_code )
{
  int rc ;
  int i ;
  {
  rc = 0;
  *str = 0;
  i = 0;
  goto ldv_27760;
  ldv_27759: ;
  if ((int )ecryptfs_cipher_code_str_map[i].cipher_code == (int )cipher_code) {
    strcpy(str, (char const *)(& ecryptfs_cipher_code_str_map[i].cipher_str));
  } else {
  }
  i = i + 1;
  ldv_27760: ;
  if ((unsigned int )i <= 7U) {
    goto ldv_27759;
  } else {
  }
  if ((int )((signed char )*str) == 0) {
    __ecryptfs_printk("\f%s: Cipher code not recognized: [%d]\n", "ecryptfs_cipher_code_to_string",
                      (int )cipher_code);
    rc = -22;
  } else {
  }
  return (rc);
}
}
int ecryptfs_read_and_validate_header_region(struct inode *inode )
{
  u8 file_size[16U] ;
  u8 *marker ;
  int rc ;
  {
  marker = (u8 *)(& file_size) + 8UL;
  rc = ecryptfs_read_lower((char *)(& file_size), 0LL, 16UL, inode);
  if ((unsigned int )rc <= 15U) {
    return (rc < 0 ? rc : -22);
  } else {
  }
  rc = ecryptfs_validate_marker((char *)marker);
  if (rc == 0) {
    ecryptfs_i_size_init((char const *)(& file_size), inode);
  } else {
  }
  return (rc);
}
}
void ecryptfs_write_header_metadata(char *virt , struct ecryptfs_crypt_stat *crypt_stat ,
                                    size_t *written )
{
  u32 header_extent_size ;
  u16 num_header_extents_at_front ;
  {
  header_extent_size = (unsigned int )crypt_stat->extent_size;
  num_header_extents_at_front = (unsigned short )(crypt_stat->metadata_size / crypt_stat->extent_size);
  put_unaligned_be32(header_extent_size, (void *)virt);
  virt = virt + 4UL;
  put_unaligned_be16((int )num_header_extents_at_front, (void *)virt);
  *written = 6UL;
  return;
}
}
static int ecryptfs_write_headers_virt(char *page_virt , size_t max , size_t *size ,
                                       struct ecryptfs_crypt_stat *crypt_stat , struct dentry *ecryptfs_dentry )
{
  int rc ;
  size_t written ;
  size_t offset ;
  {
  offset = 8UL;
  write_ecryptfs_marker(page_virt + offset, & written);
  offset = offset + written;
  ecryptfs_write_crypt_stat_flags(page_virt + offset, crypt_stat, & written);
  offset = offset + written;
  ecryptfs_write_header_metadata(page_virt + offset, crypt_stat, & written);
  offset = offset + written;
  rc = ecryptfs_generate_key_packet_set(page_virt + offset, crypt_stat, ecryptfs_dentry,
                                        & written, max - offset);
  if (rc != 0) {
    __ecryptfs_printk("\f%s: Error generating key packet set; rc = [%d]\n", "ecryptfs_write_headers_virt",
                      rc);
  } else {
  }
  if ((unsigned long )size != (unsigned long )((size_t *)0)) {
    offset = offset + written;
    *size = offset;
  } else {
  }
  return (rc);
}
}
static int ecryptfs_write_metadata_to_contents(struct inode *ecryptfs_inode , char *virt ,
                                               size_t virt_len )
{
  int rc ;
  {
  rc = ecryptfs_write_lower(ecryptfs_inode, virt, 0LL, virt_len);
  if (rc < 0) {
    printk("\v%s: Error attempting to write header information to lower file; rc = [%d]\n",
           "ecryptfs_write_metadata_to_contents", rc);
  } else {
    rc = 0;
  }
  return (rc);
}
}
static int ecryptfs_write_metadata_to_xattr(struct dentry *ecryptfs_dentry , char *page_virt ,
                                            size_t size )
{
  int rc ;
  {
  rc = ecryptfs_setxattr(ecryptfs_dentry, "user.ecryptfs", (void const *)page_virt,
                         size, 0);
  return (rc);
}
}
static unsigned long ecryptfs_get_zeroed_pages(gfp_t gfp_mask , unsigned int order )
{
  struct page *page ;
  void *tmp ;
  {
  page = alloc_pages(gfp_mask | 32768U, order);
  if ((unsigned long )page != (unsigned long )((struct page *)0)) {
    tmp = lowmem_page_address((struct page const *)page);
    return ((unsigned long )tmp);
  } else {
  }
  return (0UL);
}
}
int ecryptfs_write_metadata(struct dentry *ecryptfs_dentry , struct inode *ecryptfs_inode )
{
  struct ecryptfs_crypt_stat *crypt_stat ;
  struct ecryptfs_inode_info *tmp ;
  unsigned int order ;
  char *virt ;
  size_t virt_len ;
  size_t size ;
  int rc ;
  long tmp___0 ;
  int tmp___1 ;
  unsigned long tmp___2 ;
  long tmp___3 ;
  {
  tmp = ecryptfs_inode_to_private(ecryptfs_inode);
  crypt_stat = & tmp->crypt_stat;
  size = 0UL;
  rc = 0;
  tmp___0 = ldv__builtin_expect((crypt_stat->flags & 4U) != 0U, 1L);
  if (tmp___0 != 0L) {
    if ((crypt_stat->flags & 64U) == 0U) {
      printk("\vKey is invalid; bailing out\n");
      rc = -22;
      goto out;
    } else {
      printk("\f%s: Encrypted flag not set\n", "ecryptfs_write_metadata");
      rc = -22;
      goto out;
    }
  } else {
  }
  virt_len = crypt_stat->metadata_size;
  tmp___1 = __get_order(virt_len);
  order = (unsigned int )tmp___1;
  tmp___2 = ecryptfs_get_zeroed_pages(208U, order);
  virt = (char *)tmp___2;
  if ((unsigned long )virt == (unsigned long )((char *)0)) {
    printk("\v%s: Out of memory\n", "ecryptfs_write_metadata");
    rc = -12;
    goto out;
  } else {
  }
  rc = ecryptfs_write_headers_virt(virt, virt_len, & size, crypt_stat, ecryptfs_dentry);
  tmp___3 = ldv__builtin_expect(rc != 0, 0L);
  if (tmp___3 != 0L) {
    printk("\v%s: Error whilst writing headers; rc = [%d]\n", "ecryptfs_write_metadata",
           rc);
    goto out_free;
  } else {
  }
  if ((crypt_stat->flags & 128U) != 0U) {
    rc = ecryptfs_write_metadata_to_xattr(ecryptfs_dentry, virt, size);
  } else {
    rc = ecryptfs_write_metadata_to_contents(ecryptfs_inode, virt, virt_len);
  }
  if (rc != 0) {
    printk("\v%s: Error writing metadata out to lower file; rc = [%d]\n", "ecryptfs_write_metadata",
           rc);
    goto out_free;
  } else {
  }
  out_free:
  free_pages((unsigned long )virt, order);
  out: ;
  return (rc);
}
}
static int parse_header_metadata(struct ecryptfs_crypt_stat *crypt_stat , char *virt ,
                                 int *bytes_read , int validate_header_size )
{
  int rc ;
  u32 header_extent_size ;
  u16 num_header_extents_at_front ;
  {
  rc = 0;
  header_extent_size = get_unaligned_be32((void const *)virt);
  virt = virt + 4UL;
  num_header_extents_at_front = get_unaligned_be16((void const *)virt);
  crypt_stat->metadata_size = (unsigned long )num_header_extents_at_front * (unsigned long )header_extent_size;
  *bytes_read = 6;
  if (validate_header_size == 1 && crypt_stat->metadata_size <= 8191UL) {
    rc = -22;
    printk("\fInvalid header size: [%zd]\n", crypt_stat->metadata_size);
  } else {
  }
  return (rc);
}
}
static void set_default_header_data(struct ecryptfs_crypt_stat *crypt_stat )
{
  {
  crypt_stat->metadata_size = 8192UL;
  return;
}
}
void ecryptfs_i_size_init(char const *page_virt , struct inode *inode )
{
  struct ecryptfs_mount_crypt_stat *mount_crypt_stat ;
  struct ecryptfs_crypt_stat *crypt_stat ;
  u64 file_size ;
  struct ecryptfs_inode_info *tmp ;
  struct ecryptfs_sb_info *tmp___0 ;
  struct inode *tmp___1 ;
  loff_t tmp___2 ;
  {
  tmp = ecryptfs_inode_to_private(inode);
  crypt_stat = & tmp->crypt_stat;
  tmp___0 = ecryptfs_superblock_to_private(inode->i_sb);
  mount_crypt_stat = & tmp___0->mount_crypt_stat;
  if ((mount_crypt_stat->flags & 4U) != 0U) {
    tmp___1 = ecryptfs_inode_to_lower(inode);
    tmp___2 = i_size_read((struct inode const *)tmp___1);
    file_size = (u64 )tmp___2;
    if ((crypt_stat->flags & 128U) != 0U) {
      file_size = (unsigned long long )crypt_stat->metadata_size + file_size;
    } else {
    }
  } else {
    file_size = get_unaligned_be64((void const *)page_virt);
  }
  i_size_write(inode, (long long )file_size);
  crypt_stat->flags = crypt_stat->flags | 16384U;
  return;
}
}
static int ecryptfs_read_headers_virt(char *page_virt , struct ecryptfs_crypt_stat *crypt_stat ,
                                      struct dentry *ecryptfs_dentry , int validate_header_size )
{
  int rc ;
  int offset ;
  int bytes_read ;
  struct ecryptfs_sb_info *tmp ;
  {
  rc = 0;
  ecryptfs_set_default_sizes(crypt_stat);
  tmp = ecryptfs_superblock_to_private(ecryptfs_dentry->d_sb);
  crypt_stat->mount_crypt_stat = & tmp->mount_crypt_stat;
  offset = 8;
  rc = ecryptfs_validate_marker(page_virt + (unsigned long )offset);
  if (rc != 0) {
    goto out;
  } else {
  }
  if ((crypt_stat->flags & 16384U) == 0U) {
    ecryptfs_i_size_init((char const *)page_virt, ecryptfs_dentry->d_inode);
  } else {
  }
  offset = offset + 8;
  rc = ecryptfs_process_flags(crypt_stat, page_virt + (unsigned long )offset, & bytes_read);
  if (rc != 0) {
    __ecryptfs_printk("\f%s: Error processing flags\n", "ecryptfs_read_headers_virt");
    goto out;
  } else {
  }
  if (crypt_stat->file_version > 3U) {
    __ecryptfs_printk("\f%s: File version is [%d]; only file version [%d] is supported by this version of eCryptfs\n",
                      "ecryptfs_read_headers_virt", crypt_stat->file_version, 3);
    rc = -22;
    goto out;
  } else {
  }
  offset = offset + bytes_read;
  if (crypt_stat->file_version != 0U) {
    rc = parse_header_metadata(crypt_stat, page_virt + (unsigned long )offset, & bytes_read,
                               validate_header_size);
    if (rc != 0) {
      __ecryptfs_printk("\f%s: Error reading header metadata; rc = [%d]\n", "ecryptfs_read_headers_virt",
                        rc);
    } else {
    }
    offset = offset + bytes_read;
  } else {
    set_default_header_data(crypt_stat);
  }
  rc = ecryptfs_parse_packet_set(crypt_stat, (unsigned char *)page_virt + (unsigned long )offset,
                                 ecryptfs_dentry);
  out: ;
  return (rc);
}
}
int ecryptfs_read_xattr_region(char *page_virt , struct inode *ecryptfs_inode )
{
  struct dentry *lower_dentry ;
  struct ecryptfs_inode_info *tmp ;
  ssize_t size ;
  int rc ;
  long tmp___0 ;
  {
  tmp = ecryptfs_inode_to_private(ecryptfs_inode);
  lower_dentry = (tmp->lower_file)->f_path.dentry;
  rc = 0;
  size = ecryptfs_getxattr_lower(lower_dentry, "user.ecryptfs", (void *)page_virt,
                                 4096UL);
  if (size < 0L) {
    tmp___0 = ldv__builtin_expect(ecryptfs_verbosity > 0, 0L);
    if (tmp___0 != 0L) {
      printk("\016Error attempting to read the [%s] xattr from the lower file; return value = [%zd]\n",
             (char *)"user.ecryptfs", size);
    } else {
    }
    rc = -22;
    goto out;
  } else {
  }
  out: ;
  return (rc);
}
}
int ecryptfs_read_and_validate_xattr_region(struct dentry *dentry , struct inode *inode )
{
  u8 file_size[16U] ;
  u8 *marker ;
  int rc ;
  struct dentry *tmp ;
  ssize_t tmp___0 ;
  {
  marker = (u8 *)(& file_size) + 8UL;
  tmp = ecryptfs_dentry_to_lower(dentry);
  tmp___0 = ecryptfs_getxattr_lower(tmp, "user.ecryptfs", (void *)(& file_size), 16UL);
  rc = (int )tmp___0;
  if ((unsigned int )rc <= 15U) {
    return (rc < 0 ? rc : -22);
  } else {
  }
  rc = ecryptfs_validate_marker((char *)marker);
  if (rc == 0) {
    ecryptfs_i_size_init((char const *)(& file_size), inode);
  } else {
  }
  return (rc);
}
}
int ecryptfs_read_metadata(struct dentry *ecryptfs_dentry )
{
  int rc ;
  char *page_virt ;
  struct inode *ecryptfs_inode ;
  struct ecryptfs_crypt_stat *crypt_stat ;
  struct ecryptfs_inode_info *tmp ;
  struct ecryptfs_mount_crypt_stat *mount_crypt_stat ;
  struct ecryptfs_sb_info *tmp___0 ;
  void *tmp___1 ;
  {
  ecryptfs_inode = ecryptfs_dentry->d_inode;
  tmp = ecryptfs_inode_to_private(ecryptfs_inode);
  crypt_stat = & tmp->crypt_stat;
  tmp___0 = ecryptfs_superblock_to_private(ecryptfs_dentry->d_sb);
  mount_crypt_stat = & tmp___0->mount_crypt_stat;
  ecryptfs_copy_mount_wide_flags_to_inode_flags(crypt_stat, mount_crypt_stat);
  tmp___1 = kmem_cache_alloc(ecryptfs_header_cache, 131280U);
  page_virt = (char *)tmp___1;
  if ((unsigned long )page_virt == (unsigned long )((char *)0)) {
    rc = -12;
    printk("\v%s: Unable to allocate page_virt\n", "ecryptfs_read_metadata");
    goto out;
  } else {
  }
  rc = ecryptfs_read_lower(page_virt, 0LL, crypt_stat->extent_size, ecryptfs_inode);
  if (rc >= 0) {
    rc = ecryptfs_read_headers_virt(page_virt, crypt_stat, ecryptfs_dentry, 1);
  } else {
  }
  if (rc != 0) {
    memset((void *)page_virt, 0, 4096UL);
    rc = ecryptfs_read_xattr_region(page_virt, ecryptfs_inode);
    if (rc != 0) {
      printk("\017Valid eCryptfs headers not found in file header region or xattr region, inode %lu\n",
             ecryptfs_inode->i_ino);
      rc = -22;
      goto out;
    } else {
    }
    rc = ecryptfs_read_headers_virt(page_virt, crypt_stat, ecryptfs_dentry, 0);
    if (rc != 0) {
      printk("\017Valid eCryptfs headers not found in file xattr region either, inode %lu\n",
             ecryptfs_inode->i_ino);
      rc = -22;
    } else {
    }
    if (((crypt_stat->mount_crypt_stat)->flags & 2U) != 0U) {
      crypt_stat->flags = crypt_stat->flags | 128U;
    } else {
      printk("\fAttempt to access file with crypto metadata only in the extended attribute region, but eCryptfs was mounted without xattr support enabled. eCryptfs will not treat this like an encrypted file, inode %lu\n",
             ecryptfs_inode->i_ino);
      rc = -22;
    }
  } else {
  }
  out: ;
  if ((unsigned long )page_virt != (unsigned long )((char *)0)) {
    memset((void *)page_virt, 0, 4096UL);
    kmem_cache_free(ecryptfs_header_cache, (void *)page_virt);
  } else {
  }
  return (rc);
}
}
static int ecryptfs_encrypt_filename(struct ecryptfs_filename *filename , struct ecryptfs_crypt_stat *crypt_stat ,
                                     struct ecryptfs_mount_crypt_stat *mount_crypt_stat )
{
  int rc ;
  size_t packet_size ;
  size_t remaining_bytes ;
  void *tmp ;
  {
  rc = 0;
  filename->encrypted_filename = 0;
  filename->encrypted_filename_size = 0UL;
  if (((unsigned long )crypt_stat != (unsigned long )((struct ecryptfs_crypt_stat *)0) && (crypt_stat->flags & 2048U) != 0U) || ((unsigned long )mount_crypt_stat != (unsigned long )((struct ecryptfs_mount_crypt_stat *)0) && (mount_crypt_stat->flags & 32U) != 0U)) {
    rc = ecryptfs_write_tag_70_packet(0, 0, & filename->encrypted_filename_size, mount_crypt_stat,
                                      0, filename->filename_size);
    if (rc != 0) {
      printk("\v%s: Error attempting to get packet size for tag 72; rc = [%d]\n",
             "ecryptfs_encrypt_filename", rc);
      filename->encrypted_filename_size = 0UL;
      goto out;
    } else {
    }
    tmp = kmalloc(filename->encrypted_filename_size, 208U);
    filename->encrypted_filename = (char *)tmp;
    if ((unsigned long )filename->encrypted_filename == (unsigned long )((char *)0)) {
      printk("\v%s: Out of memory whilst attempting to kmalloc [%zd] bytes\n", "ecryptfs_encrypt_filename",
             filename->encrypted_filename_size);
      rc = -12;
      goto out;
    } else {
    }
    remaining_bytes = filename->encrypted_filename_size;
    rc = ecryptfs_write_tag_70_packet(filename->encrypted_filename, & remaining_bytes,
                                      & packet_size, mount_crypt_stat, filename->filename,
                                      filename->filename_size);
    if (rc != 0) {
      printk("\v%s: Error attempting to generate tag 70 packet; rc = [%d]\n", "ecryptfs_encrypt_filename",
             rc);
      kfree((void const *)filename->encrypted_filename);
      filename->encrypted_filename = 0;
      filename->encrypted_filename_size = 0UL;
      goto out;
    } else {
    }
    filename->encrypted_filename_size = packet_size;
  } else {
    printk("\v%s: No support for requested filename encryption method in this release\n",
           "ecryptfs_encrypt_filename");
    rc = -95;
    goto out;
  }
  out: ;
  return (rc);
}
}
static int ecryptfs_copy_filename(char **copied_name , size_t *copied_name_size ,
                                  char const *name , size_t name_size )
{
  int rc ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  {
  rc = 0;
  tmp = kmalloc(name_size + 1UL, 208U);
  *copied_name = (char *)tmp;
  if ((unsigned long )*copied_name == (unsigned long )((char *)0)) {
    rc = -12;
    goto out;
  } else {
  }
  __len = name_size;
  __ret = __builtin_memcpy((void *)*copied_name, (void const *)name, __len);
  *(*copied_name + name_size) = 0;
  *copied_name_size = name_size;
  out: ;
  return (rc);
}
}
static int ecryptfs_process_key_cipher(struct crypto_blkcipher **key_tfm , char *cipher_name ,
                                       size_t *key_size )
{
  char dummy_key[64U] ;
  char *full_alg_name ;
  int rc ;
  long tmp ;
  long tmp___0 ;
  struct blkcipher_alg *alg ;
  struct blkcipher_alg *tmp___1 ;
  {
  full_alg_name = 0;
  *key_tfm = 0;
  if (*key_size > 64UL) {
    rc = -22;
    printk("\vRequested key size is [%zd] bytes; maximum allowable is [%d]\n", *key_size,
           64);
    goto out;
  } else {
  }
  rc = ecryptfs_crypto_api_algify_cipher_name(& full_alg_name, cipher_name, (char *)"ecb");
  if (rc != 0) {
    goto out;
  } else {
  }
  *key_tfm = crypto_alloc_blkcipher((char const *)full_alg_name, 0U, 128U);
  tmp___0 = IS_ERR((void const *)*key_tfm);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)*key_tfm);
    rc = (int )tmp;
    printk("\vUnable to allocate crypto cipher with name [%s]; rc = [%d]\n", full_alg_name,
           rc);
    goto out;
  } else {
  }
  crypto_blkcipher_set_flags(*key_tfm, 256U);
  if (*key_size == 0UL) {
    tmp___1 = crypto_blkcipher_alg(*key_tfm);
    alg = tmp___1;
    *key_size = (size_t )alg->max_keysize;
  } else {
  }
  get_random_bytes((void *)(& dummy_key), (int )*key_size);
  rc = crypto_blkcipher_setkey(*key_tfm, (u8 const *)(& dummy_key), (unsigned int )*key_size);
  if (rc != 0) {
    printk("\vError attempting to set key of size [%zd] for cipher [%s]; rc = [%d]\n",
           *key_size, full_alg_name, rc);
    rc = -22;
    goto out;
  } else {
  }
  out:
  kfree((void const *)full_alg_name);
  return (rc);
}
}
static struct list_head key_tfm_list ;
int ecryptfs_init_crypto(void)
{
  struct lock_class_key __key ;
  {
  __mutex_init(& key_tfm_list_mutex, "&key_tfm_list_mutex", & __key);
  INIT_LIST_HEAD(& key_tfm_list);
  return (0);
}
}
int ecryptfs_destroy_crypto(void)
{
  struct ecryptfs_key_tfm *key_tfm ;
  struct ecryptfs_key_tfm *key_tfm_tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  ldv_mutex_lock_155(& key_tfm_list_mutex);
  __mptr = (struct list_head const *)key_tfm_list.next;
  key_tfm = (struct ecryptfs_key_tfm *)__mptr + 0xffffffffffffff48UL;
  __mptr___0 = (struct list_head const *)key_tfm->key_tfm_list.next;
  key_tfm_tmp = (struct ecryptfs_key_tfm *)__mptr___0 + 0xffffffffffffff48UL;
  goto ldv_27924;
  ldv_27923:
  list_del(& key_tfm->key_tfm_list);
  if ((unsigned long )key_tfm->key_tfm != (unsigned long )((struct crypto_blkcipher *)0)) {
    crypto_free_blkcipher(key_tfm->key_tfm);
  } else {
  }
  kmem_cache_free(ecryptfs_key_tfm_cache, (void *)key_tfm);
  key_tfm = key_tfm_tmp;
  __mptr___1 = (struct list_head const *)key_tfm_tmp->key_tfm_list.next;
  key_tfm_tmp = (struct ecryptfs_key_tfm *)__mptr___1 + 0xffffffffffffff48UL;
  ldv_27924: ;
  if ((unsigned long )(& key_tfm->key_tfm_list) != (unsigned long )(& key_tfm_list)) {
    goto ldv_27923;
  } else {
  }
  ldv_mutex_unlock_156(& key_tfm_list_mutex);
  return (0);
}
}
int ecryptfs_add_new_key_tfm(struct ecryptfs_key_tfm **key_tfm , char *cipher_name ,
                             size_t key_size )
{
  struct ecryptfs_key_tfm *tmp_tfm ;
  int rc ;
  int tmp ;
  long tmp___0 ;
  void *tmp___1 ;
  struct lock_class_key __key ;
  {
  rc = 0;
  tmp = mutex_is_locked(& key_tfm_list_mutex);
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/ecryptfs/ecryptfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/24/dscv_tempdir/dscv/ri/32_7a/fs/ecryptfs/crypto.c.prepared"),
                         "i" (1942), "i" (12UL));
    ldv_27933: ;
    goto ldv_27933;
  } else {
  }
  tmp___1 = kmem_cache_alloc(ecryptfs_key_tfm_cache, 208U);
  tmp_tfm = (struct ecryptfs_key_tfm *)tmp___1;
  if ((unsigned long )key_tfm != (unsigned long )((struct ecryptfs_key_tfm **)0)) {
    *key_tfm = tmp_tfm;
  } else {
  }
  if ((unsigned long )tmp_tfm == (unsigned long )((struct ecryptfs_key_tfm *)0)) {
    rc = -12;
    printk("\vError attempting to allocate from ecryptfs_key_tfm_cache\n");
    goto out;
  } else {
  }
  __mutex_init(& tmp_tfm->key_tfm_mutex, "&tmp_tfm->key_tfm_mutex", & __key);
  strncpy((char *)(& tmp_tfm->cipher_name), (char const *)cipher_name, 32UL);
  tmp_tfm->cipher_name[32] = 0U;
  tmp_tfm->key_size = key_size;
  rc = ecryptfs_process_key_cipher(& tmp_tfm->key_tfm, (char *)(& tmp_tfm->cipher_name),
                                   & tmp_tfm->key_size);
  if (rc != 0) {
    printk("\vError attempting to initialize key TFM cipher with name = [%s]; rc = [%d]\n",
           (unsigned char *)(& tmp_tfm->cipher_name), rc);
    kmem_cache_free(ecryptfs_key_tfm_cache, (void *)tmp_tfm);
    if ((unsigned long )key_tfm != (unsigned long )((struct ecryptfs_key_tfm **)0)) {
      *key_tfm = 0;
    } else {
    }
    goto out;
  } else {
  }
  list_add(& tmp_tfm->key_tfm_list, & key_tfm_list);
  out: ;
  return (rc);
}
}
int ecryptfs_tfm_exists(char *cipher_name , struct ecryptfs_key_tfm **key_tfm )
{
  struct ecryptfs_key_tfm *tmp_key_tfm ;
  int tmp ;
  long tmp___0 ;
  struct list_head const *__mptr ;
  int tmp___1 ;
  struct list_head const *__mptr___0 ;
  {
  tmp = mutex_is_locked(& key_tfm_list_mutex);
  tmp___0 = ldv__builtin_expect(tmp == 0, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/ecryptfs/ecryptfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/24/dscv_tempdir/dscv/ri/32_7a/fs/ecryptfs/crypto.c.prepared"),
                         "i" (1989), "i" (12UL));
    ldv_27941: ;
    goto ldv_27941;
  } else {
  }
  __mptr = (struct list_head const *)key_tfm_list.next;
  tmp_key_tfm = (struct ecryptfs_key_tfm *)__mptr + 0xffffffffffffff48UL;
  goto ldv_27947;
  ldv_27946:
  tmp___1 = strcmp((char const *)(& tmp_key_tfm->cipher_name), (char const *)cipher_name);
  if (tmp___1 == 0) {
    if ((unsigned long )key_tfm != (unsigned long )((struct ecryptfs_key_tfm **)0)) {
      *key_tfm = tmp_key_tfm;
    } else {
    }
    return (1);
  } else {
  }
  __mptr___0 = (struct list_head const *)tmp_key_tfm->key_tfm_list.next;
  tmp_key_tfm = (struct ecryptfs_key_tfm *)__mptr___0 + 0xffffffffffffff48UL;
  ldv_27947: ;
  if ((unsigned long )(& tmp_key_tfm->key_tfm_list) != (unsigned long )(& key_tfm_list)) {
    goto ldv_27946;
  } else {
  }
  if ((unsigned long )key_tfm != (unsigned long )((struct ecryptfs_key_tfm **)0)) {
    *key_tfm = 0;
  } else {
  }
  return (0);
}
}
int ecryptfs_get_tfm_and_mutex_for_cipher_name(struct crypto_blkcipher **tfm , struct mutex **tfm_mutex ,
                                               char *cipher_name )
{
  struct ecryptfs_key_tfm *key_tfm ;
  int rc ;
  int tmp ;
  {
  rc = 0;
  *tfm = 0;
  *tfm_mutex = 0;
  ldv_mutex_lock_157(& key_tfm_list_mutex);
  tmp = ecryptfs_tfm_exists(cipher_name, & key_tfm);
  if (tmp == 0) {
    rc = ecryptfs_add_new_key_tfm(& key_tfm, cipher_name, 0UL);
    if (rc != 0) {
      printk("\vError adding new key_tfm to list; rc = [%d]\n", rc);
      goto out;
    } else {
    }
  } else {
  }
  *tfm = key_tfm->key_tfm;
  *tfm_mutex = & key_tfm->key_tfm_mutex;
  out:
  ldv_mutex_unlock_158(& key_tfm_list_mutex);
  return (rc);
}
}
static unsigned char *portable_filename_chars = (unsigned char *)"-.0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
static unsigned char const filename_rev_map[256U] =
  { 0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 0U, 1U, 0U,
        2U, 3U, 4U, 5U,
        6U, 7U, 8U, 9U,
        10U, 11U, 0U, 0U,
        0U, 0U, 0U, 0U,
        0U, 12U, 13U, 14U,
        15U, 16U, 17U, 18U,
        19U, 20U, 21U, 22U,
        23U, 24U, 25U, 26U,
        27U, 28U, 29U, 30U,
        31U, 32U, 33U, 34U,
        35U, 36U, 37U, 0U,
        0U, 0U, 0U, 0U,
        0U, 38U, 39U, 40U,
        41U, 42U, 43U, 44U,
        45U, 46U, 47U, 48U,
        49U, 50U, 51U, 52U,
        53U, 54U, 55U, 56U,
        57U, 58U, 59U, 60U,
        61U, 62U, 63U};
void ecryptfs_encode_for_filename(unsigned char *dst , size_t *dst_size , unsigned char *src ,
                                  size_t src_size )
{
  size_t num_blocks ;
  size_t block_num ;
  size_t dst_offset ;
  unsigned char last_block[3U] ;
  size_t __len ;
  void *__ret ;
  unsigned char *src_block ;
  unsigned char dst_block[4U] ;
  size_t tmp ;
  size_t tmp___0 ;
  size_t tmp___1 ;
  size_t tmp___2 ;
  {
  block_num = 0UL;
  dst_offset = 0UL;
  if (src_size == 0UL) {
    *dst_size = 0UL;
    goto out;
  } else {
  }
  num_blocks = src_size / 3UL;
  if (src_size % 3UL == 0UL) {
    __len = 3UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& last_block), (void const *)(src + (src_size + 0xfffffffffffffffdUL)),
                       __len);
    } else {
      __ret = __builtin_memcpy((void *)(& last_block), (void const *)(src + (src_size + 0xfffffffffffffffdUL)),
                               __len);
    }
  } else {
    num_blocks = num_blocks + 1UL;
    last_block[2] = 0U;
    switch (src_size % 3UL) {
    case 1UL:
    last_block[0] = *(src + (src_size + 0xffffffffffffffffUL));
    last_block[1] = 0U;
    goto ldv_27974;
    case 2UL:
    last_block[0] = *(src + (src_size + 0xfffffffffffffffeUL));
    last_block[1] = *(src + (src_size + 0xffffffffffffffffUL));
    }
    ldv_27974: ;
  }
  *dst_size = num_blocks * 4UL;
  if ((unsigned long )dst == (unsigned long )((unsigned char *)0)) {
    goto out;
  } else {
  }
  goto ldv_27979;
  ldv_27978: ;
  if (num_blocks - 1UL == block_num) {
    src_block = (unsigned char *)(& last_block);
  } else {
    src_block = src + block_num * 3UL;
  }
  dst_block[0] = (int )*src_block >> 2;
  dst_block[1] = (unsigned char )(((int )((signed char )((int )*src_block << 4)) & 48) | (int )((signed char )((int )*(src_block + 1UL) >> 4)));
  dst_block[2] = (unsigned char )(((int )((signed char )((int )*(src_block + 1UL) << 2)) & 60) | (int )((signed char )((int )*(src_block + 2UL) >> 6)));
  dst_block[3] = (unsigned int )*(src_block + 2UL) & 63U;
  tmp = dst_offset;
  dst_offset = dst_offset + 1UL;
  *(dst + tmp) = *(portable_filename_chars + (unsigned long )dst_block[0]);
  tmp___0 = dst_offset;
  dst_offset = dst_offset + 1UL;
  *(dst + tmp___0) = *(portable_filename_chars + (unsigned long )dst_block[1]);
  tmp___1 = dst_offset;
  dst_offset = dst_offset + 1UL;
  *(dst + tmp___1) = *(portable_filename_chars + (unsigned long )dst_block[2]);
  tmp___2 = dst_offset;
  dst_offset = dst_offset + 1UL;
  *(dst + tmp___2) = *(portable_filename_chars + (unsigned long )dst_block[3]);
  block_num = block_num + 1UL;
  ldv_27979: ;
  if (block_num < num_blocks) {
    goto ldv_27978;
  } else {
  }
  out: ;
  return;
}
}
static size_t ecryptfs_max_decoded_size(size_t encoded_size )
{
  {
  return (((encoded_size + 1UL) * 3UL) / 4UL);
}
}
static void ecryptfs_decode_from_filename(unsigned char *dst , size_t *dst_size ,
                                          unsigned char const *src , size_t src_size )
{
  u8 current_bit_offset ;
  size_t src_byte_offset ;
  size_t dst_byte_offset ;
  unsigned char src_byte ;
  size_t tmp ;
  size_t tmp___0 ;
  size_t tmp___1 ;
  {
  current_bit_offset = 0U;
  src_byte_offset = 0UL;
  dst_byte_offset = 0UL;
  if ((unsigned long )dst == (unsigned long )((unsigned char *)0)) {
    *dst_size = ecryptfs_max_decoded_size(src_size);
    goto out;
  } else {
  }
  goto ldv_28001;
  ldv_28000:
  src_byte = filename_rev_map[(int )*(src + src_byte_offset)];
  switch ((int )current_bit_offset) {
  case 0:
  *(dst + dst_byte_offset) = (int )src_byte << 2U;
  current_bit_offset = 6U;
  goto ldv_27996;
  case 6:
  tmp = dst_byte_offset;
  dst_byte_offset = dst_byte_offset + 1UL;
  *(dst + tmp) = (int )*(dst + tmp) | ((int )src_byte >> 4);
  *(dst + dst_byte_offset) = (unsigned char )((int )src_byte << 4);
  current_bit_offset = 4U;
  goto ldv_27996;
  case 4:
  tmp___0 = dst_byte_offset;
  dst_byte_offset = dst_byte_offset + 1UL;
  *(dst + tmp___0) = (int )*(dst + tmp___0) | ((int )src_byte >> 2);
  *(dst + dst_byte_offset) = (int )src_byte << 6U;
  current_bit_offset = 2U;
  goto ldv_27996;
  case 2:
  tmp___1 = dst_byte_offset;
  dst_byte_offset = dst_byte_offset + 1UL;
  *(dst + tmp___1) = (int )*(dst + tmp___1) | (int )src_byte;
  *(dst + dst_byte_offset) = 0U;
  current_bit_offset = 0U;
  goto ldv_27996;
  }
  ldv_27996:
  src_byte_offset = src_byte_offset + 1UL;
  ldv_28001: ;
  if (src_byte_offset < src_size) {
    goto ldv_28000;
  } else {
  }
  *dst_size = dst_byte_offset;
  out: ;
  return;
}
}
int ecryptfs_encrypt_and_encode_filename(char **encoded_name , size_t *encoded_name_size ,
                                         struct ecryptfs_crypt_stat *crypt_stat ,
                                         struct ecryptfs_mount_crypt_stat *mount_crypt_stat ,
                                         char const *name , size_t name_size )
{
  size_t encoded_name_no_prefix_size ;
  int rc ;
  struct ecryptfs_filename *filename ;
  void *tmp ;
  void *tmp___0 ;
  size_t __len ;
  void *__ret ;
  {
  rc = 0;
  *encoded_name = 0;
  *encoded_name_size = 0UL;
  if (((unsigned long )crypt_stat != (unsigned long )((struct ecryptfs_crypt_stat *)0) && (crypt_stat->flags & 1024U) != 0U) || ((unsigned long )mount_crypt_stat != (unsigned long )((struct ecryptfs_mount_crypt_stat *)0) && (mount_crypt_stat->flags & 16U) != 0U)) {
    tmp = kzalloc(136UL, 208U);
    filename = (struct ecryptfs_filename *)tmp;
    if ((unsigned long )filename == (unsigned long )((struct ecryptfs_filename *)0)) {
      printk("\v%s: Out of memory whilst attempting to kzalloc [%zd] bytes\n", "ecryptfs_encrypt_and_encode_filename",
             136UL);
      rc = -12;
      goto out;
    } else {
    }
    filename->filename = (char *)name;
    filename->filename_size = name_size;
    rc = ecryptfs_encrypt_filename(filename, crypt_stat, mount_crypt_stat);
    if (rc != 0) {
      printk("\v%s: Error attempting to encrypt filename; rc = [%d]\n", "ecryptfs_encrypt_and_encode_filename",
             rc);
      kfree((void const *)filename);
      goto out;
    } else {
    }
    ecryptfs_encode_for_filename(0, & encoded_name_no_prefix_size, (unsigned char *)filename->encrypted_filename,
                                 filename->encrypted_filename_size);
    if (((unsigned long )crypt_stat != (unsigned long )((struct ecryptfs_crypt_stat *)0) && (crypt_stat->flags & 2048U) != 0U) || ((unsigned long )mount_crypt_stat != (unsigned long )((struct ecryptfs_mount_crypt_stat *)0) && (mount_crypt_stat->flags & 32U) != 0U)) {
      *encoded_name_size = encoded_name_no_prefix_size + 24UL;
    } else {
      *encoded_name_size = encoded_name_no_prefix_size + 23UL;
    }
    tmp___0 = kmalloc(*encoded_name_size + 1UL, 208U);
    *encoded_name = (char *)tmp___0;
    if ((unsigned long )*encoded_name == (unsigned long )((char *)0)) {
      printk("\v%s: Out of memory whilst attempting to kzalloc [%zd] bytes\n", "ecryptfs_encrypt_and_encode_filename",
             *encoded_name_size);
      rc = -12;
      kfree((void const *)filename->encrypted_filename);
      kfree((void const *)filename);
      goto out;
    } else {
    }
    if (((unsigned long )crypt_stat != (unsigned long )((struct ecryptfs_crypt_stat *)0) && (crypt_stat->flags & 2048U) != 0U) || ((unsigned long )mount_crypt_stat != (unsigned long )((struct ecryptfs_mount_crypt_stat *)0) && (mount_crypt_stat->flags & 32U) != 0U)) {
      __len = 24UL;
      if (__len > 63UL) {
        __ret = memcpy((void *)*encoded_name, (void const *)"ECRYPTFS_FNEK_ENCRYPTED.",
                         __len);
      } else {
        __ret = __builtin_memcpy((void *)*encoded_name, (void const *)"ECRYPTFS_FNEK_ENCRYPTED.",
                                 __len);
      }
      ecryptfs_encode_for_filename((unsigned char *)*encoded_name + 24U, & encoded_name_no_prefix_size,
                                   (unsigned char *)filename->encrypted_filename,
                                   filename->encrypted_filename_size);
      *encoded_name_size = encoded_name_no_prefix_size + 24UL;
      *(*encoded_name + *encoded_name_size) = 0;
    } else {
      rc = -95;
    }
    if (rc != 0) {
      printk("\v%s: Error attempting to encode encrypted filename; rc = [%d]\n", "ecryptfs_encrypt_and_encode_filename",
             rc);
      kfree((void const *)*encoded_name);
      *encoded_name = 0;
      *encoded_name_size = 0UL;
    } else {
    }
    kfree((void const *)filename->encrypted_filename);
    kfree((void const *)filename);
  } else {
    rc = ecryptfs_copy_filename(encoded_name, encoded_name_size, name, name_size);
  }
  out: ;
  return (rc);
}
}
int ecryptfs_decode_and_decrypt_filename(char **plaintext_name , size_t *plaintext_name_size ,
                                         struct dentry *ecryptfs_dir_dentry , char const *name ,
                                         size_t name_size )
{
  struct ecryptfs_mount_crypt_stat *mount_crypt_stat ;
  struct ecryptfs_sb_info *tmp ;
  char *decoded_name ;
  size_t decoded_name_size ;
  size_t packet_size ;
  int rc ;
  char const *orig_name ;
  size_t orig_name_size ;
  void *tmp___0 ;
  int tmp___1 ;
  {
  tmp = ecryptfs_superblock_to_private(ecryptfs_dir_dentry->d_sb);
  mount_crypt_stat = & tmp->mount_crypt_stat;
  rc = 0;
  if (((mount_crypt_stat->flags & 16U) != 0U && (mount_crypt_stat->flags & 4U) == 0U) && name_size > 24UL) {
    tmp___1 = strncmp(name, "ECRYPTFS_FNEK_ENCRYPTED.", 24UL);
    if (tmp___1 == 0) {
      orig_name = name;
      orig_name_size = name_size;
      name = name + 24UL;
      name_size = name_size - 24UL;
      ecryptfs_decode_from_filename(0, & decoded_name_size, (unsigned char const *)name,
                                    name_size);
      tmp___0 = kmalloc(decoded_name_size, 208U);
      decoded_name = (char *)tmp___0;
      if ((unsigned long )decoded_name == (unsigned long )((char *)0)) {
        printk("\v%s: Out of memory whilst attempting to kmalloc [%zd] bytes\n", "ecryptfs_decode_and_decrypt_filename",
               decoded_name_size);
        rc = -12;
        goto out;
      } else {
      }
      ecryptfs_decode_from_filename((unsigned char *)decoded_name, & decoded_name_size,
                                    (unsigned char const *)name, name_size);
      rc = ecryptfs_parse_tag_70_packet(plaintext_name, plaintext_name_size, & packet_size,
                                        mount_crypt_stat, decoded_name, decoded_name_size);
      if (rc != 0) {
        printk("\016%s: Could not parse tag 70 packet from filename; copying through filename as-is\n",
               "ecryptfs_decode_and_decrypt_filename");
        rc = ecryptfs_copy_filename(plaintext_name, plaintext_name_size, orig_name,
                                    orig_name_size);
        goto out_free;
      } else {
      }
    } else {
      rc = ecryptfs_copy_filename(plaintext_name, plaintext_name_size, name, name_size);
      goto out;
    }
  } else {
    rc = ecryptfs_copy_filename(plaintext_name, plaintext_name_size, name, name_size);
    goto out;
  }
  out_free:
  kfree((void const *)decoded_name);
  out: ;
  return (rc);
}
}
int ecryptfs_set_f_namelen(long *namelen , long lower_namelen , struct ecryptfs_mount_crypt_stat *mount_crypt_stat )
{
  struct blkcipher_desc desc ;
  struct mutex *tfm_mutex ;
  size_t cipher_blocksize ;
  int rc ;
  long tmp ;
  unsigned int tmp___0 ;
  size_t tmp___1 ;
  {
  if ((mount_crypt_stat->flags & 16U) == 0U) {
    *namelen = lower_namelen;
    return (0);
  } else {
  }
  rc = ecryptfs_get_tfm_and_mutex_for_cipher_name(& desc.tfm, & tfm_mutex, (char *)(& mount_crypt_stat->global_default_fn_cipher_name));
  tmp = ldv__builtin_expect(rc != 0, 0L);
  if (tmp != 0L) {
    *namelen = 0L;
    return (rc);
  } else {
  }
  ldv_mutex_lock_159(tfm_mutex);
  tmp___0 = crypto_blkcipher_blocksize(desc.tfm);
  cipher_blocksize = (size_t )tmp___0;
  ldv_mutex_unlock_160(tfm_mutex);
  if (lower_namelen == 255L && (cipher_blocksize == 8UL || cipher_blocksize == 16UL)) {
    *namelen = 143L;
    return (0);
  } else {
  }
  *namelen = lower_namelen;
  *namelen = *namelen + -24L;
  tmp___1 = ecryptfs_max_decoded_size((size_t )*namelen);
  *namelen = (long )(tmp___1 - 3UL);
  *namelen = *namelen + -13L;
  *namelen = *namelen + -16L;
  *namelen = (long )(((unsigned long )*namelen - cipher_blocksize) + 1UL);
  if (*namelen < 0L) {
    *namelen = 0L;
  } else {
  }
  return (0);
}
}
void ldv_main7_sequence_infinite_withcheck_stateful(void)
{
  int tmp ;
  int tmp___0 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_28064;
  ldv_28063:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  default: ;
  goto ldv_28062;
  }
  ldv_28062: ;
  ldv_28064:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    goto ldv_28063;
  } else {
  }
  ldv_check_final_state();
  return;
}
}
void ldv_mutex_lock_135(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_136(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_137(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_138(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_139(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cs_hash_tfm_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_140(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cs_hash_tfm_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_141(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_global_auth_tok_list_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_142(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_global_auth_tok_list_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_143(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cs_tfm_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_144(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cs_tfm_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_145(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cs_tfm_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_146(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cs_tfm_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_147(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cs_tfm_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_148(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cs_tfm_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_149(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cs_tfm_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_150(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cs_tfm_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_151(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_keysig_list_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_152(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_global_auth_tok_list_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_153(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_global_auth_tok_list_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_154(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_keysig_list_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_155(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_key_tfm_list_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_156(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_key_tfm_list_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_157(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_key_tfm_list_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_158(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_key_tfm_list_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_159(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_tfm_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_160(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tfm_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static int list_empty(struct list_head const *head )
{
  {
  return ((unsigned long )((struct list_head const *)head->next) == (unsigned long )head);
}
}
extern int memcmp(void const * , void const * , size_t ) ;
__inline static void atomic_inc(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; incl %0": "+m" (v->counter));
  return;
}
}
int ldv_mutex_trylock_192(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_188(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_190(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_193(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_195(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_197(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_199(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_201(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_202(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_204(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_205(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_207(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_209(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_187(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_189(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_191(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_194(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_196(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_198(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_200(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_203(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_206(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_208(struct mutex *ldv_func_arg1 ) ;
extern void down_write(struct rw_semaphore * ) ;
__inline static struct key *key_get(struct key *key )
{
  {
  if ((unsigned long )key != (unsigned long )((struct key *)0)) {
    atomic_inc(& key->usage);
  } else {
  }
  return (key);
}
}
extern struct key *request_key(struct key_type * , char const * , char const * ) ;
extern int key_validate(struct key const * ) ;
extern void kzfree(void const * ) ;
__inline static int crypto_blkcipher_encrypt(struct blkcipher_desc *desc , struct scatterlist *dst ,
                                             struct scatterlist *src , unsigned int nbytes )
{
  struct blkcipher_tfm *tmp ;
  struct blkcipher_tfm *tmp___0 ;
  int tmp___1 ;
  {
  tmp = crypto_blkcipher_crt(desc->tfm);
  desc->info = tmp->iv;
  tmp___0 = crypto_blkcipher_crt(desc->tfm);
  tmp___1 = (*(tmp___0->encrypt))(desc, dst, src, nbytes);
  return (tmp___1);
}
}
__inline static int crypto_blkcipher_decrypt(struct blkcipher_desc *desc , struct scatterlist *dst ,
                                             struct scatterlist *src , unsigned int nbytes )
{
  struct blkcipher_tfm *tmp ;
  struct blkcipher_tfm *tmp___0 ;
  int tmp___1 ;
  {
  tmp = crypto_blkcipher_crt(desc->tfm);
  desc->info = tmp->iv;
  tmp___0 = crypto_blkcipher_crt(desc->tfm);
  tmp___1 = (*(tmp___0->decrypt))(desc, dst, src, nbytes);
  return (tmp___1);
}
}
extern struct key_type key_type_user ;
extern struct key_type key_type_encrypted ;
void ecryptfs_dump_auth_tok(struct ecryptfs_auth_tok *auth_tok ) ;
__inline static struct ecryptfs_auth_tok *ecryptfs_get_encrypted_key_payload_data(struct key *key )
{
  {
  if ((unsigned long )key->type == (unsigned long )(& key_type_encrypted)) {
    return ((struct ecryptfs_auth_tok *)(& ((struct encrypted_key_payload *)key->payload.data)->payload_data));
  } else {
    return (0);
  }
}
}
__inline static struct key *ecryptfs_get_encrypted_key(char *sig )
{
  struct key *tmp ;
  {
  tmp = request_key(& key_type_encrypted, (char const *)sig, 0);
  return (tmp);
}
}
__inline static struct ecryptfs_auth_tok *ecryptfs_get_key_payload_data(struct key *key )
{
  struct ecryptfs_auth_tok *auth_tok ;
  {
  auth_tok = ecryptfs_get_encrypted_key_payload_data(key);
  if ((unsigned long )auth_tok == (unsigned long )((struct ecryptfs_auth_tok *)0)) {
    return ((struct ecryptfs_auth_tok *)(& ((struct user_key_payload *)key->payload.data)->data));
  } else {
    return (auth_tok);
  }
}
}
struct kmem_cache *ecryptfs_auth_tok_list_item_cache ;
struct kmem_cache *ecryptfs_key_record_cache ;
struct kmem_cache *ecryptfs_key_sig_cache ;
struct kmem_cache *ecryptfs_global_auth_tok_cache ;
int ecryptfs_send_message(char *data , int data_len , struct ecryptfs_msg_ctx **msg_ctx ) ;
int ecryptfs_wait_for_response(struct ecryptfs_msg_ctx *msg_ctx , struct ecryptfs_message **msg ) ;
int ecryptfs_parse_packet_length(unsigned char *data , size_t *size , size_t *length_size ) ;
int ecryptfs_write_packet_length(char *dest , size_t size , size_t *packet_size_length ) ;
static int process_request_key_err(long err_code )
{
  int rc ;
  {
  rc = 0;
  switch (err_code) {
  case -126L:
  __ecryptfs_printk("\f%s: No key\n", "process_request_key_err");
  rc = -2;
  goto ldv_32185;
  case -127L:
  __ecryptfs_printk("\f%s: Key expired\n", "process_request_key_err");
  rc = -62;
  goto ldv_32185;
  case -128L:
  __ecryptfs_printk("\f%s: Key revoked\n", "process_request_key_err");
  rc = -22;
  goto ldv_32185;
  default:
  __ecryptfs_printk("\f%s: Unknown error code: [0x%.16lx]\n", "process_request_key_err",
                    err_code);
  rc = -22;
  }
  ldv_32185: ;
  return (rc);
}
}
static int process_find_global_auth_tok_for_sig_err(int err_code )
{
  int rc ;
  {
  rc = err_code;
  switch (err_code) {
  case -2:
  __ecryptfs_printk("\f%s: Missing auth tok\n", "process_find_global_auth_tok_for_sig_err");
  goto ldv_32195;
  case -22:
  __ecryptfs_printk("\f%s: Invalid auth tok\n", "process_find_global_auth_tok_for_sig_err");
  goto ldv_32195;
  default:
  rc = process_request_key_err((long )err_code);
  goto ldv_32195;
  }
  ldv_32195: ;
  return (rc);
}
}
int ecryptfs_parse_packet_length(unsigned char *data , size_t *size , size_t *length_size )
{
  int rc ;
  {
  rc = 0;
  *length_size = 0UL;
  *size = 0UL;
  if ((unsigned int )*data <= 191U) {
    *size = (size_t )*data;
    *length_size = 1UL;
  } else
  if ((unsigned int )*data <= 223U) {
    *size = (size_t )(((int )*data + -192) * 256);
    *size = *size + (size_t )((int )*(data + 1UL) + 192);
    *length_size = 2UL;
  } else
  if ((unsigned int )*data == 255U) {
    __ecryptfs_printk("\v%s: Five-byte packet length not supported\n", "ecryptfs_parse_packet_length");
    rc = -22;
    goto out;
  } else {
    __ecryptfs_printk("\v%s: Error parsing packet length\n", "ecryptfs_parse_packet_length");
    rc = -22;
    goto out;
  }
  out: ;
  return (rc);
}
}
int ecryptfs_write_packet_length(char *dest , size_t size , size_t *packet_size_length )
{
  int rc ;
  {
  rc = 0;
  if (size <= 191UL) {
    *dest = (char )size;
    *packet_size_length = 1UL;
  } else
  if (size <= 65535UL) {
    *dest = (char )((unsigned int )((unsigned char )((size - 192UL) / 256UL)) + 192U);
    *(dest + 1UL) = (char )((unsigned int )((unsigned char )size) - 192U);
    *packet_size_length = 2UL;
  } else {
    rc = -22;
    __ecryptfs_printk("\f%s: Unsupported packet size: [%zd]\n", "ecryptfs_write_packet_length",
                      size);
  }
  return (rc);
}
}
static int write_tag_64_packet(char *signature , struct ecryptfs_session_key *session_key ,
                               char **packet , size_t *packet_len )
{
  size_t i ;
  size_t data_len ;
  size_t packet_size_len ;
  char *message ;
  int rc ;
  void *tmp ;
  size_t tmp___0 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  i = 0UL;
  data_len = (size_t )(session_key->encrypted_key_size + 21U);
  tmp = kmalloc(data_len, 208U);
  *packet = (char *)tmp;
  message = *packet;
  if ((unsigned long )message == (unsigned long )((char *)0)) {
    __ecryptfs_printk("\v%s: Unable to allocate memory\n", "write_tag_64_packet");
    rc = -12;
    goto out;
  } else {
  }
  tmp___0 = i;
  i = i + 1UL;
  *(message + tmp___0) = 64;
  rc = ecryptfs_write_packet_length(message + i, 16UL, & packet_size_len);
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Error generating tag 64 packet header; cannot generate packet length\n",
                      "write_tag_64_packet");
    goto out;
  } else {
  }
  i = i + packet_size_len;
  __len = 16UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(message + i), (void const *)signature, __len);
  } else {
    __ret = __builtin_memcpy((void *)(message + i), (void const *)signature, __len);
  }
  i = i + 16UL;
  rc = ecryptfs_write_packet_length(message + i, (size_t )session_key->encrypted_key_size,
                                    & packet_size_len);
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Error generating tag 64 packet header; cannot generate packet length\n",
                      "write_tag_64_packet");
    goto out;
  } else {
  }
  i = i + packet_size_len;
  __len___0 = (size_t )session_key->encrypted_key_size;
  __ret___0 = __builtin_memcpy((void *)(message + i), (void const *)(& session_key->encrypted_key),
                               __len___0);
  i = (size_t )session_key->encrypted_key_size + i;
  *packet_len = i;
  out: ;
  return (rc);
}
}
static int parse_tag_65_packet(struct ecryptfs_session_key *session_key , u8 *cipher_code ,
                               struct ecryptfs_message *msg )
{
  size_t i ;
  char *data ;
  size_t data_len ;
  size_t m_size ;
  size_t message_len ;
  u16 checksum ;
  u16 expected_checksum ;
  int rc ;
  size_t tmp ;
  size_t tmp___0 ;
  size_t tmp___1 ;
  size_t __len ;
  void *__ret ;
  size_t tmp___2 ;
  size_t tmp___3 ;
  {
  i = 0UL;
  checksum = 0U;
  expected_checksum = 0U;
  message_len = (size_t )msg->data_len;
  data = (char *)(& msg->data);
  if (message_len <= 3UL) {
    rc = -5;
    goto out;
  } else {
  }
  tmp = i;
  i = i + 1UL;
  if ((int )((signed char )*(data + tmp)) != 65) {
    __ecryptfs_printk("\v%s: Type should be ECRYPTFS_TAG_65\n", "parse_tag_65_packet");
    rc = -5;
    goto out;
  } else {
  }
  tmp___0 = i;
  i = i + 1UL;
  if ((int )((signed char )*(data + tmp___0)) != 0) {
    __ecryptfs_printk("\v%s: Status indicator has non-zero value [%d]\n", "parse_tag_65_packet",
                      (int )*(data + (i + 0xffffffffffffffffUL)));
    rc = -5;
    goto out;
  } else {
  }
  rc = ecryptfs_parse_packet_length((unsigned char *)(data + i), & m_size, & data_len);
  if (rc != 0) {
    __ecryptfs_printk("\f%s: Error parsing packet length; rc = [%d]\n", "parse_tag_65_packet",
                      rc);
    goto out;
  } else {
  }
  i = i + data_len;
  if (i + m_size > message_len) {
    __ecryptfs_printk("\v%s: The message received from ecryptfsd is shorter than expected\n",
                      "parse_tag_65_packet");
    rc = -5;
    goto out;
  } else {
  }
  if (m_size <= 2UL) {
    __ecryptfs_printk("\v%s: The decrypted key is not long enough to include a cipher code and checksum\n",
                      "parse_tag_65_packet");
    rc = -5;
    goto out;
  } else {
  }
  tmp___1 = i;
  i = i + 1UL;
  *cipher_code = (u8 )*(data + tmp___1);
  session_key->decrypted_key_size = (u32 )m_size - 3U;
  if (session_key->decrypted_key_size > 64U) {
    __ecryptfs_printk("\v%s: key_size [%d] larger than the maximum key size [%d]\n",
                      "parse_tag_65_packet", session_key->decrypted_key_size, 512);
    rc = -5;
    goto out;
  } else {
  }
  __len = (size_t )session_key->decrypted_key_size;
  __ret = __builtin_memcpy((void *)(& session_key->decrypted_key), (void const *)(data + i),
                           __len);
  i = (size_t )session_key->decrypted_key_size + i;
  tmp___2 = i;
  i = i + 1UL;
  expected_checksum = ((int )((u16 )((unsigned char )*(data + tmp___2))) << 8U) + (int )expected_checksum;
  tmp___3 = i;
  i = i + 1UL;
  expected_checksum = (int )((u16 )((unsigned char )*(data + tmp___3))) + (int )expected_checksum;
  i = 0UL;
  goto ldv_32251;
  ldv_32250:
  checksum = (int )((u16 )session_key->decrypted_key[i]) + (int )checksum;
  i = i + 1UL;
  ldv_32251: ;
  if ((size_t )session_key->decrypted_key_size > i) {
    goto ldv_32250;
  } else {
  }
  if ((int )expected_checksum != (int )checksum) {
    __ecryptfs_printk("\v%s: Invalid checksum for file encryption  key; expected [%x]; calculated [%x]\n",
                      "parse_tag_65_packet", (int )expected_checksum, (int )checksum);
    rc = -5;
  } else {
  }
  out: ;
  return (rc);
}
}
static int write_tag_66_packet(char *signature , u8 cipher_code , struct ecryptfs_crypt_stat *crypt_stat ,
                               char **packet , size_t *packet_len )
{
  size_t i ;
  size_t j ;
  size_t data_len ;
  size_t checksum ;
  size_t packet_size_len ;
  char *message ;
  int rc ;
  void *tmp ;
  size_t tmp___0 ;
  size_t __len ;
  void *__ret ;
  size_t tmp___1 ;
  size_t __len___0 ;
  void *__ret___0 ;
  size_t tmp___2 ;
  size_t tmp___3 ;
  {
  i = 0UL;
  checksum = 0UL;
  data_len = crypt_stat->key_size + 21UL;
  tmp = kmalloc(data_len, 208U);
  *packet = (char *)tmp;
  message = *packet;
  if ((unsigned long )message == (unsigned long )((char *)0)) {
    __ecryptfs_printk("\v%s: Unable to allocate memory\n", "write_tag_66_packet");
    rc = -12;
    goto out;
  } else {
  }
  tmp___0 = i;
  i = i + 1UL;
  *(message + tmp___0) = 66;
  rc = ecryptfs_write_packet_length(message + i, 16UL, & packet_size_len);
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Error generating tag 66 packet header; cannot generate packet length\n",
                      "write_tag_66_packet");
    goto out;
  } else {
  }
  i = i + packet_size_len;
  __len = 16UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(message + i), (void const *)signature, __len);
  } else {
    __ret = __builtin_memcpy((void *)(message + i), (void const *)signature, __len);
  }
  i = i + 16UL;
  rc = ecryptfs_write_packet_length(message + i, crypt_stat->key_size + 3UL, & packet_size_len);
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Error generating tag 66 packet header; cannot generate packet length\n",
                      "write_tag_66_packet");
    goto out;
  } else {
  }
  i = i + packet_size_len;
  tmp___1 = i;
  i = i + 1UL;
  *(message + tmp___1) = (char )cipher_code;
  __len___0 = crypt_stat->key_size;
  __ret___0 = __builtin_memcpy((void *)(message + i), (void const *)(& crypt_stat->key),
                               __len___0);
  i = crypt_stat->key_size + i;
  j = 0UL;
  goto ldv_32276;
  ldv_32275:
  checksum = (size_t )crypt_stat->key[j] + checksum;
  j = j + 1UL;
  ldv_32276: ;
  if (crypt_stat->key_size > j) {
    goto ldv_32275;
  } else {
  }
  tmp___2 = i;
  i = i + 1UL;
  *(message + tmp___2) = (char )(checksum / 256UL);
  tmp___3 = i;
  i = i + 1UL;
  *(message + tmp___3) = (char )checksum;
  *packet_len = i;
  out: ;
  return (rc);
}
}
static int parse_tag_67_packet(struct ecryptfs_key_record *key_rec , struct ecryptfs_message *msg )
{
  size_t i ;
  char *data ;
  size_t data_len ;
  size_t message_len ;
  int rc ;
  size_t tmp ;
  size_t tmp___0 ;
  size_t __len ;
  void *__ret ;
  {
  i = 0UL;
  message_len = (size_t )msg->data_len;
  data = (char *)(& msg->data);
  if (message_len <= 3UL) {
    rc = -5;
    printk("\v%s: message_len is [%zd]; minimum acceptable message length is [%d]\n",
           "parse_tag_67_packet", message_len, 4);
    goto out;
  } else {
  }
  tmp = i;
  i = i + 1UL;
  if ((int )((signed char )*(data + tmp)) != 67) {
    rc = -5;
    printk("\v%s: Type should be ECRYPTFS_TAG_67\n", "parse_tag_67_packet");
    goto out;
  } else {
  }
  tmp___0 = i;
  i = i + 1UL;
  if ((int )((signed char )*(data + tmp___0)) != 0) {
    rc = -5;
    printk("\v%s: Status indicator has non zero value [%d]\n", "parse_tag_67_packet",
           (int )*(data + (i + 0xffffffffffffffffUL)));
    goto out;
  } else {
  }
  rc = ecryptfs_parse_packet_length((unsigned char *)(data + i), & key_rec->enc_key_size,
                                    & data_len);
  if (rc != 0) {
    __ecryptfs_printk("\f%s: Error parsing packet length; rc = [%d]\n", "parse_tag_67_packet",
                      rc);
    goto out;
  } else {
  }
  i = i + data_len;
  if (key_rec->enc_key_size + i > message_len) {
    rc = -5;
    printk("\v%s: message_len [%zd]; max len is [%zd]\n", "parse_tag_67_packet", message_len,
           key_rec->enc_key_size + i);
    goto out;
  } else {
  }
  if (key_rec->enc_key_size > 512UL) {
    rc = -5;
    printk("\v%s: Encrypted key_size [%zd] larger than the maximum key size [%d]\n",
           "parse_tag_67_packet", key_rec->enc_key_size, 512);
    goto out;
  } else {
  }
  __len = key_rec->enc_key_size;
  __ret = __builtin_memcpy((void *)(& key_rec->enc_key), (void const *)(data + i),
                           __len);
  out: ;
  return (rc);
}
}
static int ecryptfs_verify_version(u16 version )
{
  int rc ;
  unsigned char major ;
  unsigned char minor ;
  {
  rc = 0;
  major = (unsigned char )((int )version >> 8);
  minor = (unsigned char )version;
  if ((unsigned int )major != 0U) {
    __ecryptfs_printk("\v%s: Major version number mismatch. Expected [%d]; got [%d]\n",
                      "ecryptfs_verify_version", 0, (int )major);
    rc = -22;
    goto out;
  } else {
  }
  if ((unsigned int )minor != 4U) {
    __ecryptfs_printk("\v%s: Minor version number mismatch. Expected [%d]; got [%d]\n",
                      "ecryptfs_verify_version", 4, (int )minor);
    rc = -22;
    goto out;
  } else {
  }
  out: ;
  return (rc);
}
}
static int ecryptfs_verify_auth_tok_from_key(struct key *auth_tok_key , struct ecryptfs_auth_tok **auth_tok )
{
  int rc ;
  int tmp ;
  {
  rc = 0;
  *auth_tok = ecryptfs_get_key_payload_data(auth_tok_key);
  tmp = ecryptfs_verify_version((int )(*auth_tok)->version);
  if (tmp != 0) {
    printk("\vData structure version mismatch. Userspace tools must match eCryptfs kernel module with major version [%d] and minor version [%d]\n",
           0, 4);
    rc = -22;
    goto out;
  } else {
  }
  if ((unsigned int )(*auth_tok)->token_type != 0U && (unsigned int )(*auth_tok)->token_type != 1U) {
    printk("\vInvalid auth_tok structure returned from key query\n");
    rc = -22;
    goto out;
  } else {
  }
  out: ;
  return (rc);
}
}
static int ecryptfs_find_global_auth_tok_for_sig(struct key **auth_tok_key , struct ecryptfs_auth_tok **auth_tok ,
                                                 struct ecryptfs_mount_crypt_stat *mount_crypt_stat ,
                                                 char *sig )
{
  struct ecryptfs_global_auth_tok *walker ;
  int rc ;
  struct list_head const *__mptr ;
  int tmp ;
  struct list_head const *__mptr___0 ;
  {
  rc = 0;
  *auth_tok_key = 0;
  *auth_tok = 0;
  ldv_mutex_lock_194(& mount_crypt_stat->global_auth_tok_list_mutex);
  __mptr = (struct list_head const *)mount_crypt_stat->global_auth_tok_list.next;
  walker = (struct ecryptfs_global_auth_tok *)__mptr + 0xfffffffffffffff8UL;
  goto ldv_32323;
  ldv_32322:
  tmp = memcmp((void const *)(& walker->sig), (void const *)sig, 16UL);
  if (tmp != 0) {
    goto ldv_32318;
  } else {
  }
  if ((int )walker->flags & 1) {
    rc = -22;
    goto out;
  } else {
  }
  rc = key_validate((struct key const *)walker->global_auth_tok_key);
  if (rc != 0) {
    if (rc == -127) {
      goto out;
    } else {
    }
    goto out_invalid_auth_tok;
  } else {
  }
  down_write(& (walker->global_auth_tok_key)->sem);
  rc = ecryptfs_verify_auth_tok_from_key(walker->global_auth_tok_key, auth_tok);
  if (rc != 0) {
    goto out_invalid_auth_tok_unlock;
  } else {
  }
  *auth_tok_key = walker->global_auth_tok_key;
  key_get(*auth_tok_key);
  goto out;
  ldv_32318:
  __mptr___0 = (struct list_head const *)walker->mount_crypt_stat_list.next;
  walker = (struct ecryptfs_global_auth_tok *)__mptr___0 + 0xfffffffffffffff8UL;
  ldv_32323: ;
  if ((unsigned long )walker != (unsigned long )mount_crypt_stat) {
    goto ldv_32322;
  } else {
  }
  rc = -2;
  goto out;
  out_invalid_auth_tok_unlock:
  up_write(& (walker->global_auth_tok_key)->sem);
  out_invalid_auth_tok:
  printk("\fInvalidating auth tok with sig = [%s]\n", sig);
  walker->flags = walker->flags | 1U;
  key_put(walker->global_auth_tok_key);
  walker->global_auth_tok_key = 0;
  out:
  ldv_mutex_unlock_195(& mount_crypt_stat->global_auth_tok_list_mutex);
  return (rc);
}
}
static int ecryptfs_find_auth_tok_for_sig(struct key **auth_tok_key , struct ecryptfs_auth_tok **auth_tok ,
                                          struct ecryptfs_mount_crypt_stat *mount_crypt_stat ,
                                          char *sig )
{
  int rc ;
  {
  rc = 0;
  rc = ecryptfs_find_global_auth_tok_for_sig(auth_tok_key, auth_tok, mount_crypt_stat,
                                             sig);
  if (rc == -2) {
    if ((mount_crypt_stat->flags & 128U) != 0U) {
      return (-22);
    } else {
    }
    rc = ecryptfs_keyring_auth_tok_for_sig(auth_tok_key, auth_tok, sig);
  } else {
  }
  return (rc);
}
}
int ecryptfs_write_tag_70_packet(char *dest , size_t *remaining_bytes , size_t *packet_size ,
                                 struct ecryptfs_mount_crypt_stat *mount_crypt_stat ,
                                 char *filename , size_t filename_size )
{
  struct ecryptfs_write_tag_70_packet_silly_stack *s ;
  struct key *auth_tok_key ;
  int rc ;
  void *tmp ;
  long tmp___0 ;
  unsigned int tmp___1 ;
  void *tmp___2 ;
  size_t tmp___3 ;
  size_t tmp___4 ;
  long tmp___5 ;
  long tmp___6 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  auth_tok_key = 0;
  rc = 0;
  tmp = kmalloc(376UL, 208U);
  s = (struct ecryptfs_write_tag_70_packet_silly_stack *)tmp;
  if ((unsigned long )s == (unsigned long )((struct ecryptfs_write_tag_70_packet_silly_stack *)0)) {
    printk("\v%s: Out of memory whilst trying to kmalloc [%zd] bytes of kernel memory\n",
           "ecryptfs_write_tag_70_packet", 376UL);
    rc = -12;
    goto out;
  } else {
  }
  s->desc.flags = 512U;
  *packet_size = 0UL;
  rc = ecryptfs_find_auth_tok_for_sig(& auth_tok_key, & s->auth_tok, mount_crypt_stat,
                                      (char *)(& mount_crypt_stat->global_default_fnek_sig));
  if (rc != 0) {
    printk("\v%s: Error attempting to find auth tok for fnek sig [%s]; rc = [%d]\n",
           "ecryptfs_write_tag_70_packet", (char *)(& mount_crypt_stat->global_default_fnek_sig),
           rc);
    goto out;
  } else {
  }
  rc = ecryptfs_get_tfm_and_mutex_for_cipher_name(& s->desc.tfm, & s->tfm_mutex, (char *)(& mount_crypt_stat->global_default_fn_cipher_name));
  tmp___0 = ldv__builtin_expect(rc != 0, 0L);
  if (tmp___0 != 0L) {
    printk("\vInternal error whilst attempting to get tfm and mutex for cipher name [%s]; rc = [%d]\n",
           (unsigned char *)(& mount_crypt_stat->global_default_fn_cipher_name), rc);
    goto out;
  } else {
  }
  ldv_mutex_lock_196(s->tfm_mutex);
  tmp___1 = crypto_blkcipher_blocksize(s->desc.tfm);
  s->block_size = (size_t )tmp___1;
  s->num_rand_bytes = 17UL;
  s->block_aligned_filename_size = s->num_rand_bytes + filename_size;
  if (s->block_aligned_filename_size % s->block_size != 0UL) {
    s->num_rand_bytes = s->num_rand_bytes + (s->block_size - s->block_aligned_filename_size % s->block_size);
    s->block_aligned_filename_size = s->num_rand_bytes + filename_size;
  } else {
  }
  s->max_packet_size = s->block_aligned_filename_size + 13UL;
  if ((unsigned long )dest == (unsigned long )((char *)0)) {
    *packet_size = s->max_packet_size;
    goto out_unlock;
  } else {
  }
  if (s->max_packet_size > *remaining_bytes) {
    printk("\f%s: Require [%zd] bytes to write; only [%zd] available\n", "ecryptfs_write_tag_70_packet",
           s->max_packet_size, *remaining_bytes);
    rc = -22;
    goto out_unlock;
  } else {
  }
  tmp___2 = kzalloc(s->block_aligned_filename_size, 208U);
  s->block_aligned_filename = (char *)tmp___2;
  if ((unsigned long )s->block_aligned_filename == (unsigned long )((char *)0)) {
    printk("\v%s: Out of kernel memory whilst attempting to kzalloc [%zd] bytes\n",
           "ecryptfs_write_tag_70_packet", s->block_aligned_filename_size);
    rc = -12;
    goto out_unlock;
  } else {
  }
  s->i = 0UL;
  tmp___3 = s->i;
  s->i = s->i + 1UL;
  *(dest + tmp___3) = 70;
  rc = ecryptfs_write_packet_length(dest + s->i, s->block_aligned_filename_size + 9UL,
                                    & s->packet_size_len);
  if (rc != 0) {
    printk("\v%s: Error generating tag 70 packet header; cannot generate packet length; rc = [%d]\n",
           "ecryptfs_write_tag_70_packet", rc);
    goto out_free_unlock;
  } else {
  }
  s->i = s->i + s->packet_size_len;
  ecryptfs_from_hex(dest + s->i, (char *)(& mount_crypt_stat->global_default_fnek_sig),
                    8);
  s->i = s->i + 8UL;
  s->cipher_code = ecryptfs_code_for_cipher_string((char *)(& mount_crypt_stat->global_default_fn_cipher_name),
                                                   mount_crypt_stat->global_default_fn_cipher_key_bytes);
  if ((unsigned int )s->cipher_code == 0U) {
    printk("\f%s: Unable to generate code for cipher [%s] with key bytes [%zd]\n",
           "ecryptfs_write_tag_70_packet", (unsigned char *)(& mount_crypt_stat->global_default_fn_cipher_name),
           mount_crypt_stat->global_default_fn_cipher_key_bytes);
    rc = -22;
    goto out_free_unlock;
  } else {
  }
  tmp___4 = s->i;
  s->i = s->i + 1UL;
  *(dest + tmp___4) = (char )s->cipher_code;
  if ((unsigned int )(s->auth_tok)->token_type != 0U) {
    rc = -95;
    printk("\016%s: Filename encryption only supports password tokens\n", "ecryptfs_write_tag_70_packet");
    goto out_free_unlock;
  } else {
  }
  sg_init_one(& s->hash_sg, (void const *)(& (s->auth_tok)->token.password.session_key_encryption_key),
              (s->auth_tok)->token.password.session_key_encryption_key_bytes);
  s->hash_desc.flags = 512U;
  s->hash_desc.tfm = crypto_alloc_hash("md5", 0U, 128U);
  tmp___6 = IS_ERR((void const *)s->hash_desc.tfm);
  if (tmp___6 != 0L) {
    tmp___5 = PTR_ERR((void const *)s->hash_desc.tfm);
    rc = (int )tmp___5;
    printk("\v%s: Error attempting to allocate hash crypto context; rc = [%d]\n",
           "ecryptfs_write_tag_70_packet", rc);
    goto out_free_unlock;
  } else {
  }
  rc = crypto_hash_init(& s->hash_desc);
  if (rc != 0) {
    printk("\v%s: Error initializing crypto hash; rc = [%d]\n", "ecryptfs_write_tag_70_packet",
           rc);
    goto out_release_free_unlock;
  } else {
  }
  rc = crypto_hash_update(& s->hash_desc, & s->hash_sg, (s->auth_tok)->token.password.session_key_encryption_key_bytes);
  if (rc != 0) {
    printk("\v%s: Error updating crypto hash; rc = [%d]\n", "ecryptfs_write_tag_70_packet",
           rc);
    goto out_release_free_unlock;
  } else {
  }
  rc = crypto_hash_final(& s->hash_desc, (u8 *)(& s->hash));
  if (rc != 0) {
    printk("\v%s: Error finalizing crypto hash; rc = [%d]\n", "ecryptfs_write_tag_70_packet",
           rc);
    goto out_release_free_unlock;
  } else {
  }
  s->j = 0UL;
  goto ldv_32372;
  ldv_32371:
  *(s->block_aligned_filename + s->j) = s->hash[s->j & 15UL];
  if ((s->j & 15UL) == 15UL) {
    sg_init_one(& s->hash_sg, (void const *)(& s->hash), 16U);
    rc = crypto_hash_init(& s->hash_desc);
    if (rc != 0) {
      printk("\v%s: Error initializing crypto hash; rc = [%d]\n", "ecryptfs_write_tag_70_packet",
             rc);
      goto out_release_free_unlock;
    } else {
    }
    rc = crypto_hash_update(& s->hash_desc, & s->hash_sg, 16U);
    if (rc != 0) {
      printk("\v%s: Error updating crypto hash; rc = [%d]\n", "ecryptfs_write_tag_70_packet",
             rc);
      goto out_release_free_unlock;
    } else {
    }
    rc = crypto_hash_final(& s->hash_desc, (u8 *)(& s->tmp_hash));
    if (rc != 0) {
      printk("\v%s: Error finalizing crypto hash; rc = [%d]\n", "ecryptfs_write_tag_70_packet",
             rc);
      goto out_release_free_unlock;
    } else {
    }
    __len = 16UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& s->hash), (void const *)(& s->tmp_hash), __len);
    } else {
      __ret = __builtin_memcpy((void *)(& s->hash), (void const *)(& s->tmp_hash),
                               __len);
    }
  } else {
  }
  if ((int )((signed char )*(s->block_aligned_filename + s->j)) == 0) {
    *(s->block_aligned_filename + s->j) = 66;
  } else {
  }
  s->j = s->j + 1UL;
  ldv_32372: ;
  if (s->j < s->num_rand_bytes - 1UL) {
    goto ldv_32371;
  } else {
  }
  __len___0 = filename_size;
  __ret___0 = __builtin_memcpy((void *)(s->block_aligned_filename + s->num_rand_bytes),
                               (void const *)filename, __len___0);
  rc = virt_to_scatterlist((void const *)s->block_aligned_filename, (int )s->block_aligned_filename_size,
                           (struct scatterlist *)(& s->src_sg), 2);
  if (rc <= 0) {
    printk("\v%s: Internal error whilst attempting to convert filename memory to scatterlist; rc = [%d]. block_aligned_filename_size = [%zd]\n",
           "ecryptfs_write_tag_70_packet", rc, s->block_aligned_filename_size);
    goto out_release_free_unlock;
  } else {
  }
  rc = virt_to_scatterlist((void const *)(dest + s->i), (int )s->block_aligned_filename_size,
                           (struct scatterlist *)(& s->dst_sg), 2);
  if (rc <= 0) {
    printk("\v%s: Internal error whilst attempting to convert encrypted filename memory to scatterlist; rc = [%d]. block_aligned_filename_size = [%zd]\n",
           "ecryptfs_write_tag_70_packet", rc, s->block_aligned_filename_size);
    goto out_release_free_unlock;
  } else {
  }
  memset((void *)(& s->iv), 0, 16UL);
  s->desc.info = (void *)(& s->iv);
  rc = crypto_blkcipher_setkey(s->desc.tfm, (u8 const *)(& (s->auth_tok)->token.password.session_key_encryption_key),
                               (unsigned int )mount_crypt_stat->global_default_fn_cipher_key_bytes);
  if (rc < 0) {
    printk("\v%s: Error setting key for crypto context; rc = [%d]. s->auth_tok->token.password.session_key_encryption_key = [0x%p]; mount_crypt_stat->global_default_fn_cipher_key_bytes = [%zd]\n",
           "ecryptfs_write_tag_70_packet", rc, (u8 *)(& (s->auth_tok)->token.password.session_key_encryption_key),
           mount_crypt_stat->global_default_fn_cipher_key_bytes);
    goto out_release_free_unlock;
  } else {
  }
  rc = crypto_blkcipher_encrypt_iv(& s->desc, (struct scatterlist *)(& s->dst_sg),
                                   (struct scatterlist *)(& s->src_sg), (unsigned int )s->block_aligned_filename_size);
  if (rc != 0) {
    printk("\v%s: Error attempting to encrypt filename; rc = [%d]\n", "ecryptfs_write_tag_70_packet",
           rc);
    goto out_release_free_unlock;
  } else {
  }
  s->i = s->i + s->block_aligned_filename_size;
  *packet_size = s->i;
  *remaining_bytes = *remaining_bytes - *packet_size;
  out_release_free_unlock:
  crypto_free_hash(s->hash_desc.tfm);
  out_free_unlock:
  kzfree((void const *)s->block_aligned_filename);
  out_unlock:
  ldv_mutex_unlock_197(s->tfm_mutex);
  out: ;
  if ((unsigned long )auth_tok_key != (unsigned long )((struct key *)0)) {
    up_write(& auth_tok_key->sem);
    key_put(auth_tok_key);
  } else {
  }
  kfree((void const *)s);
  return (rc);
}
}
int ecryptfs_parse_tag_70_packet(char **filename , size_t *filename_size , size_t *packet_size ,
                                 struct ecryptfs_mount_crypt_stat *mount_crypt_stat ,
                                 char *data , size_t max_packet_size )
{
  struct ecryptfs_parse_tag_70_packet_silly_stack *s ;
  struct key *auth_tok_key ;
  int rc ;
  void *tmp ;
  size_t tmp___0 ;
  size_t tmp___1 ;
  long tmp___2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  size_t __len ;
  void *__ret ;
  {
  auth_tok_key = 0;
  rc = 0;
  *packet_size = 0UL;
  *filename_size = 0UL;
  *filename = 0;
  tmp = kmalloc(336UL, 208U);
  s = (struct ecryptfs_parse_tag_70_packet_silly_stack *)tmp;
  if ((unsigned long )s == (unsigned long )((struct ecryptfs_parse_tag_70_packet_silly_stack *)0)) {
    printk("\v%s: Out of memory whilst trying to kmalloc [%zd] bytes of kernel memory\n",
           "ecryptfs_parse_tag_70_packet", 336UL);
    rc = -12;
    goto out;
  } else {
  }
  s->desc.flags = 512U;
  if (max_packet_size <= 11UL) {
    printk("\f%s: max_packet_size is [%zd]; it must be at least [%d]\n", "ecryptfs_parse_tag_70_packet",
           max_packet_size, 12);
    rc = -22;
    goto out;
  } else {
  }
  tmp___0 = *packet_size;
  *packet_size = *packet_size + 1UL;
  if ((int )((signed char )*(data + tmp___0)) != 70) {
    printk("\f%s: Invalid packet tag [0x%.2x]; must be tag [0x%.2x]\n", "ecryptfs_parse_tag_70_packet",
           (int )*(data + (*packet_size + 0xffffffffffffffffUL)), 70);
    rc = -22;
    goto out;
  } else {
  }
  rc = ecryptfs_parse_packet_length((unsigned char *)(data + *packet_size), & s->parsed_tag_70_packet_size,
                                    & s->packet_size_len);
  if (rc != 0) {
    printk("\f%s: Error parsing packet length; rc = [%d]\n", "ecryptfs_parse_tag_70_packet",
           rc);
    goto out;
  } else {
  }
  s->block_aligned_filename_size = s->parsed_tag_70_packet_size - 9UL;
  if ((s->packet_size_len + s->parsed_tag_70_packet_size) + 1UL > max_packet_size) {
    printk("\f%s: max_packet_size is [%zd]; real packet size is [%zd]\n", "ecryptfs_parse_tag_70_packet",
           max_packet_size, (s->packet_size_len + s->block_aligned_filename_size) + 2UL);
    rc = -22;
    goto out;
  } else {
  }
  *packet_size = *packet_size + s->packet_size_len;
  ecryptfs_to_hex((char *)(& s->fnek_sig_hex), data + *packet_size, 8UL);
  s->fnek_sig_hex[16] = 0;
  *packet_size = *packet_size + 8UL;
  tmp___1 = *packet_size;
  *packet_size = *packet_size + 1UL;
  s->cipher_code = (u8 )*(data + tmp___1);
  rc = ecryptfs_cipher_code_to_string((char *)(& s->cipher_string), (int )s->cipher_code);
  if (rc != 0) {
    printk("\f%s: Cipher code [%d] is invalid\n", "ecryptfs_parse_tag_70_packet",
           (int )s->cipher_code);
    goto out;
  } else {
  }
  rc = ecryptfs_find_auth_tok_for_sig(& auth_tok_key, & s->auth_tok, mount_crypt_stat,
                                      (char *)(& s->fnek_sig_hex));
  if (rc != 0) {
    printk("\v%s: Error attempting to find auth tok for fnek sig [%s]; rc = [%d]\n",
           "ecryptfs_parse_tag_70_packet", (char *)(& s->fnek_sig_hex), rc);
    goto out;
  } else {
  }
  rc = ecryptfs_get_tfm_and_mutex_for_cipher_name(& s->desc.tfm, & s->tfm_mutex, (char *)(& s->cipher_string));
  tmp___2 = ldv__builtin_expect(rc != 0, 0L);
  if (tmp___2 != 0L) {
    printk("\vInternal error whilst attempting to get tfm and mutex for cipher name [%s]; rc = [%d]\n",
           (char *)(& s->cipher_string), rc);
    goto out;
  } else {
  }
  ldv_mutex_lock_198(s->tfm_mutex);
  rc = virt_to_scatterlist((void const *)(data + *packet_size), (int )s->block_aligned_filename_size,
                           (struct scatterlist *)(& s->src_sg), 2);
  if (rc <= 0) {
    printk("\v%s: Internal error whilst attempting to convert encrypted filename memory to scatterlist; rc = [%d]. block_aligned_filename_size = [%zd]\n",
           "ecryptfs_parse_tag_70_packet", rc, s->block_aligned_filename_size);
    goto out_unlock;
  } else {
  }
  *packet_size = *packet_size + s->block_aligned_filename_size;
  tmp___3 = kmalloc(s->block_aligned_filename_size, 208U);
  s->decrypted_filename = (char *)tmp___3;
  if ((unsigned long )s->decrypted_filename == (unsigned long )((char *)0)) {
    printk("\v%s: Out of memory whilst attempting to kmalloc [%zd] bytes\n", "ecryptfs_parse_tag_70_packet",
           s->block_aligned_filename_size);
    rc = -12;
    goto out_unlock;
  } else {
  }
  rc = virt_to_scatterlist((void const *)s->decrypted_filename, (int )s->block_aligned_filename_size,
                           (struct scatterlist *)(& s->dst_sg), 2);
  if (rc <= 0) {
    printk("\v%s: Internal error whilst attempting to convert decrypted filename memory to scatterlist; rc = [%d]. block_aligned_filename_size = [%zd]\n",
           "ecryptfs_parse_tag_70_packet", rc, s->block_aligned_filename_size);
    goto out_free_unlock;
  } else {
  }
  memset((void *)(& s->iv), 0, 16UL);
  s->desc.info = (void *)(& s->iv);
  if ((unsigned int )(s->auth_tok)->token_type != 0U) {
    rc = -95;
    printk("\016%s: Filename encryption only supports password tokens\n", "ecryptfs_parse_tag_70_packet");
    goto out_free_unlock;
  } else {
  }
  rc = crypto_blkcipher_setkey(s->desc.tfm, (u8 const *)(& (s->auth_tok)->token.password.session_key_encryption_key),
                               (unsigned int )mount_crypt_stat->global_default_fn_cipher_key_bytes);
  if (rc < 0) {
    printk("\v%s: Error setting key for crypto context; rc = [%d]. s->auth_tok->token.password.session_key_encryption_key = [0x%p]; mount_crypt_stat->global_default_fn_cipher_key_bytes = [%zd]\n",
           "ecryptfs_parse_tag_70_packet", rc, (u8 *)(& (s->auth_tok)->token.password.session_key_encryption_key),
           mount_crypt_stat->global_default_fn_cipher_key_bytes);
    goto out_free_unlock;
  } else {
  }
  rc = crypto_blkcipher_decrypt_iv(& s->desc, (struct scatterlist *)(& s->dst_sg),
                                   (struct scatterlist *)(& s->src_sg), (unsigned int )s->block_aligned_filename_size);
  if (rc != 0) {
    printk("\v%s: Error attempting to decrypt filename; rc = [%d]\n", "ecryptfs_parse_tag_70_packet",
           rc);
    goto out_free_unlock;
  } else {
  }
  s->i = 0UL;
  goto ldv_32410;
  ldv_32409:
  s->i = s->i + 1UL;
  ldv_32410: ;
  if ((int )((signed char )*(s->decrypted_filename + s->i)) != 0 && s->i < s->block_aligned_filename_size) {
    goto ldv_32409;
  } else {
  }
  if (s->i == s->block_aligned_filename_size) {
    printk("\f%s: Invalid tag 70 packet; could not find valid separator between random characters and the filename\n",
           "ecryptfs_parse_tag_70_packet");
    rc = -22;
    goto out_free_unlock;
  } else {
  }
  s->i = s->i + 1UL;
  *filename_size = s->block_aligned_filename_size - s->i;
  if (*filename_size == 0UL || *filename_size > 4095UL) {
    printk("\f%s: Filename size is [%zd], which is invalid\n", "ecryptfs_parse_tag_70_packet",
           *filename_size);
    rc = -22;
    goto out_free_unlock;
  } else {
  }
  tmp___4 = kmalloc(*filename_size + 1UL, 208U);
  *filename = (char *)tmp___4;
  if ((unsigned long )*filename == (unsigned long )((char *)0)) {
    printk("\v%s: Out of memory whilst attempting to kmalloc [%zd] bytes\n", "ecryptfs_parse_tag_70_packet",
           *filename_size + 1UL);
    rc = -12;
    goto out_free_unlock;
  } else {
  }
  __len = *filename_size;
  __ret = __builtin_memcpy((void *)*filename, (void const *)(s->decrypted_filename + s->i),
                           __len);
  *(*filename + *filename_size) = 0;
  out_free_unlock:
  kfree((void const *)s->decrypted_filename);
  out_unlock:
  ldv_mutex_unlock_199(s->tfm_mutex);
  out: ;
  if (rc != 0) {
    *packet_size = 0UL;
    *filename_size = 0UL;
    *filename = 0;
  } else {
  }
  if ((unsigned long )auth_tok_key != (unsigned long )((struct key *)0)) {
    up_write(& auth_tok_key->sem);
    key_put(auth_tok_key);
  } else {
  }
  kfree((void const *)s);
  return (rc);
}
}
static int ecryptfs_get_auth_tok_sig(char **sig , struct ecryptfs_auth_tok *auth_tok )
{
  int rc ;
  {
  rc = 0;
  *sig = 0;
  switch ((int )auth_tok->token_type) {
  case 0:
  *sig = (char *)(& auth_tok->token.password.signature);
  goto ldv_32421;
  case 1:
  *sig = (char *)(& auth_tok->token.private_key.signature);
  goto ldv_32421;
  default:
  printk("\vCannot get sig for auth_tok of type [%d]\n", (int )auth_tok->token_type);
  rc = -22;
  }
  ldv_32421: ;
  return (rc);
}
}
static int decrypt_pki_encrypted_session_key(struct ecryptfs_auth_tok *auth_tok ,
                                             struct ecryptfs_crypt_stat *crypt_stat )
{
  u8 cipher_code ;
  struct ecryptfs_msg_ctx *msg_ctx ;
  struct ecryptfs_message *msg ;
  char *auth_tok_sig ;
  char *payload ;
  size_t payload_len ;
  int rc ;
  size_t __len ;
  void *__ret ;
  {
  cipher_code = 0U;
  msg = 0;
  rc = ecryptfs_get_auth_tok_sig(& auth_tok_sig, auth_tok);
  if (rc != 0) {
    printk("\vUnrecognized auth tok type: [%d]\n", (int )auth_tok->token_type);
    goto out;
  } else {
  }
  rc = write_tag_64_packet(auth_tok_sig, & auth_tok->session_key, & payload, & payload_len);
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Failed to write tag 64 packet\n", "decrypt_pki_encrypted_session_key");
    goto out;
  } else {
  }
  rc = ecryptfs_send_message(payload, (int )payload_len, & msg_ctx);
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Error sending message to ecryptfsd\n", "decrypt_pki_encrypted_session_key");
    goto out;
  } else {
  }
  rc = ecryptfs_wait_for_response(msg_ctx, & msg);
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Failed to receive tag 65 packet from the user space daemon\n",
                      "decrypt_pki_encrypted_session_key");
    rc = -5;
    goto out;
  } else {
  }
  rc = parse_tag_65_packet(& auth_tok->session_key, & cipher_code, msg);
  if (rc != 0) {
    printk("\vFailed to parse tag 65 packet; rc = [%d]\n", rc);
    goto out;
  } else {
  }
  auth_tok->session_key.flags = auth_tok->session_key.flags | 4U;
  __len = (size_t )auth_tok->session_key.decrypted_key_size;
  __ret = __builtin_memcpy((void *)(& crypt_stat->key), (void const *)(& auth_tok->session_key.decrypted_key),
                           __len);
  crypt_stat->key_size = (size_t )auth_tok->session_key.decrypted_key_size;
  rc = ecryptfs_cipher_code_to_string((char *)(& crypt_stat->cipher), (int )cipher_code);
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Cipher code [%d] is invalid\n", "decrypt_pki_encrypted_session_key",
                      (int )cipher_code);
    goto out;
  } else {
  }
  crypt_stat->flags = crypt_stat->flags | 64U;
  if (ecryptfs_verbosity > 0) {
    __ecryptfs_printk("\017%s: Decrypted session key:\n", "decrypt_pki_encrypted_session_key");
    ecryptfs_dump_hex((char *)(& crypt_stat->key), (int )crypt_stat->key_size);
  } else {
  }
  out: ;
  if ((unsigned long )msg != (unsigned long )((struct ecryptfs_message *)0)) {
    kfree((void const *)msg);
  } else {
  }
  return (rc);
}
}
static void wipe_auth_tok_list(struct list_head *auth_tok_list_head )
{
  struct ecryptfs_auth_tok_list_item *auth_tok_list_item ;
  struct ecryptfs_auth_tok_list_item *auth_tok_list_item_tmp ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  __mptr = (struct list_head const *)auth_tok_list_head->next;
  auth_tok_list_item = (struct ecryptfs_auth_tok_list_item *)__mptr + 0xffffffffffffffc0UL;
  __mptr___0 = (struct list_head const *)auth_tok_list_item->list.next;
  auth_tok_list_item_tmp = (struct ecryptfs_auth_tok_list_item *)__mptr___0 + 0xffffffffffffffc0UL;
  goto ldv_32452;
  ldv_32451:
  list_del(& auth_tok_list_item->list);
  kmem_cache_free(ecryptfs_auth_tok_list_item_cache, (void *)auth_tok_list_item);
  auth_tok_list_item = auth_tok_list_item_tmp;
  __mptr___1 = (struct list_head const *)auth_tok_list_item_tmp->list.next;
  auth_tok_list_item_tmp = (struct ecryptfs_auth_tok_list_item *)__mptr___1 + 0xffffffffffffffc0UL;
  ldv_32452: ;
  if ((unsigned long )(& auth_tok_list_item->list) != (unsigned long )auth_tok_list_head) {
    goto ldv_32451;
  } else {
  }
  return;
}
}
static int parse_tag_1_packet(struct ecryptfs_crypt_stat *crypt_stat , unsigned char *data ,
                              struct list_head *auth_tok_list , struct ecryptfs_auth_tok **new_auth_tok ,
                              size_t *packet_size , size_t max_packet_size )
{
  size_t body_size ;
  struct ecryptfs_auth_tok_list_item *auth_tok_list_item ;
  size_t length_size ;
  int rc ;
  long tmp ;
  size_t tmp___0 ;
  void *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  size_t tmp___4 ;
  long tmp___5 ;
  size_t __len ;
  void *__ret ;
  {
  rc = 0;
  *packet_size = 0UL;
  *new_auth_tok = 0;
  tmp = ldv__builtin_expect(max_packet_size <= 11UL, 0L);
  if (tmp != 0L) {
    printk("\vInvalid max packet size; must be >=12\n");
    rc = -22;
    goto out;
  } else {
  }
  tmp___0 = *packet_size;
  *packet_size = *packet_size + 1UL;
  if ((unsigned int )*(data + tmp___0) != 1U) {
    printk("\vEnter w/ first byte != 0x%.2x\n", 1);
    rc = -22;
    goto out;
  } else {
  }
  tmp___1 = kmem_cache_zalloc(ecryptfs_auth_tok_list_item_cache, 208U);
  auth_tok_list_item = (struct ecryptfs_auth_tok_list_item *)tmp___1;
  if ((unsigned long )auth_tok_list_item == (unsigned long )((struct ecryptfs_auth_tok_list_item *)0)) {
    printk("\vUnable to allocate memory\n");
    rc = -12;
    goto out;
  } else {
  }
  *new_auth_tok = & auth_tok_list_item->auth_tok;
  rc = ecryptfs_parse_packet_length(data + *packet_size, & body_size, & length_size);
  if (rc != 0) {
    printk("\fError parsing packet length; rc = [%d]\n", rc);
    goto out_free;
  } else {
  }
  tmp___2 = ldv__builtin_expect(body_size <= 9UL, 0L);
  if (tmp___2 != 0L) {
    printk("\fInvalid body size ([%td])\n", body_size);
    rc = -22;
    goto out_free;
  } else {
  }
  *packet_size = *packet_size + length_size;
  tmp___3 = ldv__builtin_expect(*packet_size + body_size > max_packet_size, 0L);
  if (tmp___3 != 0L) {
    printk("\fPacket size exceeds max\n");
    rc = -22;
    goto out_free;
  } else {
  }
  tmp___4 = *packet_size;
  *packet_size = *packet_size + 1UL;
  tmp___5 = ldv__builtin_expect((unsigned int )*(data + tmp___4) != 3U, 0L);
  if (tmp___5 != 0L) {
    printk("\fUnknown version number [%d]\n", (int )*(data + (*packet_size + 0xffffffffffffffffUL)));
    rc = -22;
    goto out_free;
  } else {
  }
  ecryptfs_to_hex((char *)(& (*new_auth_tok)->token.private_key.signature), (char *)(data + *packet_size),
                  8UL);
  *packet_size = *packet_size + 8UL;
  *packet_size = *packet_size + 1UL;
  (*new_auth_tok)->session_key.encrypted_key_size = (u32 )body_size - 10U;
  if ((*new_auth_tok)->session_key.encrypted_key_size > 512U) {
    printk("\fTag 1 packet contains key larger than ECRYPTFS_MAX_ENCRYPTED_KEY_BYTES");
    rc = -22;
    goto out;
  } else {
  }
  __len = body_size - 10UL;
  __ret = __builtin_memcpy((void *)(& (*new_auth_tok)->session_key.encrypted_key),
                           (void const *)(data + *packet_size), __len);
  *packet_size = *packet_size + (size_t )(*new_auth_tok)->session_key.encrypted_key_size;
  (*new_auth_tok)->session_key.flags = (*new_auth_tok)->session_key.flags & 4294967291U;
  (*new_auth_tok)->session_key.flags = (*new_auth_tok)->session_key.flags | 8U;
  (*new_auth_tok)->token_type = 1U;
  (*new_auth_tok)->flags = 0U;
  (*new_auth_tok)->session_key.flags = (*new_auth_tok)->session_key.flags & 4294967294U;
  (*new_auth_tok)->session_key.flags = (*new_auth_tok)->session_key.flags & 4294967293U;
  list_add(& auth_tok_list_item->list, auth_tok_list);
  goto out;
  out_free:
  *new_auth_tok = 0;
  memset((void *)auth_tok_list_item, 0, 824UL);
  kmem_cache_free(ecryptfs_auth_tok_list_item_cache, (void *)auth_tok_list_item);
  out: ;
  if (rc != 0) {
    *packet_size = 0UL;
  } else {
  }
  return (rc);
}
}
static int parse_tag_3_packet(struct ecryptfs_crypt_stat *crypt_stat , unsigned char *data ,
                              struct list_head *auth_tok_list , struct ecryptfs_auth_tok **new_auth_tok ,
                              size_t *packet_size , size_t max_packet_size )
{
  size_t body_size ;
  struct ecryptfs_auth_tok_list_item *auth_tok_list_item ;
  size_t length_size ;
  int rc ;
  size_t tmp ;
  void *tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  size_t tmp___3 ;
  long tmp___4 ;
  size_t tmp___5 ;
  size_t tmp___6 ;
  long tmp___7 ;
  size_t tmp___8 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  rc = 0;
  *packet_size = 0UL;
  *new_auth_tok = 0;
  if (max_packet_size <= 14UL) {
    printk("\vMax packet size too large\n");
    rc = -22;
    goto out;
  } else {
  }
  tmp = *packet_size;
  *packet_size = *packet_size + 1UL;
  if ((unsigned int )*(data + tmp) != 140U) {
    printk("\vFirst byte != 0x%.2x; invalid packet\n", 140);
    rc = -22;
    goto out;
  } else {
  }
  tmp___0 = kmem_cache_zalloc(ecryptfs_auth_tok_list_item_cache, 208U);
  auth_tok_list_item = (struct ecryptfs_auth_tok_list_item *)tmp___0;
  if ((unsigned long )auth_tok_list_item == (unsigned long )((struct ecryptfs_auth_tok_list_item *)0)) {
    printk("\vUnable to allocate memory\n");
    rc = -12;
    goto out;
  } else {
  }
  *new_auth_tok = & auth_tok_list_item->auth_tok;
  rc = ecryptfs_parse_packet_length(data + *packet_size, & body_size, & length_size);
  if (rc != 0) {
    printk("\fError parsing packet length; rc = [%d]\n", rc);
    goto out_free;
  } else {
  }
  tmp___1 = ldv__builtin_expect(body_size <= 12UL, 0L);
  if (tmp___1 != 0L) {
    printk("\fInvalid body size ([%td])\n", body_size);
    rc = -22;
    goto out_free;
  } else {
  }
  *packet_size = *packet_size + length_size;
  tmp___2 = ldv__builtin_expect(*packet_size + body_size > max_packet_size, 0L);
  if (tmp___2 != 0L) {
    printk("\vPacket size exceeds max\n");
    rc = -22;
    goto out_free;
  } else {
  }
  (*new_auth_tok)->session_key.encrypted_key_size = (u32 )body_size - 13U;
  if ((*new_auth_tok)->session_key.encrypted_key_size > 512U) {
    printk("\fTag 3 packet contains key larger than ECRYPTFS_MAX_ENCRYPTED_KEY_BYTES\n");
    rc = -22;
    goto out_free;
  } else {
  }
  tmp___3 = *packet_size;
  *packet_size = *packet_size + 1UL;
  tmp___4 = ldv__builtin_expect((unsigned int )*(data + tmp___3) != 4U, 0L);
  if (tmp___4 != 0L) {
    printk("\fUnknown version number [%d]\n", (int )*(data + (*packet_size + 0xffffffffffffffffUL)));
    rc = -22;
    goto out_free;
  } else {
  }
  rc = ecryptfs_cipher_code_to_string((char *)(& crypt_stat->cipher), (int )*(data + *packet_size));
  if (rc != 0) {
    goto out_free;
  } else {
  }
  tmp___5 = *packet_size;
  *packet_size = *packet_size + 1UL;
  switch ((int )*(data + tmp___5)) {
  case 8:
  crypt_stat->key_size = 24UL;
  goto ldv_32487;
  default:
  crypt_stat->key_size = (size_t )(*new_auth_tok)->session_key.encrypted_key_size;
  }
  ldv_32487:
  rc = ecryptfs_init_crypt_ctx(crypt_stat);
  if (rc != 0) {
    goto out_free;
  } else {
  }
  tmp___6 = *packet_size;
  *packet_size = *packet_size + 1UL;
  tmp___7 = ldv__builtin_expect((unsigned int )*(data + tmp___6) != 3U, 0L);
  if (tmp___7 != 0L) {
    printk("\fOnly S2K ID 3 is currently supported\n");
    rc = -38;
    goto out_free;
  } else {
  }
  tmp___8 = *packet_size;
  *packet_size = *packet_size + 1UL;
  switch ((int )*(data + tmp___8)) {
  case 1:
  __len = 8UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& (*new_auth_tok)->token.password.salt), (void const *)(data + *packet_size),
                     __len);
  } else {
    __ret = __builtin_memcpy((void *)(& (*new_auth_tok)->token.password.salt), (void const *)(data + *packet_size),
                             __len);
  }
  *packet_size = *packet_size + 8UL;
  (*new_auth_tok)->token.password.hash_iterations = (((unsigned int )*(data + *packet_size) & 15U) + 16U) << (((int )*(data + *packet_size) >> 4) + 6);
  *packet_size = *packet_size + 1UL;
  __len___0 = (size_t )(*new_auth_tok)->session_key.encrypted_key_size;
  __ret___0 = __builtin_memcpy((void *)(& (*new_auth_tok)->session_key.encrypted_key),
                               (void const *)(data + *packet_size), __len___0);
  *packet_size = *packet_size + (size_t )(*new_auth_tok)->session_key.encrypted_key_size;
  (*new_auth_tok)->session_key.flags = (*new_auth_tok)->session_key.flags & 4294967291U;
  (*new_auth_tok)->session_key.flags = (*new_auth_tok)->session_key.flags | 8U;
  (*new_auth_tok)->token.password.hash_algo = 1;
  goto ldv_32496;
  default:
  __ecryptfs_printk("\v%s: Unsupported hash algorithm: [%d]\n", "parse_tag_3_packet",
                    (int )*(data + (*packet_size + 0xffffffffffffffffUL)));
  rc = -38;
  goto out_free;
  }
  ldv_32496:
  (*new_auth_tok)->token_type = 0U;
  (*new_auth_tok)->session_key.flags = (*new_auth_tok)->session_key.flags & 4294967294U;
  (*new_auth_tok)->session_key.flags = (*new_auth_tok)->session_key.flags & 4294967293U;
  list_add(& auth_tok_list_item->list, auth_tok_list);
  goto out;
  out_free:
  *new_auth_tok = 0;
  memset((void *)auth_tok_list_item, 0, 824UL);
  kmem_cache_free(ecryptfs_auth_tok_list_item_cache, (void *)auth_tok_list_item);
  out: ;
  if (rc != 0) {
    *packet_size = 0UL;
  } else {
  }
  return (rc);
}
}
static int parse_tag_11_packet(unsigned char *data , unsigned char *contents , size_t max_contents_bytes ,
                               size_t *tag_11_contents_size , size_t *packet_size ,
                               size_t max_packet_size )
{
  size_t body_size ;
  size_t length_size ;
  int rc ;
  size_t tmp ;
  long tmp___0 ;
  long tmp___1 ;
  size_t tmp___2 ;
  size_t tmp___3 ;
  size_t __len ;
  void *__ret ;
  {
  rc = 0;
  *packet_size = 0UL;
  *tag_11_contents_size = 0UL;
  if (max_packet_size <= 15UL) {
    printk("\vMaximum packet size too small\n");
    rc = -22;
    goto out;
  } else {
  }
  tmp = *packet_size;
  *packet_size = *packet_size + 1UL;
  if ((unsigned int )*(data + tmp) != 237U) {
    printk("\fInvalid tag 11 packet format\n");
    rc = -22;
    goto out;
  } else {
  }
  rc = ecryptfs_parse_packet_length(data + *packet_size, & body_size, & length_size);
  if (rc != 0) {
    printk("\fInvalid tag 11 packet format\n");
    goto out;
  } else {
  }
  if (body_size <= 13UL) {
    printk("\fInvalid body size ([%td])\n", body_size);
    rc = -22;
    goto out;
  } else {
  }
  *packet_size = *packet_size + length_size;
  *tag_11_contents_size = body_size - 14UL;
  tmp___0 = ldv__builtin_expect((*packet_size + body_size) + 1UL > max_packet_size, 0L);
  if (tmp___0 != 0L) {
    printk("\vPacket size exceeds max\n");
    rc = -22;
    goto out;
  } else {
  }
  tmp___1 = ldv__builtin_expect(*tag_11_contents_size > max_contents_bytes, 0L);
  if (tmp___1 != 0L) {
    printk("\vLiteral data section in tag 11 packet exceeds expected size\n");
    rc = -22;
    goto out;
  } else {
  }
  tmp___2 = *packet_size;
  *packet_size = *packet_size + 1UL;
  if ((unsigned int )*(data + tmp___2) != 98U) {
    printk("\fUnrecognizable packet\n");
    rc = -22;
    goto out;
  } else {
  }
  tmp___3 = *packet_size;
  *packet_size = *packet_size + 1UL;
  if ((unsigned int )*(data + tmp___3) != 8U) {
    printk("\fUnrecognizable packet\n");
    rc = -22;
    goto out;
  } else {
  }
  *packet_size = *packet_size + 12UL;
  __len = *tag_11_contents_size;
  __ret = __builtin_memcpy((void *)contents, (void const *)(data + *packet_size),
                           __len);
  *packet_size = *packet_size + *tag_11_contents_size;
  out: ;
  if (rc != 0) {
    *packet_size = 0UL;
    *tag_11_contents_size = 0UL;
  } else {
  }
  return (rc);
}
}
int ecryptfs_keyring_auth_tok_for_sig(struct key **auth_tok_key , struct ecryptfs_auth_tok **auth_tok ,
                                      char *sig )
{
  int rc ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  {
  rc = 0;
  *auth_tok_key = request_key(& key_type_user, (char const *)sig, 0);
  if ((unsigned long )*auth_tok_key == (unsigned long )((struct key *)0)) {
    goto _L;
  } else {
    tmp___1 = IS_ERR((void const *)*auth_tok_key);
    if (tmp___1 != 0L) {
      _L:
      *auth_tok_key = ecryptfs_get_encrypted_key(sig);
      if ((unsigned long )*auth_tok_key == (unsigned long )((struct key *)0)) {
        printk("\vCould not find key with description: [%s]\n", sig);
        tmp = PTR_ERR((void const *)*auth_tok_key);
        rc = process_request_key_err(tmp);
        *auth_tok_key = 0;
        goto out;
      } else {
        tmp___0 = IS_ERR((void const *)*auth_tok_key);
        if (tmp___0 != 0L) {
          printk("\vCould not find key with description: [%s]\n", sig);
          tmp = PTR_ERR((void const *)*auth_tok_key);
          rc = process_request_key_err(tmp);
          *auth_tok_key = 0;
          goto out;
        } else {
        }
      }
    } else {
    }
  }
  down_write(& (*auth_tok_key)->sem);
  rc = ecryptfs_verify_auth_tok_from_key(*auth_tok_key, auth_tok);
  if (rc != 0) {
    up_write(& (*auth_tok_key)->sem);
    key_put(*auth_tok_key);
    *auth_tok_key = 0;
    goto out;
  } else {
  }
  out: ;
  return (rc);
}
}
static int decrypt_passphrase_encrypted_session_key(struct ecryptfs_auth_tok *auth_tok ,
                                                    struct ecryptfs_crypt_stat *crypt_stat )
{
  struct scatterlist dst_sg[2U] ;
  struct scatterlist src_sg[2U] ;
  struct mutex *tfm_mutex ;
  struct blkcipher_desc desc ;
  int rc ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  size_t __len ;
  void *__ret ;
  long tmp___3 ;
  {
  desc.tfm = 0;
  desc.info = 0;
  desc.flags = 512U;
  rc = 0;
  tmp = ldv__builtin_expect(ecryptfs_verbosity > 0, 0L);
  if (tmp != 0L) {
    __ecryptfs_printk("\017%s: Session key encryption key (size [%d]):\n", "decrypt_passphrase_encrypted_session_key",
                      auth_tok->token.password.session_key_encryption_key_bytes);
    ecryptfs_dump_hex((char *)(& auth_tok->token.password.session_key_encryption_key),
                      (int )auth_tok->token.password.session_key_encryption_key_bytes);
  } else {
  }
  rc = ecryptfs_get_tfm_and_mutex_for_cipher_name(& desc.tfm, & tfm_mutex, (char *)(& crypt_stat->cipher));
  tmp___0 = ldv__builtin_expect(rc != 0, 0L);
  if (tmp___0 != 0L) {
    printk("\vInternal error whilst attempting to get tfm and mutex for cipher name [%s]; rc = [%d]\n",
           (unsigned char *)(& crypt_stat->cipher), rc);
    goto out;
  } else {
  }
  rc = virt_to_scatterlist((void const *)(& auth_tok->session_key.encrypted_key),
                           (int )auth_tok->session_key.encrypted_key_size, (struct scatterlist *)(& src_sg),
                           2);
  if (rc <= 0 || rc > 2) {
    printk("\vInternal error whilst attempting to convert auth_tok->session_key.encrypted_key to scatterlist; expected rc = 1; got rc = [%d]. auth_tok->session_key.encrypted_key_size = [%d]\n",
           rc, auth_tok->session_key.encrypted_key_size);
    goto out;
  } else {
  }
  auth_tok->session_key.decrypted_key_size = auth_tok->session_key.encrypted_key_size;
  rc = virt_to_scatterlist((void const *)(& auth_tok->session_key.decrypted_key),
                           (int )auth_tok->session_key.decrypted_key_size, (struct scatterlist *)(& dst_sg),
                           2);
  if (rc <= 0 || rc > 2) {
    printk("\vInternal error whilst attempting to convert auth_tok->session_key.decrypted_key to scatterlist; expected rc = 1; got rc = [%d]\n",
           rc);
    goto out;
  } else {
  }
  ldv_mutex_lock_200(tfm_mutex);
  rc = crypto_blkcipher_setkey(desc.tfm, (u8 const *)(& auth_tok->token.password.session_key_encryption_key),
                               (unsigned int )crypt_stat->key_size);
  tmp___1 = ldv__builtin_expect(rc < 0, 0L);
  if (tmp___1 != 0L) {
    ldv_mutex_unlock_201(tfm_mutex);
    printk("\vError setting key for crypto context\n");
    rc = -22;
    goto out;
  } else {
  }
  rc = crypto_blkcipher_decrypt(& desc, (struct scatterlist *)(& dst_sg), (struct scatterlist *)(& src_sg),
                                auth_tok->session_key.encrypted_key_size);
  ldv_mutex_unlock_202(tfm_mutex);
  tmp___2 = ldv__builtin_expect(rc != 0, 0L);
  if (tmp___2 != 0L) {
    printk("\vError decrypting; rc = [%d]\n", rc);
    goto out;
  } else {
  }
  auth_tok->session_key.flags = auth_tok->session_key.flags | 4U;
  __len = (size_t )auth_tok->session_key.decrypted_key_size;
  __ret = __builtin_memcpy((void *)(& crypt_stat->key), (void const *)(& auth_tok->session_key.decrypted_key),
                           __len);
  crypt_stat->flags = crypt_stat->flags | 64U;
  tmp___3 = ldv__builtin_expect(ecryptfs_verbosity > 0, 0L);
  if (tmp___3 != 0L) {
    __ecryptfs_printk("\017%s: FEK of size [%zd]:\n", "decrypt_passphrase_encrypted_session_key",
                      crypt_stat->key_size);
    ecryptfs_dump_hex((char *)(& crypt_stat->key), (int )crypt_stat->key_size);
  } else {
  }
  out: ;
  return (rc);
}
}
int ecryptfs_parse_packet_set(struct ecryptfs_crypt_stat *crypt_stat , unsigned char *src ,
                              struct dentry *ecryptfs_dentry )
{
  size_t i ;
  size_t found_auth_tok ;
  size_t next_packet_is_auth_tok_packet ;
  struct list_head auth_tok_list ;
  struct ecryptfs_auth_tok *matching_auth_tok ;
  struct ecryptfs_auth_tok *candidate_auth_tok ;
  char *candidate_auth_tok_sig ;
  size_t packet_size ;
  struct ecryptfs_auth_tok *new_auth_tok ;
  unsigned char sig_tmp_space[8U] ;
  struct ecryptfs_auth_tok_list_item *auth_tok_list_item ;
  size_t tag_11_contents_size ;
  size_t tag_11_packet_size ;
  struct key *auth_tok_key ;
  int rc ;
  size_t max_packet_size ;
  int tmp ;
  struct list_head const *__mptr ;
  long tmp___0 ;
  struct list_head const *__mptr___0 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  struct ecryptfs_auth_tok_list_item *auth_tok_list_item_tmp ;
  struct list_head const *__mptr___1 ;
  struct list_head const *__mptr___2 ;
  struct list_head const *__mptr___3 ;
  {
  i = 0UL;
  auth_tok_key = 0;
  rc = 0;
  INIT_LIST_HEAD(& auth_tok_list);
  next_packet_is_auth_tok_packet = 1UL;
  goto ldv_32564;
  ldv_32563:
  max_packet_size = 4088UL - i;
  switch ((int )*(src + i)) {
  case 140:
  rc = parse_tag_3_packet(crypt_stat, src + i, & auth_tok_list, & new_auth_tok, & packet_size,
                          max_packet_size);
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Error parsing tag 3 packet\n", "ecryptfs_parse_packet_set");
    rc = -5;
    goto out_wipe_list;
  } else {
  }
  i = i + packet_size;
  rc = parse_tag_11_packet(src + i, (unsigned char *)(& sig_tmp_space), 8UL, & tag_11_contents_size,
                           & tag_11_packet_size, max_packet_size);
  if (rc != 0) {
    __ecryptfs_printk("\v%s: No valid (ecryptfs-specific) literal packet containing authentication token signature found after tag 3 packet\n",
                      "ecryptfs_parse_packet_set");
    rc = -5;
    goto out_wipe_list;
  } else {
  }
  i = i + tag_11_packet_size;
  if (tag_11_contents_size != 8UL) {
    __ecryptfs_printk("\v%s: Expected signature of size [%d]; read size [%zd]\n",
                      "ecryptfs_parse_packet_set", 8, tag_11_contents_size);
    rc = -5;
    goto out_wipe_list;
  } else {
  }
  ecryptfs_to_hex((char *)(& new_auth_tok->token.password.signature), (char *)(& sig_tmp_space),
                  tag_11_contents_size);
  new_auth_tok->token.password.signature[16] = 0U;
  crypt_stat->flags = crypt_stat->flags | 4U;
  goto ldv_32559;
  case 1:
  rc = parse_tag_1_packet(crypt_stat, src + i, & auth_tok_list, & new_auth_tok, & packet_size,
                          max_packet_size);
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Error parsing tag 1 packet\n", "ecryptfs_parse_packet_set");
    rc = -5;
    goto out_wipe_list;
  } else {
  }
  i = i + packet_size;
  crypt_stat->flags = crypt_stat->flags | 4U;
  goto ldv_32559;
  case 237:
  __ecryptfs_printk("\f%s: Invalid packet set (Tag 11 not allowed by itself)\n", "ecryptfs_parse_packet_set");
  rc = -5;
  goto out_wipe_list;
  default:
  __ecryptfs_printk("\017%s: No packet at offset [%zd] of the file header; hex value of character is [0x%.2x]\n",
                    "ecryptfs_parse_packet_set", i, (int )*(src + i));
  next_packet_is_auth_tok_packet = 0UL;
  }
  ldv_32559: ;
  ldv_32564: ;
  if (next_packet_is_auth_tok_packet != 0UL) {
    goto ldv_32563;
  } else {
  }
  tmp = list_empty((struct list_head const *)(& auth_tok_list));
  if (tmp != 0) {
    printk("\vThe lower file appears to be a non-encrypted eCryptfs file; this is not supported in this version of the eCryptfs kernel module\n");
    rc = -22;
    goto out;
  } else {
  }
  find_next_matching_auth_tok:
  found_auth_tok = 0UL;
  __mptr = (struct list_head const *)auth_tok_list.next;
  auth_tok_list_item = (struct ecryptfs_auth_tok_list_item *)__mptr + 0xffffffffffffffc0UL;
  goto ldv_32574;
  ldv_32573:
  candidate_auth_tok = & auth_tok_list_item->auth_tok;
  tmp___0 = ldv__builtin_expect(ecryptfs_verbosity > 0, 0L);
  if (tmp___0 != 0L) {
    __ecryptfs_printk("\017%s: Considering cadidate auth tok:\n", "ecryptfs_parse_packet_set");
    ecryptfs_dump_auth_tok(candidate_auth_tok);
  } else {
  }
  rc = ecryptfs_get_auth_tok_sig(& candidate_auth_tok_sig, candidate_auth_tok);
  if (rc != 0) {
    printk("\vUnrecognized candidate auth tok type: [%d]\n", (int )candidate_auth_tok->token_type);
    rc = -22;
    goto out_wipe_list;
  } else {
  }
  rc = ecryptfs_find_auth_tok_for_sig(& auth_tok_key, & matching_auth_tok, crypt_stat->mount_crypt_stat,
                                      candidate_auth_tok_sig);
  if (rc == 0) {
    found_auth_tok = 1UL;
    goto found_matching_auth_tok;
  } else {
  }
  __mptr___0 = (struct list_head const *)auth_tok_list_item->list.next;
  auth_tok_list_item = (struct ecryptfs_auth_tok_list_item *)__mptr___0 + 0xffffffffffffffc0UL;
  ldv_32574: ;
  if ((unsigned long )(& auth_tok_list_item->list) != (unsigned long )(& auth_tok_list)) {
    goto ldv_32573;
  } else {
  }
  if (found_auth_tok == 0UL) {
    __ecryptfs_printk("\v%s: Could not find a usable authentication token\n", "ecryptfs_parse_packet_set");
    rc = -5;
    goto out_wipe_list;
  } else {
  }
  found_matching_auth_tok: ;
  if ((unsigned int )candidate_auth_tok->token_type == 1U) {
    __len = 44UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& candidate_auth_tok->token.private_key), (void const *)(& matching_auth_tok->token.private_key),
                       __len);
    } else {
      __ret = __builtin_memcpy((void *)(& candidate_auth_tok->token.private_key),
                               (void const *)(& matching_auth_tok->token.private_key),
                               __len);
    }
    up_write(& auth_tok_key->sem);
    key_put(auth_tok_key);
    rc = decrypt_pki_encrypted_session_key(candidate_auth_tok, crypt_stat);
  } else
  if ((unsigned int )candidate_auth_tok->token_type == 0U) {
    __len___0 = 112UL;
    if (__len___0 > 63UL) {
      __ret___0 = memcpy((void *)(& candidate_auth_tok->token.password), (void const *)(& matching_auth_tok->token.password),
                           __len___0);
    } else {
      __ret___0 = __builtin_memcpy((void *)(& candidate_auth_tok->token.password),
                                   (void const *)(& matching_auth_tok->token.password),
                                   __len___0);
    }
    up_write(& auth_tok_key->sem);
    key_put(auth_tok_key);
    rc = decrypt_passphrase_encrypted_session_key(candidate_auth_tok, crypt_stat);
  } else {
    up_write(& auth_tok_key->sem);
    key_put(auth_tok_key);
    rc = -22;
  }
  if (rc != 0) {
    __ecryptfs_printk("\f%s: Error decrypting the session key for authentication token with sig [%.*s]; rc = [%d]. Removing auth tok candidate from the list and searching for the next match.\n",
                      "ecryptfs_parse_packet_set", 16, candidate_auth_tok_sig, rc);
    __mptr___1 = (struct list_head const *)auth_tok_list.next;
    auth_tok_list_item = (struct ecryptfs_auth_tok_list_item *)__mptr___1 + 0xffffffffffffffc0UL;
    __mptr___2 = (struct list_head const *)auth_tok_list_item->list.next;
    auth_tok_list_item_tmp = (struct ecryptfs_auth_tok_list_item *)__mptr___2 + 0xffffffffffffffc0UL;
    goto ldv_32590;
    ldv_32589: ;
    if ((unsigned long )(& auth_tok_list_item->auth_tok) == (unsigned long )candidate_auth_tok) {
      list_del(& auth_tok_list_item->list);
      kmem_cache_free(ecryptfs_auth_tok_list_item_cache, (void *)auth_tok_list_item);
      goto find_next_matching_auth_tok;
    } else {
    }
    auth_tok_list_item = auth_tok_list_item_tmp;
    __mptr___3 = (struct list_head const *)auth_tok_list_item_tmp->list.next;
    auth_tok_list_item_tmp = (struct ecryptfs_auth_tok_list_item *)__mptr___3 + 0xffffffffffffffc0UL;
    ldv_32590: ;
    if ((unsigned long )(& auth_tok_list_item->list) != (unsigned long )(& auth_tok_list)) {
      goto ldv_32589;
    } else {
    }
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/ecryptfs/ecryptfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/24/dscv_tempdir/dscv/ri/32_7a/fs/ecryptfs/keystore.c.prepared"),
                         "i" (2082), "i" (12UL));
    ldv_32592: ;
    goto ldv_32592;
  } else {
  }
  rc = ecryptfs_compute_root_iv(crypt_stat);
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Error computing the root IV\n", "ecryptfs_parse_packet_set");
    goto out_wipe_list;
  } else {
  }
  rc = ecryptfs_init_crypt_ctx(crypt_stat);
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Error initializing crypto context for cipher [%s]; rc = [%d]\n",
                      "ecryptfs_parse_packet_set", (unsigned char *)(& crypt_stat->cipher),
                      rc);
  } else {
  }
  out_wipe_list:
  wipe_auth_tok_list(& auth_tok_list);
  out: ;
  return (rc);
}
}
static int pki_encrypt_session_key(struct key *auth_tok_key , struct ecryptfs_auth_tok *auth_tok ,
                                   struct ecryptfs_crypt_stat *crypt_stat , struct ecryptfs_key_record *key_rec )
{
  struct ecryptfs_msg_ctx *msg_ctx ;
  char *payload ;
  size_t payload_len ;
  struct ecryptfs_message *msg ;
  int rc ;
  u8 tmp ;
  {
  msg_ctx = 0;
  payload = 0;
  payload_len = 0UL;
  tmp = ecryptfs_code_for_cipher_string((char *)(& crypt_stat->cipher), crypt_stat->key_size);
  rc = write_tag_66_packet((char *)(& auth_tok->token.private_key.signature), (int )tmp,
                           crypt_stat, & payload, & payload_len);
  up_write(& auth_tok_key->sem);
  key_put(auth_tok_key);
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Error generating tag 66 packet\n", "pki_encrypt_session_key");
    goto out;
  } else {
  }
  rc = ecryptfs_send_message(payload, (int )payload_len, & msg_ctx);
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Error sending message to ecryptfsd\n", "pki_encrypt_session_key");
    goto out;
  } else {
  }
  rc = ecryptfs_wait_for_response(msg_ctx, & msg);
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Failed to receive tag 67 packet from the user space daemon\n",
                      "pki_encrypt_session_key");
    rc = -5;
    goto out;
  } else {
  }
  rc = parse_tag_67_packet(key_rec, msg);
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Error parsing tag 67 packet\n", "pki_encrypt_session_key");
  } else {
  }
  kfree((void const *)msg);
  out:
  kfree((void const *)payload);
  return (rc);
}
}
static int write_tag_1_packet(char *dest , size_t *remaining_bytes , struct key *auth_tok_key ,
                              struct ecryptfs_auth_tok *auth_tok , struct ecryptfs_crypt_stat *crypt_stat ,
                              struct ecryptfs_key_record *key_rec , size_t *packet_size )
{
  size_t i ;
  size_t encrypted_session_key_valid ;
  size_t packet_size_length ;
  size_t max_packet_size ;
  int rc ;
  size_t __len ;
  void *__ret ;
  size_t tmp ;
  size_t tmp___0 ;
  size_t __len___0 ;
  void *__ret___0 ;
  size_t tmp___1 ;
  size_t __len___1 ;
  void *__ret___1 ;
  {
  encrypted_session_key_valid = 0UL;
  rc = 0;
  *packet_size = 0UL;
  ecryptfs_from_hex((char *)(& key_rec->sig), (char *)(& auth_tok->token.private_key.signature),
                    8);
  encrypted_session_key_valid = 0UL;
  i = 0UL;
  goto ldv_32621;
  ldv_32620:
  encrypted_session_key_valid = (size_t )auth_tok->session_key.encrypted_key[i] | encrypted_session_key_valid;
  i = i + 1UL;
  ldv_32621: ;
  if (crypt_stat->key_size > i) {
    goto ldv_32620;
  } else {
  }
  if (encrypted_session_key_valid != 0UL) {
    __len = (size_t )auth_tok->session_key.encrypted_key_size;
    __ret = __builtin_memcpy((void *)(& key_rec->enc_key), (void const *)(& auth_tok->session_key.encrypted_key),
                             __len);
    up_write(& auth_tok_key->sem);
    key_put(auth_tok_key);
    goto encrypted_session_key_set;
  } else {
  }
  if (auth_tok->session_key.encrypted_key_size == 0U) {
    auth_tok->session_key.encrypted_key_size = auth_tok->token.private_key.key_size;
  } else {
  }
  rc = pki_encrypt_session_key(auth_tok_key, auth_tok, crypt_stat, key_rec);
  if (rc != 0) {
    printk("\vFailed to encrypt session key via a key module; rc = [%d]\n", rc);
    goto out;
  } else {
  }
  if (ecryptfs_verbosity > 0) {
    __ecryptfs_printk("\017%s: Encrypted key:\n", "write_tag_1_packet");
    ecryptfs_dump_hex((char *)(& key_rec->enc_key), (int )key_rec->enc_key_size);
  } else {
  }
  encrypted_session_key_set:
  max_packet_size = key_rec->enc_key_size + 14UL;
  if (*remaining_bytes < max_packet_size) {
    printk("\vPacket length larger than maximum allowable; need up to [%td] bytes, but there are only [%td] available\n",
           max_packet_size, *remaining_bytes);
    rc = -22;
    goto out;
  } else {
  }
  tmp = *packet_size;
  *packet_size = *packet_size + 1UL;
  *(dest + tmp) = 1;
  rc = ecryptfs_write_packet_length(dest + *packet_size, max_packet_size - 4UL, & packet_size_length);
  if (rc != 0) {
    __ecryptfs_printk("\v%s: Error generating tag 1 packet header; cannot generate packet length\n",
                      "write_tag_1_packet");
    goto out;
  } else {
  }
  *packet_size = *packet_size + packet_size_length;
  tmp___0 = *packet_size;
  *packet_size = *packet_size + 1UL;
  *(dest + tmp___0) = 3;
  __len___0 = 8UL;
  if (__len___0 > 63UL) {
    __ret___0 = memcpy((void *)(dest + *packet_size), (void const *)(& key_rec->sig),
                         __len___0);
  } else {
    __ret___0 = __builtin_memcpy((void *)(dest + *packet_size), (void const *)(& key_rec->sig),
                                 __len___0);
  }
  *packet_size = *packet_size + 8UL;
  tmp___1 = *packet_size;
  *packet_size = *packet_size + 1UL;
  *(dest + tmp___1) = 1;
  __len___1 = key_rec->enc_key_size;
  __ret___1 = __builtin_memcpy((void *)(dest + *packet_size), (void const *)(& key_rec->enc_key),
                               __len___1);
  *packet_size = *packet_size + key_rec->enc_key_size;
  out: ;
  if (rc != 0) {
    *packet_size = 0UL;
  } else {
    *remaining_bytes = *remaining_bytes - *packet_size;
  }
  return (rc);
}
}
static int write_tag_11_packet(char *dest , size_t *remaining_bytes , char *contents ,
                               size_t contents_length , size_t *packet_length )
{
  size_t packet_size_length ;
  size_t max_packet_size ;
  int rc ;
  size_t tmp ;
  size_t tmp___0 ;
  size_t tmp___1 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  {
  rc = 0;
  *packet_length = 0UL;
  max_packet_size = contents_length + 18UL;
  if (*remaining_bytes < max_packet_size) {
    printk("\vPacket length larger than maximum allowable; need up to [%td] bytes, but there are only [%td] available\n",
           max_packet_size, *remaining_bytes);
    rc = -22;
    goto out;
  } else {
  }
  tmp = *packet_length;
  *packet_length = *packet_length + 1UL;
  *(dest + tmp) = -19;
  rc = ecryptfs_write_packet_length(dest + *packet_length, max_packet_size - 4UL,
                                    & packet_size_length);
  if (rc != 0) {
    printk("\vError generating tag 11 packet header; cannot generate packet length. rc = [%d]\n",
           rc);
    goto out;
  } else {
  }
  *packet_length = *packet_length + packet_size_length;
  tmp___0 = *packet_length;
  *packet_length = *packet_length + 1UL;
  *(dest + tmp___0) = 98;
  tmp___1 = *packet_length;
  *packet_length = *packet_length + 1UL;
  *(dest + tmp___1) = 8;
  __len = 8UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(dest + *packet_length), (void const *)"_CONSOLE",
                     __len);
  } else {
    __ret = __builtin_memcpy((void *)(dest + *packet_length), (void const *)"_CONSOLE",
                             __len);
  }
  *packet_length = *packet_length + 8UL;
  memset((void *)(dest + *packet_length), 0, 4UL);
  *packet_length = *packet_length + 4UL;
  __len___0 = contents_length;
  __ret___0 = __builtin_memcpy((void *)(dest + *packet_length), (void const *)contents,
                               __len___0);
  *packet_length = *packet_length + contents_length;
  out: ;
  if (rc != 0) {
    *packet_length = 0UL;
  } else {
    *remaining_bytes = *remaining_bytes - *packet_length;
  }
  return (rc);
}
}
static int write_tag_3_packet(char *dest , size_t *remaining_bytes , struct ecryptfs_auth_tok *auth_tok ,
                              struct ecryptfs_crypt_stat *crypt_stat , struct ecryptfs_key_record *key_rec ,
                              size_t *packet_size )
{
  size_t i ;
  size_t encrypted_session_key_valid ;
  char session_key_encryption_key[64U] ;
  struct scatterlist dst_sg[2U] ;
  struct scatterlist src_sg[2U] ;
  struct mutex *tfm_mutex ;
  u8 cipher_code ;
  size_t packet_size_length ;
  size_t max_packet_size ;
  struct ecryptfs_mount_crypt_stat *mount_crypt_stat ;
  struct blkcipher_desc desc ;
  int rc ;
  long tmp ;
  struct blkcipher_alg *alg ;
  struct blkcipher_alg *tmp___0 ;
  int tmp___1 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  long tmp___2 ;
  size_t tmp___3 ;
  size_t tmp___4 ;
  size_t tmp___5 ;
  size_t tmp___6 ;
  size_t tmp___7 ;
  size_t __len___1 ;
  void *__ret___1 ;
  size_t tmp___8 ;
  size_t __len___2 ;
  void *__ret___2 ;
  {
  encrypted_session_key_valid = 0UL;
  tfm_mutex = 0;
  mount_crypt_stat = crypt_stat->mount_crypt_stat;
  desc.tfm = 0;
  desc.info = 0;
  desc.flags = 512U;
  rc = 0;
  *packet_size = 0UL;
  ecryptfs_from_hex((char *)(& key_rec->sig), (char *)(& auth_tok->token.password.signature),
                    8);
  rc = ecryptfs_get_tfm_and_mutex_for_cipher_name(& desc.tfm, & tfm_mutex, (char *)(& crypt_stat->cipher));
  tmp = ldv__builtin_expect(rc != 0, 0L);
  if (tmp != 0L) {
    printk("\vInternal error whilst attempting to get tfm and mutex for cipher name [%s]; rc = [%d]\n",
           (unsigned char *)(& crypt_stat->cipher), rc);
    goto out;
  } else {
  }
  if (mount_crypt_stat->global_default_cipher_key_size == 0UL) {
    tmp___0 = crypto_blkcipher_alg(desc.tfm);
    alg = tmp___0;
    printk("\fNo key size specified at mount; defaulting to [%d]\n", alg->max_keysize);
    mount_crypt_stat->global_default_cipher_key_size = (size_t )alg->max_keysize;
  } else {
  }
  if (crypt_stat->key_size == 0UL) {
    crypt_stat->key_size = mount_crypt_stat->global_default_cipher_key_size;
  } else {
  }
  if (auth_tok->session_key.encrypted_key_size == 0U) {
    auth_tok->session_key.encrypted_key_size = (u32 )crypt_stat->key_size;
  } else {
  }
  if (crypt_stat->key_size == 24UL) {
    tmp___1 = strcmp("aes", (char const *)(& crypt_stat->cipher));
    if (tmp___1 == 0) {
      memset((void *)(& crypt_stat->key) + 24U, 0, 8UL);
      auth_tok->session_key.encrypted_key_size = 32U;
    } else {
      auth_tok->session_key.encrypted_key_size = (u32 )crypt_stat->key_size;
    }
  } else {
    auth_tok->session_key.encrypted_key_size = (u32 )crypt_stat->key_size;
  }
  key_rec->enc_key_size = (size_t )auth_tok->session_key.encrypted_key_size;
  encrypted_session_key_valid = 0UL;
  i = 0UL;
  goto ldv_32675;
  ldv_32674:
  encrypted_session_key_valid = (size_t )auth_tok->session_key.encrypted_key[i] | encrypted_session_key_valid;
  i = i + 1UL;
  ldv_32675: ;
  if ((size_t )auth_tok->session_key.encrypted_key_size > i) {
    goto ldv_32674;
  } else {
  }
  if (encrypted_session_key_valid != 0UL) {
    __ecryptfs_printk("\017%s: encrypted_session_key_valid != 0; using auth_tok->session_key.encrypted_key, where key_rec->enc_key_size = [%zd]\n",
                      "write_tag_3_packet", key_rec->enc_key_size);
    __len = key_rec->enc_key_size;
    __ret = __builtin_memcpy((void *)(& key_rec->enc_key), (void const *)(& auth_tok->session_key.encrypted_key),
                             __len);
    goto encrypted_session_key_set;
  } else {
  }
  if ((auth_tok->token.password.flags & 2U) != 0U) {
    __ecryptfs_printk("\017%s: Using previously generated session key encryption key of size [%d]\n",
                      "write_tag_3_packet", auth_tok->token.password.session_key_encryption_key_bytes);
    __len___0 = crypt_stat->key_size;
    __ret___0 = __builtin_memcpy((void *)(& session_key_encryption_key), (void const *)(& auth_tok->token.password.session_key_encryption_key),
                                 __len___0);
    __ecryptfs_printk("\017%s: Cached session key encryption key:\n", "write_tag_3_packet");
    if (ecryptfs_verbosity > 0) {
      ecryptfs_dump_hex((char *)(& session_key_encryption_key), 16);
    } else {
    }
  } else {
  }
  tmp___2 = ldv__builtin_expect(ecryptfs_verbosity > 0, 0L);
  if (tmp___2 != 0L) {
    __ecryptfs_printk("\017%s: Session key encryption key:\n", "write_tag_3_packet");
    ecryptfs_dump_hex((char *)(& session_key_encryption_key), 16);
  } else {
  }
  rc = virt_to_scatterlist((void const *)(& crypt_stat->key), (int )key_rec->enc_key_size,
                           (struct scatterlist *)(& src_sg), 2);
  if (rc <= 0 || rc > 2) {
    __ecryptfs_printk("\v%s: Error generating scatterlist for crypt_stat session key; expected rc = 1; got rc = [%d]. key_rec->enc_key_size = [%zd]\n",
                      "write_tag_3_packet", rc, key_rec->enc_key_size);
    rc = -12;
    goto out;
  } else {
  }
  rc = virt_to_scatterlist((void const *)(& key_rec->enc_key), (int )key_rec->enc_key_size,
                           (struct scatterlist *)(& dst_sg), 2);
  if (rc <= 0 || rc > 2) {
    __ecryptfs_printk("\v%s: Error generating scatterlist for crypt_stat encrypted session key; expected rc = 1; got rc = [%d]. key_rec->enc_key_size = [%zd]\n",
                      "write_tag_3_packet", rc, key_rec->enc_key_size);
    rc = -12;
    goto out;
  } else {
  }
  ldv_mutex_lock_203(tfm_mutex);
  rc = crypto_blkcipher_setkey(desc.tfm, (u8 const *)(& session_key_encryption_key),
                               (unsigned int )crypt_stat->key_size);
  if (rc < 0) {
    ldv_mutex_unlock_204(tfm_mutex);
    __ecryptfs_printk("\v%s: Error setting key for crypto context; rc = [%d]\n", "write_tag_3_packet",
                      rc);
    goto out;
  } else {
  }
  rc = 0;
  __ecryptfs_printk("\017%s: Encrypting [%zd] bytes of the key\n", "write_tag_3_packet",
                    crypt_stat->key_size);
  rc = crypto_blkcipher_encrypt(& desc, (struct scatterlist *)(& dst_sg), (struct scatterlist *)(& src_sg),
                                (unsigned int )key_rec->enc_key_size);
  ldv_mutex_unlock_205(tfm_mutex);
  if (rc != 0) {
    printk("\vError encrypting; rc = [%d]\n", rc);
    goto out;
  } else {
  }
  __ecryptfs_printk("\017%s: This should be the encrypted key:\n", "write_tag_3_packet");
  if (ecryptfs_verbosity > 0) {
    __ecryptfs_printk("\017%s: EFEK of size [%zd]:\n", "write_tag_3_packet", key_rec->enc_key_size);
    ecryptfs_dump_hex((char *)(& key_rec->enc_key), (int )key_rec->enc_key_size);
  } else {
  }
  encrypted_session_key_set:
  max_packet_size = key_rec->enc_key_size + 17UL;
  if (*remaining_bytes < max_packet_size) {
    printk("\vPacket too large; need up to [%td] bytes, but there are only [%td] available\n",
           max_packet_size, *remaining_bytes);
    rc = -22;
    goto out;
  } else {
  }
  tmp___3 = *packet_size;
  *packet_size = *packet_size + 1UL;
  *(dest + tmp___3) = -116;
  rc = ecryptfs_write_packet_length(dest + *packet_size, max_packet_size - 4UL, & packet_size_length);
  if (rc != 0) {
    printk("\vError generating tag 3 packet header; cannot generate packet length. rc = [%d]\n",
           rc);
    goto out;
  } else {
  }
  *packet_size = *packet_size + packet_size_length;
  tmp___4 = *packet_size;
  *packet_size = *packet_size + 1UL;
  *(dest + tmp___4) = 4;
  cipher_code = ecryptfs_code_for_cipher_string((char *)(& crypt_stat->cipher), crypt_stat->key_size);
  if ((unsigned int )cipher_code == 0U) {
    __ecryptfs_printk("\f%s: Unable to generate code for cipher [%s]\n", "write_tag_3_packet",
                      (unsigned char *)(& crypt_stat->cipher));
    rc = -22;
    goto out;
  } else {
  }
  tmp___5 = *packet_size;
  *packet_size = *packet_size + 1UL;
  *(dest + tmp___5) = (char )cipher_code;
  tmp___6 = *packet_size;
  *packet_size = *packet_size + 1UL;
  *(dest + tmp___6) = 3;
  tmp___7 = *packet_size;
  *packet_size = *packet_size + 1UL;
  *(dest + tmp___7) = 1;
  __len___1 = 8UL;
  if (__len___1 > 63UL) {
    __ret___1 = memcpy((void *)(dest + *packet_size), (void const *)(& auth_tok->token.password.salt),
                         __len___1);
  } else {
    __ret___1 = __builtin_memcpy((void *)(dest + *packet_size), (void const *)(& auth_tok->token.password.salt),
                                 __len___1);
  }
  *packet_size = *packet_size + 8UL;
  tmp___8 = *packet_size;
  *packet_size = *packet_size + 1UL;
  *(dest + tmp___8) = 96;
  __len___2 = key_rec->enc_key_size;
  __ret___2 = __builtin_memcpy((void *)(dest + *packet_size), (void const *)(& key_rec->enc_key),
                               __len___2);
  *packet_size = *packet_size + key_rec->enc_key_size;
  out: ;
  if (rc != 0) {
    *packet_size = 0UL;
  } else {
    *remaining_bytes = *remaining_bytes - *packet_size;
  }
  return (rc);
}
}
int ecryptfs_generate_key_packet_set(char *dest_base , struct ecryptfs_crypt_stat *crypt_stat ,
                                     struct dentry *ecryptfs_dentry , size_t *len ,
                                     size_t max )
{
  struct ecryptfs_auth_tok *auth_tok ;
  struct key *auth_tok_key ;
  struct ecryptfs_mount_crypt_stat *mount_crypt_stat ;
  struct ecryptfs_sb_info *tmp ;
  size_t written ;
  struct ecryptfs_key_record *key_rec ;
  struct ecryptfs_key_sig *key_sig ;
  int rc ;
  void *tmp___0 ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  long tmp___1 ;
  {
  auth_tok_key = 0;
  tmp = ecryptfs_superblock_to_private(ecryptfs_dentry->d_sb);
  mount_crypt_stat = & tmp->mount_crypt_stat;
  rc = 0;
  *len = 0UL;
  ldv_mutex_lock_206(& crypt_stat->keysig_list_mutex);
  tmp___0 = kmem_cache_alloc(ecryptfs_key_record_cache, 208U);
  key_rec = (struct ecryptfs_key_record *)tmp___0;
  if ((unsigned long )key_rec == (unsigned long )((struct ecryptfs_key_record *)0)) {
    rc = -12;
    goto out;
  } else {
  }
  __mptr = (struct list_head const *)crypt_stat->keysig_list.next;
  key_sig = (struct ecryptfs_key_sig *)__mptr;
  goto ldv_32714;
  ldv_32713:
  memset((void *)key_rec, 0, 536UL);
  rc = ecryptfs_find_global_auth_tok_for_sig(& auth_tok_key, & auth_tok, mount_crypt_stat,
                                             (char *)(& key_sig->keysig));
  if (rc != 0) {
    printk("\fUnable to retrieve auth tok with sig = [%s]\n", (char *)(& key_sig->keysig));
    rc = process_find_global_auth_tok_for_sig_err(rc);
    goto out_free;
  } else {
  }
  if ((unsigned int )auth_tok->token_type == 0U) {
    rc = write_tag_3_packet(dest_base + *len, & max, auth_tok, crypt_stat, key_rec,
                            & written);
    up_write(& auth_tok_key->sem);
    key_put(auth_tok_key);
    if (rc != 0) {
      __ecryptfs_printk("\f%s: Error writing tag 3 packet\n", "ecryptfs_generate_key_packet_set");
      goto out_free;
    } else {
    }
    *len = *len + written;
    rc = write_tag_11_packet(dest_base + *len, & max, (char *)(& key_rec->sig), 8UL,
                             & written);
    if (rc != 0) {
      __ecryptfs_printk("\v%s: Error writing auth tok signature packet\n", "ecryptfs_generate_key_packet_set");
      goto out_free;
    } else {
    }
    *len = *len + written;
  } else
  if ((unsigned int )auth_tok->token_type == 1U) {
    rc = write_tag_1_packet(dest_base + *len, & max, auth_tok_key, auth_tok, crypt_stat,
                            key_rec, & written);
    if (rc != 0) {
      __ecryptfs_printk("\f%s: Error writing tag 1 packet\n", "ecryptfs_generate_key_packet_set");
      goto out_free;
    } else {
    }
    *len = *len + written;
  } else {
    up_write(& auth_tok_key->sem);
    key_put(auth_tok_key);
    __ecryptfs_printk("\f%s: Unsupported authentication token type\n", "ecryptfs_generate_key_packet_set");
    rc = -22;
    goto out_free;
  }
  __mptr___0 = (struct list_head const *)key_sig->crypt_stat_list.next;
  key_sig = (struct ecryptfs_key_sig *)__mptr___0;
  ldv_32714: ;
  if ((unsigned long )(& key_sig->crypt_stat_list) != (unsigned long )(& crypt_stat->keysig_list)) {
    goto ldv_32713;
  } else {
  }
  tmp___1 = ldv__builtin_expect(max != 0UL, 1L);
  if (tmp___1 != 0L) {
    *(dest_base + *len) = 0;
  } else {
    __ecryptfs_printk("\v%s: Error writing boundary byte\n", "ecryptfs_generate_key_packet_set");
    rc = -5;
  }
  out_free:
  kmem_cache_free(ecryptfs_key_record_cache, (void *)key_rec);
  out: ;
  if (rc != 0) {
    *len = 0UL;
  } else {
  }
  ldv_mutex_unlock_207(& crypt_stat->keysig_list_mutex);
  return (rc);
}
}
int ecryptfs_add_keysig(struct ecryptfs_crypt_stat *crypt_stat , char *sig )
{
  struct ecryptfs_key_sig *new_key_sig ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  {
  tmp = kmem_cache_alloc(ecryptfs_key_sig_cache, 208U);
  new_key_sig = (struct ecryptfs_key_sig *)tmp;
  if ((unsigned long )new_key_sig == (unsigned long )((struct ecryptfs_key_sig *)0)) {
    printk("\vError allocating from ecryptfs_key_sig_cache\n");
    return (-12);
  } else {
  }
  __len = 16UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& new_key_sig->keysig), (void const *)sig, __len);
  } else {
    __ret = __builtin_memcpy((void *)(& new_key_sig->keysig), (void const *)sig,
                             __len);
  }
  new_key_sig->keysig[16] = 0;
  list_add(& new_key_sig->crypt_stat_list, & crypt_stat->keysig_list);
  return (0);
}
}
int ecryptfs_add_global_auth_tok(struct ecryptfs_mount_crypt_stat *mount_crypt_stat ,
                                 char *sig , u32 global_auth_tok_flags )
{
  struct ecryptfs_global_auth_tok *new_auth_tok ;
  int rc ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  {
  rc = 0;
  tmp = kmem_cache_zalloc(ecryptfs_global_auth_tok_cache, 208U);
  new_auth_tok = (struct ecryptfs_global_auth_tok *)tmp;
  if ((unsigned long )new_auth_tok == (unsigned long )((struct ecryptfs_global_auth_tok *)0)) {
    rc = -12;
    printk("\vError allocating from ecryptfs_global_auth_tok_cache\n");
    goto out;
  } else {
  }
  __len = 16UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& new_auth_tok->sig), (void const *)sig, __len);
  } else {
    __ret = __builtin_memcpy((void *)(& new_auth_tok->sig), (void const *)sig, __len);
  }
  new_auth_tok->flags = global_auth_tok_flags;
  new_auth_tok->sig[16] = 0U;
  ldv_mutex_lock_208(& mount_crypt_stat->global_auth_tok_list_mutex);
  list_add(& new_auth_tok->mount_crypt_stat_list, & mount_crypt_stat->global_auth_tok_list);
  ldv_mutex_unlock_209(& mount_crypt_stat->global_auth_tok_list_mutex);
  out: ;
  return (rc);
}
}
void ldv_main8_sequence_infinite_withcheck_stateful(void)
{
  int tmp ;
  int tmp___0 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_32756;
  ldv_32755:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  default: ;
  goto ldv_32754;
  }
  ldv_32754: ;
  ldv_32756:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    goto ldv_32755;
  } else {
  }
  ldv_check_final_state();
  return;
}
}
void ldv_mutex_lock_187(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_188(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_189(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_190(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_191(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_192(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___4 ldv_func_res ;
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
void ldv_mutex_unlock_193(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_194(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_global_auth_tok_list_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_195(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_global_auth_tok_list_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_196(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_tfm_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_197(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tfm_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_198(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_tfm_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_199(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tfm_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_200(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_tfm_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_201(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tfm_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_202(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tfm_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_203(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_tfm_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_204(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tfm_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_205(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tfm_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_206(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_keysig_list_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_207(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_keysig_list_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_208(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_global_auth_tok_list_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_209(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_global_auth_tok_list_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
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
__inline static void list_move(struct list_head *list , struct list_head *head )
{
  {
  __list_del_entry(list);
  list_add(list, head);
  return;
}
}
__inline static void __hlist_del(struct hlist_node *n )
{
  struct hlist_node *next ;
  struct hlist_node **pprev ;
  {
  next = n->next;
  pprev = n->pprev;
  *pprev = next;
  if ((unsigned long )next != (unsigned long )((struct hlist_node *)0)) {
    next->pprev = pprev;
  } else {
  }
  return;
}
}
__inline static void hlist_del(struct hlist_node *n )
{
  {
  __hlist_del(n);
  n->next = 0xdead000000100100UL;
  n->pprev = 0xdead000000200200UL;
  return;
}
}
__inline static void hlist_add_head(struct hlist_node *n , struct hlist_head *h )
{
  struct hlist_node *first ;
  {
  first = h->first;
  n->next = first;
  if ((unsigned long )first != (unsigned long )((struct hlist_node *)0)) {
    first->pprev = & n->next;
  } else {
  }
  h->first = n;
  n->pprev = & h->first;
  return;
}
}
int ldv_mutex_trylock_237(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_234(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_236(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_239(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_240(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_242(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_244(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_245(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_246(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_248(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_251(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_252(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_253(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_254(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_256(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_257(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_260(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_261(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_264(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_265(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_267(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_233(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_235(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_238(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_241(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_243(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_247(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_249(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_250(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_255(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_258(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_259(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_262(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_263(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_266(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_ecryptfs_daemon_hash_mux(struct mutex *lock ) ;
void ldv_mutex_unlock_ecryptfs_daemon_hash_mux(struct mutex *lock ) ;
void ldv_mutex_lock_ecryptfs_msg_ctx_lists_mux(struct mutex *lock ) ;
void ldv_mutex_unlock_ecryptfs_msg_ctx_lists_mux(struct mutex *lock ) ;
void ldv_mutex_lock_mux(struct mutex *lock ) ;
int ldv_mutex_trylock_mux(struct mutex *lock ) ;
void ldv_mutex_unlock_mux(struct mutex *lock ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern long schedule_timeout_interruptible(long ) ;
extern int wake_up_process(struct task_struct * ) ;
__inline static u64 hash_64(u64 val , unsigned int bits )
{
  u64 hash ;
  u64 n ;
  {
  hash = val;
  n = hash;
  n = n << 18;
  hash = hash - n;
  n = n << 33;
  hash = hash - n;
  n = n << 3;
  hash = hash + n;
  n = n << 3;
  hash = hash - n;
  n = n << 4;
  hash = hash + n;
  n = n << 2;
  hash = hash + n;
  return (hash >> (int )(64U - bits));
}
}
struct mutex ecryptfs_daemon_hash_mux ;
int ecryptfs_process_response(struct ecryptfs_daemon *daemon , struct ecryptfs_message *msg ,
                              u32 seq ) ;
int ecryptfs_exorcise_daemon(struct ecryptfs_daemon *daemon ) ;
int ecryptfs_find_daemon_by_euid(struct ecryptfs_daemon **daemon ) ;
int ecryptfs_init_ecryptfs_miscdev(void) ;
void ecryptfs_destroy_ecryptfs_miscdev(void) ;
int ecryptfs_send_miscdev(char *data , size_t data_size , struct ecryptfs_msg_ctx *msg_ctx ,
                          u8 msg_type , u16 msg_flags , struct ecryptfs_daemon *daemon ) ;
void ecryptfs_msg_ctx_alloc_to_free(struct ecryptfs_msg_ctx *msg_ctx ) ;
int ecryptfs_spawn_daemon(struct ecryptfs_daemon **daemon , struct file *file ) ;
static struct list_head ecryptfs_msg_ctx_free_list = {& ecryptfs_msg_ctx_free_list, & ecryptfs_msg_ctx_free_list};
static struct list_head ecryptfs_msg_ctx_alloc_list = {& ecryptfs_msg_ctx_alloc_list, & ecryptfs_msg_ctx_alloc_list};
static struct mutex ecryptfs_msg_ctx_lists_mux ;
static struct hlist_head *ecryptfs_daemon_hash ;
static int ecryptfs_hash_bits ;
static u32 ecryptfs_msg_counter ;
static struct ecryptfs_msg_ctx *ecryptfs_msg_ctx_arr ;
static int ecryptfs_acquire_free_msg_ctx(struct ecryptfs_msg_ctx **msg_ctx )
{
  struct list_head *p ;
  int rc ;
  int tmp ;
  struct list_head const *__mptr ;
  int tmp___0 ;
  {
  tmp = list_empty((struct list_head const *)(& ecryptfs_msg_ctx_free_list));
  if (tmp != 0) {
    printk("\f%s: The eCryptfs free context list is empty.  It may be helpful to specify the ecryptfs_message_buf_len parameter to be greater than the current value of [%d]\n",
           "ecryptfs_acquire_free_msg_ctx", ecryptfs_message_buf_len);
    rc = -12;
    goto out;
  } else {
  }
  p = ecryptfs_msg_ctx_free_list.next;
  goto ldv_24775;
  ldv_24774:
  __mptr = (struct list_head const *)p;
  *msg_ctx = (struct ecryptfs_msg_ctx *)__mptr + 0xffffffffffffffd8UL;
  tmp___0 = ldv_mutex_trylock_237(& (*msg_ctx)->mux);
  if (tmp___0 != 0) {
    (*msg_ctx)->task = get_current();
    rc = 0;
    goto out;
  } else {
  }
  p = p->next;
  ldv_24775: ;
  if ((unsigned long )p != (unsigned long )(& ecryptfs_msg_ctx_free_list)) {
    goto ldv_24774;
  } else {
  }
  rc = -12;
  out: ;
  return (rc);
}
}
static void ecryptfs_msg_ctx_free_to_alloc(struct ecryptfs_msg_ctx *msg_ctx )
{
  {
  list_move(& msg_ctx->node, & ecryptfs_msg_ctx_alloc_list);
  msg_ctx->state = 2U;
  ecryptfs_msg_counter = ecryptfs_msg_counter + 1U;
  msg_ctx->counter = ecryptfs_msg_counter;
  return;
}
}
void ecryptfs_msg_ctx_alloc_to_free(struct ecryptfs_msg_ctx *msg_ctx )
{
  {
  list_move(& msg_ctx->node, & ecryptfs_msg_ctx_free_list);
  if ((unsigned long )msg_ctx->msg != (unsigned long )((struct ecryptfs_message *)0)) {
    kfree((void const *)msg_ctx->msg);
  } else {
  }
  msg_ctx->msg = 0;
  msg_ctx->state = 1U;
  return;
}
}
int ecryptfs_find_daemon_by_euid(struct ecryptfs_daemon **daemon )
{
  struct hlist_node *elem ;
  int rc ;
  int tmp ;
  struct task_struct *tmp___0 ;
  uid_t tmp___1 ;
  u64 tmp___2 ;
  int tmp___3 ;
  struct task_struct *tmp___4 ;
  bool tmp___5 ;
  struct hlist_node const *__mptr ;
  {
  tmp = debug_lockdep_rcu_enabled();
  tmp___0 = get_current();
  tmp___1 = from_kuid(& init_user_ns, (tmp___0->cred)->euid);
  tmp___2 = hash_64((u64 )tmp___1, (unsigned int )ecryptfs_hash_bits);
  elem = (ecryptfs_daemon_hash + tmp___2)->first;
  goto ldv_24797;
  ldv_24796:
  tmp___3 = debug_lockdep_rcu_enabled();
  tmp___4 = get_current();
  tmp___5 = uid_eq((((*daemon)->file)->f_cred)->euid, (tmp___4->cred)->euid);
  if ((int )tmp___5) {
    rc = 0;
    goto out;
  } else {
  }
  elem = elem->next;
  ldv_24797: ;
  if ((unsigned long )elem != (unsigned long )((struct hlist_node *)0)) {
    __mptr = (struct hlist_node const *)elem;
    *daemon = (struct ecryptfs_daemon *)__mptr + 0xfffffffffffffee0UL;
    goto ldv_24796;
  } else {
  }
  rc = -22;
  out: ;
  return (rc);
}
}
int ecryptfs_spawn_daemon(struct ecryptfs_daemon **daemon , struct file *file )
{
  int rc ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  int tmp___0 ;
  struct task_struct *tmp___1 ;
  uid_t tmp___2 ;
  u64 tmp___3 ;
  {
  rc = 0;
  tmp = kzalloc(304UL, 208U);
  *daemon = (struct ecryptfs_daemon *)tmp;
  if ((unsigned long )*daemon == (unsigned long )((struct ecryptfs_daemon *)0)) {
    rc = -12;
    printk("\v%s: Failed to allocate [%zd] bytes of GFP_KERNEL memory\n", "ecryptfs_spawn_daemon",
           304UL);
    goto out;
  } else {
  }
  (*daemon)->file = file;
  __mutex_init(& (*daemon)->mux, "&(*daemon)->mux", & __key);
  INIT_LIST_HEAD(& (*daemon)->msg_ctx_out_queue);
  __init_waitqueue_head(& (*daemon)->wait, "&(*daemon)->wait", & __key___0);
  (*daemon)->num_queued_msg_ctx = 0U;
  tmp___0 = debug_lockdep_rcu_enabled();
  tmp___1 = get_current();
  tmp___2 = from_kuid(& init_user_ns, (tmp___1->cred)->euid);
  tmp___3 = hash_64((u64 )tmp___2, (unsigned int )ecryptfs_hash_bits);
  hlist_add_head(& (*daemon)->euid_chain, ecryptfs_daemon_hash + tmp___3);
  out: ;
  return (rc);
}
}
int ecryptfs_exorcise_daemon(struct ecryptfs_daemon *daemon )
{
  struct ecryptfs_msg_ctx *msg_ctx ;
  struct ecryptfs_msg_ctx *msg_ctx_tmp ;
  int rc ;
  struct list_head const *__mptr ;
  struct list_head const *__mptr___0 ;
  struct list_head const *__mptr___1 ;
  {
  rc = 0;
  ldv_mutex_lock_238(& daemon->mux);
  if ((int )daemon->flags & 1 || (daemon->flags & 2U) != 0U) {
    rc = -16;
    ldv_mutex_unlock_239(& daemon->mux);
    goto out;
  } else {
  }
  __mptr = (struct list_head const *)daemon->msg_ctx_out_queue.next;
  msg_ctx = (struct ecryptfs_msg_ctx *)__mptr + 0xffffffffffffffc8UL;
  __mptr___0 = (struct list_head const *)msg_ctx->daemon_out_list.next;
  msg_ctx_tmp = (struct ecryptfs_msg_ctx *)__mptr___0 + 0xffffffffffffffc8UL;
  goto ldv_24825;
  ldv_24824:
  list_del(& msg_ctx->daemon_out_list);
  daemon->num_queued_msg_ctx = daemon->num_queued_msg_ctx - 1U;
  printk("\f%s: Warning: dropping message that is in the out queue of a dying daemon\n",
         "ecryptfs_exorcise_daemon");
  ecryptfs_msg_ctx_alloc_to_free(msg_ctx);
  msg_ctx = msg_ctx_tmp;
  __mptr___1 = (struct list_head const *)msg_ctx_tmp->daemon_out_list.next;
  msg_ctx_tmp = (struct ecryptfs_msg_ctx *)__mptr___1 + 0xffffffffffffffc8UL;
  ldv_24825: ;
  if ((unsigned long )(& msg_ctx->daemon_out_list) != (unsigned long )(& daemon->msg_ctx_out_queue)) {
    goto ldv_24824;
  } else {
  }
  hlist_del(& daemon->euid_chain);
  ldv_mutex_unlock_240(& daemon->mux);
  kzfree((void const *)daemon);
  out: ;
  return (rc);
}
}
int ecryptfs_process_response(struct ecryptfs_daemon *daemon , struct ecryptfs_message *msg ,
                              u32 seq )
{
  struct ecryptfs_msg_ctx *msg_ctx ;
  size_t msg_size ;
  int rc ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  {
  if (msg->index >= ecryptfs_message_buf_len) {
    rc = -22;
    printk("\v%s: Attempt to reference context buffer at index [%d]; maximum allowable is [%d]\n",
           "ecryptfs_process_response", msg->index, ecryptfs_message_buf_len - 1U);
    goto out;
  } else {
  }
  msg_ctx = ecryptfs_msg_ctx_arr + (unsigned long )msg->index;
  ldv_mutex_lock_241(& msg_ctx->mux);
  if ((unsigned int )msg_ctx->state != 2U) {
    rc = -22;
    printk("\f%s: Desired context element is not pending a response\n", "ecryptfs_process_response");
    goto unlock;
  } else
  if (msg_ctx->counter != seq) {
    rc = -22;
    printk("\f%s: Invalid message sequence; expected [%d]; received [%d]\n", "ecryptfs_process_response",
           msg_ctx->counter, seq);
    goto unlock;
  } else {
  }
  msg_size = (unsigned long )msg->data_len + 8UL;
  tmp = kmalloc(msg_size, 208U);
  msg_ctx->msg = (struct ecryptfs_message *)tmp;
  if ((unsigned long )msg_ctx->msg == (unsigned long )((struct ecryptfs_message *)0)) {
    rc = -12;
    printk("\v%s: Failed to allocate [%zd] bytes of GFP_KERNEL memory\n", "ecryptfs_process_response",
           msg_size);
    goto unlock;
  } else {
  }
  __len = msg_size;
  __ret = __builtin_memcpy((void *)msg_ctx->msg, (void const *)msg, __len);
  msg_ctx->state = 3U;
  wake_up_process(msg_ctx->task);
  rc = 0;
  unlock:
  ldv_mutex_unlock_242(& msg_ctx->mux);
  out: ;
  return (rc);
}
}
static int ecryptfs_send_message_locked(char *data , int data_len , u8 msg_type ,
                                        struct ecryptfs_msg_ctx **msg_ctx )
{
  struct ecryptfs_daemon *daemon ;
  int rc ;
  {
  rc = ecryptfs_find_daemon_by_euid(& daemon);
  if (rc != 0 || (unsigned long )daemon == (unsigned long )((struct ecryptfs_daemon *)0)) {
    rc = -107;
    goto out;
  } else {
  }
  ldv_mutex_lock_243(& ecryptfs_msg_ctx_lists_mux);
  rc = ecryptfs_acquire_free_msg_ctx(msg_ctx);
  if (rc != 0) {
    ldv_mutex_unlock_244(& ecryptfs_msg_ctx_lists_mux);
    printk("\f%s: Could not claim a free context element\n", "ecryptfs_send_message_locked");
    goto out;
  } else {
  }
  ecryptfs_msg_ctx_free_to_alloc(*msg_ctx);
  ldv_mutex_unlock_245(& (*msg_ctx)->mux);
  ldv_mutex_unlock_246(& ecryptfs_msg_ctx_lists_mux);
  rc = ecryptfs_send_miscdev(data, (size_t )data_len, *msg_ctx, (int )msg_type, 0,
                             daemon);
  if (rc != 0) {
    printk("\v%s: Error attempting to send message to userspace daemon; rc = [%d]\n",
           "ecryptfs_send_message_locked", rc);
  } else {
  }
  out: ;
  return (rc);
}
}
int ecryptfs_send_message(char *data , int data_len , struct ecryptfs_msg_ctx **msg_ctx )
{
  int rc ;
  {
  ldv_mutex_lock_247(& ecryptfs_daemon_hash_mux);
  rc = ecryptfs_send_message_locked(data, data_len, 102, msg_ctx);
  ldv_mutex_unlock_248(& ecryptfs_daemon_hash_mux);
  return (rc);
}
}
int ecryptfs_wait_for_response(struct ecryptfs_msg_ctx *msg_ctx , struct ecryptfs_message **msg )
{
  long timeout ;
  int rc ;
  {
  timeout = ecryptfs_message_wait_timeout * 250L;
  rc = 0;
  sleep:
  timeout = schedule_timeout_interruptible(timeout);
  ldv_mutex_lock_249(& ecryptfs_msg_ctx_lists_mux);
  ldv_mutex_lock_250(& msg_ctx->mux);
  if ((unsigned int )msg_ctx->state != 3U) {
    if (timeout != 0L) {
      ldv_mutex_unlock_251(& msg_ctx->mux);
      ldv_mutex_unlock_252(& ecryptfs_msg_ctx_lists_mux);
      goto sleep;
    } else {
    }
    rc = -42;
  } else {
    *msg = msg_ctx->msg;
    msg_ctx->msg = 0;
  }
  ecryptfs_msg_ctx_alloc_to_free(msg_ctx);
  ldv_mutex_unlock_253(& msg_ctx->mux);
  ldv_mutex_unlock_254(& ecryptfs_msg_ctx_lists_mux);
  return (rc);
}
}
int ecryptfs_init_messaging(void)
{
  int i ;
  int rc ;
  struct lock_class_key __key ;
  void *tmp ;
  void *tmp___0 ;
  struct lock_class_key __key___0 ;
  struct lock_class_key __key___1 ;
  {
  rc = 0;
  if (ecryptfs_number_of_users > 32768U) {
    ecryptfs_number_of_users = 32768U;
    printk("\f%s: Specified number of users is too large, defaulting to [%d] users\n",
           "ecryptfs_init_messaging", ecryptfs_number_of_users);
  } else {
  }
  __mutex_init(& ecryptfs_daemon_hash_mux, "&ecryptfs_daemon_hash_mux", & __key);
  ldv_mutex_lock_255(& ecryptfs_daemon_hash_mux);
  ecryptfs_hash_bits = 1;
  goto ldv_24872;
  ldv_24871:
  ecryptfs_hash_bits = ecryptfs_hash_bits + 1;
  ldv_24872: ;
  if (ecryptfs_number_of_users >> ecryptfs_hash_bits != 0U) {
    goto ldv_24871;
  } else {
  }
  tmp = kmalloc((unsigned long )(1 << ecryptfs_hash_bits) * 8UL, 208U);
  ecryptfs_daemon_hash = (struct hlist_head *)tmp;
  if ((unsigned long )ecryptfs_daemon_hash == (unsigned long )((struct hlist_head *)0)) {
    rc = -12;
    printk("\v%s: Failed to allocate memory\n", "ecryptfs_init_messaging");
    ldv_mutex_unlock_256(& ecryptfs_daemon_hash_mux);
    goto out;
  } else {
  }
  i = 0;
  goto ldv_24876;
  ldv_24875:
  (ecryptfs_daemon_hash + (unsigned long )i)->first = 0;
  i = i + 1;
  ldv_24876: ;
  if (1 << ecryptfs_hash_bits > i) {
    goto ldv_24875;
  } else {
  }
  ldv_mutex_unlock_257(& ecryptfs_daemon_hash_mux);
  tmp___0 = kmalloc((unsigned long )ecryptfs_message_buf_len * 240UL, 208U);
  ecryptfs_msg_ctx_arr = (struct ecryptfs_msg_ctx *)tmp___0;
  if ((unsigned long )ecryptfs_msg_ctx_arr == (unsigned long )((struct ecryptfs_msg_ctx *)0)) {
    rc = -12;
    printk("\v%s: Failed to allocate memory\n", "ecryptfs_init_messaging");
    goto out;
  } else {
  }
  __mutex_init(& ecryptfs_msg_ctx_lists_mux, "&ecryptfs_msg_ctx_lists_mux", & __key___0);
  ldv_mutex_lock_258(& ecryptfs_msg_ctx_lists_mux);
  ecryptfs_msg_counter = 0U;
  i = 0;
  goto ldv_24881;
  ldv_24880:
  INIT_LIST_HEAD(& (ecryptfs_msg_ctx_arr + (unsigned long )i)->node);
  INIT_LIST_HEAD(& (ecryptfs_msg_ctx_arr + (unsigned long )i)->daemon_out_list);
  __mutex_init(& (ecryptfs_msg_ctx_arr + (unsigned long )i)->mux, "&ecryptfs_msg_ctx_arr[i].mux",
               & __key___1);
  ldv_mutex_lock_259(& (ecryptfs_msg_ctx_arr + (unsigned long )i)->mux);
  (ecryptfs_msg_ctx_arr + (unsigned long )i)->index = (u32 )i;
  (ecryptfs_msg_ctx_arr + (unsigned long )i)->state = 1U;
  (ecryptfs_msg_ctx_arr + (unsigned long )i)->counter = 0U;
  (ecryptfs_msg_ctx_arr + (unsigned long )i)->task = 0;
  (ecryptfs_msg_ctx_arr + (unsigned long )i)->msg = 0;
  list_add_tail(& (ecryptfs_msg_ctx_arr + (unsigned long )i)->node, & ecryptfs_msg_ctx_free_list);
  ldv_mutex_unlock_260(& (ecryptfs_msg_ctx_arr + (unsigned long )i)->mux);
  i = i + 1;
  ldv_24881: ;
  if ((unsigned int )i < ecryptfs_message_buf_len) {
    goto ldv_24880;
  } else {
  }
  ldv_mutex_unlock_261(& ecryptfs_msg_ctx_lists_mux);
  rc = ecryptfs_init_ecryptfs_miscdev();
  if (rc != 0) {
    ecryptfs_release_messaging();
  } else {
  }
  out: ;
  return (rc);
}
}
void ecryptfs_release_messaging(void)
{
  int i ;
  struct hlist_node *elem ;
  struct ecryptfs_daemon *daemon ;
  int i___0 ;
  int rc ;
  struct hlist_node const *__mptr ;
  {
  if ((unsigned long )ecryptfs_msg_ctx_arr != (unsigned long )((struct ecryptfs_msg_ctx *)0)) {
    ldv_mutex_lock_262(& ecryptfs_msg_ctx_lists_mux);
    i = 0;
    goto ldv_24888;
    ldv_24887:
    ldv_mutex_lock_263(& (ecryptfs_msg_ctx_arr + (unsigned long )i)->mux);
    if ((unsigned long )(ecryptfs_msg_ctx_arr + (unsigned long )i)->msg != (unsigned long )((struct ecryptfs_message *)0)) {
      kfree((void const *)(ecryptfs_msg_ctx_arr + (unsigned long )i)->msg);
    } else {
    }
    ldv_mutex_unlock_264(& (ecryptfs_msg_ctx_arr + (unsigned long )i)->mux);
    i = i + 1;
    ldv_24888: ;
    if ((unsigned int )i < ecryptfs_message_buf_len) {
      goto ldv_24887;
    } else {
    }
    kfree((void const *)ecryptfs_msg_ctx_arr);
    ldv_mutex_unlock_265(& ecryptfs_msg_ctx_lists_mux);
  } else {
  }
  if ((unsigned long )ecryptfs_daemon_hash != (unsigned long )((struct hlist_head *)0)) {
    ldv_mutex_lock_266(& ecryptfs_daemon_hash_mux);
    i___0 = 0;
    goto ldv_24902;
    ldv_24901:
    elem = (ecryptfs_daemon_hash + (unsigned long )i___0)->first;
    goto ldv_24899;
    ldv_24898:
    rc = ecryptfs_exorcise_daemon(daemon);
    if (rc != 0) {
      printk("\v%s: Error whilst attempting to destroy daemon; rc = [%d]. Dazed and confused, but trying to continue.\n",
             "ecryptfs_release_messaging", rc);
    } else {
    }
    elem = elem->next;
    ldv_24899: ;
    if ((unsigned long )elem != (unsigned long )((struct hlist_node *)0)) {
      __mptr = (struct hlist_node const *)elem;
      daemon = (struct ecryptfs_daemon *)__mptr + 0xfffffffffffffee0UL;
      goto ldv_24898;
    } else {
    }
    i___0 = i___0 + 1;
    ldv_24902: ;
    if (1 << ecryptfs_hash_bits > i___0) {
      goto ldv_24901;
    } else {
    }
    kfree((void const *)ecryptfs_daemon_hash);
    ldv_mutex_unlock_267(& ecryptfs_daemon_hash_mux);
  } else {
  }
  ecryptfs_destroy_ecryptfs_miscdev();
  return;
}
}
void ldv_mutex_lock_233(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_234(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_235(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_236(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_237(struct mutex *ldv_func_arg1 )
{
  ldv_func_ret_type___3 ldv_func_res ;
  int tmp ;
  int tmp___0 ;
  {
  tmp = mutex_trylock(ldv_func_arg1);
  ldv_func_res = tmp;
  tmp___0 = ldv_mutex_trylock_mux(ldv_func_arg1);
  return (tmp___0);
  return (ldv_func_res);
}
}
void ldv_mutex_lock_238(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_239(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_240(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_241(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_242(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_243(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ecryptfs_msg_ctx_lists_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_244(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ecryptfs_msg_ctx_lists_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_245(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_246(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ecryptfs_msg_ctx_lists_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_247(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ecryptfs_daemon_hash_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_248(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ecryptfs_daemon_hash_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_249(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ecryptfs_msg_ctx_lists_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_250(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_251(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_252(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ecryptfs_msg_ctx_lists_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_253(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_254(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ecryptfs_msg_ctx_lists_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_255(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ecryptfs_daemon_hash_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_256(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ecryptfs_daemon_hash_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_257(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ecryptfs_daemon_hash_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_258(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ecryptfs_msg_ctx_lists_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_259(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_260(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_261(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ecryptfs_msg_ctx_lists_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_262(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ecryptfs_msg_ctx_lists_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_263(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_264(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_265(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ecryptfs_msg_ctx_lists_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_266(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ecryptfs_daemon_hash_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_267(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ecryptfs_daemon_hash_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern void might_fault(void) ;
extern void *memdup_user(void const * , size_t ) ;
extern void warn_slowpath_fmt(char const * , int const , char const * , ...) ;
__inline static void atomic_dec(atomic_t *v )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0": "+m" (v->counter));
  return;
}
}
void ldv_mutex_unlock_304(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_306(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_308(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_310(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_313(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_314(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_316(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_318(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_320(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_322(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_324(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_327(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_328(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_303(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_305(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_307(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_309(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_311(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_312(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_315(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_317(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_319(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_321(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_323(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_325(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_326(struct mutex *ldv_func_arg1 ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void prepare_to_wait(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int autoremove_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
extern loff_t noop_llseek(struct file * , loff_t , int ) ;
extern int misc_register(struct miscdevice * ) ;
extern int misc_deregister(struct miscdevice * ) ;
extern unsigned long _copy_to_user(void * , void const * , unsigned int ) ;
extern unsigned long _copy_from_user(void * , void const * , unsigned int ) ;
__inline static unsigned long copy_from_user(void *to , void const *from , unsigned long n )
{
  int sz ;
  unsigned long tmp ;
  int __ret_warn_on ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  tmp = __builtin_object_size((void const *)to, 0);
  sz = (int )tmp;
  might_fault();
  tmp___1 = ldv__builtin_expect(sz == -1, 1L);
  if (tmp___1 != 0L) {
    n = _copy_from_user(to, from, (unsigned int )n);
  } else {
    tmp___2 = ldv__builtin_expect((unsigned long )sz >= n, 1L);
    if (tmp___2 != 0L) {
      n = _copy_from_user(to, from, (unsigned int )n);
    } else {
      __ret_warn_on = 1;
      tmp___0 = ldv__builtin_expect(__ret_warn_on != 0, 0L);
      if (tmp___0 != 0L) {
        warn_slowpath_fmt("/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/inst/current/envs/linux-3.8-rc1/linux-3.8-rc1/arch/x86/include/asm/uaccess_64.h",
                          66, "Buffer overflow detected!\n");
      } else {
      }
      ldv__builtin_expect(__ret_warn_on != 0, 0L);
    }
  }
  return (n);
}
}
__inline static int copy_to_user(void *dst , void const *src , unsigned int size )
{
  unsigned long tmp ;
  {
  might_fault();
  tmp = _copy_to_user(dst, src, size);
  return ((int )tmp);
}
}
__inline static void poll_wait(struct file *filp , wait_queue_head_t *wait_address ,
                               poll_table *p )
{
  {
  if (((unsigned long )p != (unsigned long )((poll_table *)0) && (unsigned long )p->_qproc != (unsigned long )((void (*)(struct file * ,
                                                                                                                         wait_queue_head_t * ,
                                                                                                                         struct poll_table_struct * ))0)) && (unsigned long )wait_address != (unsigned long )((wait_queue_head_t *)0)) {
    (*(p->_qproc))(filp, wait_address, p);
  } else {
  }
  return;
}
}
extern bool try_module_get(struct module * ) ;
extern void module_put(struct module * ) ;
extern void schedule(void) ;
static atomic_t ecryptfs_num_miscdev_opens ;
static unsigned int ecryptfs_miscdev_poll(struct file *file , poll_table *pt )
{
  struct ecryptfs_daemon *daemon ;
  unsigned int mask ;
  int tmp ;
  {
  daemon = (struct ecryptfs_daemon *)file->private_data;
  mask = 0U;
  ldv_mutex_lock_307(& daemon->mux);
  if ((daemon->flags & 4U) != 0U) {
    printk("\f%s: Attempt to poll on zombified daemon\n", "ecryptfs_miscdev_poll");
    goto out_unlock_daemon;
  } else {
  }
  if ((int )daemon->flags & 1) {
    goto out_unlock_daemon;
  } else {
  }
  if ((daemon->flags & 2U) != 0U) {
    goto out_unlock_daemon;
  } else {
  }
  daemon->flags = daemon->flags | 2U;
  ldv_mutex_unlock_308(& daemon->mux);
  poll_wait(file, & daemon->wait, pt);
  ldv_mutex_lock_309(& daemon->mux);
  tmp = list_empty((struct list_head const *)(& daemon->msg_ctx_out_queue));
  if (tmp == 0) {
    mask = mask | 65U;
  } else {
  }
  out_unlock_daemon:
  daemon->flags = daemon->flags & 4294967293U;
  ldv_mutex_unlock_310(& daemon->mux);
  return (mask);
}
}
static int ecryptfs_miscdev_open(struct inode *inode , struct file *file )
{
  struct ecryptfs_daemon *daemon ;
  int rc ;
  bool tmp ;
  {
  daemon = 0;
  ldv_mutex_lock_311(& ecryptfs_daemon_hash_mux);
  tmp = try_module_get(& __this_module);
  rc = (int )tmp;
  if (rc == 0) {
    rc = -5;
    printk("\v%s: Error attempting to increment module use count; rc = [%d]\n", "ecryptfs_miscdev_open",
           rc);
    goto out_unlock_daemon_list;
  } else {
  }
  rc = ecryptfs_find_daemon_by_euid(& daemon);
  if (rc == 0) {
    rc = -22;
    goto out_unlock_daemon_list;
  } else {
  }
  rc = ecryptfs_spawn_daemon(& daemon, file);
  if (rc != 0) {
    printk("\v%s: Error attempting to spawn daemon; rc = [%d]\n", "ecryptfs_miscdev_open",
           rc);
    goto out_module_put_unlock_daemon_list;
  } else {
  }
  ldv_mutex_lock_312(& daemon->mux);
  if ((daemon->flags & 8U) != 0U) {
    rc = -16;
    goto out_unlock_daemon;
  } else {
  }
  daemon->flags = daemon->flags | 8U;
  file->private_data = (void *)daemon;
  atomic_inc(& ecryptfs_num_miscdev_opens);
  out_unlock_daemon:
  ldv_mutex_unlock_313(& daemon->mux);
  out_module_put_unlock_daemon_list: ;
  if (rc != 0) {
    module_put(& __this_module);
  } else {
  }
  out_unlock_daemon_list:
  ldv_mutex_unlock_314(& ecryptfs_daemon_hash_mux);
  return (rc);
}
}
static int ecryptfs_miscdev_release(struct inode *inode , struct file *file )
{
  struct ecryptfs_daemon *daemon ;
  int rc ;
  long tmp ;
  {
  daemon = (struct ecryptfs_daemon *)file->private_data;
  ldv_mutex_lock_315(& daemon->mux);
  tmp = ldv__builtin_expect((daemon->flags & 8U) == 0U, 0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/ecryptfs/ecryptfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/24/dscv_tempdir/dscv/ri/32_7a/fs/ecryptfs/miscdev.c.prepared"),
                         "i" (272), "i" (12UL));
    ldv_25898: ;
    goto ldv_25898;
  } else {
  }
  daemon->flags = daemon->flags & 4294967287U;
  atomic_dec(& ecryptfs_num_miscdev_opens);
  ldv_mutex_unlock_316(& daemon->mux);
  ldv_mutex_lock_317(& ecryptfs_daemon_hash_mux);
  rc = ecryptfs_exorcise_daemon(daemon);
  ldv_mutex_unlock_318(& ecryptfs_daemon_hash_mux);
  if (rc != 0) {
    printk("\n%s: Fatal error whilst attempting to shut down daemon; rc = [%d]. Please report this bug.\n",
           "ecryptfs_miscdev_release", rc);
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/ecryptfs/ecryptfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/24/dscv_tempdir/dscv/ri/32_7a/fs/ecryptfs/miscdev.c.prepared"),
                         "i" (284), "i" (12UL));
    ldv_25900: ;
    goto ldv_25900;
  } else {
  }
  module_put(& __this_module);
  return (rc);
}
}
int ecryptfs_send_miscdev(char *data , size_t data_size , struct ecryptfs_msg_ctx *msg_ctx ,
                          u8 msg_type , u16 msg_flags , struct ecryptfs_daemon *daemon )
{
  struct ecryptfs_message *msg ;
  void *tmp ;
  size_t __len ;
  void *__ret ;
  {
  tmp = kmalloc(data_size + 8UL, 208U);
  msg = (struct ecryptfs_message *)tmp;
  if ((unsigned long )msg == (unsigned long )((struct ecryptfs_message *)0)) {
    printk("\v%s: Out of memory whilst attempting to kmalloc(%zd, GFP_KERNEL)\n",
           "ecryptfs_send_miscdev", data_size + 8UL);
    return (-12);
  } else {
  }
  ldv_mutex_lock_319(& msg_ctx->mux);
  msg_ctx->msg = msg;
  (msg_ctx->msg)->index = msg_ctx->index;
  (msg_ctx->msg)->data_len = (u32 )data_size;
  msg_ctx->type = msg_type;
  __len = data_size;
  __ret = __builtin_memcpy((void *)(& (msg_ctx->msg)->data), (void const *)data,
                           __len);
  msg_ctx->msg_size = data_size + 8UL;
  list_add_tail(& msg_ctx->daemon_out_list, & daemon->msg_ctx_out_queue);
  ldv_mutex_unlock_320(& msg_ctx->mux);
  ldv_mutex_lock_321(& daemon->mux);
  daemon->num_queued_msg_ctx = daemon->num_queued_msg_ctx + 1U;
  __wake_up(& daemon->wait, 1U, 1, 0);
  ldv_mutex_unlock_322(& daemon->mux);
  return (0);
}
}
static ssize_t ecryptfs_miscdev_read(struct file *file , char *buf , size_t count ,
                                     loff_t *ppos )
{
  struct ecryptfs_daemon *daemon ;
  struct ecryptfs_msg_ctx *msg_ctx ;
  size_t packet_length_size ;
  char packet_length[2U] ;
  size_t i ;
  size_t total_length ;
  int rc ;
  int __ret ;
  wait_queue_t __wait ;
  struct task_struct *tmp ;
  int tmp___0 ;
  struct task_struct *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  struct list_head const *__mptr ;
  long tmp___6 ;
  int __ret_pu ;
  char __pu_val ;
  int __ret_pu___0 ;
  __be32 __pu_val___0 ;
  __u32 tmp___7 ;
  int tmp___8 ;
  int tmp___9 ;
  {
  daemon = (struct ecryptfs_daemon *)file->private_data;
  ldv_mutex_lock_323(& daemon->mux);
  if ((daemon->flags & 4U) != 0U) {
    rc = 0;
    printk("\f%s: Attempt to read from zombified daemon\n", "ecryptfs_miscdev_read");
    goto out_unlock_daemon;
  } else {
  }
  if ((int )daemon->flags & 1) {
    rc = 0;
    goto out_unlock_daemon;
  } else {
  }
  daemon->flags = daemon->flags | 1U;
  check_list:
  tmp___4 = list_empty((struct list_head const *)(& daemon->msg_ctx_out_queue));
  if (tmp___4 != 0) {
    ldv_mutex_unlock_324(& daemon->mux);
    __ret = 0;
    tmp___3 = list_empty((struct list_head const *)(& daemon->msg_ctx_out_queue));
    if (tmp___3 != 0) {
      tmp = get_current();
      __wait.flags = 0U;
      __wait.private = (void *)tmp;
      __wait.func = & autoremove_wake_function;
      __wait.task_list.next = & __wait.task_list;
      __wait.task_list.prev = & __wait.task_list;
      ldv_25934:
      prepare_to_wait(& daemon->wait, & __wait, 1);
      tmp___0 = list_empty((struct list_head const *)(& daemon->msg_ctx_out_queue));
      if (tmp___0 == 0) {
        goto ldv_25932;
      } else {
      }
      tmp___1 = get_current();
      tmp___2 = signal_pending(tmp___1);
      if (tmp___2 == 0) {
        schedule();
        goto ldv_25933;
      } else {
      }
      __ret = -512;
      goto ldv_25932;
      ldv_25933: ;
      goto ldv_25934;
      ldv_25932:
      finish_wait(& daemon->wait, & __wait);
    } else {
    }
    rc = __ret;
    ldv_mutex_lock_325(& daemon->mux);
    if (rc < 0) {
      rc = 0;
      goto out_unlock_daemon;
    } else {
    }
  } else {
  }
  if ((daemon->flags & 4U) != 0U) {
    rc = 0;
    goto out_unlock_daemon;
  } else {
  }
  tmp___5 = list_empty((struct list_head const *)(& daemon->msg_ctx_out_queue));
  if (tmp___5 != 0) {
    goto check_list;
  } else {
  }
  __mptr = (struct list_head const *)daemon->msg_ctx_out_queue.next;
  msg_ctx = (struct ecryptfs_msg_ctx *)__mptr + 0xffffffffffffffc8UL;
  tmp___6 = ldv__builtin_expect((unsigned long )msg_ctx == (unsigned long )((struct ecryptfs_msg_ctx *)0),
                             0L);
  if (tmp___6 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/ecryptfs/ecryptfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/24/dscv_tempdir/dscv/ri/32_7a/fs/ecryptfs/miscdev.c.prepared"),
                         "i" (421), "i" (12UL));
    ldv_25938: ;
    goto ldv_25938;
  } else {
  }
  ldv_mutex_lock_326(& msg_ctx->mux);
  if ((unsigned long )msg_ctx->msg != (unsigned long )((struct ecryptfs_message *)0)) {
    rc = ecryptfs_write_packet_length((char *)(& packet_length), msg_ctx->msg_size,
                                      & packet_length_size);
    if (rc != 0) {
      rc = 0;
      printk("\f%s: Error writing packet length; rc = [%d]\n", "ecryptfs_miscdev_read",
             rc);
      goto out_unlock_msg_ctx;
    } else {
    }
  } else {
    packet_length_size = 0UL;
    msg_ctx->msg_size = 0UL;
  }
  total_length = (msg_ctx->msg_size + packet_length_size) + 5UL;
  if (count < total_length) {
    rc = 0;
    printk("\f%s: Only given user buffer of size [%zd], but we need [%zd] to read the pending message\n",
           "ecryptfs_miscdev_read", count, total_length);
    goto out_unlock_msg_ctx;
  } else {
  }
  rc = -14;
  might_fault();
  __pu_val = (char )msg_ctx->type;
  switch (1UL) {
  case 1UL:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu): "0" (__pu_val), "c" (buf): "ebx");
  goto ldv_25943;
  case 2UL:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu): "0" (__pu_val), "c" (buf): "ebx");
  goto ldv_25943;
  case 4UL:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu): "0" (__pu_val), "c" (buf): "ebx");
  goto ldv_25943;
  case 8UL:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu): "0" (__pu_val), "c" (buf): "ebx");
  goto ldv_25943;
  default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu): "0" (__pu_val), "c" (buf): "ebx");
  goto ldv_25943;
  }
  ldv_25943: ;
  if (__ret_pu != 0) {
    goto out_unlock_msg_ctx;
  } else {
  }
  might_fault();
  tmp___7 = __fswab32(msg_ctx->counter);
  __pu_val___0 = tmp___7;
  switch (4UL) {
  case 1UL:
  __asm__ volatile ("call __put_user_1": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((__be32 *)buf + 1U): "ebx");
  goto ldv_25952;
  case 2UL:
  __asm__ volatile ("call __put_user_2": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((__be32 *)buf + 1U): "ebx");
  goto ldv_25952;
  case 4UL:
  __asm__ volatile ("call __put_user_4": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((__be32 *)buf + 1U): "ebx");
  goto ldv_25952;
  case 8UL:
  __asm__ volatile ("call __put_user_8": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((__be32 *)buf + 1U): "ebx");
  goto ldv_25952;
  default:
  __asm__ volatile ("call __put_user_X": "=a" (__ret_pu___0): "0" (__pu_val___0),
                       "c" ((__be32 *)buf + 1U): "ebx");
  goto ldv_25952;
  }
  ldv_25952: ;
  if (__ret_pu___0 != 0) {
    goto out_unlock_msg_ctx;
  } else {
  }
  i = 5UL;
  if ((unsigned long )msg_ctx->msg != (unsigned long )((struct ecryptfs_message *)0)) {
    tmp___8 = copy_to_user((void *)(buf + i), (void const *)(& packet_length), (unsigned int )packet_length_size);
    if (tmp___8 != 0) {
      goto out_unlock_msg_ctx;
    } else {
    }
    i = i + packet_length_size;
    tmp___9 = copy_to_user((void *)(buf + i), (void const *)msg_ctx->msg, (unsigned int )msg_ctx->msg_size);
    if (tmp___9 != 0) {
      goto out_unlock_msg_ctx;
    } else {
    }
    i = msg_ctx->msg_size + i;
  } else {
  }
  rc = (int )i;
  list_del(& msg_ctx->daemon_out_list);
  kfree((void const *)msg_ctx->msg);
  msg_ctx->msg = 0;
  if ((unsigned int )msg_ctx->type != 102U) {
    ecryptfs_msg_ctx_alloc_to_free(msg_ctx);
  } else {
  }
  out_unlock_msg_ctx:
  ldv_mutex_unlock_327(& msg_ctx->mux);
  out_unlock_daemon:
  daemon->flags = daemon->flags & 4294967294U;
  ldv_mutex_unlock_328(& daemon->mux);
  return ((ssize_t )rc);
}
}
static int ecryptfs_miscdev_response(struct ecryptfs_daemon *daemon , char *data ,
                                     size_t data_size , u32 seq )
{
  struct ecryptfs_message *msg ;
  int rc ;
  {
  msg = (struct ecryptfs_message *)data;
  if ((unsigned long )msg->data_len + 8UL != data_size) {
    printk("\f%s: (sizeof(*msg) + msg->data_len) = [%zd]; data_size = [%zd]. Invalid packet.\n",
           "ecryptfs_miscdev_response", (unsigned long )msg->data_len + 8UL, data_size);
    rc = -22;
    goto out;
  } else {
  }
  rc = ecryptfs_process_response(daemon, msg, seq);
  if (rc != 0) {
    printk("\vError processing response message; rc = [%d]\n", rc);
  } else {
  }
  out: ;
  return (rc);
}
}
static ssize_t ecryptfs_miscdev_write(struct file *file , char const *buf , size_t count ,
                                      loff_t *ppos )
{
  __be32 counter_nbo ;
  u32 seq ;
  size_t packet_size ;
  size_t packet_size_length ;
  char *data ;
  unsigned char packet_size_peek[2U] ;
  ssize_t rc ;
  unsigned long tmp ;
  int tmp___0 ;
  void *tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  size_t __len ;
  void *__ret ;
  __u32 tmp___5 ;
  int tmp___6 ;
  {
  if (count == 0UL) {
    return (0L);
  } else
  if (count == 5UL) {
    goto memdup;
  } else
  if (count <= 5UL || count > 531UL) {
    printk("\f%s: Acceptable packet size range is [%d-%zu], but amount of data written is [%zu].",
           "ecryptfs_miscdev_write", 6, 531UL, count);
    return (-22L);
  } else {
  }
  tmp = copy_from_user((void *)(& packet_size_peek), (void const *)buf + 5U, 2UL);
  if (tmp != 0UL) {
    printk("\f%s: Error while inspecting packet size\n", "ecryptfs_miscdev_write");
    return (-14L);
  } else {
  }
  tmp___0 = ecryptfs_parse_packet_length((unsigned char *)(& packet_size_peek), & packet_size,
                                         & packet_size_length);
  rc = (ssize_t )tmp___0;
  if (rc != 0L) {
    printk("\f%s: Error parsing packet length; rc = [%zd]\n", "ecryptfs_miscdev_write",
           rc);
    return (rc);
  } else {
  }
  if ((packet_size_length + packet_size) + 5UL != count) {
    printk("\f%s: Invalid packet size [%zu]\n", "ecryptfs_miscdev_write", packet_size);
    return (-22L);
  } else {
  }
  memdup:
  tmp___1 = memdup_user((void const *)buf, count);
  data = (char *)tmp___1;
  tmp___4 = IS_ERR((void const *)data);
  if (tmp___4 != 0L) {
    tmp___2 = PTR_ERR((void const *)data);
    printk("\v%s: memdup_user returned error [%ld]\n", "ecryptfs_miscdev_write", tmp___2);
    tmp___3 = PTR_ERR((void const *)data);
    return (tmp___3);
  } else {
  }
  switch ((int )*data) {
  case 103: ;
  if (count <= 13UL) {
    printk("\f%s: Minimum acceptable packet size is [%zd], but amount of data written is only [%zd]. Discarding response packet.\n",
           "ecryptfs_miscdev_write", 14UL, count);
    rc = -22L;
    goto out_free;
  } else {
  }
  __len = 4UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& counter_nbo), (void const *)data + 1U, __len);
  } else {
    __ret = __builtin_memcpy((void *)(& counter_nbo), (void const *)data + 1U, __len);
  }
  tmp___5 = __fswab32(counter_nbo);
  seq = tmp___5;
  tmp___6 = ecryptfs_miscdev_response((struct ecryptfs_daemon *)file->private_data,
                                      data + (packet_size_length + 5UL), packet_size,
                                      seq);
  rc = (ssize_t )tmp___6;
  if (rc != 0L) {
    printk("\f%s: Failed to deliver miscdev response to requesting operation; rc = [%zd]\n",
           "ecryptfs_miscdev_write", rc);
    goto out_free;
  } else {
  }
  goto ldv_25988;
  case 100: ;
  case 101: ;
  goto ldv_25988;
  default:
  __ecryptfs_printk("\f%s: Dropping miscdev message of unrecognized type [%d]\n",
                    "ecryptfs_miscdev_write", (int )*data);
  rc = -22L;
  goto out_free;
  }
  ldv_25988:
  rc = (ssize_t )count;
  out_free:
  kfree((void const *)data);
  return (rc);
}
}
static struct file_operations const ecryptfs_miscdev_fops =
     {0, & noop_llseek, & ecryptfs_miscdev_read, & ecryptfs_miscdev_write, 0, 0, 0,
    & ecryptfs_miscdev_poll, 0, 0, 0, & ecryptfs_miscdev_open, 0, & ecryptfs_miscdev_release,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
static struct miscdevice ecryptfs_miscdev =
     {255, "ecryptfs", & ecryptfs_miscdev_fops, {0, 0}, 0, 0, 0, (unsigned short)0};
int ecryptfs_init_ecryptfs_miscdev(void)
{
  int rc ;
  {
  atomic_set(& ecryptfs_num_miscdev_opens, 0);
  rc = misc_register(& ecryptfs_miscdev);
  if (rc != 0) {
    printk("\v%s: Failed to register miscellaneous device for communications with userspace daemons; rc = [%d]\n",
           "ecryptfs_init_ecryptfs_miscdev", rc);
  } else {
  }
  return (rc);
}
}
void ecryptfs_destroy_ecryptfs_miscdev(void)
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = atomic_read((atomic_t const *)(& ecryptfs_num_miscdev_opens));
  tmp___0 = ldv__builtin_expect(tmp != 0, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression2/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/ecryptfs/ecryptfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/24/dscv_tempdir/dscv/ri/32_7a/fs/ecryptfs/miscdev.c.prepared"),
                         "i" (655), "i" (12UL));
    ldv_26002: ;
    goto ldv_26002;
  } else {
  }
  misc_deregister(& ecryptfs_miscdev);
  return;
}
}
void ldv_main10_sequence_infinite_withcheck_stateful(void)
{
  struct inode *var_group1 ;
  struct file *var_group2 ;
  int res_ecryptfs_miscdev_open_1 ;
  poll_table *var_ecryptfs_miscdev_poll_0_p1 ;
  char *var_ecryptfs_miscdev_read_4_p1 ;
  size_t var_ecryptfs_miscdev_read_4_p2 ;
  loff_t *var_ecryptfs_miscdev_read_4_p3 ;
  ssize_t res_ecryptfs_miscdev_read_4 ;
  char const *var_ecryptfs_miscdev_write_6_p1 ;
  size_t var_ecryptfs_miscdev_write_6_p2 ;
  loff_t *var_ecryptfs_miscdev_write_6_p3 ;
  ssize_t res_ecryptfs_miscdev_write_6 ;
  int ldv_s_ecryptfs_miscdev_fops_file_operations ;
  int tmp ;
  int tmp___0 ;
  {
  ldv_s_ecryptfs_miscdev_fops_file_operations = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_26041;
  ldv_26040:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_s_ecryptfs_miscdev_fops_file_operations == 0) {
    ldv_handler_precall();
    res_ecryptfs_miscdev_open_1 = ecryptfs_miscdev_open(var_group1, var_group2);
    ldv_check_return_value(res_ecryptfs_miscdev_open_1);
    if (res_ecryptfs_miscdev_open_1 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_ecryptfs_miscdev_fops_file_operations = ldv_s_ecryptfs_miscdev_fops_file_operations + 1;
  } else {
  }
  goto ldv_26034;
  case 1: ;
  if (ldv_s_ecryptfs_miscdev_fops_file_operations == 1) {
    ldv_handler_precall();
    res_ecryptfs_miscdev_read_4 = ecryptfs_miscdev_read(var_group2, var_ecryptfs_miscdev_read_4_p1,
                                                        var_ecryptfs_miscdev_read_4_p2,
                                                        var_ecryptfs_miscdev_read_4_p3);
    ldv_check_return_value((int )res_ecryptfs_miscdev_read_4);
    if (res_ecryptfs_miscdev_read_4 < 0L) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_ecryptfs_miscdev_fops_file_operations = ldv_s_ecryptfs_miscdev_fops_file_operations + 1;
  } else {
  }
  goto ldv_26034;
  case 2: ;
  if (ldv_s_ecryptfs_miscdev_fops_file_operations == 2) {
    ldv_handler_precall();
    res_ecryptfs_miscdev_write_6 = ecryptfs_miscdev_write(var_group2, var_ecryptfs_miscdev_write_6_p1,
                                                          var_ecryptfs_miscdev_write_6_p2,
                                                          var_ecryptfs_miscdev_write_6_p3);
    ldv_check_return_value((int )res_ecryptfs_miscdev_write_6);
    if (res_ecryptfs_miscdev_write_6 < 0L) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_ecryptfs_miscdev_fops_file_operations = ldv_s_ecryptfs_miscdev_fops_file_operations + 1;
  } else {
  }
  goto ldv_26034;
  case 3: ;
  if (ldv_s_ecryptfs_miscdev_fops_file_operations == 3) {
    ldv_handler_precall();
    ecryptfs_miscdev_release(var_group1, var_group2);
    ldv_s_ecryptfs_miscdev_fops_file_operations = 0;
  } else {
  }
  goto ldv_26034;
  case 4:
  ldv_handler_precall();
  ecryptfs_miscdev_poll(var_group2, var_ecryptfs_miscdev_poll_0_p1);
  goto ldv_26034;
  default: ;
  goto ldv_26034;
  }
  ldv_26034: ;
  ldv_26041:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0 || ldv_s_ecryptfs_miscdev_fops_file_operations != 0) {
    goto ldv_26040;
  } else {
  }
  ldv_module_exit: ;
  ldv_check_final_state();
  return;
}
}
void ldv_mutex_lock_303(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_304(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_305(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_306(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_307(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_308(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_309(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_310(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_311(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ecryptfs_daemon_hash_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_312(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_313(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_314(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ecryptfs_daemon_hash_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_315(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_316(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_317(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_ecryptfs_daemon_hash_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_318(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_ecryptfs_daemon_hash_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_319(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_320(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_321(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_322(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_323(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_324(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_325(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_326(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_327(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_328(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_356(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_358(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_360(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_361(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_363(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_365(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_366(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_355(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_357(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_359(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_362(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_364(struct mutex *ldv_func_arg1 ) ;
__inline static void init_completion(struct completion *x )
{
  struct lock_class_key __key ;
  {
  x->done = 0U;
  __init_waitqueue_head(& x->wait, "&x->wait", & __key);
  return;
}
}
extern void wait_for_completion(struct completion * ) ;
extern void complete(struct completion * ) ;
extern struct task_struct *kthread_create_on_node(int (*)(void * ) , void * , int ,
                                                  char const * , ...) ;
extern int kthread_stop(struct task_struct * ) ;
extern bool kthread_should_stop(void) ;
extern atomic_t system_freezing_cnt ;
extern bool freezing_slow_path(struct task_struct * ) ;
__inline static bool freezing(struct task_struct *p )
{
  int tmp ;
  long tmp___0 ;
  bool tmp___1 ;
  {
  tmp = atomic_read((atomic_t const *)(& system_freezing_cnt));
  tmp___0 = ldv__builtin_expect(tmp == 0, 1L);
  if (tmp___0 != 0L) {
    return (0);
  } else {
  }
  tmp___1 = freezing_slow_path(p);
  return (tmp___1);
}
}
extern bool __refrigerator(bool ) ;
__inline static bool try_to_freeze(void)
{
  struct task_struct *tmp ;
  bool tmp___0 ;
  int tmp___1 ;
  long tmp___2 ;
  bool tmp___3 ;
  {
  __might_sleep("include/linux/freezer.h", 46, 0);
  tmp = get_current();
  tmp___0 = freezing(tmp);
  if (tmp___0) {
    tmp___1 = 0;
  } else {
    tmp___1 = 1;
  }
  tmp___2 = ldv__builtin_expect((long )tmp___1, 1L);
  if (tmp___2 != 0L) {
    return (0);
  } else {
  }
  tmp___3 = __refrigerator(0);
  return (tmp___3);
}
}
extern bool set_freezable(void) ;
extern struct file *dentry_open(struct path const * , int , struct cred const * ) ;
static struct ecryptfs_kthread_ctl ecryptfs_kthread_ctl ;
static struct task_struct *ecryptfs_kthread ;
static int ecryptfs_threadfn(void *ignored )
{
  struct ecryptfs_open_req *req ;
  int __retval ;
  int __ret ;
  wait_queue_t __wait ;
  struct task_struct *tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  struct task_struct *tmp___2 ;
  bool tmp___3 ;
  struct task_struct *tmp___4 ;
  int tmp___5 ;
  int tmp___6 ;
  bool tmp___7 ;
  int tmp___8 ;
  struct task_struct *tmp___9 ;
  bool tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  bool tmp___13 ;
  struct list_head const *__mptr ;
  int tmp___14 ;
  struct task_struct *tmp___15 ;
  int tmp___16 ;
  {
  set_freezable();
  ldv_24807: ;
  ldv_24797:
  __ret = 0;
  tmp___6 = list_empty((struct list_head const *)(& ecryptfs_kthread_ctl.req_list));
  if (tmp___6 != 0) {
    tmp___7 = kthread_should_stop();
    if (tmp___7) {
      tmp___8 = 0;
    } else {
      tmp___8 = 1;
    }
    if (tmp___8) {
      tmp___9 = get_current();
      tmp___10 = freezing(tmp___9);
      if (tmp___10) {
        tmp___11 = 0;
      } else {
        tmp___11 = 1;
      }
      if (tmp___11) {
        tmp = get_current();
        __wait.flags = 0U;
        __wait.private = (void *)tmp;
        __wait.func = & autoremove_wake_function;
        __wait.task_list.next = & __wait.task_list;
        __wait.task_list.prev = & __wait.task_list;
        ldv_24794:
        prepare_to_wait(& ecryptfs_kthread_ctl.wait, & __wait, 1);
        tmp___0 = list_empty((struct list_head const *)(& ecryptfs_kthread_ctl.req_list));
        if (tmp___0 == 0) {
          goto ldv_24792;
        } else {
          tmp___1 = kthread_should_stop();
          if ((int )tmp___1) {
            goto ldv_24792;
          } else {
            tmp___2 = get_current();
            tmp___3 = freezing(tmp___2);
            if ((int )tmp___3) {
              goto ldv_24792;
            } else {
            }
          }
        }
        tmp___4 = get_current();
        tmp___5 = signal_pending(tmp___4);
        if (tmp___5 == 0) {
          schedule();
          goto ldv_24793;
        } else {
        }
        __ret = -512;
        goto ldv_24792;
        ldv_24793: ;
        goto ldv_24794;
        ldv_24792:
        finish_wait(& ecryptfs_kthread_ctl.wait, & __wait);
      } else {
      }
    } else {
    }
  } else {
  }
  __retval = __ret;
  if (__retval != 0) {
    goto ldv_24796;
  } else {
    tmp___12 = list_empty((struct list_head const *)(& ecryptfs_kthread_ctl.req_list));
    if (tmp___12 == 0) {
      goto ldv_24796;
    } else {
      tmp___13 = kthread_should_stop();
      if ((int )tmp___13) {
        goto ldv_24796;
      } else {
      }
    }
  }
  try_to_freeze();
  goto ldv_24797;
  ldv_24796:
  ldv_mutex_lock_359(& ecryptfs_kthread_ctl.mux);
  if ((int )ecryptfs_kthread_ctl.flags & 1) {
    ldv_mutex_unlock_360(& ecryptfs_kthread_ctl.mux);
    goto out;
  } else {
  }
  goto ldv_24805;
  ldv_24804:
  __mptr = (struct list_head const *)ecryptfs_kthread_ctl.req_list.next;
  req = (struct ecryptfs_open_req *)__mptr + 0xffffffffffffff88UL;
  list_del(& req->kthread_ctl_list);
  tmp___14 = debug_lockdep_rcu_enabled();
  tmp___15 = get_current();
  *(req->lower_file) = dentry_open((struct path const *)(& req->path), 32770, tmp___15->cred);
  complete(& req->done);
  ldv_24805:
  tmp___16 = list_empty((struct list_head const *)(& ecryptfs_kthread_ctl.req_list));
  if (tmp___16 == 0) {
    goto ldv_24804;
  } else {
  }
  ldv_mutex_unlock_361(& ecryptfs_kthread_ctl.mux);
  goto ldv_24807;
  out: ;
  return (0);
}
}
int ecryptfs_init_kthread(void)
{
  int rc ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  struct task_struct *__k ;
  struct task_struct *tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  rc = 0;
  __mutex_init(& ecryptfs_kthread_ctl.mux, "&ecryptfs_kthread_ctl.mux", & __key);
  __init_waitqueue_head(& ecryptfs_kthread_ctl.wait, "&ecryptfs_kthread_ctl.wait",
                        & __key___0);
  INIT_LIST_HEAD(& ecryptfs_kthread_ctl.req_list);
  tmp = kthread_create_on_node(& ecryptfs_threadfn, 0, -1, "ecryptfs-kthread");
  __k = tmp;
  tmp___0 = IS_ERR((void const *)__k);
  if (tmp___0 == 0L) {
    wake_up_process(__k);
  } else {
  }
  ecryptfs_kthread = __k;
  tmp___2 = IS_ERR((void const *)ecryptfs_kthread);
  if (tmp___2 != 0L) {
    tmp___1 = PTR_ERR((void const *)ecryptfs_kthread);
    rc = (int )tmp___1;
    printk("\v%s: Failed to create kernel thread; rc = [%d]\n", "ecryptfs_init_kthread",
           rc);
  } else {
  }
  return (rc);
}
}
void ecryptfs_destroy_kthread(void)
{
  struct ecryptfs_open_req *req ;
  struct list_head const *__mptr ;
  void *tmp ;
  struct list_head const *__mptr___0 ;
  {
  ldv_mutex_lock_362(& ecryptfs_kthread_ctl.mux);
  ecryptfs_kthread_ctl.flags = ecryptfs_kthread_ctl.flags | 1U;
  __mptr = (struct list_head const *)ecryptfs_kthread_ctl.req_list.next;
  req = (struct ecryptfs_open_req *)__mptr + 0xffffffffffffff88UL;
  goto ldv_24826;
  ldv_24825:
  list_del(& req->kthread_ctl_list);
  tmp = ERR_PTR(-5L);
  *(req->lower_file) = (struct file *)tmp;
  complete(& req->done);
  __mptr___0 = (struct list_head const *)req->kthread_ctl_list.next;
  req = (struct ecryptfs_open_req *)__mptr___0 + 0xffffffffffffff88UL;
  ldv_24826: ;
  if ((unsigned long )(& req->kthread_ctl_list) != (unsigned long )(& ecryptfs_kthread_ctl.req_list)) {
    goto ldv_24825;
  } else {
  }
  ldv_mutex_unlock_363(& ecryptfs_kthread_ctl.mux);
  kthread_stop(ecryptfs_kthread);
  __wake_up(& ecryptfs_kthread_ctl.wait, 3U, 1, 0);
  return;
}
}
int ecryptfs_privileged_open(struct file **lower_file , struct dentry *lower_dentry ,
                             struct vfsmount *lower_mnt , struct cred const *cred )
{
  struct ecryptfs_open_req req ;
  int flags ;
  int rc ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  flags = 32768;
  rc = 0;
  init_completion(& req.done);
  req.lower_file = lower_file;
  req.path.dentry = lower_dentry;
  req.path.mnt = lower_mnt;
  flags = ((int )((lower_dentry->d_inode)->i_sb)->s_flags & 1 ? 0 : 2) | flags;
  *lower_file = dentry_open((struct path const *)(& req.path), flags, cred);
  tmp = IS_ERR((void const *)*lower_file);
  if (tmp == 0L) {
    goto out;
  } else {
  }
  if ((flags & 3) == 0) {
    tmp___0 = PTR_ERR((void const *)*lower_file);
    rc = (int )tmp___0;
    goto out;
  } else {
  }
  ldv_mutex_lock_364(& ecryptfs_kthread_ctl.mux);
  if ((int )ecryptfs_kthread_ctl.flags & 1) {
    rc = -5;
    ldv_mutex_unlock_365(& ecryptfs_kthread_ctl.mux);
    printk("\v%s: We are in the middle of shutting down; aborting privileged request to open lower file\n",
           "ecryptfs_privileged_open");
    goto out;
  } else {
  }
  list_add_tail(& req.kthread_ctl_list, & ecryptfs_kthread_ctl.req_list);
  ldv_mutex_unlock_366(& ecryptfs_kthread_ctl.mux);
  __wake_up(& ecryptfs_kthread_ctl.wait, 3U, 1, 0);
  wait_for_completion(& req.done);
  tmp___2 = IS_ERR((void const *)*lower_file);
  if (tmp___2 != 0L) {
    tmp___1 = PTR_ERR((void const *)*lower_file);
    rc = (int )tmp___1;
  } else {
  }
  out: ;
  return (rc);
}
}
void ldv_mutex_lock_355(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_356(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_357(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_358(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_359(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_360(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_361(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_362(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_363(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_364(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mux(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_365(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_366(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mux(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_380(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_379(struct mutex *ldv_func_arg1 ) ;
void ecryptfs_dump_auth_tok(struct ecryptfs_auth_tok *auth_tok )
{
  char salt[17U] ;
  char sig[17U] ;
  size_t __len ;
  void *__ret ;
  {
  __ecryptfs_printk("\017%s: Auth tok at mem loc [%p]:\n", "ecryptfs_dump_auth_tok",
                    auth_tok);
  if ((int )auth_tok->flags & 1) {
    __ecryptfs_printk("\017%s:  * private key type\n", "ecryptfs_dump_auth_tok");
  } else {
    __ecryptfs_printk("\017%s:  * passphrase type\n", "ecryptfs_dump_auth_tok");
    ecryptfs_to_hex((char *)(& salt), (char *)(& auth_tok->token.password.salt), 8UL);
    salt[16] = 0;
    __ecryptfs_printk("\017%s:  * salt = [%s]\n", "ecryptfs_dump_auth_tok", (char *)(& salt));
    if ((int )auth_tok->token.password.flags & 1) {
      __ecryptfs_printk("\017%s:  * persistent\n", "ecryptfs_dump_auth_tok");
    } else {
    }
    __len = 16UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)(& sig), (void const *)(& auth_tok->token.password.signature),
                       __len);
    } else {
      __ret = __builtin_memcpy((void *)(& sig), (void const *)(& auth_tok->token.password.signature),
                               __len);
    }
    sig[16] = 0;
    __ecryptfs_printk("\017%s:  * signature = [%s]\n", "ecryptfs_dump_auth_tok", (char *)(& sig));
  }
  __ecryptfs_printk("\017%s:  * session_key.flags = [0x%x]\n", "ecryptfs_dump_auth_tok",
                    auth_tok->session_key.flags);
  if ((int )auth_tok->session_key.flags & 1) {
    __ecryptfs_printk("\017%s:  * Userspace decrypt request set\n", "ecryptfs_dump_auth_tok");
  } else {
  }
  if ((auth_tok->session_key.flags & 2U) != 0U) {
    __ecryptfs_printk("\017%s:  * Userspace encrypt request set\n", "ecryptfs_dump_auth_tok");
  } else {
  }
  if ((auth_tok->session_key.flags & 4U) != 0U) {
    __ecryptfs_printk("\017%s:  * Contains decrypted key\n", "ecryptfs_dump_auth_tok");
    __ecryptfs_printk("\017%s:  * session_key.decrypted_key_size = [0x%x]\n", "ecryptfs_dump_auth_tok",
                      auth_tok->session_key.decrypted_key_size);
    __ecryptfs_printk("\017%s:  * Decrypted session key dump:\n", "ecryptfs_dump_auth_tok");
    if (ecryptfs_verbosity > 0) {
      ecryptfs_dump_hex((char *)(& auth_tok->session_key.decrypted_key), 16);
    } else {
    }
  } else {
  }
  if ((auth_tok->session_key.flags & 8U) != 0U) {
    __ecryptfs_printk("\017%s:  * Contains encrypted key\n", "ecryptfs_dump_auth_tok");
    __ecryptfs_printk("\017%s:  * session_key.encrypted_key_size = [0x%x]\n", "ecryptfs_dump_auth_tok",
                      auth_tok->session_key.encrypted_key_size);
    __ecryptfs_printk("\017%s:  * Encrypted session key dump:\n", "ecryptfs_dump_auth_tok");
    if (ecryptfs_verbosity > 0) {
      ecryptfs_dump_hex((char *)(& auth_tok->session_key.encrypted_key), (int )auth_tok->session_key.encrypted_key_size);
    } else {
    }
  } else {
  }
  return;
}
}
void ecryptfs_dump_hex(char *data , int bytes )
{
  int i ;
  int add_newline ;
  {
  i = 0;
  add_newline = 1;
  if (ecryptfs_verbosity <= 0) {
    return;
  } else {
  }
  if (bytes != 0) {
    printk("xx%.2x.", (int )((unsigned char )*(data + (unsigned long )i)));
    i = i + 1;
  } else {
  }
  goto ldv_23976;
  ldv_23975:
  printk("0x%.2x.", (int )((unsigned char )*(data + (unsigned long )i)));
  i = i + 1;
  if (((unsigned int )i & 15U) == 0U) {
    printk("\n");
    add_newline = 0;
  } else {
    add_newline = 1;
  }
  ldv_23976: ;
  if (i < bytes) {
    goto ldv_23975;
  } else {
  }
  if (add_newline != 0) {
    printk("\n");
  } else {
  }
  return;
}
}
void ldv_mutex_lock_379(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_380(struct mutex *ldv_func_arg1 )
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
static int ldv_mutex_cs_hash_tfm_mutex ;
int ldv_mutex_lock_interruptible_cs_hash_tfm_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cs_hash_tfm_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cs_hash_tfm_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_cs_hash_tfm_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cs_hash_tfm_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cs_hash_tfm_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_cs_hash_tfm_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_cs_hash_tfm_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_cs_hash_tfm_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_cs_hash_tfm_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_cs_hash_tfm_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_cs_hash_tfm_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_cs_hash_tfm_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_cs_hash_tfm_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_cs_hash_tfm_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_cs_hash_tfm_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cs_hash_tfm_mutex == 1) {
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
void ldv_mutex_unlock_cs_hash_tfm_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_cs_hash_tfm_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_cs_hash_tfm_mutex = 1;
  return;
}
}
static int ldv_mutex_cs_mutex ;
int ldv_mutex_lock_interruptible_cs_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cs_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cs_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_cs_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cs_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cs_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_cs_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_cs_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_cs_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_cs_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_cs_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_cs_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_cs_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_cs_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_cs_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_cs_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cs_mutex == 1) {
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
void ldv_mutex_unlock_cs_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_cs_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_cs_mutex = 1;
  return;
}
}
static int ldv_mutex_cs_tfm_mutex ;
int ldv_mutex_lock_interruptible_cs_tfm_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cs_tfm_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cs_tfm_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_cs_tfm_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cs_tfm_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_cs_tfm_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_cs_tfm_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_cs_tfm_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_cs_tfm_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_cs_tfm_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_cs_tfm_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_cs_tfm_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_cs_tfm_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_cs_tfm_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_cs_tfm_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_cs_tfm_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_cs_tfm_mutex == 1) {
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
void ldv_mutex_unlock_cs_tfm_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_cs_tfm_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_cs_tfm_mutex = 1;
  return;
}
}
static int ldv_mutex_ecryptfs_daemon_hash_mux ;
int ldv_mutex_lock_interruptible_ecryptfs_daemon_hash_mux(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_ecryptfs_daemon_hash_mux == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_ecryptfs_daemon_hash_mux = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_ecryptfs_daemon_hash_mux(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_ecryptfs_daemon_hash_mux == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_ecryptfs_daemon_hash_mux = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_ecryptfs_daemon_hash_mux(struct mutex *lock )
{
  {
  if (ldv_mutex_ecryptfs_daemon_hash_mux == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_ecryptfs_daemon_hash_mux = 2;
  return;
}
}
int ldv_mutex_trylock_ecryptfs_daemon_hash_mux(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_ecryptfs_daemon_hash_mux == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_ecryptfs_daemon_hash_mux = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_ecryptfs_daemon_hash_mux(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_ecryptfs_daemon_hash_mux == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_ecryptfs_daemon_hash_mux = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_ecryptfs_daemon_hash_mux(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_ecryptfs_daemon_hash_mux == 1) {
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
void ldv_mutex_unlock_ecryptfs_daemon_hash_mux(struct mutex *lock )
{
  {
  if (ldv_mutex_ecryptfs_daemon_hash_mux == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_ecryptfs_daemon_hash_mux = 1;
  return;
}
}
static int ldv_mutex_ecryptfs_msg_ctx_lists_mux ;
int ldv_mutex_lock_interruptible_ecryptfs_msg_ctx_lists_mux(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_ecryptfs_msg_ctx_lists_mux == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_ecryptfs_msg_ctx_lists_mux = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_ecryptfs_msg_ctx_lists_mux(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_ecryptfs_msg_ctx_lists_mux == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_ecryptfs_msg_ctx_lists_mux = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_ecryptfs_msg_ctx_lists_mux(struct mutex *lock )
{
  {
  if (ldv_mutex_ecryptfs_msg_ctx_lists_mux == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_ecryptfs_msg_ctx_lists_mux = 2;
  return;
}
}
int ldv_mutex_trylock_ecryptfs_msg_ctx_lists_mux(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_ecryptfs_msg_ctx_lists_mux == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_ecryptfs_msg_ctx_lists_mux = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_ecryptfs_msg_ctx_lists_mux(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_ecryptfs_msg_ctx_lists_mux == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_ecryptfs_msg_ctx_lists_mux = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_ecryptfs_msg_ctx_lists_mux(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_ecryptfs_msg_ctx_lists_mux == 1) {
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
void ldv_mutex_unlock_ecryptfs_msg_ctx_lists_mux(struct mutex *lock )
{
  {
  if (ldv_mutex_ecryptfs_msg_ctx_lists_mux == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_ecryptfs_msg_ctx_lists_mux = 1;
  return;
}
}
static int ldv_mutex_global_auth_tok_list_mutex ;
int ldv_mutex_lock_interruptible_global_auth_tok_list_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_global_auth_tok_list_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_global_auth_tok_list_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_global_auth_tok_list_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_global_auth_tok_list_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_global_auth_tok_list_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_global_auth_tok_list_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_global_auth_tok_list_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_global_auth_tok_list_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_global_auth_tok_list_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_global_auth_tok_list_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_global_auth_tok_list_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_global_auth_tok_list_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_global_auth_tok_list_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_global_auth_tok_list_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_global_auth_tok_list_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_global_auth_tok_list_mutex == 1) {
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
void ldv_mutex_unlock_global_auth_tok_list_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_global_auth_tok_list_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_global_auth_tok_list_mutex = 1;
  return;
}
}
static int ldv_mutex_i_mutex ;
int ldv_mutex_lock_interruptible_i_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_i_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_i_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_i_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_i_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_i_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_i_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_i_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_i_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_i_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_i_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_i_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_i_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_i_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_i_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_i_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_i_mutex == 1) {
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
void ldv_mutex_unlock_i_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_i_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_i_mutex = 1;
  return;
}
}
static int ldv_mutex_key_tfm_list_mutex ;
int ldv_mutex_lock_interruptible_key_tfm_list_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_key_tfm_list_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_key_tfm_list_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_key_tfm_list_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_key_tfm_list_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_key_tfm_list_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_key_tfm_list_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_key_tfm_list_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_key_tfm_list_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_key_tfm_list_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_key_tfm_list_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_key_tfm_list_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_key_tfm_list_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_key_tfm_list_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_key_tfm_list_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_key_tfm_list_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_key_tfm_list_mutex == 1) {
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
void ldv_mutex_unlock_key_tfm_list_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_key_tfm_list_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_key_tfm_list_mutex = 1;
  return;
}
}
static int ldv_mutex_keysig_list_mutex ;
int ldv_mutex_lock_interruptible_keysig_list_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_keysig_list_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_keysig_list_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_keysig_list_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_keysig_list_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_keysig_list_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_keysig_list_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_keysig_list_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_keysig_list_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_keysig_list_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_keysig_list_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_keysig_list_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_keysig_list_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_keysig_list_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_keysig_list_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_keysig_list_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_keysig_list_mutex == 1) {
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
void ldv_mutex_unlock_keysig_list_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_keysig_list_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_keysig_list_mutex = 1;
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
static int ldv_mutex_lower_file_count ;
int ldv_mutex_lock_interruptible_lower_file_count(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lower_file_count == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lower_file_count = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lower_file_count(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lower_file_count == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lower_file_count = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lower_file_count(struct mutex *lock )
{
  {
  if (ldv_mutex_lower_file_count == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_lower_file_count = 2;
  return;
}
}
int ldv_mutex_trylock_lower_file_count(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lower_file_count == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_lower_file_count = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lower_file_count(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_lower_file_count == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lower_file_count = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lower_file_count(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lower_file_count == 1) {
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
void ldv_mutex_unlock_lower_file_count(struct mutex *lock )
{
  {
  if (ldv_mutex_lower_file_count == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_lower_file_count = 1;
  return;
}
}
static int ldv_mutex_lower_file_mutex ;
int ldv_mutex_lock_interruptible_lower_file_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lower_file_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lower_file_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_lower_file_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lower_file_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_lower_file_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_lower_file_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_lower_file_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_lower_file_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_lower_file_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_lower_file_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_lower_file_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_lower_file_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_lower_file_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_lower_file_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_lower_file_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_lower_file_mutex == 1) {
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
void ldv_mutex_unlock_lower_file_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_lower_file_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_lower_file_mutex = 1;
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
static int ldv_mutex_mux ;
int ldv_mutex_lock_interruptible_mux(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mux == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mux = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_mux(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mux == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_mux = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_mux(struct mutex *lock )
{
  {
  if (ldv_mutex_mux == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_mux = 2;
  return;
}
}
int ldv_mutex_trylock_mux(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_mux == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_mux = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_mux(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_mux == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_mux = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_mux(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_mux == 1) {
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
void ldv_mutex_unlock_mux(struct mutex *lock )
{
  {
  if (ldv_mutex_mux == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_mux = 1;
  return;
}
}
static int ldv_mutex_tfm_mutex ;
int ldv_mutex_lock_interruptible_tfm_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_tfm_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_tfm_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_tfm_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_tfm_mutex == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_tfm_mutex = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_tfm_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_tfm_mutex == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_tfm_mutex = 2;
  return;
}
}
int ldv_mutex_trylock_tfm_mutex(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_tfm_mutex == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_tfm_mutex = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_tfm_mutex(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_tfm_mutex == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_tfm_mutex = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_tfm_mutex(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_tfm_mutex == 1) {
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
void ldv_mutex_unlock_tfm_mutex(struct mutex *lock )
{
  {
  if (ldv_mutex_tfm_mutex == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_tfm_mutex = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_cred_guard_mutex = 1;
  ldv_mutex_cs_hash_tfm_mutex = 1;
  ldv_mutex_cs_mutex = 1;
  ldv_mutex_cs_tfm_mutex = 1;
  ldv_mutex_ecryptfs_daemon_hash_mux = 1;
  ldv_mutex_ecryptfs_msg_ctx_lists_mux = 1;
  ldv_mutex_global_auth_tok_list_mutex = 1;
  ldv_mutex_i_mutex = 1;
  ldv_mutex_key_tfm_list_mutex = 1;
  ldv_mutex_keysig_list_mutex = 1;
  ldv_mutex_lock = 1;
  ldv_mutex_lower_file_count = 1;
  ldv_mutex_lower_file_mutex = 1;
  ldv_mutex_mutex = 1;
  ldv_mutex_mux = 1;
  ldv_mutex_tfm_mutex = 1;
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
  if (ldv_mutex_cs_hash_tfm_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_cs_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_cs_tfm_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_ecryptfs_daemon_hash_mux == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_ecryptfs_msg_ctx_lists_mux == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_global_auth_tok_list_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_i_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_key_tfm_list_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_keysig_list_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lower_file_count == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_lower_file_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_mux == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_tfm_mutex == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
void __free_pages(struct page *arg0, unsigned int arg1) {
  return;
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
void __lock_page(struct page *arg0) {
  return;
}
void __mark_inode_dirty(struct inode *arg0, int arg1) {
  return;
}
void __might_sleep(const char *arg0, int arg1, int arg2) {
  return;
}
void __mutex_init(struct mutex *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __phys_addr(unsigned long arg0) {
  return __VERIFIER_nondet_ulong();
}
bool __VERIFIER_nondet_bool(void);
bool __refrigerator(bool arg0) {
  return __VERIFIER_nondet_bool();
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_from_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int _copy_to_user(void *arg0, const void *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_ulong();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
void *external_alloc(void);
struct page *alloc_pages_current(gfp_t arg0, unsigned int arg1) {
  return (struct page *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int atomic_dec_and_mutex_lock(atomic_t *arg0, struct mutex *arg1) {
  return __VERIFIER_nondet_int();
}
void bdi_destroy(struct backing_dev_info *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int bdi_setup_and_register(struct backing_dev_info *arg0, char *arg1, unsigned int arg2) {
  return __VERIFIER_nondet_int();
}
void call_rcu_sched(struct callback_head *arg0, void (*arg1)(struct callback_head *)) {
  return;
}
void clear_inode(struct inode *arg0) {
  return;
}
void clear_nlink(struct inode *arg0) {
  return;
}
void complete(struct completion *arg0) {
  return;
}
void *external_alloc(void);
struct crypto_tfm *crypto_alloc_base(const char *arg0, u32 arg1, u32 arg2) {
  return (struct crypto_tfm *)external_alloc();
}
void d_drop(struct dentry *arg0) {
  return;
}
void d_instantiate(struct dentry *arg0, struct inode *arg1) {
  return;
}
void *external_alloc(void);
struct dentry *d_make_root(struct inode *arg0) {
  return (struct dentry *)external_alloc();
}
void d_rehash(struct dentry *arg0) {
  return;
}
void deactivate_locked_super(struct super_block *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct file *dentry_open(const struct path *arg0, int arg1, const struct cred *arg2) {
  return (struct file *)external_alloc();
}
void *external_alloc(void);
struct dentry *dget_parent(struct dentry *arg0) {
  return (struct dentry *)external_alloc();
}
void down_write(struct rw_semaphore *arg0) {
  return;
}
void dput(struct dentry *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int filemap_write_and_wait(struct address_space *arg0) {
  return __VERIFIER_nondet_int();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
void fput(struct file *arg0) {
  return;
}
void free_pages(unsigned long arg0, unsigned int arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool freezing_slow_path(struct task_struct *arg0) {
  return __VERIFIER_nondet_bool();
}
void fsstack_copy_attr_all(struct inode *arg0, const struct inode *arg1) {
  return;
}
void fsstack_copy_inode_size(struct inode *arg0, struct inode *arg1) {
  return;
}
long __VERIFIER_nondet_long(void);
ssize_t generic_file_aio_read(struct kiocb *arg0, const struct iovec *arg1, unsigned long arg2, loff_t arg3) {
  return __VERIFIER_nondet_long();
}
void generic_fillattr(struct inode *arg0, struct kstat *arg1) {
  return;
}
void get_random_bytes(void *arg0, int arg1) {
  return;
}
void *external_alloc(void);
struct page *grab_cache_page_write_begin(struct address_space *arg0, unsigned long arg1, unsigned int arg2) {
  return (struct page *)external_alloc();
}
void *external_alloc(void);
struct inode *iget5_locked(struct super_block *arg0, unsigned long arg1, int (*arg2)(struct inode *, void *), int (*arg3)(struct inode *, void *), void *arg4) {
  return (struct inode *)external_alloc();
}
void *external_alloc(void);
struct inode *igrab(struct inode *arg0) {
  return (struct inode *)external_alloc();
}
void init_special_inode(struct inode *arg0, umode_t arg1, dev_t arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int inode_change_ok(const struct inode *arg0, struct iattr *arg1) {
  return __VERIFIER_nondet_int();
}
void inode_init_once(struct inode *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int inode_newsize_ok(const struct inode *arg0, loff_t arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int inode_permission(struct inode *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void iput(struct inode *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int kern_path(const char *arg0, unsigned int arg1, struct path *arg2) {
  return __VERIFIER_nondet_int();
}
void key_put(struct key *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int key_validate(const struct key *arg0) {
  return __VERIFIER_nondet_int();
}
void kill_anon_super(struct super_block *arg0) {
  return;
}
void *external_alloc(void);
void *kmem_cache_alloc(struct kmem_cache *arg0, gfp_t arg1) {
  return (void *)external_alloc();
}
void *external_alloc(void);
struct kmem_cache *kmem_cache_create(const char *arg0, size_t arg1, size_t arg2, unsigned long arg3, void (*arg4)(void *)) {
  return (struct kmem_cache *)external_alloc();
}
void kmem_cache_destroy(struct kmem_cache *arg0) {
  return;
}
void kmem_cache_free(struct kmem_cache *arg0, void *arg1) {
  return;
}
void *external_alloc(void);
struct kobject *kobject_create_and_add(const char *arg0, struct kobject *arg1) {
  return (struct kobject *)external_alloc();
}
void kobject_put(struct kobject *arg0) {
  return;
}
void *external_alloc(void);
struct task_struct *kthread_create_on_node(int (*arg0)(void *), void *arg1, int arg2, const char *arg3, ...) {
  return (struct task_struct *)external_alloc();
}
bool __VERIFIER_nondet_bool(void);
bool kthread_should_stop() {
  return __VERIFIER_nondet_bool();
}
int __VERIFIER_nondet_int(void);
int kthread_stop(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void kzfree(const void *arg0) {
  return;
}
void ldv_check_return_value(int arg0) {
  return;
}
void ldv_handler_precall() {
  return;
}
void list_del(struct list_head *arg0) {
  return;
}
void *external_alloc(void);
struct dentry *lock_rename(struct dentry *arg0, struct dentry *arg1) {
  return (struct dentry *)external_alloc();
}
void *external_alloc(void);
struct dentry *lookup_one_len(const char *arg0, struct dentry *arg1, int arg2) {
  return (struct dentry *)external_alloc();
}
void make_bad_inode(struct inode *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int match_token(char *arg0, const struct match_token *arg1, substring_t *arg2) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
void *memdup_user(const void *arg0, size_t arg1) {
  return (void *)external_alloc();
}
void might_fault() {
  return;
}
int __VERIFIER_nondet_int(void);
int misc_deregister(struct miscdevice *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int misc_register(struct miscdevice *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct vfsmount *mntget(struct vfsmount *arg0) {
  return (struct vfsmount *)external_alloc();
}
void mntput(struct vfsmount *arg0) {
  return;
}
void module_put(struct module *arg0) {
  return;
}
void mutex_lock(struct mutex *arg0) {
  return;
}
void mutex_lock_nested(struct mutex *arg0, unsigned int arg1) {
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
int notify_change(struct dentry *arg0, struct iattr *arg1) {
  return __VERIFIER_nondet_int();
}
void path_put(struct path *arg0) {
  return;
}
void prepare_to_wait(wait_queue_head_t *arg0, wait_queue_t *arg1, int arg2) {
  return;
}
int __VERIFIER_nondet_int(void);
int printk(const char *arg0, ...) {
  return __VERIFIER_nondet_int();
}
void put_page(struct page *arg0) {
  return;
}
void rcu_barrier() {
  return;
}
void *external_alloc(void);
struct page *read_cache_page(struct address_space *arg0, unsigned long arg1, filler_t *arg2, void *arg3) {
  return (struct page *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int register_filesystem(struct file_system_type *arg0) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct key *request_key(struct key_type *arg0, const char *arg1, const char *arg2) {
  return (struct key *)external_alloc();
}
void schedule() {
  return;
}
long __VERIFIER_nondet_long(void);
long int schedule_timeout_interruptible(long arg0) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
bool __VERIFIER_nondet_bool(void);
bool set_freezable() {
  return __VERIFIER_nondet_bool();
}
void set_nlink(struct inode *arg0, unsigned int arg1) {
  return;
}
void sg_init_one(struct scatterlist *arg0, const void *arg1, unsigned int arg2) {
  return;
}
void sg_init_table(struct scatterlist *arg0, unsigned int arg1) {
  return;
}
void *external_alloc(void);
struct super_block *sget(struct file_system_type *arg0, int (*arg1)(struct super_block *, void *), int (*arg2)(struct super_block *, void *), int arg3, void *arg4) {
  return (struct super_block *)external_alloc();
}
long __VERIFIER_nondet_long(void);
long int simple_strtol(const char *arg0, char **arg1, unsigned int arg2) {
  return __VERIFIER_nondet_long();
}
void *external_alloc(void);
char *strsep(char **arg0, const char *arg1) {
  return (char *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int sysfs_create_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return __VERIFIER_nondet_int();
}
void sysfs_remove_group(struct kobject *arg0, const struct attribute_group *arg1) {
  return;
}
void touch_atime(struct path *arg0) {
  return;
}
void truncate_inode_pages(struct address_space *arg0, loff_t arg1) {
  return;
}
void truncate_setsize(struct inode *arg0, loff_t arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool try_module_get(struct module *arg0) {
  return __VERIFIER_nondet_bool();
}
void unlock_new_inode(struct inode *arg0) {
  return;
}
void unlock_page(struct page *arg0) {
  return;
}
void unlock_rename(struct dentry *arg0, struct dentry *arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int unregister_filesystem(struct file_system_type *arg0) {
  return __VERIFIER_nondet_int();
}
void up_write(struct rw_semaphore *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int vfs_create(struct inode *arg0, struct dentry *arg1, umode_t arg2, bool arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vfs_fsync(struct file *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vfs_getattr(struct vfsmount *arg0, struct dentry *arg1, struct kstat *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vfs_link(struct dentry *arg0, struct inode *arg1, struct dentry *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vfs_mkdir(struct inode *arg0, struct dentry *arg1, umode_t arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vfs_mknod(struct inode *arg0, struct dentry *arg1, umode_t arg2, dev_t arg3) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t vfs_read(struct file *arg0, char *arg1, size_t arg2, loff_t *arg3) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int vfs_readdir(struct file *arg0, int (*arg1)(void *, const char *, int, loff_t , u64 , unsigned int), void *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vfs_rename(struct inode *arg0, struct dentry *arg1, struct inode *arg2, struct dentry *arg3) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vfs_rmdir(struct inode *arg0, struct dentry *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vfs_setxattr(struct dentry *arg0, const char *arg1, const void *arg2, size_t arg3, int arg4) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vfs_symlink(struct inode *arg0, struct dentry *arg1, const char *arg2) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int vfs_unlink(struct inode *arg0, struct dentry *arg1) {
  return __VERIFIER_nondet_int();
}
long __VERIFIER_nondet_long(void);
ssize_t vfs_write(struct file *arg0, const char *arg1, size_t arg2, loff_t *arg3) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int vprintk(const char *arg0, __va_list_tag *arg1) {
  return __VERIFIER_nondet_int();
}
void wait_for_completion(struct completion *arg0) {
  return;
}
long __VERIFIER_nondet_long(void);
ssize_t wait_on_sync_kiocb(struct kiocb *arg0) {
  return __VERIFIER_nondet_long();
}
int __VERIFIER_nondet_int(void);
int wake_up_process(struct task_struct *arg0) {
  return __VERIFIER_nondet_int();
}
void warn_slowpath_fmt(const char *arg0, const int arg1, const char *arg2, ...) {
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
