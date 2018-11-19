extern void __VERIFIER_error() __attribute__ ((__noreturn__));
typedef signed char __s8;
typedef short __s16;
typedef unsigned short __u16;
typedef int __s32;
typedef unsigned int __u32;
typedef unsigned long long __u64;
typedef unsigned char u8;
typedef unsigned short u16;
typedef int s32;
typedef unsigned int u32;
typedef long long s64;
typedef unsigned long long u64;
typedef long __kernel_long_t;
typedef unsigned long __kernel_ulong_t;
typedef unsigned int __kernel_uid32_t;
typedef unsigned int __kernel_gid32_t;
typedef __kernel_ulong_t __kernel_size_t;
typedef __kernel_long_t __kernel_ssize_t;
typedef long long __kernel_loff_t;
typedef __kernel_long_t __kernel_time_t;
typedef __u16 __be16;
typedef __u32 __be32;
typedef __u32 __kernel_dev_t;
typedef __kernel_dev_t dev_t;
typedef unsigned short umode_t;
typedef _Bool bool;
typedef __kernel_uid32_t uid_t;
typedef __kernel_gid32_t gid_t;
typedef __kernel_loff_t loff_t;
typedef __kernel_size_t size_t;
typedef __kernel_ssize_t ssize_t;
typedef __kernel_time_t time_t;
typedef unsigned long sector_t;
typedef unsigned long blkcnt_t;
typedef unsigned int gfp_t;
typedef unsigned int fmode_t;
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
struct completion;
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
struct cpumask;
struct cpumask {
   unsigned long bits[64U] ;
};
typedef struct cpumask *cpumask_var_t;
struct kmem_cache;
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
struct timespec;
struct __wait_queue_head {
   spinlock_t lock ;
   struct list_head task_list ;
};
typedef struct __wait_queue_head wait_queue_head_t;
struct seqcount {
   unsigned int sequence ;
};
typedef struct seqcount seqcount_t;
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
struct timespec {
   __kernel_time_t tv_sec ;
   long tv_nsec ;
};
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
struct __anonstruct_mm_context_t_101 {
   void *ldt ;
   int size ;
   unsigned short ia32_compat ;
   struct mutex lock ;
   void *vdso ;
};
typedef struct __anonstruct_mm_context_t_101 mm_context_t;
struct vm_area_struct;
struct mem_cgroup;
struct __anonstruct_ldv_12196_129 {
   struct mem_cgroup *memcg ;
   struct list_head list ;
   struct kmem_cache *root_cache ;
   bool dead ;
   atomic_t nr_pages ;
   struct work_struct destroy ;
};
union __anonunion_ldv_12197_128 {
   struct kmem_cache *memcg_caches[0U] ;
   struct __anonstruct_ldv_12196_129 ldv_12196 ;
};
struct memcg_cache_params {
   bool is_root_cache ;
   union __anonunion_ldv_12197_128 ldv_12197 ;
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
struct __anonstruct_ldv_12994_131 {
   u32 hash ;
   u32 len ;
};
union __anonunion_ldv_12996_130 {
   struct __anonstruct_ldv_12994_131 ldv_12994 ;
   u64 hash_len ;
};
struct qstr {
   union __anonunion_ldv_12996_130 ldv_12996 ;
   unsigned char const *name ;
};
struct inode;
struct dentry_operations;
struct super_block;
union __anonunion_d_u_132 {
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
   union __anonunion_d_u_132 d_u ;
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
struct iovec;
struct kiocb;
struct pipe_inode_info;
struct poll_table_struct;
struct kstatfs;
struct cred;
struct swap_info_struct;
struct buffer_head;
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
union __anonunion_ldv_14189_134 {
   kuid_t uid ;
   kgid_t gid ;
   kprojid_t projid ;
};
struct kqid {
   union __anonunion_ldv_14189_134 ldv_14189 ;
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
union __anonunion_arg_136 {
   char *buf ;
   void *data ;
};
struct __anonstruct_read_descriptor_t_135 {
   size_t written ;
   size_t count ;
   union __anonunion_arg_136 arg ;
   int error ;
};
typedef struct __anonstruct_read_descriptor_t_135 read_descriptor_t;
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
union __anonunion_ldv_14625_137 {
   unsigned int const i_nlink ;
   unsigned int __i_nlink ;
};
union __anonunion_ldv_14645_138 {
   struct hlist_head i_dentry ;
   struct callback_head i_rcu ;
};
struct file_lock;
struct cdev;
union __anonunion_ldv_14661_139 {
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
   union __anonunion_ldv_14625_137 ldv_14625 ;
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
   union __anonunion_ldv_14645_138 ldv_14645 ;
   u64 i_version ;
   atomic_t i_count ;
   atomic_t i_dio_count ;
   atomic_t i_writecount ;
   struct file_operations const *i_fop ;
   struct file_lock *i_flock ;
   struct address_space i_data ;
   struct dquot *i_dquot[2U] ;
   struct list_head i_devices ;
   union __anonunion_ldv_14661_139 ldv_14661 ;
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
union __anonunion_f_u_140 {
   struct list_head fu_list ;
   struct callback_head fu_rcuhead ;
};
struct file {
   union __anonunion_f_u_140 f_u ;
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
struct __anonstruct_afs_142 {
   struct list_head link ;
   int state ;
};
union __anonunion_fl_u_141 {
   struct nfs_lock_info nfs_fl ;
   struct nfs4_lock_info nfs4_fl ;
   struct __anonstruct_afs_142 afs ;
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
   union __anonunion_fl_u_141 fl_u ;
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
union __anonunion_ldv_16749_144 {
   unsigned long index ;
   void *freelist ;
   bool pfmemalloc ;
};
struct __anonstruct_ldv_16759_148 {
   unsigned short inuse ;
   unsigned short objects : 15 ;
   unsigned char frozen : 1 ;
};
union __anonunion_ldv_16761_147 {
   atomic_t _mapcount ;
   struct __anonstruct_ldv_16759_148 ldv_16759 ;
   int units ;
};
struct __anonstruct_ldv_16763_146 {
   union __anonunion_ldv_16761_147 ldv_16761 ;
   atomic_t _count ;
};
union __anonunion_ldv_16764_145 {
   unsigned long counters ;
   struct __anonstruct_ldv_16763_146 ldv_16763 ;
};
struct __anonstruct_ldv_16765_143 {
   union __anonunion_ldv_16749_144 ldv_16749 ;
   union __anonunion_ldv_16764_145 ldv_16764 ;
};
struct __anonstruct_ldv_16772_150 {
   struct page *next ;
   int pages ;
   int pobjects ;
};
struct slab;
union __anonunion_ldv_16776_149 {
   struct list_head lru ;
   struct __anonstruct_ldv_16772_150 ldv_16772 ;
   struct list_head list ;
   struct slab *slab_page ;
};
union __anonunion_ldv_16781_151 {
   unsigned long private ;
   struct kmem_cache *slab_cache ;
   struct page *first_page ;
};
struct page {
   unsigned long flags ;
   struct address_space *mapping ;
   struct __anonstruct_ldv_16765_143 ldv_16765 ;
   union __anonunion_ldv_16776_149 ldv_16776 ;
   union __anonunion_ldv_16781_151 ldv_16781 ;
   unsigned long debug_flags ;
   int _last_nid ;
};
struct __anonstruct_linear_153 {
   struct rb_node rb ;
   unsigned long rb_subtree_last ;
};
union __anonunion_shared_152 {
   struct __anonstruct_linear_153 linear ;
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
   union __anonunion_shared_152 shared ;
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
typedef void bh_end_io_t(struct buffer_head * , int );
struct buffer_head {
   unsigned long b_state ;
   struct buffer_head *b_this_page ;
   struct page *b_page ;
   sector_t b_blocknr ;
   size_t b_size ;
   char *b_data ;
   struct block_device *b_bdev ;
   bh_end_io_t *b_end_io ;
   void *b_private ;
   struct list_head b_assoc_buffers ;
   struct address_space *b_assoc_map ;
   atomic_t b_count ;
};
struct hfs_extent {
   __be16 block ;
   __be16 count ;
};
typedef struct hfs_extent hfs_extent_rec[3U];
struct hfs_mdb {
   __be16 drSigWord ;
   __be32 drCrDate ;
   __be32 drLsMod ;
   __be16 drAtrb ;
   __be16 drNmFls ;
   __be16 drVBMSt ;
   __be16 drAllocPtr ;
   __be16 drNmAlBlks ;
   __be32 drAlBlkSiz ;
   __be32 drClpSiz ;
   __be16 drAlBlSt ;
   __be32 drNxtCNID ;
   __be16 drFreeBks ;
   u8 drVN[28U] ;
   __be32 drVolBkUp ;
   __be16 drVSeqNum ;
   __be32 drWrCnt ;
   __be32 drXTClpSiz ;
   __be32 drCTClpSiz ;
   __be16 drNmRtDirs ;
   __be32 drFilCnt ;
   __be32 drDirCnt ;
   u8 drFndrInfo[32U] ;
   __be16 drEmbedSigWord ;
   __be32 drEmbedExtent ;
   __be32 drXTFlSize ;
   hfs_extent_rec drXTExtRec ;
   __be32 drCTFlSize ;
   hfs_extent_rec drCTExtRec ;
};
struct hfs_btree;
struct nls_table;
struct hfs_sb_info {
   struct buffer_head *mdb_bh ;
   struct hfs_mdb *mdb ;
   struct buffer_head *alt_mdb_bh ;
   struct hfs_mdb *alt_mdb ;
   __be32 *bitmap ;
   struct hfs_btree *ext_tree ;
   struct hfs_btree *cat_tree ;
   u32 file_count ;
   u32 folder_count ;
   u32 next_id ;
   u32 clumpablks ;
   u32 fs_start ;
   u32 part_start ;
   u16 root_files ;
   u16 root_dirs ;
   u16 fs_ablocks ;
   u16 free_ablocks ;
   u32 alloc_blksz ;
   int s_quiet ;
   __be32 s_type ;
   __be32 s_creator ;
   umode_t s_file_umask ;
   umode_t s_dir_umask ;
   kuid_t s_uid ;
   kgid_t s_gid ;
   int session ;
   int part ;
   struct nls_table *nls_io ;
   struct nls_table *nls_disk ;
   struct mutex bitmap_lock ;
   unsigned long flags ;
   u16 blockoffset ;
   int fs_div ;
   struct super_block *sb ;
   int work_queued ;
   struct delayed_work mdb_work ;
   spinlock_t work_lock ;
};
struct hfs_name {
   u8 len ;
   u8 name[31U] ;
};
struct hfs_cat_key {
   u8 key_len ;
   u8 reserved ;
   __be32 ParID ;
   struct hfs_name CName ;
};
struct hfs_ext_key {
   u8 key_len ;
   u8 FkType ;
   __be32 FNum ;
   __be16 FABN ;
};
union hfs_btree_key {
   u8 key_len ;
   struct hfs_cat_key cat ;
   struct hfs_ext_key ext ;
};
typedef union hfs_btree_key btree_key;
struct hfs_find_data;
struct hfs_bnode;
struct hfs_btree {
   struct super_block *sb ;
   struct inode *inode ;
   int (*keycmp)(btree_key const * , btree_key const * ) ;
   u32 cnid ;
   u32 root ;
   u32 leaf_count ;
   u32 leaf_head ;
   u32 leaf_tail ;
   u32 node_count ;
   u32 free_nodes ;
   u32 attributes ;
   unsigned int node_size ;
   unsigned int node_size_shift ;
   unsigned int max_key_len ;
   unsigned int depth ;
   struct mutex tree_lock ;
   unsigned int pages_per_bnode ;
   spinlock_t hash_lock ;
   struct hfs_bnode *node_hash[256U] ;
   int node_hash_cnt ;
};
struct hfs_bnode {
   struct hfs_btree *tree ;
   u32 prev ;
   u32 this ;
   u32 next ;
   u32 parent ;
   u16 num_recs ;
   u8 type ;
   u8 height ;
   struct hfs_bnode *next_hash ;
   unsigned long flags ;
   wait_queue_head_t lock_wq ;
   atomic_t refcnt ;
   unsigned int page_offset ;
   struct page *page[0U] ;
};
struct hfs_find_data {
   btree_key *key ;
   btree_key *search_key ;
   struct hfs_btree *tree ;
   struct hfs_bnode *bnode ;
   int record ;
   int keyoffset ;
   int keylength ;
   int entryoffset ;
   int entrylength ;
};
typedef unsigned char __u8;
typedef long long __s64;
typedef int __kernel_pid_t;
typedef __kernel_long_t __kernel_clock_t;
typedef int __kernel_timer_t;
typedef int __kernel_clockid_t;
typedef __kernel_pid_t pid_t;
typedef __kernel_clockid_t clockid_t;
typedef __s32 int32_t;
typedef __u32 uint32_t;
typedef unsigned int oom_flags_t;
struct pt_regs;
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
struct thread_struct;
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
typedef struct cpumask cpumask_t;
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
struct mutex_waiter {
   struct list_head list ;
   struct task_struct *task ;
   void *magic ;
};
struct __wait_queue;
typedef struct __wait_queue wait_queue_t;
struct __wait_queue {
   unsigned int flags ;
   void *private ;
   int (*func)(wait_queue_t * , unsigned int , int , void * ) ;
   struct list_head task_list ;
};
union ktime {
   s64 tv64 ;
};
typedef union ktime ktime_t;
struct hrtimer;
enum hrtimer_restart;
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
struct page_frag {
   struct page *page ;
   __u32 offset ;
   __u32 size ;
};
struct user_struct;
struct user_namespace;
struct pid_link {
   struct hlist_node node ;
   struct pid *pid ;
};
struct kernel_cap_struct {
   __u32 cap[2U] ;
};
typedef struct kernel_cap_struct kernel_cap_t;
struct io_context;
struct cgroup_subsys_state;
typedef int filler_t(void * , struct page * );
typedef unsigned long cputime_t;
struct sem_undo_list;
struct sysv_sem {
   struct sem_undo_list *undo_list ;
};
struct __anonstruct_sigset_t_155 {
   unsigned long sig[1U] ;
};
typedef struct __anonstruct_sigset_t_155 sigset_t;
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
struct __anonstruct__kill_157 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
};
struct __anonstruct__timer_158 {
   __kernel_timer_t _tid ;
   int _overrun ;
   char _pad[0U] ;
   sigval_t _sigval ;
   int _sys_private ;
};
struct __anonstruct__rt_159 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   sigval_t _sigval ;
};
struct __anonstruct__sigchld_160 {
   __kernel_pid_t _pid ;
   __kernel_uid32_t _uid ;
   int _status ;
   __kernel_clock_t _utime ;
   __kernel_clock_t _stime ;
};
struct __anonstruct__sigfault_161 {
   void *_addr ;
   short _addr_lsb ;
};
struct __anonstruct__sigpoll_162 {
   long _band ;
   int _fd ;
};
struct __anonstruct__sigsys_163 {
   void *_call_addr ;
   int _syscall ;
   unsigned int _arch ;
};
union __anonunion__sifields_156 {
   int _pad[28U] ;
   struct __anonstruct__kill_157 _kill ;
   struct __anonstruct__timer_158 _timer ;
   struct __anonstruct__rt_159 _rt ;
   struct __anonstruct__sigchld_160 _sigchld ;
   struct __anonstruct__sigfault_161 _sigfault ;
   struct __anonstruct__sigpoll_162 _sigpoll ;
   struct __anonstruct__sigsys_163 _sigsys ;
};
struct siginfo {
   int si_signo ;
   int si_errno ;
   int si_code ;
   union __anonunion__sifields_156 _sifields ;
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
struct nsproxy;
typedef int32_t key_serial_t;
typedef uint32_t key_perm_t;
struct key;
struct signal_struct;
struct key_type;
struct keyring_list;
union __anonunion_ldv_22913_168 {
   struct list_head graveyard_link ;
   struct rb_node serial_node ;
};
struct key_user;
union __anonunion_ldv_22922_169 {
   time_t expiry ;
   time_t revoked_at ;
};
union __anonunion_type_data_170 {
   struct list_head link ;
   unsigned long x[2U] ;
   void *p[2U] ;
   int reject_error ;
};
union __anonunion_payload_171 {
   unsigned long value ;
   void *rcudata ;
   void *data ;
   struct keyring_list *subscriptions ;
};
struct key {
   atomic_t usage ;
   key_serial_t serial ;
   union __anonunion_ldv_22913_168 ldv_22913 ;
   struct key_type *type ;
   struct rw_semaphore sem ;
   struct key_user *user ;
   void *security ;
   union __anonunion_ldv_22922_169 ldv_22922 ;
   time_t last_used_at ;
   kuid_t uid ;
   kgid_t gid ;
   key_perm_t perm ;
   unsigned short quotalen ;
   unsigned short datalen ;
   unsigned long flags ;
   char *description ;
   union __anonunion_type_data_170 type_data ;
   union __anonunion_payload_171 payload ;
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
union __anonunion_ki_obj_172 {
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
   union __anonunion_ki_obj_172 ki_obj ;
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
struct reclaim_state {
   unsigned long reclaimed_slab ;
};
struct swap_extent {
   struct list_head list ;
   unsigned long start_page ;
   unsigned long nr_pages ;
   sector_t start_block ;
};
struct swap_info_struct {
   unsigned long flags ;
   short prio ;
   signed char type ;
   signed char next ;
   unsigned int max ;
   unsigned char *swap_map ;
   unsigned int lowest_bit ;
   unsigned int highest_bit ;
   unsigned int pages ;
   unsigned int inuse_pages ;
   unsigned int cluster_next ;
   unsigned int cluster_nr ;
   unsigned int lowest_alloc ;
   unsigned int highest_alloc ;
   struct swap_extent *curr_swap_extent ;
   struct swap_extent first_swap_extent ;
   struct block_device *bdev ;
   struct file *swap_file ;
   unsigned int old_block_size ;
   unsigned long *frontswap_map ;
   atomic_t frontswap_pages ;
};
struct hfs_bnode_desc {
   __be32 next ;
   __be32 prev ;
   u8 type ;
   u8 height ;
   __be16 num_recs ;
   u16 reserved ;
};
typedef int ldv_func_ret_type___4;
struct hfs_inode_info {
   atomic_t opencnt ;
   unsigned int flags ;
   int tz_secondswest ;
   struct hfs_cat_key cat_key ;
   struct list_head open_dir_list ;
   struct inode *rsrc_inode ;
   struct mutex extents_lock ;
   u16 alloc_blocks ;
   u16 clump_blocks ;
   sector_t fs_blocks ;
   hfs_extent_rec first_extents ;
   u16 first_blocks ;
   hfs_extent_rec cached_extents ;
   u16 cached_start ;
   u16 cached_blocks ;
   loff_t phys_size ;
   struct inode vfs_inode ;
};
struct hfs_btree_header_rec {
   __be16 depth ;
   __be32 root ;
   __be32 leaf_count ;
   __be32 leaf_head ;
   __be32 leaf_tail ;
   __be16 node_size ;
   __be16 max_key_len ;
   __be32 node_count ;
   __be32 free_nodes ;
   u16 reserved1 ;
   __be32 clump_size ;
   u8 btree_type ;
   u8 reserved2 ;
   __be32 attributes ;
   u32 reserved3[16U] ;
};
typedef signed char s8;
struct timezone {
   int tz_minuteswest ;
   int tz_dsttime ;
};
struct hfs_point {
   __be16 v ;
   __be16 h ;
};
struct hfs_rect {
   __be16 top ;
   __be16 left ;
   __be16 bottom ;
   __be16 right ;
};
struct hfs_finfo {
   __be32 fdType ;
   __be32 fdCreator ;
   __be16 fdFlags ;
   struct hfs_point fdLocation ;
   __be16 fdFldr ;
};
struct hfs_fxinfo {
   __be16 fdIconID ;
   u8 fdUnused[8U] ;
   __be16 fdComment ;
   __be32 fdPutAway ;
};
struct hfs_dinfo {
   struct hfs_rect frRect ;
   __be16 frFlags ;
   struct hfs_point frLocation ;
   __be16 frView ;
};
struct hfs_dxinfo {
   struct hfs_point frScroll ;
   __be32 frOpenChain ;
   __be16 frUnused ;
   __be16 frComment ;
   __be32 frPutAway ;
};
struct hfs_cat_file {
   s8 type ;
   u8 reserved ;
   u8 Flags ;
   s8 Typ ;
   struct hfs_finfo UsrWds ;
   __be32 FlNum ;
   __be16 StBlk ;
   __be32 LgLen ;
   __be32 PyLen ;
   __be16 RStBlk ;
   __be32 RLgLen ;
   __be32 RPyLen ;
   __be32 CrDat ;
   __be32 MdDat ;
   __be32 BkDat ;
   struct hfs_fxinfo FndrInfo ;
   __be16 ClpSize ;
   hfs_extent_rec ExtRec ;
   hfs_extent_rec RExtRec ;
   u32 Resrv ;
};
struct hfs_cat_dir {
   s8 type ;
   u8 reserved ;
   __be16 Flags ;
   __be16 Val ;
   __be32 DirID ;
   __be32 CrDat ;
   __be32 MdDat ;
   __be32 BkDat ;
   struct hfs_dinfo UsrInfo ;
   struct hfs_dxinfo FndrInfo ;
   u8 Resrv[16U] ;
};
struct hfs_cat_thread {
   s8 type ;
   u8 reserved[9U] ;
   __be32 ParID ;
   struct hfs_name CName ;
};
union hfs_cat_rec {
   s8 type ;
   struct hfs_cat_file file ;
   struct hfs_cat_dir dir ;
   struct hfs_cat_thread thread ;
};
typedef union hfs_cat_rec hfs_cat_rec;
struct hfs_readdir_data {
   struct list_head list ;
   struct file *file ;
   struct hfs_cat_key key ;
};
typedef union hfs_btree_key hfs_btree_key;
enum hrtimer_restart;
struct bio_vec;
struct bio_set;
struct bio;
struct bio_integrity_payload;
typedef void bio_end_io_t(struct bio * , int );
struct bio_vec {
   struct page *bv_page ;
   unsigned int bv_len ;
   unsigned int bv_offset ;
};
struct bio {
   sector_t bi_sector ;
   struct bio *bi_next ;
   struct block_device *bi_bdev ;
   unsigned long bi_flags ;
   unsigned long bi_rw ;
   unsigned short bi_vcnt ;
   unsigned short bi_idx ;
   unsigned int bi_phys_segments ;
   unsigned int bi_size ;
   unsigned int bi_seg_front_size ;
   unsigned int bi_seg_back_size ;
   bio_end_io_t *bi_end_io ;
   void *bi_private ;
   struct io_context *bi_ioc ;
   struct cgroup_subsys_state *bi_css ;
   struct bio_integrity_payload *bi_integrity ;
   unsigned int bi_max_vecs ;
   atomic_t bi_cnt ;
   struct bio_vec *bi_io_vec ;
   struct bio_set *bi_pool ;
   struct bio_vec bi_inline_vecs[0U] ;
};
typedef int get_block_t(struct inode * , sector_t , struct buffer_head * , int );
typedef void dio_iodone_t(struct kiocb * , loff_t , ssize_t , void * , int , bool );
typedef void dio_submit_t(int , struct bio * , struct inode * , loff_t );
struct hfs_iget_data {
   struct hfs_cat_key *key ;
   hfs_cat_rec *rec ;
};
struct device;
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
struct block_device_operations;
struct cdrom_msf0 {
   __u8 minute ;
   __u8 second ;
   __u8 frame ;
};
union cdrom_addr {
   struct cdrom_msf0 msf ;
   int lba ;
};
struct cdrom_tocentry {
   __u8 cdte_track ;
   unsigned char cdte_adr : 4 ;
   unsigned char cdte_ctrl : 4 ;
   __u8 cdte_format ;
   union cdrom_addr cdte_addr ;
   __u8 cdte_datamode ;
};
struct cdrom_multisession {
   union cdrom_addr addr ;
   __u8 xa_flag ;
   __u8 addr_format ;
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
struct device_type;
struct class;
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
struct disk_stats {
   unsigned long sectors[2U] ;
   unsigned long ios[2U] ;
   unsigned long merges[2U] ;
   unsigned long ticks[2U] ;
   unsigned long io_ticks ;
   unsigned long time_in_queue ;
};
struct partition_meta_info {
   char uuid[37U] ;
   u8 volname[64U] ;
};
struct hd_struct {
   sector_t start_sect ;
   sector_t nr_sects ;
   seqcount_t nr_sects_seq ;
   sector_t alignment_offset ;
   unsigned int discard_alignment ;
   struct device __dev ;
   struct kobject *holder_dir ;
   int policy ;
   int partno ;
   struct partition_meta_info *info ;
   int make_it_fail ;
   unsigned long stamp ;
   atomic_t in_flight[2U] ;
   struct disk_stats *dkstats ;
   atomic_t ref ;
   struct callback_head callback_head ;
};
struct disk_part_tbl {
   struct callback_head callback_head ;
   int len ;
   struct hd_struct *last_lookup ;
   struct hd_struct *part[] ;
};
struct disk_events;
struct timer_rand_state;
struct blk_integrity;
struct gendisk {
   int major ;
   int first_minor ;
   int minors ;
   char disk_name[32U] ;
   char *(*devnode)(struct gendisk * , umode_t * ) ;
   unsigned int events ;
   unsigned int async_events ;
   struct disk_part_tbl *part_tbl ;
   struct hd_struct part0 ;
   struct block_device_operations const *fops ;
   struct request_queue *queue ;
   void *private_data ;
   int flags ;
   struct device *driverfs_dev ;
   struct kobject *slave_dir ;
   struct timer_rand_state *random ;
   atomic_t sync_io ;
   struct disk_events *ev ;
   struct blk_integrity *integrity ;
   int node_id ;
};
typedef u16 wchar_t;
struct nls_table {
   char const *charset ;
   char const *alias ;
   int (*uni2char)(wchar_t , unsigned char * , int ) ;
   int (*char2uni)(unsigned char const * , int , wchar_t * ) ;
   unsigned char const *charset2lower ;
   unsigned char const *charset2upper ;
   struct module *owner ;
   struct nls_table *next ;
};
typedef int ldv_func_ret_type___2;
struct new_pmap {
   __be16 pmSig ;
   __be16 reSigPad ;
   __be32 pmMapBlkCnt ;
   __be32 pmPyPartStart ;
   __be32 pmPartBlkCnt ;
   u8 pmPartName[32U] ;
   u8 pmPartType[32U] ;
};
struct old_pmap_entry {
   __be32 pdStart ;
   __be32 pdSize ;
   __be32 pdFSID ;
};
struct old_pmap {
   __be16 pdSig ;
   struct old_pmap_entry pdEntry[42U] ;
};
typedef short s16;
struct __anonstruct___kernel_fsid_t_5 {
   int val[2U] ;
};
typedef struct __anonstruct___kernel_fsid_t_5 __kernel_fsid_t;
typedef void (*ctor_fn_t)(void);
struct bug_entry {
   int bug_addr_disp ;
   int file_disp ;
   unsigned short line ;
   unsigned short flags ;
};
struct static_key;
struct seq_operations;
enum hrtimer_restart;
struct workqueue_struct;
struct call_single_data {
   struct list_head list ;
   void (*func)(void * ) ;
   void *info ;
   u16 flags ;
   u16 priv ;
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
union __anonunion_ldv_13892_134 {
   void *arg ;
   struct kparam_string const *str ;
   struct kparam_array const *arr ;
};
struct kernel_param {
   char const *name ;
   struct kernel_param_ops const *ops ;
   u16 perm ;
   s16 level ;
   union __anonunion_ldv_13892_134 ldv_13892 ;
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
struct hd_geometry;
struct exception_table_entry {
   int insn ;
   int fixup ;
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
union __anonunion_ldv_27449_179 {
   struct list_head q_node ;
   struct kmem_cache *__rcu_icq_cache ;
};
union __anonunion_ldv_27453_180 {
   struct hlist_node ioc_node ;
   struct callback_head __rcu_head ;
};
struct io_cq {
   struct request_queue *q ;
   struct io_context *ioc ;
   union __anonunion_ldv_27449_179 ldv_27449 ;
   union __anonunion_ldv_27453_180 ldv_27453 ;
   unsigned int flags ;
};
struct io_context {
   atomic_long_t refcount ;
   atomic_t active_ref ;
   atomic_t nr_tasks ;
   spinlock_t lock ;
   unsigned short ioprio ;
   int nr_batch_requests ;
   unsigned long last_waited ;
   struct radix_tree_root icq_tree ;
   struct io_cq *icq_hint ;
   struct hlist_head icq_list ;
   struct work_struct release_work ;
};
struct bio_integrity_payload {
   struct bio *bip_bio ;
   sector_t bip_sector ;
   void *bip_buf ;
   bio_end_io_t *bip_end_io ;
   unsigned int bip_size ;
   unsigned short bip_slab ;
   unsigned short bip_vcnt ;
   unsigned short bip_idx ;
   struct work_struct bip_work ;
   struct bio_vec bip_vec[0U] ;
};
struct bio_set {
   struct kmem_cache *bio_slab ;
   unsigned int front_pad ;
   mempool_t *bio_pool ;
   mempool_t *bio_integrity_pool ;
   mempool_t *bvec_pool ;
};
struct bio_list {
   struct bio *head ;
   struct bio *tail ;
};
struct bsg_class_device {
   struct device *class_dev ;
   struct device *parent ;
   int minor ;
   struct request_queue *queue ;
   struct kref ref ;
   void (*release)(struct device * ) ;
};
struct elevator_queue;
struct request;
struct bsg_job;
struct blkcg_gq;
typedef void rq_end_io_fn(struct request * , int );
struct request_list {
   struct request_queue *q ;
   struct blkcg_gq *blkg ;
   int count[2U] ;
   int starved[2U] ;
   mempool_t *rq_pool ;
   wait_queue_head_t wait[2U] ;
   unsigned int flags ;
};
enum rq_cmd_type_bits {
    REQ_TYPE_FS = 1,
    REQ_TYPE_BLOCK_PC = 2,
    REQ_TYPE_SENSE = 3,
    REQ_TYPE_PM_SUSPEND = 4,
    REQ_TYPE_PM_RESUME = 5,
    REQ_TYPE_PM_SHUTDOWN = 6,
    REQ_TYPE_SPECIAL = 7,
    REQ_TYPE_ATA_TASKFILE = 8,
    REQ_TYPE_ATA_PC = 9
} ;
union __anonunion_ldv_27907_181 {
   struct rb_node rb_node ;
   void *completion_data ;
};
struct __anonstruct_elv_183 {
   struct io_cq *icq ;
   void *priv[2U] ;
};
struct __anonstruct_flush_184 {
   unsigned int seq ;
   struct list_head list ;
   rq_end_io_fn *saved_end_io ;
};
union __anonunion_ldv_27918_182 {
   struct __anonstruct_elv_183 elv ;
   struct __anonstruct_flush_184 flush ;
};
struct request {
   struct list_head queuelist ;
   struct call_single_data csd ;
   struct request_queue *q ;
   unsigned int cmd_flags ;
   enum rq_cmd_type_bits cmd_type ;
   unsigned long atomic_flags ;
   int cpu ;
   unsigned int __data_len ;
   sector_t __sector ;
   struct bio *bio ;
   struct bio *biotail ;
   struct hlist_node hash ;
   union __anonunion_ldv_27907_181 ldv_27907 ;
   union __anonunion_ldv_27918_182 ldv_27918 ;
   struct gendisk *rq_disk ;
   struct hd_struct *part ;
   unsigned long start_time ;
   struct request_list *rl ;
   unsigned long long start_time_ns ;
   unsigned long long io_start_time_ns ;
   unsigned short nr_phys_segments ;
   unsigned short nr_integrity_segments ;
   unsigned short ioprio ;
   int ref_count ;
   void *special ;
   char *buffer ;
   int tag ;
   int errors ;
   unsigned char __cmd[16U] ;
   unsigned char *cmd ;
   unsigned short cmd_len ;
   unsigned int extra_len ;
   unsigned int sense_len ;
   unsigned int resid_len ;
   void *sense ;
   unsigned long deadline ;
   struct list_head timeout_list ;
   unsigned int timeout ;
   int retries ;
   rq_end_io_fn *end_io ;
   void *end_io_data ;
   struct request *next_rq ;
};
typedef int elevator_merge_fn(struct request_queue * , struct request ** , struct bio * );
typedef void elevator_merge_req_fn(struct request_queue * , struct request * , struct request * );
typedef void elevator_merged_fn(struct request_queue * , struct request * , int );
typedef int elevator_allow_merge_fn(struct request_queue * , struct request * , struct bio * );
typedef void elevator_bio_merged_fn(struct request_queue * , struct request * , struct bio * );
typedef int elevator_dispatch_fn(struct request_queue * , int );
typedef void elevator_add_req_fn(struct request_queue * , struct request * );
typedef struct request *elevator_request_list_fn(struct request_queue * , struct request * );
typedef void elevator_completed_req_fn(struct request_queue * , struct request * );
typedef int elevator_may_queue_fn(struct request_queue * , int );
typedef void elevator_init_icq_fn(struct io_cq * );
typedef void elevator_exit_icq_fn(struct io_cq * );
typedef int elevator_set_req_fn(struct request_queue * , struct request * , struct bio * ,
                                gfp_t );
typedef void elevator_put_req_fn(struct request * );
typedef void elevator_activate_req_fn(struct request_queue * , struct request * );
typedef void elevator_deactivate_req_fn(struct request_queue * , struct request * );
typedef int elevator_init_fn(struct request_queue * );
typedef void elevator_exit_fn(struct elevator_queue * );
struct elevator_ops {
   elevator_merge_fn *elevator_merge_fn ;
   elevator_merged_fn *elevator_merged_fn ;
   elevator_merge_req_fn *elevator_merge_req_fn ;
   elevator_allow_merge_fn *elevator_allow_merge_fn ;
   elevator_bio_merged_fn *elevator_bio_merged_fn ;
   elevator_dispatch_fn *elevator_dispatch_fn ;
   elevator_add_req_fn *elevator_add_req_fn ;
   elevator_activate_req_fn *elevator_activate_req_fn ;
   elevator_deactivate_req_fn *elevator_deactivate_req_fn ;
   elevator_completed_req_fn *elevator_completed_req_fn ;
   elevator_request_list_fn *elevator_former_req_fn ;
   elevator_request_list_fn *elevator_latter_req_fn ;
   elevator_init_icq_fn *elevator_init_icq_fn ;
   elevator_exit_icq_fn *elevator_exit_icq_fn ;
   elevator_set_req_fn *elevator_set_req_fn ;
   elevator_put_req_fn *elevator_put_req_fn ;
   elevator_may_queue_fn *elevator_may_queue_fn ;
   elevator_init_fn *elevator_init_fn ;
   elevator_exit_fn *elevator_exit_fn ;
};
struct elv_fs_entry {
   struct attribute attr ;
   ssize_t (*show)(struct elevator_queue * , char * ) ;
   ssize_t (*store)(struct elevator_queue * , char const * , size_t ) ;
};
struct elevator_type {
   struct kmem_cache *icq_cache ;
   struct elevator_ops ops ;
   size_t icq_size ;
   size_t icq_align ;
   struct elv_fs_entry *elevator_attrs ;
   char elevator_name[16U] ;
   struct module *elevator_owner ;
   char icq_cache_name[21U] ;
   struct list_head list ;
};
struct elevator_queue {
   struct elevator_type *type ;
   void *elevator_data ;
   struct kobject kobj ;
   struct mutex sysfs_lock ;
   struct hlist_head *hash ;
   unsigned char registered : 1 ;
};
typedef void request_fn_proc(struct request_queue * );
typedef void make_request_fn(struct request_queue * , struct bio * );
typedef int prep_rq_fn(struct request_queue * , struct request * );
typedef void unprep_rq_fn(struct request_queue * , struct request * );
struct bvec_merge_data {
   struct block_device *bi_bdev ;
   sector_t bi_sector ;
   unsigned int bi_size ;
   unsigned long bi_rw ;
};
typedef int merge_bvec_fn(struct request_queue * , struct bvec_merge_data * , struct bio_vec * );
typedef void softirq_done_fn(struct request * );
typedef int dma_drain_needed_fn(struct request * );
typedef int lld_busy_fn(struct request_queue * );
typedef int bsg_job_fn(struct bsg_job * );
enum blk_eh_timer_return {
    BLK_EH_NOT_HANDLED = 0,
    BLK_EH_HANDLED = 1,
    BLK_EH_RESET_TIMER = 2
} ;
typedef enum blk_eh_timer_return rq_timed_out_fn(struct request * );
struct blk_queue_tag {
   struct request **tag_index ;
   unsigned long *tag_map ;
   int busy ;
   int max_depth ;
   int real_max_depth ;
   atomic_t refcnt ;
};
struct queue_limits {
   unsigned long bounce_pfn ;
   unsigned long seg_boundary_mask ;
   unsigned int max_hw_sectors ;
   unsigned int max_sectors ;
   unsigned int max_segment_size ;
   unsigned int physical_block_size ;
   unsigned int alignment_offset ;
   unsigned int io_min ;
   unsigned int io_opt ;
   unsigned int max_discard_sectors ;
   unsigned int max_write_same_sectors ;
   unsigned int discard_granularity ;
   unsigned int discard_alignment ;
   unsigned short logical_block_size ;
   unsigned short max_segments ;
   unsigned short max_integrity_segments ;
   unsigned char misaligned ;
   unsigned char discard_misaligned ;
   unsigned char cluster ;
   unsigned char discard_zeroes_data ;
};
struct throtl_data;
struct request_queue {
   struct list_head queue_head ;
   struct request *last_merge ;
   struct elevator_queue *elevator ;
   int nr_rqs[2U] ;
   int nr_rqs_elvpriv ;
   struct request_list root_rl ;
   request_fn_proc *request_fn ;
   make_request_fn *make_request_fn ;
   prep_rq_fn *prep_rq_fn ;
   unprep_rq_fn *unprep_rq_fn ;
   merge_bvec_fn *merge_bvec_fn ;
   softirq_done_fn *softirq_done_fn ;
   rq_timed_out_fn *rq_timed_out_fn ;
   dma_drain_needed_fn *dma_drain_needed ;
   lld_busy_fn *lld_busy_fn ;
   sector_t end_sector ;
   struct request *boundary_rq ;
   struct delayed_work delay_work ;
   struct backing_dev_info backing_dev_info ;
   void *queuedata ;
   unsigned long queue_flags ;
   int id ;
   gfp_t bounce_gfp ;
   spinlock_t __queue_lock ;
   spinlock_t *queue_lock ;
   struct kobject kobj ;
   unsigned long nr_requests ;
   unsigned int nr_congestion_on ;
   unsigned int nr_congestion_off ;
   unsigned int nr_batching ;
   unsigned int dma_drain_size ;
   void *dma_drain_buffer ;
   unsigned int dma_pad_mask ;
   unsigned int dma_alignment ;
   struct blk_queue_tag *queue_tags ;
   struct list_head tag_busy_list ;
   unsigned int nr_sorted ;
   unsigned int in_flight[2U] ;
   unsigned int request_fn_active ;
   unsigned int rq_timeout ;
   struct timer_list timeout ;
   struct list_head timeout_list ;
   struct list_head icq_list ;
   unsigned long blkcg_pols[1U] ;
   struct blkcg_gq *root_blkg ;
   struct list_head blkg_list ;
   struct queue_limits limits ;
   unsigned int sg_timeout ;
   unsigned int sg_reserved_size ;
   int node ;
   unsigned int flush_flags ;
   unsigned char flush_not_queueable : 1 ;
   unsigned char flush_queue_delayed : 1 ;
   unsigned char flush_pending_idx : 1 ;
   unsigned char flush_running_idx : 1 ;
   unsigned long flush_pending_since ;
   struct list_head flush_queue[2U] ;
   struct list_head flush_data_in_flight ;
   struct request flush_rq ;
   struct mutex sysfs_lock ;
   int bypass_depth ;
   bsg_job_fn *bsg_job_fn ;
   int bsg_job_size ;
   struct bsg_class_device bsg_dev ;
   struct list_head all_q_node ;
   struct throtl_data *td ;
};
struct blk_plug {
   unsigned long magic ;
   struct list_head list ;
   struct list_head cb_list ;
   unsigned int should_sort ;
};
struct blk_integrity_exchg {
   void *prot_buf ;
   void *data_buf ;
   sector_t sector ;
   unsigned int data_size ;
   unsigned short sector_size ;
   char const *disk_name ;
};
typedef void integrity_gen_fn(struct blk_integrity_exchg * );
typedef int integrity_vrfy_fn(struct blk_integrity_exchg * );
typedef void integrity_set_tag_fn(void * , void * , unsigned int );
typedef void integrity_get_tag_fn(void * , void * , unsigned int );
struct blk_integrity {
   integrity_gen_fn *generate_fn ;
   integrity_vrfy_fn *verify_fn ;
   integrity_set_tag_fn *set_tag_fn ;
   integrity_get_tag_fn *get_tag_fn ;
   unsigned short flags ;
   unsigned short tuple_size ;
   unsigned short sector_size ;
   unsigned short tag_size ;
   char const *name ;
   struct kobject kobj ;
};
struct block_device_operations {
   int (*open)(struct block_device * , fmode_t ) ;
   int (*release)(struct gendisk * , fmode_t ) ;
   int (*ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*compat_ioctl)(struct block_device * , fmode_t , unsigned int , unsigned long ) ;
   int (*direct_access)(struct block_device * , sector_t , void ** , unsigned long * ) ;
   unsigned int (*check_events)(struct gendisk * , unsigned int ) ;
   int (*media_changed)(struct gendisk * ) ;
   void (*unlock_native_capacity)(struct gendisk * ) ;
   int (*revalidate_disk)(struct gendisk * ) ;
   int (*getgeo)(struct block_device * , struct hd_geometry * ) ;
   void (*swap_slot_free_notify)(struct block_device * , unsigned long ) ;
   struct module *owner ;
};
struct vfsmount {
   struct dentry *mnt_root ;
   struct super_block *mnt_sb ;
   int mnt_flags ;
};
struct match_token {
   int token ;
   char const *pattern ;
};
struct __anonstruct_substring_t_186 {
   char *from ;
   char *to ;
};
typedef struct __anonstruct_substring_t_186 substring_t;
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
__inline static void set_bit(unsigned int nr , unsigned long volatile *addr )
{
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; bts %1,%0": "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
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
extern void mutex_unlock(struct mutex * ) ;
void ldv_mutex_unlock_2(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_4(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_6(struct mutex *ldv_func_arg1 ) ;
extern void mutex_lock(struct mutex * ) ;
void ldv_mutex_lock_1(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_3(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_5(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_bitmap_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_bitmap_lock(struct mutex *lock ) ;
void ldv_mutex_lock_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_lock(struct mutex *lock ) ;
u32 hfs_vbm_search_free(struct super_block *sb , u32 goal , u32 *num_bits ) ;
int hfs_clear_vbm_bits(struct super_block *sb , u16 start , u16 count ) ;
void hfs_mark_mdb_dirty(struct super_block *sb ) ;
__inline static void hfs_bitmap_dirty(struct super_block *sb )
{
  {
  set_bit(0U, (unsigned long volatile *)(& ((struct hfs_sb_info *)sb->s_fs_info)->flags));
  hfs_mark_mdb_dirty(sb);
  return;
}
}
static u32 hfs_find_set_zero_bits(__be32 *bitmap , u32 size , u32 offset , u32 *max )
{
  __be32 *curr ;
  __be32 *end ;
  u32 mask ;
  u32 start ;
  u32 len ;
  u32 n ;
  __be32 val ;
  int i ;
  __u32 tmp ;
  __u32 tmp___0 ;
  u32 _min1 ;
  u32 _min2 ;
  __be32 *tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __be32 *tmp___4 ;
  __u32 tmp___5 ;
  {
  len = *max;
  if (len == 0U) {
    return (size);
  } else {
  }
  curr = bitmap + (unsigned long )(offset / 32U);
  end = bitmap + (unsigned long )((size + 31U) / 32U);
  val = *curr;
  if (val != 4294967295U) {
    tmp = __fswab32(val);
    n = tmp;
    i = (int )offset & 31;
    mask = 2147483648U >> i;
    goto ldv_21907;
    ldv_21906: ;
    if ((n & mask) == 0U) {
      goto found;
    } else {
    }
    mask = mask >> 1;
    i = i + 1;
    ldv_21907: ;
    if (i <= 31) {
      goto ldv_21906;
    } else {
    }
  } else {
  }
  goto ldv_21913;
  ldv_21912:
  val = *curr;
  if (val != 4294967295U) {
    tmp___0 = __fswab32(val);
    n = tmp___0;
    mask = 2147483648U;
    i = 0;
    goto ldv_21910;
    ldv_21909: ;
    if ((n & mask) == 0U) {
      goto found;
    } else {
    }
    mask = mask >> 1;
    i = i + 1;
    ldv_21910: ;
    if (i <= 31) {
      goto ldv_21909;
    } else {
    }
  } else {
  }
  ldv_21913:
  curr = curr + 1;
  if ((unsigned long )curr < (unsigned long )end) {
    goto ldv_21912;
  } else {
  }
  return (size);
  found:
  start = (u32 )(((long )curr - (long )bitmap) / 4L) * 32U + (u32 )i;
  if (start >= size) {
    return (start);
  } else {
  }
  _min1 = size - start;
  _min2 = len;
  len = _min1 < _min2 ? _min1 : _min2;
  ldv_21920:
  n = n | mask;
  i = i + 1;
  if (i > 31) {
    goto ldv_21918;
  } else {
  }
  mask = mask >> 1;
  len = len - 1U;
  if (len == 0U || (n & mask) != 0U) {
    goto done;
  } else {
  }
  goto ldv_21920;
  ldv_21918:
  len = len - 1U;
  if (len == 0U) {
    goto done;
  } else {
  }
  tmp___1 = curr;
  curr = curr + 1;
  tmp___2 = __fswab32(n);
  *tmp___1 = tmp___2;
  ldv_21922:
  tmp___3 = __fswab32(*curr);
  n = tmp___3;
  if (len <= 31U) {
    goto ldv_21921;
  } else {
  }
  if (n != 0U) {
    len = 32U;
    goto ldv_21921;
  } else {
  }
  tmp___4 = curr;
  curr = curr + 1;
  *tmp___4 = 4294967295U;
  len = len - 32U;
  goto ldv_21922;
  ldv_21921:
  mask = 2147483648U;
  i = 0;
  goto ldv_21925;
  ldv_21924: ;
  if ((n & mask) != 0U) {
    goto ldv_21923;
  } else {
  }
  n = n | mask;
  mask = mask >> 1;
  i = i + 1;
  ldv_21925: ;
  if ((u32 )i < len) {
    goto ldv_21924;
  } else {
  }
  ldv_21923: ;
  done:
  tmp___5 = __fswab32(n);
  *curr = tmp___5;
  *max = ((u32 )(((long )curr - (long )bitmap) / 4L) * 32U + (u32 )i) - start;
  return (start);
}
}
u32 hfs_vbm_search_free(struct super_block *sb , u32 goal , u32 *num_bits )
{
  void *bitmap ;
  u32 pos ;
  {
  if (*num_bits == 0U) {
    return (0U);
  } else {
  }
  ldv_mutex_lock_3(& ((struct hfs_sb_info *)sb->s_fs_info)->bitmap_lock);
  bitmap = (void *)((struct hfs_sb_info *)sb->s_fs_info)->bitmap;
  pos = hfs_find_set_zero_bits((__be32 *)bitmap, (u32 )((struct hfs_sb_info *)sb->s_fs_info)->fs_ablocks,
                               goal, num_bits);
  if ((u32 )((struct hfs_sb_info *)sb->s_fs_info)->fs_ablocks <= pos) {
    if (goal != 0U) {
      pos = hfs_find_set_zero_bits((__be32 *)bitmap, goal, 0U, num_bits);
    } else {
    }
    if ((u32 )((struct hfs_sb_info *)sb->s_fs_info)->fs_ablocks <= pos) {
      pos = 0U;
      *num_bits = pos;
      goto out;
    } else {
    }
  } else {
  }
  ((struct hfs_sb_info *)sb->s_fs_info)->free_ablocks = (int )((struct hfs_sb_info *)sb->s_fs_info)->free_ablocks - (int )((u16 )*num_bits);
  hfs_bitmap_dirty(sb);
  out:
  ldv_mutex_unlock_4(& ((struct hfs_sb_info *)sb->s_fs_info)->bitmap_lock);
  return (pos);
}
}
int hfs_clear_vbm_bits(struct super_block *sb , u16 start , u16 count )
{
  __be32 *curr ;
  u32 mask ;
  int i ;
  int len ;
  int j ;
  __u32 tmp ;
  __be32 *tmp___0 ;
  __u32 tmp___1 ;
  __be32 *tmp___2 ;
  __u32 tmp___3 ;
  {
  if ((unsigned int )count == 0U) {
    return (0);
  } else {
  }
  if ((int )start + (int )count > (int )((struct hfs_sb_info *)sb->s_fs_info)->fs_ablocks) {
    return (-2);
  } else {
  }
  ldv_mutex_lock_5(& ((struct hfs_sb_info *)sb->s_fs_info)->bitmap_lock);
  curr = ((struct hfs_sb_info *)sb->s_fs_info)->bitmap + (unsigned long )((unsigned int )start / 32U);
  len = (int )count;
  i = (int )start & 31;
  if (i != 0) {
    j = 32 - i;
    mask = 4294967295U << j;
    if ((int )count < j) {
      mask = (4294967295U >> ((int )count + i)) | mask;
      tmp = __fswab32(mask);
      *curr = *curr & tmp;
      goto out;
    } else {
    }
    tmp___0 = curr;
    curr = curr + 1;
    tmp___1 = __fswab32(mask);
    *tmp___0 = *tmp___0 & tmp___1;
    count = (int )count - (int )((u16 )j);
  } else {
  }
  goto ldv_21946;
  ldv_21945:
  tmp___2 = curr;
  curr = curr + 1;
  *tmp___2 = 0U;
  count = (unsigned int )count + 65504U;
  ldv_21946: ;
  if ((unsigned int )count > 31U) {
    goto ldv_21945;
  } else {
  }
  if ((unsigned int )count != 0U) {
    mask = 4294967295U >> (int )count;
    tmp___3 = __fswab32(mask);
    *curr = *curr & tmp___3;
  } else {
  }
  out:
  ((struct hfs_sb_info *)sb->s_fs_info)->free_ablocks = (int )((struct hfs_sb_info *)sb->s_fs_info)->free_ablocks + (int )((u16 )len);
  ldv_mutex_unlock_6(& ((struct hfs_sb_info *)sb->s_fs_info)->bitmap_lock);
  hfs_bitmap_dirty(sb);
  return (0);
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
  ldv_mutex_lock_bitmap_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_4(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_bitmap_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_5(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_bitmap_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_6(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_bitmap_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
long ldv__builtin_expect(long exp , long c ) ;
extern int printk(char const * , ...) ;
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
void ldv_mutex_unlock_14(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_13(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_tree_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_tree_lock(struct mutex *lock ) ;
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
void hfs_bnode_read(struct hfs_bnode *node , void *buf , int off , int len ) ;
struct hfs_bnode *hfs_bnode_find(struct hfs_btree *tree , u32 num ) ;
void hfs_bnode_put(struct hfs_bnode *node ) ;
u16 hfs_brec_lenoff(struct hfs_bnode *node , u16 rec , u16 *off ) ;
u16 hfs_brec_keylen(struct hfs_bnode *node , u16 rec ) ;
int hfs_find_init(struct hfs_btree *tree , struct hfs_find_data *fd ) ;
void hfs_find_exit(struct hfs_find_data *fd ) ;
int __hfs_brec_find(struct hfs_bnode *bnode , struct hfs_find_data *fd ) ;
int hfs_brec_find(struct hfs_find_data *fd ) ;
int hfs_brec_read(struct hfs_find_data *fd , void *rec , int rec_len ) ;
int hfs_brec_goto(struct hfs_find_data *fd , int cnt ) ;
int hfs_find_init(struct hfs_btree *tree , struct hfs_find_data *fd )
{
  void *ptr ;
  {
  fd->tree = tree;
  fd->bnode = 0;
  ptr = kmalloc((size_t )((tree->max_key_len + 2U) * 2U), 208U);
  if ((unsigned long )ptr == (unsigned long )((void *)0)) {
    return (-12);
  } else {
  }
  fd->search_key = (btree_key *)ptr;
  fd->key = (btree_key *)(ptr + ((unsigned long )tree->max_key_len + 2UL));
  ldv_mutex_lock_15(& tree->tree_lock);
  return (0);
}
}
void hfs_find_exit(struct hfs_find_data *fd )
{
  {
  hfs_bnode_put(fd->bnode);
  kfree((void const *)fd->search_key);
  ldv_mutex_unlock_16(& (fd->tree)->tree_lock);
  fd->tree = 0;
  return;
}
}
int __hfs_brec_find(struct hfs_bnode *bnode , struct hfs_find_data *fd )
{
  int cmpval ;
  u16 off ;
  u16 len ;
  u16 keylen ;
  int rec ;
  int b ;
  int e ;
  int res ;
  {
  b = 0;
  e = (int )bnode->num_recs + -1;
  res = -2;
  ldv_22081:
  rec = (e + b) / 2;
  len = hfs_brec_lenoff(bnode, (int )((u16 )rec), & off);
  keylen = hfs_brec_keylen(bnode, (int )((u16 )rec));
  if ((unsigned int )keylen == 0U) {
    res = -22;
    goto fail;
  } else {
  }
  hfs_bnode_read(bnode, (void *)fd->key, (int )off, (int )keylen);
  cmpval = (*((bnode->tree)->keycmp))((btree_key const *)fd->key, (btree_key const *)fd->search_key);
  if (cmpval == 0) {
    e = rec;
    res = 0;
    goto done;
  } else {
  }
  if (cmpval < 0) {
    b = rec + 1;
  } else {
    e = rec + -1;
  }
  if (b <= e) {
    goto ldv_22081;
  } else {
  }
  if (rec != e && e >= 0) {
    len = hfs_brec_lenoff(bnode, (int )((u16 )e), & off);
    keylen = hfs_brec_keylen(bnode, (int )((u16 )e));
    if ((unsigned int )keylen == 0U) {
      res = -22;
      goto fail;
    } else {
    }
    hfs_bnode_read(bnode, (void *)fd->key, (int )off, (int )keylen);
  } else {
  }
  done:
  fd->record = e;
  fd->keyoffset = (int )off;
  fd->keylength = (int )keylen;
  fd->entryoffset = (int )off + (int )keylen;
  fd->entrylength = (int )len - (int )keylen;
  fail: ;
  return (res);
}
}
int hfs_brec_find(struct hfs_find_data *fd )
{
  struct hfs_btree *tree ;
  struct hfs_bnode *bnode ;
  u32 nidx ;
  u32 parent ;
  __be32 data ;
  int height ;
  int res ;
  long tmp ;
  long tmp___0 ;
  __u32 tmp___1 ;
  {
  tree = fd->tree;
  if ((unsigned long )fd->bnode != (unsigned long )((struct hfs_bnode *)0)) {
    hfs_bnode_put(fd->bnode);
  } else {
  }
  fd->bnode = 0;
  nidx = tree->root;
  if (nidx == 0U) {
    return (-2);
  } else {
  }
  height = (int )tree->depth;
  res = 0;
  parent = 0U;
  ldv_22096:
  bnode = hfs_bnode_find(tree, nidx);
  tmp___0 = IS_ERR((void const *)bnode);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)bnode);
    res = (int )tmp;
    bnode = 0;
    goto ldv_22093;
  } else {
  }
  if ((int )bnode->height != height) {
    goto invalid;
  } else {
  }
  height = height - 1;
  if ((int )bnode->type != (height != 0 ? 0 : 255)) {
    goto invalid;
  } else {
  }
  bnode->parent = parent;
  res = __hfs_brec_find(bnode, fd);
  if (height == 0) {
    goto ldv_22093;
  } else {
  }
  if (fd->record < 0) {
    goto release;
  } else {
  }
  parent = nidx;
  hfs_bnode_read(bnode, (void *)(& data), fd->entryoffset, 4);
  tmp___1 = __fswab32(data);
  nidx = tmp___1;
  hfs_bnode_put(bnode);
  goto ldv_22096;
  ldv_22093:
  fd->bnode = bnode;
  return (res);
  invalid:
  printk("\vhfs: inconsistency in B*Tree (%d,%d,%d,%u,%u)\n", height, (int )bnode->height,
         (int )bnode->type, nidx, parent);
  res = -5;
  release:
  hfs_bnode_put(bnode);
  return (res);
}
}
int hfs_brec_read(struct hfs_find_data *fd , void *rec , int rec_len )
{
  int res ;
  {
  res = hfs_brec_find(fd);
  if (res != 0) {
    return (res);
  } else {
  }
  if (fd->entrylength > rec_len) {
    return (-22);
  } else {
  }
  hfs_bnode_read(fd->bnode, rec, fd->entryoffset, fd->entrylength);
  return (0);
}
}
int hfs_brec_goto(struct hfs_find_data *fd , int cnt )
{
  struct hfs_btree *tree ;
  struct hfs_bnode *bnode ;
  int idx ;
  int res ;
  u16 off ;
  u16 len ;
  u16 keylen ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  res = 0;
  bnode = fd->bnode;
  tree = bnode->tree;
  if (cnt < 0) {
    cnt = - cnt;
    goto ldv_22116;
    ldv_22115:
    cnt = ~ fd->record + cnt;
    fd->record = (int )bnode->num_recs + -1;
    idx = (int )bnode->prev;
    if (idx == 0) {
      res = -2;
      goto out;
    } else {
    }
    hfs_bnode_put(bnode);
    bnode = hfs_bnode_find(tree, (u32 )idx);
    tmp___0 = IS_ERR((void const *)bnode);
    if (tmp___0 != 0L) {
      tmp = PTR_ERR((void const *)bnode);
      res = (int )tmp;
      bnode = 0;
      goto out;
    } else {
    }
    ldv_22116: ;
    if (fd->record < cnt) {
      goto ldv_22115;
    } else {
    }
    fd->record = fd->record - cnt;
  } else {
    goto ldv_22119;
    ldv_22118:
    cnt = (fd->record - (int )bnode->num_recs) + cnt;
    fd->record = 0;
    idx = (int )bnode->next;
    if (idx == 0) {
      res = -2;
      goto out;
    } else {
    }
    hfs_bnode_put(bnode);
    bnode = hfs_bnode_find(tree, (u32 )idx);
    tmp___2 = IS_ERR((void const *)bnode);
    if (tmp___2 != 0L) {
      tmp___1 = PTR_ERR((void const *)bnode);
      res = (int )tmp___1;
      bnode = 0;
      goto out;
    } else {
    }
    ldv_22119: ;
    if ((int )bnode->num_recs - fd->record <= cnt) {
      goto ldv_22118;
    } else {
    }
    fd->record = fd->record + cnt;
  }
  len = hfs_brec_lenoff(bnode, (int )((u16 )fd->record), & off);
  keylen = hfs_brec_keylen(bnode, (int )((u16 )fd->record));
  if ((unsigned int )keylen == 0U) {
    res = -22;
    goto out;
  } else {
  }
  fd->keyoffset = (int )off;
  fd->keylength = (int )keylen;
  fd->entryoffset = (int )off + (int )keylen;
  fd->entrylength = (int )len - (int )keylen;
  hfs_bnode_read(bnode, (void *)fd->key, (int )off, (int )keylen);
  out:
  fd->bnode = bnode;
  return (res);
}
}
void ldv_mutex_lock_13(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_14(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_15(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_tree_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_16(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_tree_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
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
extern void __might_sleep(char const * , int , int ) ;
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
extern void *memset(void * , int , size_t ) ;
extern void *memmove(void * , void const * , size_t ) ;
__inline static void *ERR_PTR(long error )
{
  {
  return ((void *)error);
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
extern int mutex_trylock(struct mutex * ) ;
int ldv_mutex_trylock_26(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_22(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_24(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_21(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_23(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_25(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_cred_guard_mutex(struct mutex *lock ) ;
void ldv_mutex_lock_mutex(struct mutex *lock ) ;
int ldv_mutex_trylock_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_mutex(struct mutex *lock ) ;
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
extern int _atomic_dec_and_lock(atomic_t * , spinlock_t * ) ;
extern void __init_waitqueue_head(wait_queue_head_t * , char const * , struct lock_class_key * ) ;
extern void __wake_up(wait_queue_head_t * , unsigned int , int , void * ) ;
extern void prepare_to_wait(wait_queue_head_t * , wait_queue_t * , int ) ;
extern void finish_wait(wait_queue_head_t * , wait_queue_t * ) ;
extern int autoremove_wake_function(wait_queue_t * , unsigned int , int , void * ) ;
__inline static int PageError(struct page const *page )
{
  int tmp ;
  {
  tmp = constant_test_bit(1U, (unsigned long const volatile *)(& page->flags));
  return (tmp);
}
}
extern void put_page(struct page * ) ;
__inline static void *lowmem_page_address(struct page const *page )
{
  {
  return ((void *)((unsigned long )((unsigned long long )(((long )page + 24189255811072L) / 80L) << 12) + 0xffff880000000000UL));
}
}
extern int set_page_dirty(struct page * ) ;
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
__inline static void *kzalloc(size_t size , gfp_t flags )
{
  void *tmp ;
  {
  tmp = kmalloc(size, flags | 32768U);
  return (tmp);
}
}
extern void schedule(void) ;
extern void mark_page_accessed(struct page * ) ;
void hfs_bmap_free(struct hfs_bnode *node ) ;
u16 hfs_bnode_read_u16(struct hfs_bnode *node , int off ) ;
u8 hfs_bnode_read_u8(struct hfs_bnode *node , int off ) ;
void hfs_bnode_read_key(struct hfs_bnode *node , void *key , int off ) ;
void hfs_bnode_write(struct hfs_bnode *node , void *buf , int off , int len ) ;
void hfs_bnode_write_u16(struct hfs_bnode *node , int off , u16 data ) ;
void hfs_bnode_write_u8(struct hfs_bnode *node , int off , u8 data ) ;
void hfs_bnode_clear(struct hfs_bnode *node , int off , int len ) ;
void hfs_bnode_copy(struct hfs_bnode *dst_node , int dst , struct hfs_bnode *src_node ,
                    int src , int len ) ;
void hfs_bnode_move(struct hfs_bnode *node , int dst , int src , int len ) ;
void hfs_bnode_dump(struct hfs_bnode *node ) ;
void hfs_bnode_unlink(struct hfs_bnode *node ) ;
struct hfs_bnode *hfs_bnode_findhash(struct hfs_btree *tree , u32 cnid ) ;
void hfs_bnode_unhash(struct hfs_bnode *node ) ;
void hfs_bnode_free(struct hfs_bnode *node ) ;
struct hfs_bnode *hfs_bnode_create(struct hfs_btree *tree , u32 num ) ;
void hfs_bnode_get(struct hfs_bnode *node ) ;
void hfs_bnode_read(struct hfs_bnode *node , void *buf , int off , int len )
{
  struct page *page ;
  size_t __len ;
  void *__ret ;
  void *tmp___0 ;
  {
  off = (int )(node->page_offset + (unsigned int )off);
  page = node->page[0];
  __len = (size_t )len;
  tmp___0 = kmap(page);
  __ret = __builtin_memcpy(buf, (void const *)tmp___0 + (unsigned long )off, __len);
  kunmap(page);
  return;
}
}
u16 hfs_bnode_read_u16(struct hfs_bnode *node , int off )
{
  __be16 data ;
  __u16 tmp ;
  {
  hfs_bnode_read(node, (void *)(& data), off, 2);
  tmp = __fswab16((int )data);
  return (tmp);
}
}
u8 hfs_bnode_read_u8(struct hfs_bnode *node , int off )
{
  u8 data ;
  {
  hfs_bnode_read(node, (void *)(& data), off, 1);
  return (data);
}
}
void hfs_bnode_read_key(struct hfs_bnode *node , void *key , int off )
{
  struct hfs_btree *tree ;
  int key_len ;
  u8 tmp ;
  {
  tree = node->tree;
  if ((unsigned int )node->type == 255U || (tree->attributes & 4U) != 0U) {
    tmp = hfs_bnode_read_u8(node, off);
    key_len = (int )tmp + 1;
  } else {
    key_len = (int )(tree->max_key_len + 1U);
  }
  hfs_bnode_read(node, key, off, key_len);
  return;
}
}
void hfs_bnode_write(struct hfs_bnode *node , void *buf , int off , int len )
{
  struct page *page ;
  size_t __len ;
  void *__ret ;
  void *tmp___0 ;
  {
  off = (int )(node->page_offset + (unsigned int )off);
  page = node->page[0];
  __len = (size_t )len;
  tmp___0 = kmap(page);
  __ret = __builtin_memcpy(tmp___0 + (unsigned long )off, (void const *)buf, __len);
  kunmap(page);
  set_page_dirty(page);
  return;
}
}
void hfs_bnode_write_u16(struct hfs_bnode *node , int off , u16 data )
{
  __be16 v ;
  __u16 tmp ;
  {
  tmp = __fswab16((int )data);
  v = tmp;
  hfs_bnode_write(node, (void *)(& v), off, 2);
  return;
}
}
void hfs_bnode_write_u8(struct hfs_bnode *node , int off , u8 data )
{
  {
  hfs_bnode_write(node, (void *)(& data), off, 1);
  return;
}
}
void hfs_bnode_clear(struct hfs_bnode *node , int off , int len )
{
  struct page *page ;
  void *tmp ;
  {
  off = (int )(node->page_offset + (unsigned int )off);
  page = node->page[0];
  tmp = kmap(page);
  memset(tmp + (unsigned long )off, 0, (size_t )len);
  kunmap(page);
  set_page_dirty(page);
  return;
}
}
void hfs_bnode_copy(struct hfs_bnode *dst_node , int dst , struct hfs_bnode *src_node ,
                    int src , int len )
{
  struct hfs_btree *tree ;
  struct page *src_page ;
  struct page *dst_page ;
  size_t __len ;
  void *__ret ;
  void *tmp___1 ;
  void *tmp___2 ;
  {
  if (len == 0) {
    return;
  } else {
  }
  tree = src_node->tree;
  src = (int )(src_node->page_offset + (unsigned int )src);
  dst = (int )(dst_node->page_offset + (unsigned int )dst);
  src_page = src_node->page[0];
  dst_page = dst_node->page[0];
  __len = (size_t )len;
  tmp___1 = kmap(src_page);
  tmp___2 = kmap(dst_page);
  __ret = __builtin_memcpy(tmp___2 + (unsigned long )dst, (void const *)tmp___1 + (unsigned long )src,
                           __len);
  kunmap(src_page);
  kunmap(dst_page);
  set_page_dirty(dst_page);
  return;
}
}
void hfs_bnode_move(struct hfs_bnode *node , int dst , int src , int len )
{
  struct page *page ;
  void *ptr ;
  {
  if (len == 0) {
    return;
  } else {
  }
  src = (int )(node->page_offset + (unsigned int )src);
  dst = (int )(node->page_offset + (unsigned int )dst);
  page = node->page[0];
  ptr = kmap(page);
  memmove(ptr + (unsigned long )dst, (void const *)ptr + (unsigned long )src, (size_t )len);
  kunmap(page);
  set_page_dirty(page);
  return;
}
}
void hfs_bnode_dump(struct hfs_bnode *node )
{
  struct hfs_bnode_desc desc ;
  __be32 cnid ;
  int i ;
  int off ;
  int key_off ;
  __u16 tmp___2 ;
  u16 tmp___3 ;
  int tmp___4 ;
  u8 tmp___5 ;
  int tmp___8 ;
  u8 tmp___9 ;
  {
  hfs_bnode_read(node, (void *)(& desc), 0, 14);
  off = (int )((node->tree)->node_size - 2U);
  tmp___2 = __fswab16((int )desc.num_recs);
  i = (int )tmp___2;
  goto ldv_27842;
  ldv_27841:
  tmp___3 = hfs_bnode_read_u16(node, off);
  key_off = (int )tmp___3;
  if (i != 0 && (unsigned int )node->type == 0U) {
    if (((node->tree)->attributes & 4U) != 0U) {
      tmp___5 = hfs_bnode_read_u8(node, key_off);
      tmp___4 = (int )((unsigned int )tmp___5 | 1U) + 1;
    } else {
      tmp___4 = (int )((node->tree)->max_key_len + 1U);
    }
    hfs_bnode_read(node, (void *)(& cnid), key_off + tmp___4, 4);
  } else
  if (i != 0 && (unsigned int )node->type == 255U) {
    tmp___9 = hfs_bnode_read_u8(node, key_off);
    tmp___8 = (int )tmp___9;
  } else {
  }
  off = off + -2;
  i = i - 1;
  ldv_27842: ;
  if (i >= 0) {
    goto ldv_27841;
  } else {
  }
  return;
}
}
void hfs_bnode_unlink(struct hfs_bnode *node )
{
  struct hfs_btree *tree ;
  struct hfs_bnode *tmp ;
  __be32 cnid ;
  long tmp___0 ;
  __u32 tmp___1 ;
  long tmp___2 ;
  __u32 tmp___3 ;
  {
  tree = node->tree;
  if (node->prev != 0U) {
    tmp = hfs_bnode_find(tree, node->prev);
    tmp___0 = IS_ERR((void const *)tmp);
    if (tmp___0 != 0L) {
      return;
    } else {
    }
    tmp->next = node->next;
    tmp___1 = __fswab32(tmp->next);
    cnid = tmp___1;
    hfs_bnode_write(tmp, (void *)(& cnid), 0, 4);
    hfs_bnode_put(tmp);
  } else
  if ((unsigned int )node->type == 255U) {
    tree->leaf_head = node->next;
  } else {
  }
  if (node->next != 0U) {
    tmp = hfs_bnode_find(tree, node->next);
    tmp___2 = IS_ERR((void const *)tmp);
    if (tmp___2 != 0L) {
      return;
    } else {
    }
    tmp->prev = node->prev;
    tmp___3 = __fswab32(tmp->prev);
    cnid = tmp___3;
    hfs_bnode_write(tmp, (void *)(& cnid), 4, 4);
    hfs_bnode_put(tmp);
  } else
  if ((unsigned int )node->type == 255U) {
    tree->leaf_tail = node->prev;
  } else {
  }
  if (node->prev == 0U && node->next == 0U) {
    printk("\017hfs_btree_del_level\n");
  } else {
  }
  if (node->parent == 0U) {
    tree->root = 0U;
    tree->depth = 0U;
  } else {
  }
  set_bit(2U, (unsigned long volatile *)(& node->flags));
  return;
}
}
__inline static int hfs_bnode_hash(u32 num )
{
  {
  num = (num >> 16) + num;
  num = (num >> 8) + num;
  return ((int )num & 255);
}
}
struct hfs_bnode *hfs_bnode_findhash(struct hfs_btree *tree , u32 cnid )
{
  struct hfs_bnode *node ;
  int tmp ;
  {
  if (tree->node_count <= cnid) {
    printk("\vhfs: request for non-existent node %d in B*Tree\n", cnid);
    return (0);
  } else {
  }
  tmp = hfs_bnode_hash(cnid);
  node = tree->node_hash[tmp];
  goto ldv_27859;
  ldv_27858: ;
  if (node->this == cnid) {
    return (node);
  } else {
  }
  node = node->next_hash;
  ldv_27859: ;
  if ((unsigned long )node != (unsigned long )((struct hfs_bnode *)0)) {
    goto ldv_27858;
  } else {
  }
  return (0);
}
}
static struct hfs_bnode *__hfs_bnode_create(struct hfs_btree *tree , u32 cnid )
{
  struct super_block *sb ;
  struct hfs_bnode *node ;
  struct hfs_bnode *node2 ;
  struct address_space *mapping ;
  struct page *page ;
  int size ;
  int block ;
  int i ;
  int hash ;
  loff_t off ;
  void *tmp ;
  struct lock_class_key __key ;
  int tmp___0 ;
  wait_queue_t __wait ;
  struct task_struct *tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  long tmp___4 ;
  int tmp___5 ;
  {
  if (tree->node_count <= cnid) {
    printk("\vhfs: request for non-existent node %d in B*Tree\n", cnid);
    return (0);
  } else {
  }
  sb = (tree->inode)->i_sb;
  size = (int )((unsigned int )((unsigned long )tree->pages_per_bnode + 18UL) * 8U);
  tmp = kzalloc((size_t )size, 208U);
  node = (struct hfs_bnode *)tmp;
  if ((unsigned long )node == (unsigned long )((struct hfs_bnode *)0)) {
    return (0);
  } else {
  }
  node->tree = tree;
  node->this = cnid;
  set_bit(1U, (unsigned long volatile *)(& node->flags));
  atomic_set(& node->refcnt, 1);
  __init_waitqueue_head(& node->lock_wq, "&node->lock_wq", & __key);
  spin_lock(& tree->hash_lock);
  node2 = hfs_bnode_findhash(tree, cnid);
  if ((unsigned long )node2 == (unsigned long )((struct hfs_bnode *)0)) {
    hash = hfs_bnode_hash(cnid);
    node->next_hash = tree->node_hash[hash];
    tree->node_hash[hash] = node;
    tree->node_hash_cnt = tree->node_hash_cnt + 1;
  } else {
    spin_unlock(& tree->hash_lock);
    kfree((void const *)node);
    tmp___0 = constant_test_bit(1U, (unsigned long const volatile *)(& node2->flags));
    if (tmp___0 == 0) {
      goto ldv_27876;
    } else {
    }
    tmp___1 = get_current();
    __wait.flags = 0U;
    __wait.private = (void *)tmp___1;
    __wait.func = & autoremove_wake_function;
    __wait.task_list.next = & __wait.task_list;
    __wait.task_list.prev = & __wait.task_list;
    ldv_27879:
    prepare_to_wait(& node2->lock_wq, & __wait, 2);
    tmp___2 = constant_test_bit(1U, (unsigned long const volatile *)(& node2->flags));
    if (tmp___2 == 0) {
      goto ldv_27878;
    } else {
    }
    schedule();
    goto ldv_27879;
    ldv_27878:
    finish_wait(& node2->lock_wq, & __wait);
    ldv_27876: ;
    return (node2);
  }
  spin_unlock(& tree->hash_lock);
  mapping = (tree->inode)->i_mapping;
  off = (long long )cnid * (long long )tree->node_size;
  block = (int )(off >> 12);
  node->page_offset = (unsigned int )off & 4095U;
  i = 0;
  goto ldv_27882;
  ldv_27881:
  tmp___3 = block;
  block = block + 1;
  page = read_mapping_page(mapping, (unsigned long )tmp___3, 0);
  tmp___4 = IS_ERR((void const *)page);
  if (tmp___4 != 0L) {
    goto fail;
  } else {
  }
  tmp___5 = PageError((struct page const *)page);
  if (tmp___5 != 0) {
    put_page(page);
    goto fail;
  } else {
  }
  put_page(page);
  node->page[i] = page;
  i = i + 1;
  ldv_27882: ;
  if ((unsigned int )i < tree->pages_per_bnode) {
    goto ldv_27881;
  } else {
  }
  return (node);
  fail:
  set_bit(0U, (unsigned long volatile *)(& node->flags));
  return (node);
}
}
void hfs_bnode_unhash(struct hfs_bnode *node )
{
  struct hfs_bnode **p ;
  int tmp___0 ;
  long tmp___1 ;
  {
  tmp___0 = hfs_bnode_hash(node->this);
  p = (struct hfs_bnode **)(& (node->tree)->node_hash) + (unsigned long )tmp___0;
  goto ldv_27889;
  ldv_27888:
  p = & (*p)->next_hash;
  ldv_27889: ;
  if ((unsigned long )*p != (unsigned long )((struct hfs_bnode *)0) && (unsigned long )*p != (unsigned long )node) {
    goto ldv_27888;
  } else {
  }
  tmp___1 = ldv__builtin_expect((unsigned long )*p == (unsigned long )((struct hfs_bnode *)0),
                             0L);
  if (tmp___1 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/hfs/hfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/27/dscv_tempdir/dscv/ri/32_7a/fs/hfs/bnode.c.prepared"),
                         "i" (372), "i" (12UL));
    ldv_27891: ;
    goto ldv_27891;
  } else {
  }
  *p = node->next_hash;
  (node->tree)->node_hash_cnt = (node->tree)->node_hash_cnt - 1;
  return;
}
}
struct hfs_bnode *hfs_bnode_find(struct hfs_btree *tree , u32 num )
{
  struct hfs_bnode *node ;
  struct hfs_bnode_desc *desc ;
  int i ;
  int rec_off ;
  int off ;
  int next_off ;
  int entry_size ;
  int key_size ;
  int tmp ;
  wait_queue_t __wait ;
  struct task_struct *tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  void *tmp___3 ;
  int tmp___4 ;
  int tmp___5 ;
  void *tmp___6 ;
  __u32 tmp___7 ;
  __u32 tmp___8 ;
  __u16 tmp___9 ;
  u16 tmp___10 ;
  u16 tmp___11 ;
  u8 tmp___12 ;
  void *tmp___13 ;
  {
  spin_lock(& tree->hash_lock);
  node = hfs_bnode_findhash(tree, num);
  if ((unsigned long )node != (unsigned long )((struct hfs_bnode *)0)) {
    hfs_bnode_get(node);
    spin_unlock(& tree->hash_lock);
    tmp = constant_test_bit(1U, (unsigned long const volatile *)(& node->flags));
    if (tmp == 0) {
      goto ldv_27904;
    } else {
    }
    tmp___0 = get_current();
    __wait.flags = 0U;
    __wait.private = (void *)tmp___0;
    __wait.func = & autoremove_wake_function;
    __wait.task_list.next = & __wait.task_list;
    __wait.task_list.prev = & __wait.task_list;
    ldv_27907:
    prepare_to_wait(& node->lock_wq, & __wait, 2);
    tmp___1 = constant_test_bit(1U, (unsigned long const volatile *)(& node->flags));
    if (tmp___1 == 0) {
      goto ldv_27906;
    } else {
    }
    schedule();
    goto ldv_27907;
    ldv_27906:
    finish_wait(& node->lock_wq, & __wait);
    ldv_27904:
    tmp___2 = constant_test_bit(0U, (unsigned long const volatile *)(& node->flags));
    if (tmp___2 != 0) {
      goto node_error;
    } else {
    }
    return (node);
  } else {
  }
  spin_unlock(& tree->hash_lock);
  node = __hfs_bnode_create(tree, num);
  if ((unsigned long )node == (unsigned long )((struct hfs_bnode *)0)) {
    tmp___3 = ERR_PTR(-12L);
    return ((struct hfs_bnode *)tmp___3);
  } else {
  }
  tmp___4 = constant_test_bit(0U, (unsigned long const volatile *)(& node->flags));
  if (tmp___4 != 0) {
    goto node_error;
  } else {
  }
  tmp___5 = constant_test_bit(1U, (unsigned long const volatile *)(& node->flags));
  if (tmp___5 == 0) {
    return (node);
  } else {
  }
  tmp___6 = kmap(node->page[0]);
  desc = (struct hfs_bnode_desc *)tmp___6 + (unsigned long )node->page_offset;
  tmp___7 = __fswab32(desc->prev);
  node->prev = tmp___7;
  tmp___8 = __fswab32(desc->next);
  node->next = tmp___8;
  tmp___9 = __fswab16((int )desc->num_recs);
  node->num_recs = tmp___9;
  node->type = desc->type;
  node->height = desc->height;
  kunmap(node->page[0]);
  switch ((int )node->type) {
  case 1: ;
  case 2: ;
  if ((unsigned int )node->height != 0U) {
    goto node_error;
  } else {
  }
  goto ldv_27911;
  case 255: ;
  if ((unsigned int )node->height != 1U) {
    goto node_error;
  } else {
  }
  goto ldv_27911;
  case 0: ;
  if ((unsigned int )node->height <= 1U || (unsigned int )node->height > tree->depth) {
    goto node_error;
  } else {
  }
  goto ldv_27911;
  default: ;
  goto node_error;
  }
  ldv_27911:
  rec_off = (int )(tree->node_size - 2U);
  tmp___10 = hfs_bnode_read_u16(node, rec_off);
  off = (int )tmp___10;
  if (off != 14) {
    goto node_error;
  } else {
  }
  i = 1;
  goto ldv_27917;
  ldv_27916:
  rec_off = rec_off + -2;
  tmp___11 = hfs_bnode_read_u16(node, rec_off);
  next_off = (int )tmp___11;
  if ((next_off <= off || (unsigned int )next_off > tree->node_size) || next_off & 1) {
    goto node_error;
  } else {
  }
  entry_size = next_off - off;
  if ((unsigned int )node->type != 0U && (unsigned int )node->type != 255U) {
    goto ldv_27915;
  } else {
  }
  tmp___12 = hfs_bnode_read_u8(node, off);
  key_size = (int )tmp___12 + 1;
  if (key_size >= entry_size) {
    goto node_error;
  } else {
  }
  ldv_27915:
  off = next_off;
  i = i + 1;
  ldv_27917: ;
  if ((int )node->num_recs >= i) {
    goto ldv_27916;
  } else {
  }
  clear_bit(1, (unsigned long volatile *)(& node->flags));
  __wake_up(& node->lock_wq, 3U, 1, 0);
  return (node);
  node_error:
  set_bit(0U, (unsigned long volatile *)(& node->flags));
  clear_bit(1, (unsigned long volatile *)(& node->flags));
  __wake_up(& node->lock_wq, 3U, 1, 0);
  hfs_bnode_put(node);
  tmp___13 = ERR_PTR(-5L);
  return ((struct hfs_bnode *)tmp___13);
}
}
void hfs_bnode_free(struct hfs_bnode *node )
{
  {
  kfree((void const *)node);
  return;
}
}
struct hfs_bnode *hfs_bnode_create(struct hfs_btree *tree , u32 num )
{
  struct hfs_bnode *node ;
  struct page **pagep ;
  int i ;
  long tmp ;
  void *tmp___0 ;
  void *tmp___1 ;
  int tmp___2 ;
  int _min1 ;
  int _min2 ;
  void *tmp___3 ;
  void *tmp___4 ;
  {
  spin_lock(& tree->hash_lock);
  node = hfs_bnode_findhash(tree, num);
  spin_unlock(& tree->hash_lock);
  tmp = ldv__builtin_expect((unsigned long )node != (unsigned long )((struct hfs_bnode *)0),
                         0L);
  if (tmp != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/hfs/hfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/27/dscv_tempdir/dscv/ri/32_7a/fs/hfs/bnode.c.prepared"),
                         "i" (480), "i" (12UL));
    ldv_27929: ;
    goto ldv_27929;
  } else {
  }
  node = __hfs_bnode_create(tree, num);
  if ((unsigned long )node == (unsigned long )((struct hfs_bnode *)0)) {
    tmp___0 = ERR_PTR(-12L);
    return ((struct hfs_bnode *)tmp___0);
  } else {
  }
  tmp___2 = constant_test_bit(0U, (unsigned long const volatile *)(& node->flags));
  if (tmp___2 != 0) {
    hfs_bnode_put(node);
    tmp___1 = ERR_PTR(-5L);
    return ((struct hfs_bnode *)tmp___1);
  } else {
  }
  pagep = (struct page **)(& node->page);
  _min1 = 4096;
  _min2 = (int )tree->node_size;
  tmp___3 = kmap(*pagep);
  memset(tmp___3 + (unsigned long )node->page_offset, 0, (size_t )(_min1 < _min2 ? _min1 : _min2));
  set_page_dirty(*pagep);
  kunmap(*pagep);
  i = 1;
  goto ldv_27934;
  ldv_27933:
  pagep = pagep + 1;
  tmp___4 = kmap(*pagep);
  memset(tmp___4, 0, 4096UL);
  set_page_dirty(*pagep);
  kunmap(*pagep);
  i = i + 1;
  ldv_27934: ;
  if ((unsigned int )i < tree->pages_per_bnode) {
    goto ldv_27933;
  } else {
  }
  clear_bit(1, (unsigned long volatile *)(& node->flags));
  __wake_up(& node->lock_wq, 3U, 1, 0);
  return (node);
}
}
void hfs_bnode_get(struct hfs_bnode *node )
{
  {
  if ((unsigned long )node != (unsigned long )((struct hfs_bnode *)0)) {
    atomic_inc(& node->refcnt);
  } else {
  }
  return;
}
}
void hfs_bnode_put(struct hfs_bnode *node )
{
  struct hfs_btree *tree ;
  int i ;
  int tmp___0 ;
  long tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  if ((unsigned long )node != (unsigned long )((struct hfs_bnode *)0)) {
    tree = node->tree;
    tmp___0 = atomic_read((atomic_t const *)(& node->refcnt));
    tmp___1 = ldv__builtin_expect(tmp___0 == 0, 0L);
    if (tmp___1 != 0L) {
      __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/hfs/hfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/27/dscv_tempdir/dscv/ri/32_7a/fs/hfs/bnode.c.prepared"),
                           "i" (523), "i" (12UL));
      ldv_27944: ;
      goto ldv_27944;
    } else {
    }
    tmp___2 = _atomic_dec_and_lock(& node->refcnt, & tree->hash_lock);
    if (tmp___2 == 0) {
      return;
    } else {
    }
    i = 0;
    goto ldv_27947;
    ldv_27946: ;
    if ((unsigned long )node->page[i] == (unsigned long )((struct page *)0)) {
      goto ldv_27945;
    } else {
    }
    mark_page_accessed(node->page[i]);
    ldv_27945:
    i = i + 1;
    ldv_27947: ;
    if ((unsigned int )i < tree->pages_per_bnode) {
      goto ldv_27946;
    } else {
    }
    tmp___3 = constant_test_bit(2U, (unsigned long const volatile *)(& node->flags));
    if (tmp___3 != 0) {
      hfs_bnode_unhash(node);
      spin_unlock(& tree->hash_lock);
      hfs_bmap_free(node);
      hfs_bnode_free(node);
      return;
    } else {
    }
    spin_unlock(& tree->hash_lock);
  } else {
  }
  return;
}
}
void ldv_mutex_lock_21(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_22(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_23(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_24(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_25(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_26(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_27(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern void panic(char const * , ...) ;
void ldv_mutex_unlock_36(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_35(struct mutex *ldv_func_arg1 ) ;
extern void __mark_inode_dirty(struct inode * , int ) ;
__inline static void mark_inode_dirty(struct inode *inode )
{
  {
  __mark_inode_dirty(inode, 7);
  return;
}
}
struct hfs_bnode *hfs_bmap_alloc(struct hfs_btree *tree ) ;
int hfs_brec_insert(struct hfs_find_data *fd , void *entry , int entry_len ) ;
int hfs_brec_remove(struct hfs_find_data *fd ) ;
static struct hfs_bnode *hfs_bnode_split(struct hfs_find_data *fd ) ;
static int hfs_brec_update_parent(struct hfs_find_data *fd ) ;
static int hfs_btree_inc_height(struct hfs_btree *tree ) ;
u16 hfs_brec_lenoff(struct hfs_bnode *node , u16 rec , u16 *off )
{
  __be16 retval[2U] ;
  u16 dataoff ;
  __u16 tmp ;
  __u16 tmp___0 ;
  {
  dataoff = (unsigned int )((u16 )(node->tree)->node_size) + (unsigned int )((u16 )(-2 - (int )rec)) * 2U;
  hfs_bnode_read(node, (void *)(& retval), (int )dataoff, 4);
  tmp = __fswab16((int )retval[1]);
  *off = tmp;
  tmp___0 = __fswab16((int )retval[0]);
  return ((int )tmp___0 - (int )*off);
}
}
u16 hfs_brec_keylen(struct hfs_bnode *node , u16 rec )
{
  u16 retval ;
  u16 recoff ;
  u16 tmp ;
  u8 tmp___0 ;
  {
  if ((unsigned int )node->type != 0U && (unsigned int )node->type != 255U) {
    return (0U);
  } else {
  }
  if ((unsigned int )node->type == 0U && ((node->tree)->attributes & 4U) == 0U) {
    if (((node->tree)->attributes & 2U) != 0U) {
      retval = (unsigned int )((u16 )(node->tree)->max_key_len) + 2U;
    } else {
      retval = (unsigned int )((u16 )(node->tree)->max_key_len) + 1U;
    }
  } else {
    recoff = hfs_bnode_read_u16(node, (int )((node->tree)->node_size + (unsigned int )(~ ((int )rec) * 2)));
    if ((unsigned int )recoff == 0U) {
      return (0U);
    } else {
    }
    if (((node->tree)->attributes & 2U) != 0U) {
      tmp = hfs_bnode_read_u16(node, (int )recoff);
      retval = (unsigned int )tmp + 2U;
      if ((unsigned int )retval > (node->tree)->max_key_len + 2U) {
        printk("\vhfs: keylen %d too large\n", (int )retval);
        retval = 0U;
      } else {
      }
    } else {
      tmp___0 = hfs_bnode_read_u8(node, (int )recoff);
      retval = (unsigned int )((u16 )((unsigned int )tmp___0 | 1U)) + 1U;
      if ((unsigned int )retval > (node->tree)->max_key_len + 1U) {
        printk("\vhfs: keylen %d too large\n", (int )retval);
        retval = 0U;
      } else {
      }
    }
  }
  return (retval);
}
}
int hfs_brec_insert(struct hfs_find_data *fd , void *entry , int entry_len )
{
  struct hfs_btree *tree ;
  struct hfs_bnode *node ;
  struct hfs_bnode *new_node ;
  int size ;
  int key_len ;
  int rec ;
  int data_off ;
  int end_off ;
  int idx_rec_off ;
  int data_rec_off ;
  int end_rec_off ;
  __be32 cnid ;
  long tmp ;
  long tmp___0 ;
  u16 tmp___1 ;
  long tmp___2 ;
  long tmp___3 ;
  u16 tmp___4 ;
  __u32 tmp___5 ;
  {
  tree = fd->tree;
  if ((unsigned long )fd->bnode == (unsigned long )((struct hfs_bnode *)0)) {
    if (tree->root == 0U) {
      hfs_btree_inc_height(tree);
    } else {
    }
    fd->bnode = hfs_bnode_find(tree, tree->leaf_head);
    tmp___0 = IS_ERR((void const *)fd->bnode);
    if (tmp___0 != 0L) {
      tmp = PTR_ERR((void const *)fd->bnode);
      return ((int )tmp);
    } else {
    }
    fd->record = -1;
  } else {
  }
  new_node = 0;
  key_len = (int )((unsigned int )(fd->search_key)->key_len | 1U) + 1;
  again:
  rec = fd->record + 1;
  size = key_len + entry_len;
  node = fd->bnode;
  hfs_bnode_dump(node);
  end_rec_off = (int )(tree->node_size + (unsigned int )(~ ((int )node->num_recs) * 2));
  tmp___1 = hfs_bnode_read_u16(node, end_rec_off);
  end_off = (int )tmp___1;
  end_rec_off = end_rec_off + -2;
  if (end_rec_off - end_off < size) {
    if ((unsigned long )new_node != (unsigned long )((struct hfs_bnode *)0)) {
      panic("not enough room!\n");
    } else {
    }
    new_node = hfs_bnode_split(fd);
    tmp___3 = IS_ERR((void const *)new_node);
    if (tmp___3 != 0L) {
      tmp___2 = PTR_ERR((void const *)new_node);
      return ((int )tmp___2);
    } else {
    }
    goto again;
  } else {
  }
  if ((unsigned int )node->type == 255U) {
    tree->leaf_count = tree->leaf_count + 1U;
    mark_inode_dirty(tree->inode);
  } else {
  }
  node->num_recs = (u16 )((int )node->num_recs + 1);
  hfs_bnode_write_u16(node, 10, (int )node->num_recs);
  hfs_bnode_write_u16(node, end_rec_off, (int )((u16 )end_off) + (int )((u16 )size));
  data_off = end_off;
  data_rec_off = end_rec_off + 2;
  idx_rec_off = (int )(tree->node_size + (unsigned int )(~ rec * 2));
  if (idx_rec_off == data_rec_off) {
    goto skip;
  } else {
  }
  ldv_22089:
  tmp___4 = hfs_bnode_read_u16(node, data_rec_off + 2);
  data_off = (int )tmp___4;
  hfs_bnode_write_u16(node, data_rec_off, (int )((u16 )data_off) + (int )((u16 )size));
  data_rec_off = data_rec_off + 2;
  if (data_rec_off < idx_rec_off) {
    goto ldv_22089;
  } else {
  }
  hfs_bnode_move(node, data_off + size, data_off, end_off - data_off);
  skip:
  hfs_bnode_write(node, (void *)fd->search_key, data_off, key_len);
  hfs_bnode_write(node, entry, data_off + key_len, entry_len);
  hfs_bnode_dump(node);
  if ((unsigned long )new_node != (unsigned long )((struct hfs_bnode *)0)) {
    if (rec == 0 && (unsigned long )new_node != (unsigned long )node) {
      hfs_brec_update_parent(fd);
    } else {
    }
    hfs_bnode_put(fd->bnode);
    if (new_node->parent == 0U) {
      hfs_btree_inc_height(tree);
      new_node->parent = tree->root;
    } else {
    }
    fd->bnode = hfs_bnode_find(tree, new_node->parent);
    tmp___5 = __fswab32(new_node->this);
    cnid = tmp___5;
    entry = (void *)(& cnid);
    entry_len = 4;
    hfs_bnode_read_key(new_node, (void *)fd->search_key, 14);
    __hfs_brec_find(fd->bnode, fd);
    hfs_bnode_put(new_node);
    new_node = 0;
    if ((tree->attributes & 4U) != 0U) {
      key_len = (int )(fd->search_key)->key_len + 1;
    } else {
      (fd->search_key)->key_len = (u8 )tree->max_key_len;
      key_len = (int )(tree->max_key_len + 1U);
    }
    goto again;
  } else {
  }
  if (rec == 0) {
    hfs_brec_update_parent(fd);
  } else {
  }
  return (0);
}
}
int hfs_brec_remove(struct hfs_find_data *fd )
{
  struct hfs_btree *tree ;
  struct hfs_bnode *node ;
  struct hfs_bnode *parent ;
  int end_off ;
  int rec_off ;
  int data_off ;
  int size ;
  long tmp ;
  long tmp___0 ;
  struct hfs_bnode *tmp___1 ;
  u16 tmp___2 ;
  {
  tree = fd->tree;
  node = fd->bnode;
  again:
  rec_off = (int )(tree->node_size + (unsigned int )((-2 - fd->record) * 2));
  end_off = (int )(tree->node_size + (unsigned int )(~ ((int )node->num_recs) * 2));
  if ((unsigned int )node->type == 255U) {
    tree->leaf_count = tree->leaf_count - 1U;
    mark_inode_dirty(tree->inode);
  } else {
  }
  hfs_bnode_dump(node);
  node->num_recs = (u16 )((int )node->num_recs - 1);
  if ((unsigned int )node->num_recs == 0U) {
    hfs_bnode_unlink(node);
    if (node->parent == 0U) {
      return (0);
    } else {
    }
    parent = hfs_bnode_find(tree, node->parent);
    tmp___0 = IS_ERR((void const *)parent);
    if (tmp___0 != 0L) {
      tmp = PTR_ERR((void const *)parent);
      return ((int )tmp);
    } else {
    }
    hfs_bnode_put(node);
    tmp___1 = parent;
    fd->bnode = tmp___1;
    node = tmp___1;
    __hfs_brec_find(node, fd);
    goto again;
  } else {
  }
  hfs_bnode_write_u16(node, 10, (int )node->num_recs);
  if (rec_off == end_off) {
    goto skip;
  } else {
  }
  size = fd->keylength + fd->entrylength;
  ldv_22103:
  tmp___2 = hfs_bnode_read_u16(node, rec_off);
  data_off = (int )tmp___2;
  hfs_bnode_write_u16(node, rec_off + 2, (int )((u16 )data_off) - (int )((u16 )size));
  rec_off = rec_off + -2;
  if (rec_off >= end_off) {
    goto ldv_22103;
  } else {
  }
  hfs_bnode_move(node, fd->keyoffset, fd->keyoffset + size, (data_off - fd->keyoffset) - size);
  skip:
  hfs_bnode_dump(node);
  if (fd->record == 0) {
    hfs_brec_update_parent(fd);
  } else {
  }
  return (0);
}
}
static struct hfs_bnode *hfs_bnode_split(struct hfs_find_data *fd )
{
  struct hfs_btree *tree ;
  struct hfs_bnode *node ;
  struct hfs_bnode *new_node ;
  struct hfs_bnode *next_node ;
  struct hfs_bnode_desc node_desc ;
  int num_recs ;
  int new_rec_off ;
  int new_off ;
  int old_rec_off ;
  int data_start ;
  int data_end ;
  int size ;
  long tmp ;
  long tmp___0 ;
  u16 tmp___1 ;
  void *tmp___2 ;
  u16 tmp___3 ;
  u16 tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  __u16 tmp___7 ;
  __u32 tmp___8 ;
  __u16 tmp___9 ;
  __u32 tmp___10 ;
  {
  tree = fd->tree;
  node = fd->bnode;
  new_node = hfs_bmap_alloc(tree);
  tmp = IS_ERR((void const *)new_node);
  if (tmp != 0L) {
    return (new_node);
  } else {
  }
  hfs_bnode_get(node);
  new_node->next = node->next;
  new_node->prev = node->this;
  new_node->parent = node->parent;
  new_node->type = node->type;
  new_node->height = node->height;
  if (node->next != 0U) {
    next_node = hfs_bnode_find(tree, node->next);
  } else {
    next_node = 0;
  }
  tmp___0 = IS_ERR((void const *)next_node);
  if (tmp___0 != 0L) {
    hfs_bnode_put(node);
    hfs_bnode_put(new_node);
    return (next_node);
  } else {
  }
  size = (int )((tree->node_size / 2U + (unsigned int )((int )node->num_recs * -2)) - 14U);
  old_rec_off = (int )(tree->node_size - 4U);
  num_recs = 1;
  ldv_22122:
  tmp___1 = hfs_bnode_read_u16(node, old_rec_off);
  data_start = (int )tmp___1;
  if (data_start > size) {
    goto ldv_22120;
  } else {
  }
  old_rec_off = old_rec_off + -2;
  num_recs = num_recs + 1;
  if (num_recs < (int )node->num_recs) {
    goto ldv_22121;
  } else {
  }
  hfs_bnode_put(node);
  hfs_bnode_put(new_node);
  if ((unsigned long )next_node != (unsigned long )((struct hfs_bnode *)0)) {
    hfs_bnode_put(next_node);
  } else {
  }
  tmp___2 = ERR_PTR(-28L);
  return ((struct hfs_bnode *)tmp___2);
  ldv_22121: ;
  goto ldv_22122;
  ldv_22120: ;
  if (fd->record + 1 < num_recs) {
    old_rec_off = old_rec_off + 2;
    num_recs = num_recs - 1;
    tmp___3 = hfs_bnode_read_u16(node, old_rec_off);
    data_start = (int )tmp___3;
  } else {
    hfs_bnode_put(node);
    hfs_bnode_get(new_node);
    fd->bnode = new_node;
    fd->record = fd->record - num_recs;
    fd->keyoffset = fd->keyoffset + (14 - data_start);
    fd->entryoffset = fd->entryoffset + (14 - data_start);
  }
  new_node->num_recs = (int )node->num_recs - (int )((u16 )num_recs);
  node->num_recs = (u16 )num_recs;
  new_rec_off = (int )(tree->node_size - 2U);
  new_off = 14;
  size = data_start - new_off;
  num_recs = (int )new_node->num_recs;
  data_end = data_start;
  goto ldv_22124;
  ldv_22123:
  hfs_bnode_write_u16(new_node, new_rec_off, (int )((u16 )new_off));
  old_rec_off = old_rec_off + -2;
  new_rec_off = new_rec_off + -2;
  tmp___4 = hfs_bnode_read_u16(node, old_rec_off);
  data_end = (int )tmp___4;
  new_off = data_end - size;
  num_recs = num_recs - 1;
  ldv_22124: ;
  if (num_recs != 0) {
    goto ldv_22123;
  } else {
  }
  hfs_bnode_write_u16(new_node, new_rec_off, (int )((u16 )new_off));
  hfs_bnode_copy(new_node, 14, node, data_start, data_end - data_start);
  tmp___5 = __fswab32(new_node->next);
  node_desc.next = tmp___5;
  tmp___6 = __fswab32(new_node->prev);
  node_desc.prev = tmp___6;
  node_desc.type = new_node->type;
  node_desc.height = new_node->height;
  tmp___7 = __fswab16((int )new_node->num_recs);
  node_desc.num_recs = tmp___7;
  node_desc.reserved = 0U;
  hfs_bnode_write(new_node, (void *)(& node_desc), 0, 14);
  node->next = new_node->this;
  hfs_bnode_read(node, (void *)(& node_desc), 0, 14);
  tmp___8 = __fswab32(node->next);
  node_desc.next = tmp___8;
  tmp___9 = __fswab16((int )node->num_recs);
  node_desc.num_recs = tmp___9;
  hfs_bnode_write(node, (void *)(& node_desc), 0, 14);
  if ((unsigned long )next_node != (unsigned long )((struct hfs_bnode *)0)) {
    next_node->prev = new_node->this;
    hfs_bnode_read(next_node, (void *)(& node_desc), 0, 14);
    tmp___10 = __fswab32(next_node->prev);
    node_desc.prev = tmp___10;
    hfs_bnode_write(next_node, (void *)(& node_desc), 0, 14);
    hfs_bnode_put(next_node);
  } else
  if (node->this == tree->leaf_tail) {
    tree->leaf_tail = new_node->this;
    mark_inode_dirty(tree->inode);
  } else {
  }
  hfs_bnode_dump(node);
  hfs_bnode_dump(new_node);
  hfs_bnode_put(node);
  return (new_node);
}
}
static int hfs_brec_update_parent(struct hfs_find_data *fd )
{
  struct hfs_btree *tree ;
  struct hfs_bnode *node ;
  struct hfs_bnode *new_node ;
  struct hfs_bnode *parent ;
  int newkeylen ;
  int diff ;
  int rec ;
  int rec_off ;
  int end_rec_off ;
  int start_off ;
  int end_off ;
  long tmp ;
  long tmp___0 ;
  u8 tmp___1 ;
  u16 tmp___2 ;
  long tmp___3 ;
  long tmp___4 ;
  u16 tmp___5 ;
  u16 tmp___6 ;
  __be32 cnid ;
  __u32 tmp___7 ;
  {
  tree = fd->tree;
  node = fd->bnode;
  new_node = 0;
  if (node->parent == 0U) {
    return (0);
  } else {
  }
  again:
  parent = hfs_bnode_find(tree, node->parent);
  tmp___0 = IS_ERR((void const *)parent);
  if (tmp___0 != 0L) {
    tmp = PTR_ERR((void const *)parent);
    return ((int )tmp);
  } else {
  }
  __hfs_brec_find(parent, fd);
  hfs_bnode_dump(parent);
  rec = fd->record;
  if ((tree->attributes & 4U) != 0U) {
    tmp___1 = hfs_bnode_read_u8(node, 14);
    newkeylen = (int )((unsigned int )tmp___1 | 1U) + 1;
  } else {
    newkeylen = (int )(tree->max_key_len + 1U);
    fd->keylength = newkeylen;
  }
  rec_off = (int )(tree->node_size + (unsigned int )((-2 - rec) * 2));
  end_rec_off = (int )(tree->node_size + (unsigned int )(~ ((int )parent->num_recs) * 2));
  diff = newkeylen - fd->keylength;
  if (diff == 0) {
    goto skip;
  } else {
  }
  if (diff > 0) {
    tmp___2 = hfs_bnode_read_u16(parent, end_rec_off);
    end_off = (int )tmp___2;
    if (end_rec_off - end_off < diff) {
      printk("\017hfs: splitting index node...\n");
      fd->bnode = parent;
      new_node = hfs_bnode_split(fd);
      tmp___4 = IS_ERR((void const *)new_node);
      if (tmp___4 != 0L) {
        tmp___3 = PTR_ERR((void const *)new_node);
        return ((int )tmp___3);
      } else {
      }
      parent = fd->bnode;
      rec = fd->record;
      rec_off = (int )(tree->node_size + (unsigned int )((-2 - rec) * 2));
      end_rec_off = (int )(tree->node_size + (unsigned int )(~ ((int )parent->num_recs) * 2));
    } else {
    }
  } else {
  }
  tmp___5 = hfs_bnode_read_u16(parent, rec_off);
  start_off = (int )tmp___5;
  end_off = start_off;
  hfs_bnode_write_u16(parent, rec_off, (int )((u16 )start_off) + (int )((u16 )diff));
  start_off = start_off + -4;
  goto ldv_22143;
  ldv_22142:
  rec_off = rec_off + -2;
  tmp___6 = hfs_bnode_read_u16(parent, rec_off);
  end_off = (int )tmp___6;
  hfs_bnode_write_u16(parent, rec_off, (int )((u16 )end_off) + (int )((u16 )diff));
  ldv_22143: ;
  if (rec_off > end_rec_off) {
    goto ldv_22142;
  } else {
  }
  hfs_bnode_move(parent, start_off + diff, start_off, end_off - start_off);
  skip:
  hfs_bnode_copy(parent, fd->keyoffset, node, 14, newkeylen);
  if ((tree->attributes & 4U) == 0U) {
    hfs_bnode_write_u8(parent, fd->keyoffset, (int )((unsigned int )((u8 )newkeylen) + 255U));
  } else {
  }
  hfs_bnode_dump(parent);
  hfs_bnode_put(node);
  node = parent;
  if ((unsigned long )new_node != (unsigned long )((struct hfs_bnode *)0)) {
    fd->bnode = hfs_bnode_find(tree, new_node->parent);
    hfs_bnode_read_key(new_node, (void *)fd->search_key, 14);
    tmp___7 = __fswab32(new_node->this);
    cnid = tmp___7;
    __hfs_brec_find(fd->bnode, fd);
    hfs_brec_insert(fd, (void *)(& cnid), 4);
    hfs_bnode_put(fd->bnode);
    hfs_bnode_put(new_node);
    if (rec == 0) {
      if ((unsigned long )new_node == (unsigned long )node) {
        goto out;
      } else {
      }
      hfs_bnode_read_key(node, (void *)fd->search_key, 14);
    } else {
    }
  } else {
  }
  if (rec == 0 && node->parent != 0U) {
    goto again;
  } else {
  }
  out:
  fd->bnode = node;
  return (0);
}
}
static int hfs_btree_inc_height(struct hfs_btree *tree )
{
  struct hfs_bnode *node ;
  struct hfs_bnode *new_node ;
  struct hfs_bnode_desc node_desc ;
  int key_size ;
  int rec ;
  __be32 cnid ;
  long tmp ;
  long tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  u32 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  __u16 tmp___6 ;
  u8 tmp___7 ;
  __u32 tmp___8 ;
  {
  node = 0;
  if (tree->root != 0U) {
    node = hfs_bnode_find(tree, tree->root);
    tmp___0 = IS_ERR((void const *)node);
    if (tmp___0 != 0L) {
      tmp = PTR_ERR((void const *)node);
      return ((int )tmp);
    } else {
    }
  } else {
  }
  new_node = hfs_bmap_alloc(tree);
  tmp___2 = IS_ERR((void const *)new_node);
  if (tmp___2 != 0L) {
    hfs_bnode_put(node);
    tmp___1 = PTR_ERR((void const *)new_node);
    return ((int )tmp___1);
  } else {
  }
  tree->root = new_node->this;
  if (tree->depth == 0U) {
    tmp___3 = new_node->this;
    tree->leaf_tail = tmp___3;
    tree->leaf_head = tmp___3;
    new_node->type = 255U;
    new_node->num_recs = 0U;
  } else {
    new_node->type = 0U;
    new_node->num_recs = 1U;
  }
  new_node->parent = 0U;
  new_node->next = 0U;
  new_node->prev = 0U;
  tree->depth = tree->depth + 1U;
  new_node->height = (u8 )tree->depth;
  tmp___4 = __fswab32(new_node->next);
  node_desc.next = tmp___4;
  tmp___5 = __fswab32(new_node->prev);
  node_desc.prev = tmp___5;
  node_desc.type = new_node->type;
  node_desc.height = new_node->height;
  tmp___6 = __fswab16((int )new_node->num_recs);
  node_desc.num_recs = tmp___6;
  node_desc.reserved = 0U;
  hfs_bnode_write(new_node, (void *)(& node_desc), 0, 14);
  rec = (int )(tree->node_size - 2U);
  hfs_bnode_write_u16(new_node, rec, 14);
  if ((unsigned long )node != (unsigned long )((struct hfs_bnode *)0)) {
    node->parent = tree->root;
    if ((unsigned int )node->type == 255U || (tree->attributes & 4U) != 0U) {
      tmp___7 = hfs_bnode_read_u8(node, 14);
      key_size = (int )tmp___7 + 1;
    } else {
      key_size = (int )(tree->max_key_len + 1U);
    }
    hfs_bnode_copy(new_node, 14, node, 14, key_size);
    if ((tree->attributes & 4U) == 0U) {
      key_size = (int )(tree->max_key_len + 1U);
      hfs_bnode_write_u8(new_node, 14, (int )((u8 )tree->max_key_len));
    } else {
    }
    key_size = (key_size + 1) & -2;
    tmp___8 = __fswab32(node->this);
    cnid = tmp___8;
    hfs_bnode_write(new_node, (void *)(& cnid), key_size + 14, 4);
    rec = rec + -2;
    hfs_bnode_write_u16(new_node, rec, (int )((unsigned int )((u16 )key_size) + 18U));
    hfs_bnode_put(node);
  } else {
  }
  hfs_bnode_put(new_node);
  mark_inode_dirty(tree->inode);
  return (0);
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
__inline static int ffs(int x )
{
  int r ;
  {
  __asm__ ("bsfl %1,%0": "=r" (r): "rm" (x), "0" (-1));
  return (r + 1);
}
}
__inline static bool is_power_of_2(unsigned long n )
{
  {
  return ((bool )(n != 0UL && ((n - 1UL) & n) == 0UL));
}
}
extern void __mutex_init(struct mutex * , char const * , struct lock_class_key * ) ;
void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_39(struct mutex *ldv_func_arg1 ) ;
extern void __raw_spin_lock_init(raw_spinlock_t * , char const * , struct lock_class_key * ) ;
__inline static raw_spinlock_t *spinlock_check(spinlock_t *lock )
{
  {
  return (& lock->ldv_5961.rlock);
}
}
extern void iput(struct inode * ) ;
extern struct inode *iget_locked(struct super_block * , unsigned long ) ;
extern void unlock_new_inode(struct inode * ) ;
extern void inode_set_bytes(struct inode * , loff_t ) ;
int hfs_extend_file(struct inode *inode ) ;
struct address_space_operations const hfs_aops ;
struct address_space_operations const hfs_btree_aops ;
void hfs_inode_read_fork(struct inode *inode , struct hfs_extent *ext , __be32 __log_size ,
                         __be32 phys_size , u32 clump_size ) ;
struct hfs_btree *hfs_btree_open(struct super_block *sb , u32 id , int (*keycmp)(btree_key const * ,
                                                                                 btree_key const * ) ) ;
void hfs_btree_close(struct hfs_btree *tree ) ;
void hfs_btree_write(struct hfs_btree *tree ) ;
struct hfs_btree *hfs_btree_open(struct super_block *sb , u32 id , int (*keycmp)(btree_key const * ,
                                                                                 btree_key const * ) )
{
  struct hfs_btree *tree ;
  struct hfs_btree_header_rec *head ;
  struct address_space *mapping ;
  struct page *page ;
  unsigned int size ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  long tmp___0 ;
  struct hfs_mdb *mdb ;
  struct inode const *__mptr ;
  struct lock_class_key __key___1 ;
  struct inode const *__mptr___0 ;
  __u32 tmp___1 ;
  struct inode const *__mptr___1 ;
  struct inode const *__mptr___2 ;
  __u32 tmp___2 ;
  struct inode const *__mptr___3 ;
  long tmp___3 ;
  void *tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  __u32 tmp___7 ;
  __u32 tmp___8 ;
  __u32 tmp___9 ;
  __u32 tmp___10 ;
  __u32 tmp___11 ;
  __u16 tmp___12 ;
  __u16 tmp___13 ;
  __u16 tmp___14 ;
  bool tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  {
  tmp = kzalloc(2376UL, 208U);
  tree = (struct hfs_btree *)tmp;
  if ((unsigned long )tree == (unsigned long )((struct hfs_btree *)0)) {
    return (0);
  } else {
  }
  __mutex_init(& tree->tree_lock, "&tree->tree_lock", & __key);
  spinlock_check(& tree->hash_lock);
  __raw_spin_lock_init(& tree->hash_lock.ldv_5961.rlock, "&(&tree->hash_lock)->rlock",
                       & __key___0);
  tree->sb = sb;
  tree->cnid = id;
  tree->keycmp = keycmp;
  tree->inode = iget_locked(sb, (unsigned long )id);
  if ((unsigned long )tree->inode == (unsigned long )((struct inode *)0)) {
    goto free_tree;
  } else {
  }
  tmp___0 = ldv__builtin_expect(((tree->inode)->i_state & 8UL) == 0UL, 0L);
  if (tmp___0 != 0L) {
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/hfs/hfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/27/dscv_tempdir/dscv/ri/32_7a/fs/hfs/btree.c.prepared"),
                         "i" (103), "i" (12UL));
    ldv_22064: ;
    goto ldv_22064;
  } else {
  }
  mdb = ((struct hfs_sb_info *)sb->s_fs_info)->mdb;
  __mptr = (struct inode const *)tree->inode;
  ((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->flags = 0U;
  __mptr___0 = (struct inode const *)tree->inode;
  __mutex_init(& ((struct hfs_inode_info *)__mptr___0 + 0xfffffffffffffed0UL)->extents_lock,
               "&HFS_I(tree->inode)->extents_lock", & __key___1);
  switch (id) {
  case 3U:
  tmp___1 = __fswab32(mdb->drXTClpSiz);
  hfs_inode_read_fork(tree->inode, (struct hfs_extent *)(& mdb->drXTExtRec), mdb->drXTFlSize,
                      mdb->drXTFlSize, tmp___1);
  __mptr___1 = (struct inode const *)tree->inode;
  __mptr___2 = (struct inode const *)tree->inode;
  if ((int )((struct hfs_inode_info *)__mptr___1 + 0xfffffffffffffed0UL)->alloc_blocks > (int )((struct hfs_inode_info *)__mptr___2 + 0xfffffffffffffed0UL)->first_blocks) {
    printk("\vhfs: invalid btree extent records\n");
    unlock_new_inode(tree->inode);
    goto free_inode;
  } else {
  }
  ((tree->inode)->i_mapping)->a_ops = & hfs_btree_aops;
  goto ldv_22077;
  case 4U:
  tmp___2 = __fswab32(mdb->drCTClpSiz);
  hfs_inode_read_fork(tree->inode, (struct hfs_extent *)(& mdb->drCTExtRec), mdb->drCTFlSize,
                      mdb->drCTFlSize, tmp___2);
  __mptr___3 = (struct inode const *)tree->inode;
  if ((unsigned int )((struct hfs_inode_info *)__mptr___3 + 0xfffffffffffffed0UL)->first_blocks == 0U) {
    printk("\vhfs: invalid btree extent records (0 size).\n");
    unlock_new_inode(tree->inode);
    goto free_inode;
  } else {
  }
  ((tree->inode)->i_mapping)->a_ops = & hfs_btree_aops;
  goto ldv_22077;
  default:
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/hfs/hfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/27/dscv_tempdir/dscv/ri/32_7a/fs/hfs/btree.c.prepared"),
                       "i" (135), "i" (12UL));
  ldv_22082: ;
  goto ldv_22082;
  }
  ldv_22077:
  unlock_new_inode(tree->inode);
  mapping = (tree->inode)->i_mapping;
  page = read_mapping_page(mapping, 0UL, 0);
  tmp___3 = IS_ERR((void const *)page);
  if (tmp___3 != 0L) {
    goto free_inode;
  } else {
  }
  tmp___4 = kmap(page);
  head = (struct hfs_btree_header_rec *)tmp___4 + 14U;
  tmp___5 = __fswab32(head->root);
  tree->root = tmp___5;
  tmp___6 = __fswab32(head->leaf_count);
  tree->leaf_count = tmp___6;
  tmp___7 = __fswab32(head->leaf_head);
  tree->leaf_head = tmp___7;
  tmp___8 = __fswab32(head->leaf_tail);
  tree->leaf_tail = tmp___8;
  tmp___9 = __fswab32(head->node_count);
  tree->node_count = tmp___9;
  tmp___10 = __fswab32(head->free_nodes);
  tree->free_nodes = tmp___10;
  tmp___11 = __fswab32(head->attributes);
  tree->attributes = tmp___11;
  tmp___12 = __fswab16((int )head->node_size);
  tree->node_size = (unsigned int )tmp___12;
  tmp___13 = __fswab16((int )head->max_key_len);
  tree->max_key_len = (unsigned int )tmp___13;
  tmp___14 = __fswab16((int )head->depth);
  tree->depth = (unsigned int )tmp___14;
  size = tree->node_size;
  tmp___15 = is_power_of_2((unsigned long )size);
  if (tmp___15) {
    tmp___16 = 0;
  } else {
    tmp___16 = 1;
  }
  if (tmp___16) {
    goto fail_page;
  } else {
  }
  if (tree->node_count == 0U) {
    goto fail_page;
  } else {
  }
  switch (id) {
  case 3U: ;
  if (tree->max_key_len != 7U) {
    printk("\vhfs: invalid extent max_key_len %d\n", tree->max_key_len);
    goto fail_page;
  } else {
  }
  goto ldv_22085;
  case 4U: ;
  if (tree->max_key_len != 37U) {
    printk("\vhfs: invalid catalog max_key_len %d\n", tree->max_key_len);
    goto fail_page;
  } else {
  }
  goto ldv_22085;
  default:
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/hfs/hfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/27/dscv_tempdir/dscv/ri/32_7a/fs/hfs/btree.c.prepared"),
                       "i" (179), "i" (12UL));
  ldv_22088: ;
  goto ldv_22088;
  }
  ldv_22085:
  tmp___17 = ffs((int )size);
  tree->node_size_shift = (unsigned int )(tmp___17 + -1);
  tree->pages_per_bnode = (unsigned int )(((unsigned long )tree->node_size + 4095UL) >> 12);
  kunmap(page);
  put_page(page);
  return (tree);
  fail_page:
  put_page(page);
  free_inode:
  ((tree->inode)->i_mapping)->a_ops = & hfs_aops;
  iput(tree->inode);
  free_tree:
  kfree((void const *)tree);
  return (0);
}
}
void hfs_btree_close(struct hfs_btree *tree )
{
  struct hfs_bnode *node ;
  int i ;
  int tmp ;
  int tmp___0 ;
  {
  if ((unsigned long )tree == (unsigned long )((struct hfs_btree *)0)) {
    return;
  } else {
  }
  i = 0;
  goto ldv_22098;
  ldv_22097: ;
  goto ldv_22095;
  ldv_22094:
  tree->node_hash[i] = node->next_hash;
  tmp___0 = atomic_read((atomic_t const *)(& node->refcnt));
  if (tmp___0 != 0) {
    tmp = atomic_read((atomic_t const *)(& node->refcnt));
    printk("\vhfs: node %d:%d still has %d user(s)!\n", (node->tree)->cnid, node->this,
           tmp);
  } else {
  }
  hfs_bnode_free(node);
  tree->node_hash_cnt = tree->node_hash_cnt - 1;
  ldv_22095:
  node = tree->node_hash[i];
  if ((unsigned long )node != (unsigned long )((struct hfs_bnode *)0)) {
    goto ldv_22094;
  } else {
  }
  i = i + 1;
  ldv_22098: ;
  if (i <= 255) {
    goto ldv_22097;
  } else {
  }
  iput(tree->inode);
  kfree((void const *)tree);
  return;
}
}
void hfs_btree_write(struct hfs_btree *tree )
{
  struct hfs_btree_header_rec *head ;
  struct hfs_bnode *node ;
  struct page *page ;
  long tmp ;
  void *tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  __u32 tmp___7 ;
  __u16 tmp___8 ;
  {
  node = hfs_bnode_find(tree, 0U);
  tmp = IS_ERR((void const *)node);
  if (tmp != 0L) {
    return;
  } else {
  }
  page = node->page[0];
  tmp___0 = kmap(page);
  head = (struct hfs_btree_header_rec *)tmp___0 + 14U;
  tmp___1 = __fswab32(tree->root);
  head->root = tmp___1;
  tmp___2 = __fswab32(tree->leaf_count);
  head->leaf_count = tmp___2;
  tmp___3 = __fswab32(tree->leaf_head);
  head->leaf_head = tmp___3;
  tmp___4 = __fswab32(tree->leaf_tail);
  head->leaf_tail = tmp___4;
  tmp___5 = __fswab32(tree->node_count);
  head->node_count = tmp___5;
  tmp___6 = __fswab32(tree->free_nodes);
  head->free_nodes = tmp___6;
  tmp___7 = __fswab32(tree->attributes);
  head->attributes = tmp___7;
  tmp___8 = __fswab16((int )((__u16 )tree->depth));
  head->depth = tmp___8;
  kunmap(page);
  set_page_dirty(page);
  hfs_bnode_put(node);
  return;
}
}
static struct hfs_bnode *hfs_bmap_new_bmap(struct hfs_bnode *prev , u32 idx )
{
  struct hfs_btree *tree ;
  struct hfs_bnode *node ;
  struct hfs_bnode_desc desc ;
  __be32 cnid ;
  long tmp ;
  __u32 tmp___0 ;
  {
  tree = prev->tree;
  node = hfs_bnode_create(tree, idx);
  tmp = IS_ERR((void const *)node);
  if (tmp != 0L) {
    return (node);
  } else {
  }
  if (tree->free_nodes == 0U) {
    panic("FIXME!!!");
  } else {
  }
  tree->free_nodes = tree->free_nodes - 1U;
  prev->next = idx;
  tmp___0 = __fswab32(idx);
  cnid = tmp___0;
  hfs_bnode_write(prev, (void *)(& cnid), 0, 4);
  node->type = 2U;
  node->num_recs = 1U;
  hfs_bnode_clear(node, 0, (int )tree->node_size);
  desc.next = 0U;
  desc.prev = 0U;
  desc.type = 2U;
  desc.height = 0U;
  desc.num_recs = 256U;
  desc.reserved = 0U;
  hfs_bnode_write(node, (void *)(& desc), 0, 14);
  hfs_bnode_write_u16(node, 14, 32768);
  hfs_bnode_write_u16(node, (int )(tree->node_size - 2U), 14);
  hfs_bnode_write_u16(node, (int )(tree->node_size - 4U), (int )((unsigned int )((u16 )tree->node_size) - 6U));
  return (node);
}
}
struct hfs_bnode *hfs_bmap_alloc(struct hfs_btree *tree )
{
  struct hfs_bnode *node ;
  struct hfs_bnode *next_node ;
  struct page **pagep ;
  u32 nidx ;
  u32 idx ;
  unsigned int off ;
  u16 off16 ;
  u16 len ;
  u8 *data ;
  u8 byte ;
  u8 m ;
  int i ;
  struct inode *inode ;
  u32 count ;
  int res ;
  void *tmp ;
  struct inode const *__mptr ;
  loff_t tmp___0 ;
  struct inode const *__mptr___0 ;
  struct inode const *__mptr___1 ;
  long tmp___1 ;
  void *tmp___2 ;
  struct hfs_bnode *tmp___3 ;
  void *tmp___4 ;
  long tmp___5 ;
  void *tmp___6 ;
  {
  goto ldv_22139;
  ldv_22138:
  inode = tree->inode;
  res = hfs_extend_file(inode);
  if (res != 0) {
    tmp = ERR_PTR((long )res);
    return ((struct hfs_bnode *)tmp);
  } else {
  }
  __mptr = (struct inode const *)inode;
  __mptr___0 = (struct inode const *)inode;
  tmp___0 = (long long )((struct hfs_inode_info *)__mptr___0 + 0xfffffffffffffed0UL)->alloc_blocks * (long long )((struct hfs_sb_info *)(tree->sb)->s_fs_info)->alloc_blksz;
  inode->i_size = tmp___0;
  ((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->phys_size = tmp___0;
  __mptr___1 = (struct inode const *)inode;
  ((struct hfs_inode_info *)__mptr___1 + 0xfffffffffffffed0UL)->fs_blocks = (sector_t )(inode->i_size >> (int )(tree->sb)->s_blocksize_bits);
  inode_set_bytes(inode, inode->i_size);
  count = (u32 )(inode->i_size >> (int )tree->node_size_shift);
  tree->free_nodes = count - tree->node_count;
  tree->node_count = count;
  ldv_22139: ;
  if (tree->free_nodes == 0U) {
    goto ldv_22138;
  } else {
  }
  nidx = 0U;
  node = hfs_bnode_find(tree, nidx);
  tmp___1 = IS_ERR((void const *)node);
  if (tmp___1 != 0L) {
    return (node);
  } else {
  }
  len = hfs_brec_lenoff(node, 2, & off16);
  off = (unsigned int )off16;
  off = node->page_offset + off;
  pagep = (struct page **)(& node->page) + (unsigned long )(off >> 12);
  tmp___2 = kmap(*pagep);
  data = (u8 *)tmp___2;
  off = off & 4095U;
  idx = 0U;
  ldv_22147: ;
  goto ldv_22145;
  ldv_22144:
  byte = *(data + (unsigned long )off);
  if ((unsigned int )byte != 255U) {
    m = 128U;
    i = 0;
    goto ldv_22142;
    ldv_22141: ;
    if ((unsigned int )((int )byte & (int )m) == 0U) {
      idx = idx + (u32 )i;
      *(data + (unsigned long )off) = (u8 )((int )*(data + (unsigned long )off) | (int )m);
      set_page_dirty(*pagep);
      kunmap(*pagep);
      tree->free_nodes = tree->free_nodes - 1U;
      mark_inode_dirty(tree->inode);
      hfs_bnode_put(node);
      tmp___3 = hfs_bnode_create(tree, idx);
      return (tmp___3);
    } else {
    }
    m = (u8 )((int )m >> 1);
    i = i + 1;
    ldv_22142: ;
    if (i <= 7) {
      goto ldv_22141;
    } else {
    }
  } else {
  }
  off = off + 1U;
  if (off > 4095U) {
    kunmap(*pagep);
    pagep = pagep + 1;
    tmp___4 = kmap(*pagep);
    data = (u8 *)tmp___4;
    off = 0U;
  } else {
  }
  idx = idx + 8U;
  len = (u16 )((int )len - 1);
  ldv_22145: ;
  if ((unsigned int )len != 0U) {
    goto ldv_22144;
  } else {
  }
  kunmap(*pagep);
  nidx = node->next;
  if (nidx == 0U) {
    printk("\017hfs: create new bmap node...\n");
    next_node = hfs_bmap_new_bmap(node, idx);
  } else {
    next_node = hfs_bnode_find(tree, nidx);
  }
  hfs_bnode_put(node);
  tmp___5 = IS_ERR((void const *)next_node);
  if (tmp___5 != 0L) {
    return (next_node);
  } else {
  }
  node = next_node;
  len = hfs_brec_lenoff(node, 0, & off16);
  off = (unsigned int )off16;
  off = node->page_offset + off;
  pagep = (struct page **)(& node->page) + (unsigned long )(off >> 12);
  tmp___6 = kmap(*pagep);
  data = (u8 *)tmp___6;
  off = off & 4095U;
  goto ldv_22147;
}
}
void hfs_bmap_free(struct hfs_bnode *node )
{
  struct hfs_btree *tree ;
  struct page *page ;
  u16 off ;
  u16 len ;
  u32 nidx ;
  u8 *data ;
  u8 byte ;
  u8 m ;
  long tmp ;
  u32 i ;
  long tmp___0 ;
  void *tmp___1 ;
  {
  tree = node->tree;
  nidx = node->this;
  node = hfs_bnode_find(tree, 0U);
  tmp = IS_ERR((void const *)node);
  if (tmp != 0L) {
    return;
  } else {
  }
  len = hfs_brec_lenoff(node, 2, & off);
  goto ldv_22161;
  ldv_22160:
  nidx = (u32 )((int )len * -8) + nidx;
  i = node->next;
  hfs_bnode_put(node);
  if (i == 0U) {
    printk("\nhfs: unable to free bnode %u. bmap not found!\n", node->this);
    return;
  } else {
  }
  node = hfs_bnode_find(tree, i);
  tmp___0 = IS_ERR((void const *)node);
  if (tmp___0 != 0L) {
    return;
  } else {
  }
  if ((unsigned int )node->type != 2U) {
    printk("\nhfs: invalid bmap found! (%u,%d)\n", node->this, (int )node->type);
    hfs_bnode_put(node);
    return;
  } else {
  }
  len = hfs_brec_lenoff(node, 0, & off);
  ldv_22161: ;
  if ((u32 )((int )len * 8) <= nidx) {
    goto ldv_22160;
  } else {
  }
  off = ((int )((u16 )node->page_offset) + (int )((u16 )(nidx / 8U))) + (int )off;
  page = node->page[(int )off >> 12];
  tmp___1 = kmap(page);
  data = (u8 *)tmp___1;
  off = (unsigned int )off & 4095U;
  m = (u8 )(1 << ((int )(~ nidx) & 7));
  byte = *(data + (unsigned long )off);
  if ((unsigned int )((int )byte & (int )m) == 0U) {
    printk("\nhfs: trying to free free bnode %u(%d)\n", node->this, (int )node->type);
    kunmap(page);
    hfs_bnode_put(node);
    return;
  } else {
  }
  *(data + (unsigned long )off) = (u8 )(~ ((int )((signed char )m)) & (int )((signed char )byte));
  set_page_dirty(page);
  kunmap(page);
  hfs_bnode_put(node);
  tree->free_nodes = tree->free_nodes + 1U;
  mark_inode_dirty(tree->inode);
  return;
}
}
void ldv_mutex_lock_39(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_40(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_44(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_43(struct mutex *ldv_func_arg1 ) ;
extern struct timezone sys_tz ;
extern unsigned long get_seconds(void) ;
int hfs_cat_keycmp(btree_key const *key1 , btree_key const *key2 ) ;
int hfs_cat_find_brec(struct super_block *sb , u32 cnid , struct hfs_find_data *fd ) ;
int hfs_cat_create(u32 cnid , struct inode *dir , struct qstr *str , struct inode *inode ) ;
int hfs_cat_delete(u32 cnid , struct inode *dir , struct qstr *str ) ;
int hfs_cat_move(u32 cnid , struct inode *src_dir , struct qstr *src_name , struct inode *dst_dir ,
                 struct qstr *dst_name ) ;
void hfs_cat_build_key(struct super_block *sb , btree_key *key , u32 parent , struct qstr *name ) ;
int hfs_free_fork(struct super_block *sb , struct hfs_cat_file *file , int type ) ;
int hfs_strcmp(unsigned char const *s1 , unsigned int len1 , unsigned char const *s2 ,
               unsigned int len2 ) ;
void hfs_asc2mac(struct super_block *sb , struct hfs_name *out , struct qstr *in ) ;
void hfs_cat_build_key(struct super_block *sb , btree_key *key , u32 parent , struct qstr *name )
{
  __u32 tmp ;
  {
  key->cat.reserved = 0U;
  tmp = __fswab32(parent);
  key->cat.ParID = tmp;
  if ((unsigned long )name != (unsigned long )((struct qstr *)0)) {
    hfs_asc2mac(sb, & key->cat.CName, name);
    key->key_len = (unsigned int )key->cat.CName.len + 6U;
  } else {
    memset((void *)(& key->cat.CName), 0, 32UL);
    key->key_len = 6U;
  }
  return;
}
}
static int hfs_cat_build_record(hfs_cat_rec *rec , u32 cnid , struct inode *inode )
{
  __be32 mtime ;
  unsigned long tmp ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  {
  tmp = get_seconds();
  tmp___0 = __fswab32(((__u32 )tmp + (__u32 )(sys_tz.tz_minuteswest * -60)) + 2082844800U);
  mtime = tmp___0;
  memset((void *)rec, 0, 102UL);
  if (((int )inode->i_mode & 61440) == 16384) {
    rec->type = 1;
    tmp___1 = __fswab32(cnid);
    rec->dir.DirID = tmp___1;
    rec->dir.CrDat = mtime;
    rec->dir.MdDat = mtime;
    rec->dir.BkDat = 0U;
    rec->dir.UsrInfo.frView = 65280U;
    return (70);
  } else {
    rec->type = 2;
    rec->file.Flags = 130U;
    if (((int )inode->i_mode & 128) == 0) {
      rec->file.Flags = (u8 )((unsigned int )rec->file.Flags | 1U);
    } else {
    }
    tmp___2 = __fswab32(cnid);
    rec->file.FlNum = tmp___2;
    rec->file.CrDat = mtime;
    rec->file.MdDat = mtime;
    rec->file.BkDat = 0U;
    rec->file.UsrWds.fdType = ((struct hfs_sb_info *)(inode->i_sb)->s_fs_info)->s_type;
    rec->file.UsrWds.fdCreator = ((struct hfs_sb_info *)(inode->i_sb)->s_fs_info)->s_creator;
    return (102);
  }
}
}
static int hfs_cat_build_thread(struct super_block *sb , hfs_cat_rec *rec , int type ,
                                u32 parentid , struct qstr *name )
{
  __u32 tmp ;
  {
  rec->type = (s8 )type;
  memset((void *)(& rec->thread.reserved), 0, 9UL);
  tmp = __fswab32(parentid);
  rec->thread.ParID = tmp;
  hfs_asc2mac(sb, & rec->thread.CName, name);
  return (46);
}
}
int hfs_cat_create(u32 cnid , struct inode *dir , struct qstr *str , struct inode *inode )
{
  struct hfs_find_data fd ;
  struct super_block *sb ;
  union hfs_cat_rec entry ;
  int entry_size ;
  int err ;
  struct timespec tmp ;
  struct timespec __constr_expr_0 ;
  unsigned long tmp___0 ;
  int tmp___1 ;
  {
  if (dir->i_size > 32766LL) {
    return (-28);
  } else {
  }
  sb = dir->i_sb;
  hfs_find_init(((struct hfs_sb_info *)sb->s_fs_info)->cat_tree, & fd);
  hfs_cat_build_key(sb, fd.search_key, cnid, 0);
  entry_size = hfs_cat_build_thread(sb, & entry, ((int )inode->i_mode & 61440) == 16384 ? 3 : 4,
                                    (u32 )dir->i_ino, str);
  err = hfs_brec_find(& fd);
  if (err != -2) {
    if (err == 0) {
      err = -17;
    } else {
    }
    goto err2;
  } else {
  }
  err = hfs_brec_insert(& fd, (void *)(& entry), entry_size);
  if (err != 0) {
    goto err2;
  } else {
  }
  hfs_cat_build_key(sb, fd.search_key, (u32 )dir->i_ino, str);
  entry_size = hfs_cat_build_record(& entry, cnid, inode);
  err = hfs_brec_find(& fd);
  if (err != -2) {
    if (err == 0) {
      err = -17;
    } else {
    }
    goto err1;
  } else {
  }
  err = hfs_brec_insert(& fd, (void *)(& entry), entry_size);
  if (err != 0) {
    goto err1;
  } else {
  }
  dir->i_size = dir->i_size + 1LL;
  tmp___0 = get_seconds();
  __constr_expr_0.tv_sec = (long )tmp___0;
  __constr_expr_0.tv_nsec = 0L;
  tmp = __constr_expr_0;
  dir->i_ctime = tmp;
  dir->i_mtime = tmp;
  mark_inode_dirty(dir);
  hfs_find_exit(& fd);
  return (0);
  err1:
  hfs_cat_build_key(sb, fd.search_key, cnid, 0);
  tmp___1 = hfs_brec_find(& fd);
  if (tmp___1 == 0) {
    hfs_brec_remove(& fd);
  } else {
  }
  err2:
  hfs_find_exit(& fd);
  return (err);
}
}
int hfs_cat_keycmp(btree_key const *key1 , btree_key const *key2 )
{
  int retval ;
  __u32 tmp ;
  __u32 tmp___0 ;
  {
  tmp = __fswab32(key1->cat.ParID);
  tmp___0 = __fswab32(key2->cat.ParID);
  retval = (int )(tmp - tmp___0);
  if (retval == 0) {
    retval = hfs_strcmp((unsigned char const *)(& key1->cat.CName.name), (unsigned int )key1->cat.CName.len,
                        (unsigned char const *)(& key2->cat.CName.name), (unsigned int )key2->cat.CName.len);
  } else {
  }
  return (retval);
}
}
int hfs_cat_find_brec(struct super_block *sb , u32 cnid , struct hfs_find_data *fd )
{
  hfs_cat_rec rec ;
  int res ;
  int len ;
  int type ;
  u8 tmp ;
  size_t __len ;
  void *__ret ;
  int tmp___0 ;
  {
  hfs_cat_build_key(sb, fd->search_key, cnid, 0);
  res = hfs_brec_read(fd, (void *)(& rec), 102);
  if (res != 0) {
    return (res);
  } else {
  }
  type = (int )rec.type;
  if (type != 3 && type != 4) {
    printk("\vhfs: found bad thread record in catalog\n");
    return (-5);
  } else {
  }
  (fd->search_key)->cat.ParID = rec.thread.ParID;
  tmp = rec.thread.CName.len;
  (fd->search_key)->cat.CName.len = tmp;
  len = (int )tmp;
  if (len > 31) {
    printk("\vhfs: bad catalog namelength\n");
    return (-5);
  } else {
  }
  __len = (size_t )len;
  __ret = __builtin_memcpy((void *)(& (fd->search_key)->cat.CName.name), (void const *)(& rec.thread.CName.name),
                           __len);
  tmp___0 = hfs_brec_find(fd);
  return (tmp___0);
}
}
int hfs_cat_delete(u32 cnid , struct inode *dir , struct qstr *str )
{
  struct super_block *sb ;
  struct hfs_find_data fd ;
  struct list_head *pos ;
  int res ;
  int type ;
  u8 tmp ;
  struct hfs_cat_file file ;
  __u32 tmp___0 ;
  struct inode const *__mptr ;
  struct hfs_readdir_data *rd ;
  struct list_head const *__mptr___0 ;
  int tmp___1 ;
  struct inode const *__mptr___1 ;
  struct timespec tmp___2 ;
  struct timespec __constr_expr_0 ;
  unsigned long tmp___3 ;
  {
  sb = dir->i_sb;
  hfs_find_init(((struct hfs_sb_info *)sb->s_fs_info)->cat_tree, & fd);
  hfs_cat_build_key(sb, fd.search_key, (u32 )dir->i_ino, str);
  res = hfs_brec_find(& fd);
  if (res != 0) {
    goto out;
  } else {
  }
  tmp = hfs_bnode_read_u8(fd.bnode, fd.entryoffset);
  type = (int )tmp;
  if (type == 2) {
    hfs_bnode_read(fd.bnode, (void *)(& file), fd.entryoffset, 102);
    tmp___0 = __fswab32(file.FlNum);
    if (tmp___0 == cnid) {
      hfs_free_fork(sb, & file, 255);
    } else {
    }
  } else {
  }
  __mptr = (struct inode const *)dir;
  pos = ((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->open_dir_list.next;
  goto ldv_22121;
  ldv_22120:
  __mptr___0 = (struct list_head const *)pos;
  rd = (struct hfs_readdir_data *)__mptr___0;
  tmp___1 = (*((fd.tree)->keycmp))((btree_key const *)fd.search_key, (btree_key const *)(& rd->key));
  if (tmp___1 < 0) {
    (rd->file)->f_pos = (rd->file)->f_pos - 1LL;
  } else {
  }
  pos = pos->next;
  ldv_22121:
  __mptr___1 = (struct inode const *)dir;
  if ((unsigned long )(& ((struct hfs_inode_info *)__mptr___1 + 0xfffffffffffffed0UL)->open_dir_list) != (unsigned long )pos) {
    goto ldv_22120;
  } else {
  }
  res = hfs_brec_remove(& fd);
  if (res != 0) {
    goto out;
  } else {
  }
  hfs_cat_build_key(sb, fd.search_key, cnid, 0);
  res = hfs_brec_find(& fd);
  if (res == 0) {
    res = hfs_brec_remove(& fd);
    if (res != 0) {
      goto out;
    } else {
    }
  } else {
  }
  dir->i_size = dir->i_size - 1LL;
  tmp___3 = get_seconds();
  __constr_expr_0.tv_sec = (long )tmp___3;
  __constr_expr_0.tv_nsec = 0L;
  tmp___2 = __constr_expr_0;
  dir->i_ctime = tmp___2;
  dir->i_mtime = tmp___2;
  mark_inode_dirty(dir);
  res = 0;
  out:
  hfs_find_exit(& fd);
  return (res);
}
}
int hfs_cat_move(u32 cnid , struct inode *src_dir , struct qstr *src_name , struct inode *dst_dir ,
                 struct qstr *dst_name )
{
  struct super_block *sb ;
  struct hfs_find_data src_fd ;
  struct hfs_find_data dst_fd ;
  union hfs_cat_rec entry ;
  int entry_size ;
  int type ;
  int err ;
  struct timespec tmp ;
  struct timespec __constr_expr_0 ;
  unsigned long tmp___0 ;
  struct timespec tmp___1 ;
  struct timespec __constr_expr_1 ;
  unsigned long tmp___2 ;
  {
  sb = src_dir->i_sb;
  hfs_find_init(((struct hfs_sb_info *)sb->s_fs_info)->cat_tree, & src_fd);
  dst_fd = src_fd;
  hfs_cat_build_key(sb, src_fd.search_key, (u32 )src_dir->i_ino, src_name);
  err = hfs_brec_find(& src_fd);
  if (err != 0) {
    goto out;
  } else {
  }
  if ((unsigned int )src_fd.entrylength > 102U || src_fd.entrylength < 0) {
    err = -5;
    goto out;
  } else {
  }
  hfs_bnode_read(src_fd.bnode, (void *)(& entry), src_fd.entryoffset, src_fd.entrylength);
  hfs_cat_build_key(sb, dst_fd.search_key, (u32 )dst_dir->i_ino, dst_name);
  err = hfs_brec_find(& dst_fd);
  if (err != -2) {
    if (err == 0) {
      err = -17;
    } else {
    }
    goto out;
  } else {
  }
  err = hfs_brec_insert(& dst_fd, (void *)(& entry), src_fd.entrylength);
  if (err != 0) {
    goto out;
  } else {
  }
  dst_dir->i_size = dst_dir->i_size + 1LL;
  tmp___0 = get_seconds();
  __constr_expr_0.tv_sec = (long )tmp___0;
  __constr_expr_0.tv_nsec = 0L;
  tmp = __constr_expr_0;
  dst_dir->i_ctime = tmp;
  dst_dir->i_mtime = tmp;
  mark_inode_dirty(dst_dir);
  hfs_cat_build_key(sb, src_fd.search_key, (u32 )src_dir->i_ino, src_name);
  err = hfs_brec_find(& src_fd);
  if (err != 0) {
    goto out;
  } else {
  }
  err = hfs_brec_remove(& src_fd);
  if (err != 0) {
    goto out;
  } else {
  }
  src_dir->i_size = src_dir->i_size - 1LL;
  tmp___2 = get_seconds();
  __constr_expr_1.tv_sec = (long )tmp___2;
  __constr_expr_1.tv_nsec = 0L;
  tmp___1 = __constr_expr_1;
  src_dir->i_ctime = tmp___1;
  src_dir->i_mtime = tmp___1;
  mark_inode_dirty(src_dir);
  type = (int )entry.type;
  if (type == 2 && ((int )entry.file.Flags & 2) == 0) {
    goto out;
  } else {
  }
  hfs_cat_build_key(sb, src_fd.search_key, cnid, 0);
  err = hfs_brec_find(& src_fd);
  if (err != 0) {
    goto out;
  } else {
  }
  err = hfs_brec_remove(& src_fd);
  if (err != 0) {
    goto out;
  } else {
  }
  hfs_cat_build_key(sb, dst_fd.search_key, cnid, 0);
  entry_size = hfs_cat_build_thread(sb, & entry, type == 2 ? 4 : 3, (u32 )dst_dir->i_ino,
                                    dst_name);
  err = hfs_brec_find(& dst_fd);
  if (err != -2) {
    if (err == 0) {
      err = -17;
    } else {
    }
    goto out;
  } else {
  }
  err = hfs_brec_insert(& dst_fd, (void *)(& entry), entry_size);
  out:
  hfs_bnode_put(dst_fd.bnode);
  hfs_find_exit(& src_fd);
  return (err);
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
extern void __list_add(struct list_head * , struct list_head * , struct list_head * ) ;
__inline static void list_add(struct list_head *new , struct list_head *head )
{
  {
  __list_add(new, head, head->next);
  return;
}
}
extern void list_del(struct list_head * ) ;
extern void *memcpy(void * , void const * , size_t ) ;
void ldv_mutex_unlock_48(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_47(struct mutex *ldv_func_arg1 ) ;
extern void d_instantiate(struct dentry * , struct inode * ) ;
extern void d_rehash(struct dentry * ) ;
__inline static void d_add(struct dentry *entry , struct inode *inode )
{
  {
  d_instantiate(entry, inode);
  d_rehash(entry);
  return;
}
}
extern void clear_nlink(struct inode * ) ;
extern loff_t generic_file_llseek(struct file * , loff_t , int ) ;
extern ssize_t generic_read_dir(struct file * , char * , size_t , loff_t * ) ;
struct file_operations const hfs_dir_operations ;
struct inode_operations const hfs_dir_inode_operations ;
struct inode *hfs_new_inode(struct inode *dir , struct qstr *name , umode_t mode ) ;
int hfs_inode_setattr(struct dentry *dentry , struct iattr *attr ) ;
struct inode *hfs_iget(struct super_block *sb , struct hfs_cat_key *key , hfs_cat_rec *rec ) ;
void hfs_delete_inode(struct inode *inode ) ;
int hfs_mac2asc(struct super_block *sb , char *out , struct hfs_name const *in ) ;
static struct dentry *hfs_lookup(struct inode *dir , struct dentry *dentry , unsigned int flags )
{
  hfs_cat_rec rec ;
  struct hfs_find_data fd ;
  struct inode *inode ;
  int res ;
  void *tmp ;
  void *tmp___0 ;
  {
  inode = 0;
  hfs_find_init(((struct hfs_sb_info *)(dir->i_sb)->s_fs_info)->cat_tree, & fd);
  hfs_cat_build_key(dir->i_sb, fd.search_key, (u32 )dir->i_ino, & dentry->d_name);
  res = hfs_brec_read(& fd, (void *)(& rec), 102);
  if (res != 0) {
    hfs_find_exit(& fd);
    if (res == -2) {
      inode = 0;
      goto done;
    } else {
    }
    tmp = ERR_PTR((long )res);
    return ((struct dentry *)tmp);
  } else {
  }
  inode = hfs_iget(dir->i_sb, & (fd.search_key)->cat, & rec);
  hfs_find_exit(& fd);
  if ((unsigned long )inode == (unsigned long )((struct inode *)0)) {
    tmp___0 = ERR_PTR(-13L);
    return ((struct dentry *)tmp___0);
  } else {
  }
  done:
  d_add(dentry, inode);
  return (0);
}
}
static int hfs_readdir(struct file *filp , void *dirent , int (*filldir)(void * ,
                                                                         char const * ,
                                                                         int , loff_t ,
                                                                         u64 , unsigned int ) )
{
  struct inode *inode ;
  struct super_block *sb ;
  int len ;
  int err ;
  char strbuf[128U] ;
  union hfs_cat_rec entry ;
  struct hfs_find_data fd ;
  struct hfs_readdir_data *rd ;
  u16 type ;
  int tmp ;
  __u32 tmp___0 ;
  int tmp___1 ;
  __u32 tmp___2 ;
  __u32 tmp___3 ;
  int tmp___4 ;
  __u32 tmp___5 ;
  int tmp___6 ;
  void *tmp___7 ;
  struct inode const *__mptr ;
  size_t __len ;
  void *__ret ;
  {
  inode = (filp->f_path.dentry)->d_inode;
  sb = inode->i_sb;
  if (filp->f_pos >= inode->i_size) {
    return (0);
  } else {
  }
  hfs_find_init(((struct hfs_sb_info *)sb->s_fs_info)->cat_tree, & fd);
  hfs_cat_build_key(sb, fd.search_key, (u32 )inode->i_ino, 0);
  err = hfs_brec_find(& fd);
  if (err != 0) {
    goto out;
  } else {
  }
  switch ((unsigned int )filp->f_pos) {
  case 0U:
  tmp = (*filldir)(dirent, ".", 1, 0LL, (u64 )inode->i_ino, 4U);
  if (tmp != 0) {
    goto out;
  } else {
  }
  filp->f_pos = filp->f_pos + 1LL;
  case 1U: ;
  if ((unsigned int )fd.entrylength > 102U || fd.entrylength < 0) {
    err = -5;
    goto out;
  } else {
  }
  hfs_bnode_read(fd.bnode, (void *)(& entry), fd.entryoffset, fd.entrylength);
  if ((int )entry.type != 3) {
    printk("\vhfs: bad catalog folder thread\n");
    err = -5;
    goto out;
  } else {
  }
  tmp___0 = __fswab32(entry.thread.ParID);
  tmp___1 = (*filldir)(dirent, "..", 2, 1LL, (u64 )tmp___0, 4U);
  if (tmp___1 != 0) {
    goto out;
  } else {
  }
  filp->f_pos = filp->f_pos + 1LL;
  default: ;
  if (filp->f_pos >= inode->i_size) {
    goto out;
  } else {
  }
  err = hfs_brec_goto(& fd, (int )((unsigned int )filp->f_pos + 4294967295U));
  if (err != 0) {
    goto out;
  } else {
  }
  }
  ldv_22080:
  tmp___2 = __fswab32((fd.key)->cat.ParID);
  if ((unsigned long )tmp___2 != inode->i_ino) {
    printk("\vhfs: walked past end of dir\n");
    err = -5;
    goto out;
  } else {
  }
  if ((unsigned int )fd.entrylength > 102U || fd.entrylength < 0) {
    err = -5;
    goto out;
  } else {
  }
  hfs_bnode_read(fd.bnode, (void *)(& entry), fd.entryoffset, fd.entrylength);
  type = (u16 )entry.type;
  len = hfs_mac2asc(sb, (char *)(& strbuf), (struct hfs_name const *)(& (fd.key)->cat.CName));
  if ((unsigned int )type == 1U) {
    if ((unsigned int )fd.entrylength <= 69U) {
      printk("\vhfs: small dir entry\n");
      err = -5;
      goto out;
    } else {
    }
    tmp___3 = __fswab32(entry.dir.DirID);
    tmp___4 = (*filldir)(dirent, (char const *)(& strbuf), len, filp->f_pos, (u64 )tmp___3,
                         4U);
    if (tmp___4 != 0) {
      goto ldv_22079;
    } else {
    }
  } else
  if ((unsigned int )type == 2U) {
    if ((unsigned int )fd.entrylength <= 101U) {
      printk("\vhfs: small file entry\n");
      err = -5;
      goto out;
    } else {
    }
    tmp___5 = __fswab32(entry.file.FlNum);
    tmp___6 = (*filldir)(dirent, (char const *)(& strbuf), len, filp->f_pos, (u64 )tmp___5,
                         8U);
    if (tmp___6 != 0) {
      goto ldv_22079;
    } else {
    }
  } else {
    printk("\vhfs: bad catalog entry type %d\n", (int )type);
    err = -5;
    goto out;
  }
  filp->f_pos = filp->f_pos + 1LL;
  if (filp->f_pos >= inode->i_size) {
    goto out;
  } else {
  }
  err = hfs_brec_goto(& fd, 1);
  if (err != 0) {
    goto out;
  } else {
  }
  goto ldv_22080;
  ldv_22079:
  rd = (struct hfs_readdir_data *)filp->private_data;
  if ((unsigned long )rd == (unsigned long )((struct hfs_readdir_data *)0)) {
    tmp___7 = kmalloc(64UL, 208U);
    rd = (struct hfs_readdir_data *)tmp___7;
    if ((unsigned long )rd == (unsigned long )((struct hfs_readdir_data *)0)) {
      err = -12;
      goto out;
    } else {
    }
    filp->private_data = (void *)rd;
    rd->file = filp;
    __mptr = (struct inode const *)inode;
    list_add(& rd->list, & ((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->open_dir_list);
  } else {
  }
  __len = 38UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)(& rd->key), (void const *)(& fd.key), __len);
  } else {
    __ret = __builtin_memcpy((void *)(& rd->key), (void const *)(& fd.key), __len);
  }
  out:
  hfs_find_exit(& fd);
  return (err);
}
}
static int hfs_dir_release(struct inode *inode , struct file *file )
{
  struct hfs_readdir_data *rd ;
  {
  rd = (struct hfs_readdir_data *)file->private_data;
  if ((unsigned long )rd != (unsigned long )((struct hfs_readdir_data *)0)) {
    list_del(& rd->list);
    kfree((void const *)rd);
  } else {
  }
  return (0);
}
}
static int hfs_create(struct inode *dir , struct dentry *dentry , umode_t mode , bool excl )
{
  struct inode *inode ;
  int res ;
  {
  inode = hfs_new_inode(dir, & dentry->d_name, (int )mode);
  if ((unsigned long )inode == (unsigned long )((struct inode *)0)) {
    return (-28);
  } else {
  }
  res = hfs_cat_create((u32 )inode->i_ino, dir, & dentry->d_name, inode);
  if (res != 0) {
    clear_nlink(inode);
    hfs_delete_inode(inode);
    iput(inode);
    return (res);
  } else {
  }
  d_instantiate(dentry, inode);
  mark_inode_dirty(inode);
  return (0);
}
}
static int hfs_mkdir(struct inode *dir , struct dentry *dentry , umode_t mode )
{
  struct inode *inode ;
  int res ;
  {
  inode = hfs_new_inode(dir, & dentry->d_name, (int )((unsigned int )mode | 16384U));
  if ((unsigned long )inode == (unsigned long )((struct inode *)0)) {
    return (-28);
  } else {
  }
  res = hfs_cat_create((u32 )inode->i_ino, dir, & dentry->d_name, inode);
  if (res != 0) {
    clear_nlink(inode);
    hfs_delete_inode(inode);
    iput(inode);
    return (res);
  } else {
  }
  d_instantiate(dentry, inode);
  mark_inode_dirty(inode);
  return (0);
}
}
static int hfs_remove(struct inode *dir , struct dentry *dentry )
{
  struct inode *inode ;
  int res ;
  struct timespec __constr_expr_0 ;
  unsigned long tmp ;
  {
  inode = dentry->d_inode;
  if (((int )inode->i_mode & 61440) == 16384 && inode->i_size != 2LL) {
    return (-39);
  } else {
  }
  res = hfs_cat_delete((u32 )inode->i_ino, dir, & dentry->d_name);
  if (res != 0) {
    return (res);
  } else {
  }
  clear_nlink(inode);
  tmp = get_seconds();
  __constr_expr_0.tv_sec = (long )tmp;
  __constr_expr_0.tv_nsec = 0L;
  inode->i_ctime = __constr_expr_0;
  hfs_delete_inode(inode);
  mark_inode_dirty(inode);
  return (0);
}
}
static int hfs_rename(struct inode *old_dir , struct dentry *old_dentry , struct inode *new_dir ,
                      struct dentry *new_dentry )
{
  int res ;
  struct inode const *__mptr ;
  {
  if ((unsigned long )new_dentry->d_inode != (unsigned long )((struct inode *)0)) {
    res = hfs_remove(new_dir, new_dentry);
    if (res != 0) {
      return (res);
    } else {
    }
  } else {
  }
  res = hfs_cat_move((u32 )(old_dentry->d_inode)->i_ino, old_dir, & old_dentry->d_name,
                     new_dir, & new_dentry->d_name);
  if (res == 0) {
    __mptr = (struct inode const *)old_dentry->d_inode;
    hfs_cat_build_key(old_dir->i_sb, (btree_key *)(& ((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->cat_key),
                      (u32 )new_dir->i_ino, & new_dentry->d_name);
  } else {
  }
  return (res);
}
}
struct file_operations const hfs_dir_operations =
     {0, & generic_file_llseek, & generic_read_dir, 0, 0, 0, & hfs_readdir, 0, 0, 0,
    0, 0, 0, & hfs_dir_release, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
struct inode_operations const hfs_dir_inode_operations =
     {& hfs_lookup, 0, 0, 0, 0, 0, & hfs_create, 0, & hfs_remove, 0, & hfs_mkdir, & hfs_remove,
    0, & hfs_rename, & hfs_inode_setattr, 0, 0, 0, 0, 0, 0, 0, 0};
void ldv_check_final_state(void) ;
void ldv_initialize(void) ;
extern void ldv_handler_precall(void) ;
extern int __VERIFIER_nondet_int(void) ;
int LDV_IN_INTERRUPT ;
int main(void)
{
  struct file *var_group1 ;
  void *var_hfs_readdir_1_p1 ;
  int (*var_hfs_readdir_1_p2)(void * , char const * , int , loff_t , u64 , unsigned int ) ;
  struct inode *var_group2 ;
  struct dentry *var_group3 ;
  umode_t var_hfs_create_3_p2 ;
  bool var_hfs_create_3_p3 ;
  unsigned int var_hfs_lookup_0_p2 ;
  umode_t var_hfs_mkdir_4_p2 ;
  struct inode *var_hfs_rename_6_p2 ;
  struct dentry *var_hfs_rename_6_p3 ;
  int ldv_s_hfs_dir_operations_file_operations ;
  int tmp ;
  int tmp___0 ;
  {
  ldv_s_hfs_dir_operations_file_operations = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_22162;
  ldv_22161:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0: ;
  if (ldv_s_hfs_dir_operations_file_operations == 0) {
    ldv_handler_precall();
    hfs_dir_release(var_group2, var_group1);
    ldv_s_hfs_dir_operations_file_operations = 0;
  } else {
  }
  goto ldv_22153;
  case 1:
  ldv_handler_precall();
  hfs_readdir(var_group1, var_hfs_readdir_1_p1, var_hfs_readdir_1_p2);
  goto ldv_22153;
  case 2:
  ldv_handler_precall();
  hfs_create(var_group2, var_group3, (int )var_hfs_create_3_p2, (int )var_hfs_create_3_p3);
  goto ldv_22153;
  case 3:
  ldv_handler_precall();
  hfs_lookup(var_group2, var_group3, var_hfs_lookup_0_p2);
  goto ldv_22153;
  case 4:
  ldv_handler_precall();
  hfs_remove(var_group2, var_group3);
  goto ldv_22153;
  case 5:
  ldv_handler_precall();
  hfs_mkdir(var_group2, var_group3, (int )var_hfs_mkdir_4_p2);
  goto ldv_22153;
  case 6:
  ldv_handler_precall();
  hfs_rename(var_group2, var_group3, var_hfs_rename_6_p2, var_hfs_rename_6_p3);
  goto ldv_22153;
  default: ;
  goto ldv_22153;
  }
  ldv_22153: ;
  ldv_22162:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0 || ldv_s_hfs_dir_operations_file_operations != 0) {
    goto ldv_22161;
  } else {
  }
  ldv_check_final_state();
  return 0;
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
void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_54(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_55(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_57(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_59(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_51(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_53(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_56(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_58(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_extents_lock(struct mutex *lock ) ;
void ldv_mutex_unlock_extents_lock(struct mutex *lock ) ;
extern int pagecache_write_begin(struct file * , struct address_space * , loff_t ,
                                 unsigned int , unsigned int , struct page ** ,
                                 void ** ) ;
extern int pagecache_write_end(struct file * , struct address_space * , loff_t ,
                               unsigned int , unsigned int , struct page * , void * ) ;
extern void inode_add_bytes(struct inode * , loff_t ) ;
__inline static void set_buffer_mapped(struct buffer_head *bh )
{
  {
  set_bit(5U, (unsigned long volatile *)(& bh->b_state));
  return;
}
}
__inline static void set_buffer_new(struct buffer_head *bh )
{
  {
  set_bit(6U, (unsigned long volatile *)(& bh->b_state));
  return;
}
}
__inline static void map_bh(struct buffer_head *bh , struct super_block *sb , sector_t block )
{
  {
  set_buffer_mapped(bh);
  bh->b_bdev = sb->s_bdev;
  bh->b_blocknr = block;
  bh->b_size = sb->s_blocksize;
  return;
}
}
int hfs_ext_keycmp(btree_key const *key1 , btree_key const *key2 ) ;
void hfs_ext_write_extent(struct inode *inode ) ;
void hfs_file_truncate(struct inode *inode ) ;
int hfs_get_block(struct inode *inode , sector_t block , struct buffer_head *bh_result ,
                  int create ) ;
static void hfs_ext_build_key(hfs_btree_key *key , u32 cnid , u16 block , u8 type )
{
  __u32 tmp ;
  __u16 tmp___0 ;
  {
  key->key_len = 7U;
  key->ext.FkType = type;
  tmp = __fswab32(cnid);
  key->ext.FNum = tmp;
  tmp___0 = __fswab16((int )block);
  key->ext.FABN = tmp___0;
  return;
}
}
int hfs_ext_keycmp(btree_key const *key1 , btree_key const *key2 )
{
  __be32 fnum1 ;
  __be32 fnum2 ;
  __be16 block1 ;
  __be16 block2 ;
  __u32 tmp ;
  __u32 tmp___0 ;
  __u16 tmp___1 ;
  __u16 tmp___2 ;
  {
  fnum1 = key1->ext.FNum;
  fnum2 = key2->ext.FNum;
  if (fnum1 != fnum2) {
    tmp = __fswab32(fnum1);
    tmp___0 = __fswab32(fnum2);
    return (tmp < tmp___0 ? -1 : 1);
  } else {
  }
  if ((int )((unsigned char )key1->ext.FkType) != (int )((unsigned char )key2->ext.FkType)) {
    return ((int )((unsigned char )key1->ext.FkType) < (int )((unsigned char )key2->ext.FkType) ? -1 : 1);
  } else {
  }
  block1 = key1->ext.FABN;
  block2 = key2->ext.FABN;
  if ((int )block1 == (int )block2) {
    return (0);
  } else {
  }
  tmp___1 = __fswab16((int )block1);
  tmp___2 = __fswab16((int )block2);
  return ((int )tmp___1 < (int )tmp___2 ? -1 : 1);
}
}
static u16 hfs_ext_find_block(struct hfs_extent *ext , u16 off )
{
  int i ;
  u16 count ;
  __u16 tmp ;
  __u16 tmp___0 ;
  {
  i = 0;
  goto ldv_22100;
  ldv_22099:
  tmp = __fswab16((int )ext->count);
  count = tmp;
  if ((int )off < (int )count) {
    tmp___0 = __fswab16((int )ext->block);
    return ((int )tmp___0 + (int )off);
  } else {
  }
  off = (int )off - (int )count;
  ext = ext + 1;
  i = i + 1;
  ldv_22100: ;
  if (i <= 2) {
    goto ldv_22099;
  } else {
  }
  return (0U);
}
}
static int hfs_ext_block_count(struct hfs_extent *ext )
{
  int i ;
  u16 count ;
  __u16 tmp ;
  {
  count = 0U;
  i = 0;
  goto ldv_22108;
  ldv_22107:
  tmp = __fswab16((int )ext->count);
  count = (int )tmp + (int )count;
  ext = ext + 1;
  i = i + 1;
  ldv_22108: ;
  if (i <= 2) {
    goto ldv_22107;
  } else {
  }
  return ((int )count);
}
}
static u16 hfs_ext_lastblock(struct hfs_extent *ext )
{
  int i ;
  __u16 tmp ;
  __u16 tmp___0 ;
  {
  ext = ext + 2UL;
  i = 0;
  goto ldv_22116;
  ldv_22115: ;
  if ((unsigned int )ext->count != 0U) {
    goto ldv_22114;
  } else {
  }
  ext = ext - 1;
  i = i + 1;
  ldv_22116: ;
  if (i <= 1) {
    goto ldv_22115;
  } else {
  }
  ldv_22114:
  tmp = __fswab16((int )ext->block);
  tmp___0 = __fswab16((int )ext->count);
  return ((int )tmp + (int )tmp___0);
}
}
static void __hfs_ext_write_extent(struct inode *inode , struct hfs_find_data *fd )
{
  int res ;
  struct inode const *__mptr ;
  struct inode const *__mptr___0 ;
  struct inode const *__mptr___1 ;
  struct inode const *__mptr___2 ;
  struct inode const *__mptr___3 ;
  struct inode const *__mptr___4 ;
  struct inode const *__mptr___5 ;
  {
  __mptr = (struct inode const *)inode;
  __mptr___0 = (struct inode const *)inode;
  hfs_ext_build_key(fd->search_key, (u32 )inode->i_ino, (int )((struct hfs_inode_info *)__mptr___0 + 0xfffffffffffffed0UL)->cached_start,
                    (int )((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->flags & 1 ? 255 : 0);
  res = hfs_brec_find(fd);
  __mptr___5 = (struct inode const *)inode;
  if ((((struct hfs_inode_info *)__mptr___5 + 0xfffffffffffffed0UL)->flags & 4U) != 0U) {
    if (res != -2) {
      return;
    } else {
    }
    __mptr___1 = (struct inode const *)inode;
    hfs_brec_insert(fd, (void *)(& ((struct hfs_inode_info *)__mptr___1 + 0xfffffffffffffed0UL)->cached_extents),
                    12);
    __mptr___2 = (struct inode const *)inode;
    ((struct hfs_inode_info *)__mptr___2 + 0xfffffffffffffed0UL)->flags = ((struct hfs_inode_info *)__mptr___2 + 0xfffffffffffffed0UL)->flags & 4294967289U;
  } else {
    if (res != 0) {
      return;
    } else {
    }
    __mptr___3 = (struct inode const *)inode;
    hfs_bnode_write(fd->bnode, (void *)(& ((struct hfs_inode_info *)__mptr___3 + 0xfffffffffffffed0UL)->cached_extents),
                    fd->entryoffset, fd->entrylength);
    __mptr___4 = (struct inode const *)inode;
    ((struct hfs_inode_info *)__mptr___4 + 0xfffffffffffffed0UL)->flags = ((struct hfs_inode_info *)__mptr___4 + 0xfffffffffffffed0UL)->flags & 4294967293U;
  }
  return;
}
}
void hfs_ext_write_extent(struct inode *inode )
{
  struct hfs_find_data fd ;
  struct inode const *__mptr ;
  {
  __mptr = (struct inode const *)inode;
  if ((((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->flags & 2U) != 0U) {
    hfs_find_init(((struct hfs_sb_info *)(inode->i_sb)->s_fs_info)->ext_tree, & fd);
    __hfs_ext_write_extent(inode, & fd);
    hfs_find_exit(& fd);
  } else {
  }
  return;
}
}
__inline static int __hfs_ext_read_extent(struct hfs_find_data *fd , struct hfs_extent *extent ,
                                          u32 cnid , u32 block , u8 type )
{
  int res ;
  {
  hfs_ext_build_key(fd->search_key, cnid, (int )((u16 )block), (int )type);
  (fd->key)->ext.FNum = 0U;
  res = hfs_brec_find(fd);
  if (res != 0 && res != -2) {
    return (res);
  } else {
  }
  if ((fd->key)->ext.FNum != (fd->search_key)->ext.FNum || (int )(fd->key)->ext.FkType != (int )(fd->search_key)->ext.FkType) {
    return (-2);
  } else {
  }
  if (fd->entrylength != 12) {
    return (-5);
  } else {
  }
  hfs_bnode_read(fd->bnode, (void *)extent, fd->entryoffset, 12);
  return (0);
}
}
__inline static int __hfs_ext_cache_extent(struct hfs_find_data *fd , struct inode *inode ,
                                           u32 block )
{
  int res ;
  struct inode const *__mptr ;
  struct inode const *__mptr___0 ;
  struct inode const *__mptr___1 ;
  struct inode const *__mptr___2 ;
  __u16 tmp ;
  struct inode const *__mptr___3 ;
  struct inode const *__mptr___4 ;
  int tmp___0 ;
  struct inode const *__mptr___5 ;
  struct inode const *__mptr___6 ;
  u16 tmp___1 ;
  struct inode const *__mptr___7 ;
  {
  __mptr = (struct inode const *)inode;
  if ((((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->flags & 2U) != 0U) {
    __hfs_ext_write_extent(inode, fd);
  } else {
  }
  __mptr___0 = (struct inode const *)inode;
  __mptr___1 = (struct inode const *)inode;
  res = __hfs_ext_read_extent(fd, (struct hfs_extent *)(& ((struct hfs_inode_info *)__mptr___1 + 0xfffffffffffffed0UL)->cached_extents),
                              (u32 )inode->i_ino, block, (int )((struct hfs_inode_info *)__mptr___0 + 0xfffffffffffffed0UL)->flags & 1 ? 255 : 0);
  if (res == 0) {
    __mptr___2 = (struct inode const *)inode;
    tmp = __fswab16((int )(fd->key)->ext.FABN);
    ((struct hfs_inode_info *)__mptr___2 + 0xfffffffffffffed0UL)->cached_start = tmp;
    __mptr___3 = (struct inode const *)inode;
    __mptr___4 = (struct inode const *)inode;
    tmp___0 = hfs_ext_block_count((struct hfs_extent *)(& ((struct hfs_inode_info *)__mptr___4 + 0xfffffffffffffed0UL)->cached_extents));
    ((struct hfs_inode_info *)__mptr___3 + 0xfffffffffffffed0UL)->cached_blocks = (u16 )tmp___0;
  } else {
    __mptr___5 = (struct inode const *)inode;
    __mptr___6 = (struct inode const *)inode;
    tmp___1 = 0U;
    ((struct hfs_inode_info *)__mptr___6 + 0xfffffffffffffed0UL)->cached_blocks = tmp___1;
    ((struct hfs_inode_info *)__mptr___5 + 0xfffffffffffffed0UL)->cached_start = tmp___1;
    __mptr___7 = (struct inode const *)inode;
    ((struct hfs_inode_info *)__mptr___7 + 0xfffffffffffffed0UL)->flags = ((struct hfs_inode_info *)__mptr___7 + 0xfffffffffffffed0UL)->flags & 4294967289U;
  }
  return (res);
}
}
static int hfs_ext_read_extent(struct inode *inode , u16 block )
{
  struct hfs_find_data fd ;
  int res ;
  struct inode const *__mptr ;
  struct inode const *__mptr___0 ;
  struct inode const *__mptr___1 ;
  {
  __mptr = (struct inode const *)inode;
  if ((int )((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->cached_start <= (int )block) {
    __mptr___0 = (struct inode const *)inode;
    __mptr___1 = (struct inode const *)inode;
    if ((int )block < (int )((struct hfs_inode_info *)__mptr___0 + 0xfffffffffffffed0UL)->cached_start + (int )((struct hfs_inode_info *)__mptr___1 + 0xfffffffffffffed0UL)->cached_blocks) {
      return (0);
    } else {
    }
  } else {
  }
  hfs_find_init(((struct hfs_sb_info *)(inode->i_sb)->s_fs_info)->ext_tree, & fd);
  res = __hfs_ext_cache_extent(& fd, inode, (u32 )block);
  hfs_find_exit(& fd);
  return (res);
}
}
static void hfs_dump_extent(struct hfs_extent *extent )
{
  int i ;
  {
  i = 0;
  goto ldv_22191;
  ldv_22190:
  i = i + 1;
  ldv_22191: ;
  if (i <= 2) {
    goto ldv_22190;
  } else {
  }
  return;
}
}
static int hfs_add_extent(struct hfs_extent *extent , u16 offset , u16 alloc_block ,
                          u16 block_count )
{
  u16 count ;
  u16 start ;
  int i ;
  __u16 tmp ;
  __u16 tmp___0 ;
  __u16 tmp___1 ;
  __u16 tmp___2 ;
  {
  hfs_dump_extent(extent);
  i = 0;
  goto ldv_22204;
  ldv_22203:
  tmp = __fswab16((int )extent->count);
  count = tmp;
  if ((int )offset == (int )count) {
    tmp___0 = __fswab16((int )extent->block);
    start = tmp___0;
    if ((int )alloc_block != (int )start + (int )count) {
      i = i + 1;
      if (i > 2) {
        return (-28);
      } else {
      }
      extent = extent + 1;
      tmp___1 = __fswab16((int )alloc_block);
      extent->block = tmp___1;
    } else {
      block_count = (int )block_count + (int )count;
    }
    tmp___2 = __fswab16((int )block_count);
    extent->count = tmp___2;
    return (0);
  } else
  if ((int )offset < (int )count) {
    goto ldv_22202;
  } else {
  }
  offset = (int )offset - (int )count;
  extent = extent + 1;
  i = i + 1;
  ldv_22204: ;
  if (i <= 2) {
    goto ldv_22203;
  } else {
  }
  ldv_22202: ;
  return (-5);
}
}
static int hfs_free_extents(struct super_block *sb , struct hfs_extent *extent , u16 offset ,
                            u16 block_nr )
{
  u16 count ;
  u16 start ;
  int i ;
  __u16 tmp ;
  __u16 tmp___0 ;
  __u16 tmp___1 ;
  __u16 tmp___2 ;
  {
  hfs_dump_extent(extent);
  i = 0;
  goto ldv_22217;
  ldv_22216:
  tmp = __fswab16((int )extent->count);
  count = tmp;
  if ((int )offset == (int )count) {
    goto found;
  } else
  if ((int )offset < (int )count) {
    goto ldv_22215;
  } else {
  }
  offset = (int )offset - (int )count;
  extent = extent + 1;
  i = i + 1;
  ldv_22217: ;
  if (i <= 2) {
    goto ldv_22216;
  } else {
  }
  ldv_22215: ;
  return (-5);
  found: ;
  ldv_22218:
  tmp___0 = __fswab16((int )extent->block);
  start = tmp___0;
  if ((int )count <= (int )block_nr) {
    hfs_clear_vbm_bits(sb, (int )start, (int )count);
    extent->block = 0U;
    extent->count = 0U;
    block_nr = (int )block_nr - (int )count;
  } else {
    count = (int )count - (int )block_nr;
    hfs_clear_vbm_bits(sb, (int )start + (int )count, (int )block_nr);
    tmp___1 = __fswab16((int )count);
    extent->count = tmp___1;
    block_nr = 0U;
  }
  if ((unsigned int )block_nr == 0U || i == 0) {
    return (0);
  } else {
  }
  i = i - 1;
  extent = extent - 1;
  tmp___2 = __fswab16((int )extent->count);
  count = tmp___2;
  goto ldv_22218;
}
}
int hfs_free_fork(struct super_block *sb , struct hfs_cat_file *file , int type )
{
  struct hfs_find_data fd ;
  u32 total_blocks ;
  u32 blocks ;
  u32 start ;
  u32 cnid ;
  __u32 tmp ;
  struct hfs_extent *extent ;
  int res ;
  int i ;
  __u32 tmp___0 ;
  __u32 tmp___1 ;
  __u16 tmp___2 ;
  __u16 tmp___3 ;
  {
  tmp = __fswab32(file->FlNum);
  cnid = tmp;
  if (type == 0) {
    tmp___0 = __fswab32(file->PyLen);
    total_blocks = tmp___0;
    extent = (struct hfs_extent *)(& file->ExtRec);
  } else {
    tmp___1 = __fswab32(file->RPyLen);
    total_blocks = tmp___1;
    extent = (struct hfs_extent *)(& file->RExtRec);
  }
  total_blocks = total_blocks / ((struct hfs_sb_info *)sb->s_fs_info)->alloc_blksz;
  if (total_blocks == 0U) {
    return (0);
  } else {
  }
  blocks = 0U;
  i = 0;
  goto ldv_22233;
  ldv_22232:
  tmp___2 = __fswab16((int )(extent + (unsigned long )i)->count);
  blocks = (u32 )tmp___2 + blocks;
  extent = extent + 1;
  i = i + 1;
  ldv_22233: ;
  if (i <= 2) {
    goto ldv_22232;
  } else {
  }
  res = hfs_free_extents(sb, extent, (int )((u16 )blocks), (int )((u16 )blocks));
  if (res != 0) {
    return (res);
  } else {
  }
  if (total_blocks == blocks) {
    return (0);
  } else {
  }
  hfs_find_init(((struct hfs_sb_info *)sb->s_fs_info)->ext_tree, & fd);
  ldv_22236:
  res = __hfs_ext_read_extent(& fd, extent, cnid, total_blocks, (int )((u8 )type));
  if (res != 0) {
    goto ldv_22235;
  } else {
  }
  tmp___3 = __fswab16((int )(fd.key)->ext.FABN);
  start = (u32 )tmp___3;
  hfs_free_extents(sb, extent, (int )((u16 )total_blocks) - (int )((u16 )start), (int )((u16 )total_blocks));
  hfs_brec_remove(& fd);
  total_blocks = start;
  if (total_blocks > blocks) {
    goto ldv_22236;
  } else {
  }
  ldv_22235:
  hfs_find_exit(& fd);
  return (res);
}
}
int hfs_get_block(struct inode *inode , sector_t block , struct buffer_head *bh_result ,
                  int create )
{
  struct super_block *sb ;
  u16 dblock ;
  u16 ablock ;
  int res ;
  struct inode const *__mptr ;
  struct inode const *__mptr___0 ;
  struct inode const *__mptr___1 ;
  struct inode const *__mptr___2 ;
  struct inode const *__mptr___3 ;
  struct inode const *__mptr___4 ;
  struct inode const *__mptr___5 ;
  struct inode const *__mptr___6 ;
  struct inode const *__mptr___7 ;
  struct inode const *__mptr___8 ;
  struct inode const *__mptr___9 ;
  struct inode const *__mptr___10 ;
  struct inode const *__mptr___11 ;
  {
  sb = inode->i_sb;
  ablock = (u16 )((unsigned int )block / (unsigned int )((struct hfs_sb_info *)sb->s_fs_info)->fs_div);
  __mptr___1 = (struct inode const *)inode;
  if (((struct hfs_inode_info *)__mptr___1 + 0xfffffffffffffed0UL)->fs_blocks <= block) {
    __mptr = (struct inode const *)inode;
    if (((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->fs_blocks < block || create == 0) {
      return (-5);
    } else {
    }
    __mptr___0 = (struct inode const *)inode;
    if ((int )((struct hfs_inode_info *)__mptr___0 + 0xfffffffffffffed0UL)->alloc_blocks <= (int )ablock) {
      res = hfs_extend_file(inode);
      if (res != 0) {
        return (res);
      } else {
      }
    } else {
    }
  } else {
    create = 0;
  }
  __mptr___3 = (struct inode const *)inode;
  if ((int )((struct hfs_inode_info *)__mptr___3 + 0xfffffffffffffed0UL)->first_blocks > (int )ablock) {
    __mptr___2 = (struct inode const *)inode;
    dblock = hfs_ext_find_block((struct hfs_extent *)(& ((struct hfs_inode_info *)__mptr___2 + 0xfffffffffffffed0UL)->first_extents),
                                (int )ablock);
    goto done;
  } else {
  }
  __mptr___4 = (struct inode const *)inode;
  ldv_mutex_lock_53(& ((struct hfs_inode_info *)__mptr___4 + 0xfffffffffffffed0UL)->extents_lock);
  res = hfs_ext_read_extent(inode, (int )ablock);
  if (res == 0) {
    __mptr___5 = (struct inode const *)inode;
    __mptr___6 = (struct inode const *)inode;
    dblock = hfs_ext_find_block((struct hfs_extent *)(& ((struct hfs_inode_info *)__mptr___6 + 0xfffffffffffffed0UL)->cached_extents),
                                (int )ablock - (int )((struct hfs_inode_info *)__mptr___5 + 0xfffffffffffffed0UL)->cached_start);
  } else {
    __mptr___7 = (struct inode const *)inode;
    ldv_mutex_unlock_54(& ((struct hfs_inode_info *)__mptr___7 + 0xfffffffffffffed0UL)->extents_lock);
    return (-5);
  }
  __mptr___8 = (struct inode const *)inode;
  ldv_mutex_unlock_55(& ((struct hfs_inode_info *)__mptr___8 + 0xfffffffffffffed0UL)->extents_lock);
  done:
  map_bh(bh_result, sb, (sector_t )((((struct hfs_sb_info *)sb->s_fs_info)->fs_start + (u32 )((int )dblock * ((struct hfs_sb_info *)sb->s_fs_info)->fs_div)) + (unsigned int )block % (unsigned int )((struct hfs_sb_info *)sb->s_fs_info)->fs_div));
  if (create != 0) {
    set_buffer_new(bh_result);
    __mptr___9 = (struct inode const *)inode;
    __mptr___10 = (struct inode const *)inode;
    ((struct hfs_inode_info *)__mptr___9 + 0xfffffffffffffed0UL)->phys_size = (loff_t )((unsigned long long )((struct hfs_inode_info *)__mptr___10 + 0xfffffffffffffed0UL)->phys_size + (unsigned long long )sb->s_blocksize);
    __mptr___11 = (struct inode const *)inode;
    ((struct hfs_inode_info *)__mptr___11 + 0xfffffffffffffed0UL)->fs_blocks = ((struct hfs_inode_info *)__mptr___11 + 0xfffffffffffffed0UL)->fs_blocks + 1UL;
    inode_add_bytes(inode, (loff_t )sb->s_blocksize);
    mark_inode_dirty(inode);
  } else {
  }
  return (0);
}
}
int hfs_extend_file(struct inode *inode )
{
  struct super_block *sb ;
  u32 start ;
  u32 len ;
  u32 goal ;
  int res ;
  struct inode const *__mptr ;
  struct inode const *__mptr___0 ;
  u16 tmp ;
  struct inode const *__mptr___1 ;
  struct inode const *__mptr___2 ;
  u16 tmp___0 ;
  struct inode const *__mptr___3 ;
  struct inode const *__mptr___4 ;
  struct inode const *__mptr___5 ;
  struct inode const *__mptr___6 ;
  __u16 tmp___1 ;
  struct inode const *__mptr___7 ;
  __u16 tmp___2 ;
  struct inode const *__mptr___8 ;
  struct inode const *__mptr___9 ;
  struct inode const *__mptr___10 ;
  struct inode const *__mptr___11 ;
  struct inode const *__mptr___12 ;
  struct inode const *__mptr___13 ;
  struct inode const *__mptr___14 ;
  struct inode const *__mptr___15 ;
  struct inode const *__mptr___16 ;
  struct inode const *__mptr___17 ;
  struct inode const *__mptr___18 ;
  struct inode const *__mptr___19 ;
  struct inode const *__mptr___20 ;
  struct inode const *__mptr___21 ;
  struct inode const *__mptr___22 ;
  struct inode const *__mptr___23 ;
  struct inode const *__mptr___24 ;
  __u16 tmp___3 ;
  struct inode const *__mptr___25 ;
  __u16 tmp___4 ;
  struct inode const *__mptr___26 ;
  struct inode const *__mptr___27 ;
  struct inode const *__mptr___28 ;
  struct inode const *__mptr___29 ;
  struct inode const *__mptr___30 ;
  {
  sb = inode->i_sb;
  __mptr = (struct inode const *)inode;
  ldv_mutex_lock_56(& ((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->extents_lock);
  __mptr___3 = (struct inode const *)inode;
  __mptr___4 = (struct inode const *)inode;
  if ((int )((struct hfs_inode_info *)__mptr___3 + 0xfffffffffffffed0UL)->alloc_blocks == (int )((struct hfs_inode_info *)__mptr___4 + 0xfffffffffffffed0UL)->first_blocks) {
    __mptr___0 = (struct inode const *)inode;
    tmp = hfs_ext_lastblock((struct hfs_extent *)(& ((struct hfs_inode_info *)__mptr___0 + 0xfffffffffffffed0UL)->first_extents));
    goal = (u32 )tmp;
  } else {
    __mptr___1 = (struct inode const *)inode;
    res = hfs_ext_read_extent(inode, (int )((struct hfs_inode_info *)__mptr___1 + 0xfffffffffffffed0UL)->alloc_blocks);
    if (res != 0) {
      goto out;
    } else {
    }
    __mptr___2 = (struct inode const *)inode;
    tmp___0 = hfs_ext_lastblock((struct hfs_extent *)(& ((struct hfs_inode_info *)__mptr___2 + 0xfffffffffffffed0UL)->cached_extents));
    goal = (u32 )tmp___0;
  }
  __mptr___5 = (struct inode const *)inode;
  len = (u32 )((struct hfs_inode_info *)__mptr___5 + 0xfffffffffffffed0UL)->clump_blocks;
  start = hfs_vbm_search_free(sb, goal, & len);
  if (len == 0U) {
    res = -28;
    goto out;
  } else {
  }
  __mptr___19 = (struct inode const *)inode;
  __mptr___20 = (struct inode const *)inode;
  if ((int )((struct hfs_inode_info *)__mptr___19 + 0xfffffffffffffed0UL)->alloc_blocks == (int )((struct hfs_inode_info *)__mptr___20 + 0xfffffffffffffed0UL)->first_blocks) {
    __mptr___10 = (struct inode const *)inode;
    if ((unsigned int )((struct hfs_inode_info *)__mptr___10 + 0xfffffffffffffed0UL)->first_blocks == 0U) {
      __mptr___6 = (struct inode const *)inode;
      tmp___1 = __fswab16((int )((__u16 )start));
      ((struct hfs_inode_info *)__mptr___6 + 0xfffffffffffffed0UL)->first_extents[0].block = tmp___1;
      __mptr___7 = (struct inode const *)inode;
      tmp___2 = __fswab16((int )((__u16 )len));
      ((struct hfs_inode_info *)__mptr___7 + 0xfffffffffffffed0UL)->first_extents[0].count = tmp___2;
      res = 0;
    } else {
      __mptr___8 = (struct inode const *)inode;
      __mptr___9 = (struct inode const *)inode;
      res = hfs_add_extent((struct hfs_extent *)(& ((struct hfs_inode_info *)__mptr___9 + 0xfffffffffffffed0UL)->first_extents),
                           (int )((struct hfs_inode_info *)__mptr___8 + 0xfffffffffffffed0UL)->alloc_blocks,
                           (int )((u16 )start), (int )((u16 )len));
      if (res == -28) {
        goto insert_extent;
      } else {
      }
    }
    if (res == 0) {
      __mptr___11 = (struct inode const *)inode;
      hfs_dump_extent((struct hfs_extent *)(& ((struct hfs_inode_info *)__mptr___11 + 0xfffffffffffffed0UL)->first_extents));
      __mptr___12 = (struct inode const *)inode;
      ((struct hfs_inode_info *)__mptr___12 + 0xfffffffffffffed0UL)->first_blocks = (int )((struct hfs_inode_info *)__mptr___12 + 0xfffffffffffffed0UL)->first_blocks + (int )((u16 )len);
    } else {
    }
  } else {
    __mptr___13 = (struct inode const *)inode;
    __mptr___14 = (struct inode const *)inode;
    __mptr___15 = (struct inode const *)inode;
    res = hfs_add_extent((struct hfs_extent *)(& ((struct hfs_inode_info *)__mptr___15 + 0xfffffffffffffed0UL)->cached_extents),
                         (int )((struct hfs_inode_info *)__mptr___13 + 0xfffffffffffffed0UL)->alloc_blocks - (int )((struct hfs_inode_info *)__mptr___14 + 0xfffffffffffffed0UL)->cached_start,
                         (int )((u16 )start), (int )((u16 )len));
    if (res == 0) {
      __mptr___16 = (struct inode const *)inode;
      hfs_dump_extent((struct hfs_extent *)(& ((struct hfs_inode_info *)__mptr___16 + 0xfffffffffffffed0UL)->cached_extents));
      __mptr___17 = (struct inode const *)inode;
      ((struct hfs_inode_info *)__mptr___17 + 0xfffffffffffffed0UL)->flags = ((struct hfs_inode_info *)__mptr___17 + 0xfffffffffffffed0UL)->flags | 2U;
      __mptr___18 = (struct inode const *)inode;
      ((struct hfs_inode_info *)__mptr___18 + 0xfffffffffffffed0UL)->cached_blocks = (int )((struct hfs_inode_info *)__mptr___18 + 0xfffffffffffffed0UL)->cached_blocks + (int )((u16 )len);
    } else
    if (res == -28) {
      goto insert_extent;
    } else {
    }
  }
  out:
  __mptr___21 = (struct inode const *)inode;
  ldv_mutex_unlock_57(& ((struct hfs_inode_info *)__mptr___21 + 0xfffffffffffffed0UL)->extents_lock);
  if (res == 0) {
    __mptr___22 = (struct inode const *)inode;
    ((struct hfs_inode_info *)__mptr___22 + 0xfffffffffffffed0UL)->alloc_blocks = (int )((struct hfs_inode_info *)__mptr___22 + 0xfffffffffffffed0UL)->alloc_blocks + (int )((u16 )len);
    mark_inode_dirty(inode);
    if (inode->i_ino <= 15UL) {
      set_bit(2U, (unsigned long volatile *)(& ((struct hfs_sb_info *)sb->s_fs_info)->flags));
    } else {
    }
    set_bit(1U, (unsigned long volatile *)(& ((struct hfs_sb_info *)sb->s_fs_info)->flags));
    hfs_mark_mdb_dirty(sb);
  } else {
  }
  return (res);
  insert_extent:
  hfs_ext_write_extent(inode);
  __mptr___23 = (struct inode const *)inode;
  memset((void *)(& ((struct hfs_inode_info *)__mptr___23 + 0xfffffffffffffed0UL)->cached_extents),
         0, 12UL);
  __mptr___24 = (struct inode const *)inode;
  tmp___3 = __fswab16((int )((__u16 )start));
  ((struct hfs_inode_info *)__mptr___24 + 0xfffffffffffffed0UL)->cached_extents[0].block = tmp___3;
  __mptr___25 = (struct inode const *)inode;
  tmp___4 = __fswab16((int )((__u16 )len));
  ((struct hfs_inode_info *)__mptr___25 + 0xfffffffffffffed0UL)->cached_extents[0].count = tmp___4;
  __mptr___26 = (struct inode const *)inode;
  hfs_dump_extent((struct hfs_extent *)(& ((struct hfs_inode_info *)__mptr___26 + 0xfffffffffffffed0UL)->cached_extents));
  __mptr___27 = (struct inode const *)inode;
  ((struct hfs_inode_info *)__mptr___27 + 0xfffffffffffffed0UL)->flags = ((struct hfs_inode_info *)__mptr___27 + 0xfffffffffffffed0UL)->flags | 6U;
  __mptr___28 = (struct inode const *)inode;
  __mptr___29 = (struct inode const *)inode;
  ((struct hfs_inode_info *)__mptr___28 + 0xfffffffffffffed0UL)->cached_start = ((struct hfs_inode_info *)__mptr___29 + 0xfffffffffffffed0UL)->alloc_blocks;
  __mptr___30 = (struct inode const *)inode;
  ((struct hfs_inode_info *)__mptr___30 + 0xfffffffffffffed0UL)->cached_blocks = (u16 )len;
  res = 0;
  goto out;
}
}
void hfs_file_truncate(struct inode *inode )
{
  struct super_block *sb ;
  struct hfs_find_data fd ;
  u16 blk_cnt ;
  u16 alloc_cnt ;
  u16 start ;
  u32 size ;
  int res ;
  struct address_space *mapping ;
  void *fsdata ;
  struct page *page ;
  int res___0 ;
  struct inode const *__mptr___0 ;
  struct inode const *__mptr___1 ;
  struct inode const *__mptr___2 ;
  struct inode const *__mptr___3 ;
  struct inode const *__mptr___4 ;
  struct inode const *__mptr___5 ;
  struct inode const *__mptr___6 ;
  struct inode const *__mptr___7 ;
  struct inode const *__mptr___8 ;
  struct inode const *__mptr___9 ;
  struct inode const *__mptr___10 ;
  struct inode const *__mptr___11 ;
  struct inode const *__mptr___12 ;
  struct inode const *__mptr___13 ;
  struct inode const *__mptr___14 ;
  u16 tmp ;
  struct inode const *__mptr___15 ;
  struct inode const *__mptr___16 ;
  struct inode const *__mptr___17 ;
  struct inode const *__mptr___18 ;
  struct inode const *__mptr___19 ;
  struct inode const *__mptr___20 ;
  {
  sb = inode->i_sb;
  __mptr___2 = (struct inode const *)inode;
  if (inode->i_size > ((struct hfs_inode_info *)__mptr___2 + 0xfffffffffffffed0UL)->phys_size) {
    mapping = inode->i_mapping;
    size = (u32 )inode->i_size + 4294967295U;
    res___0 = pagecache_write_begin(0, mapping, (loff_t )(size + 1U), 0U, 1U, & page,
                                    & fsdata);
    if (res___0 == 0) {
      res___0 = pagecache_write_end(0, mapping, (loff_t )(size + 1U), 0U, 0U, page,
                                    fsdata);
    } else {
    }
    if (res___0 != 0) {
      __mptr___0 = (struct inode const *)inode;
      inode->i_size = ((struct hfs_inode_info *)__mptr___0 + 0xfffffffffffffed0UL)->phys_size;
    } else {
    }
    return;
  } else {
    __mptr___1 = (struct inode const *)inode;
    if (inode->i_size == ((struct hfs_inode_info *)__mptr___1 + 0xfffffffffffffed0UL)->phys_size) {
      return;
    } else {
    }
  }
  size = ((u32 )inode->i_size + ((struct hfs_sb_info *)sb->s_fs_info)->alloc_blksz) + 4294967295U;
  blk_cnt = (u16 )(size / ((struct hfs_sb_info *)sb->s_fs_info)->alloc_blksz);
  __mptr___3 = (struct inode const *)inode;
  alloc_cnt = ((struct hfs_inode_info *)__mptr___3 + 0xfffffffffffffed0UL)->alloc_blocks;
  if ((int )blk_cnt == (int )alloc_cnt) {
    goto out;
  } else {
  }
  __mptr___4 = (struct inode const *)inode;
  ldv_mutex_lock_58(& ((struct hfs_inode_info *)__mptr___4 + 0xfffffffffffffed0UL)->extents_lock);
  hfs_find_init(((struct hfs_sb_info *)sb->s_fs_info)->ext_tree, & fd);
  ldv_22396:
  __mptr___8 = (struct inode const *)inode;
  if ((int )((struct hfs_inode_info *)__mptr___8 + 0xfffffffffffffed0UL)->first_blocks == (int )alloc_cnt) {
    __mptr___5 = (struct inode const *)inode;
    hfs_free_extents(sb, (struct hfs_extent *)(& ((struct hfs_inode_info *)__mptr___5 + 0xfffffffffffffed0UL)->first_extents),
                     (int )alloc_cnt, (int )alloc_cnt - (int )blk_cnt);
    __mptr___6 = (struct inode const *)inode;
    hfs_dump_extent((struct hfs_extent *)(& ((struct hfs_inode_info *)__mptr___6 + 0xfffffffffffffed0UL)->first_extents));
    __mptr___7 = (struct inode const *)inode;
    ((struct hfs_inode_info *)__mptr___7 + 0xfffffffffffffed0UL)->first_blocks = blk_cnt;
    goto ldv_22381;
  } else {
  }
  res = __hfs_ext_cache_extent(& fd, inode, (u32 )alloc_cnt);
  if (res != 0) {
    goto ldv_22381;
  } else {
  }
  __mptr___9 = (struct inode const *)inode;
  start = ((struct hfs_inode_info *)__mptr___9 + 0xfffffffffffffed0UL)->cached_start;
  __mptr___10 = (struct inode const *)inode;
  hfs_free_extents(sb, (struct hfs_extent *)(& ((struct hfs_inode_info *)__mptr___10 + 0xfffffffffffffed0UL)->cached_extents),
                   (int )alloc_cnt - (int )start, (int )alloc_cnt - (int )blk_cnt);
  __mptr___11 = (struct inode const *)inode;
  hfs_dump_extent((struct hfs_extent *)(& ((struct hfs_inode_info *)__mptr___11 + 0xfffffffffffffed0UL)->cached_extents));
  if ((int )blk_cnt > (int )start) {
    __mptr___12 = (struct inode const *)inode;
    ((struct hfs_inode_info *)__mptr___12 + 0xfffffffffffffed0UL)->flags = ((struct hfs_inode_info *)__mptr___12 + 0xfffffffffffffed0UL)->flags | 2U;
    goto ldv_22381;
  } else {
  }
  alloc_cnt = start;
  __mptr___13 = (struct inode const *)inode;
  __mptr___14 = (struct inode const *)inode;
  tmp = 0U;
  ((struct hfs_inode_info *)__mptr___14 + 0xfffffffffffffed0UL)->cached_blocks = tmp;
  ((struct hfs_inode_info *)__mptr___13 + 0xfffffffffffffed0UL)->cached_start = tmp;
  __mptr___15 = (struct inode const *)inode;
  ((struct hfs_inode_info *)__mptr___15 + 0xfffffffffffffed0UL)->flags = ((struct hfs_inode_info *)__mptr___15 + 0xfffffffffffffed0UL)->flags & 4294967289U;
  hfs_brec_remove(& fd);
  goto ldv_22396;
  ldv_22381:
  hfs_find_exit(& fd);
  __mptr___16 = (struct inode const *)inode;
  ldv_mutex_unlock_59(& ((struct hfs_inode_info *)__mptr___16 + 0xfffffffffffffed0UL)->extents_lock);
  __mptr___17 = (struct inode const *)inode;
  ((struct hfs_inode_info *)__mptr___17 + 0xfffffffffffffed0UL)->alloc_blocks = blk_cnt;
  out:
  __mptr___18 = (struct inode const *)inode;
  ((struct hfs_inode_info *)__mptr___18 + 0xfffffffffffffed0UL)->phys_size = inode->i_size;
  __mptr___19 = (struct inode const *)inode;
  ((struct hfs_inode_info *)__mptr___19 + 0xfffffffffffffed0UL)->fs_blocks = (sector_t )((((unsigned long long )inode->i_size + (unsigned long long )sb->s_blocksize) - 1ULL) >> (int )sb->s_blocksize_bits);
  __mptr___20 = (struct inode const *)inode;
  inode_set_bytes(inode, (loff_t )(((struct hfs_inode_info *)__mptr___20 + 0xfffffffffffffed0UL)->fs_blocks << (int )sb->s_blocksize_bits));
  mark_inode_dirty(inode);
  return;
}
}
void ldv_mutex_lock_51(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_52(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_53(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_extents_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_54(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_extents_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_55(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_extents_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_56(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_extents_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_57(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_extents_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_58(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_extents_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_59(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_extents_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
__inline static void INIT_LIST_HEAD(struct list_head *list )
{
  {
  list->next = list;
  list->prev = list;
  return;
}
}
__inline static void hlist_add_fake(struct hlist_node *n )
{
  {
  n->pprev = & n->next;
  return;
}
}
extern int strcmp(char const * , char const * ) ;
__inline static int atomic_dec_and_test(atomic_t *v )
{
  unsigned char c ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; decl %0; sete %1": "+m" (v->counter),
                       "=qm" (c): : "memory");
  return ((unsigned int )c != 0U);
}
}
void ldv_mutex_unlock_70(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_72(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_74(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_76(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_69(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_71(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_73(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_75(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_i_mutex(struct mutex *lock ) ;
void ldv_mutex_unlock_i_mutex(struct mutex *lock ) ;
extern int debug_lockdep_rcu_enabled(void) ;
extern bool flush_delayed_work(struct delayed_work * ) ;
extern void truncate_pagecache(struct inode * , loff_t , loff_t ) ;
extern void truncate_setsize(struct inode * , loff_t ) ;
extern void truncate_inode_pages(struct address_space * , loff_t ) ;
__inline static uid_t __kuid_val(kuid_t uid )
{
  {
  return (uid);
}
}
__inline static gid_t __kgid_val(kgid_t gid )
{
  {
  return (gid);
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
__inline static bool gid_eq(kgid_t left , kgid_t right )
{
  gid_t tmp ;
  gid_t tmp___0 ;
  {
  tmp = __kgid_val(left);
  tmp___0 = __kgid_val(right);
  return (tmp == tmp___0);
}
}
__inline static loff_t i_size_read(struct inode const *inode )
{
  {
  return ((loff_t )inode->i_size);
}
}
extern void set_nlink(struct inode * , unsigned int ) ;
extern int sync_blockdev(struct block_device * ) ;
extern void make_bad_inode(struct inode * ) ;
extern int write_inode_now(struct inode * , int ) ;
extern int filemap_write_and_wait_range(struct address_space * , loff_t , loff_t ) ;
extern struct inode *igrab(struct inode * ) ;
extern struct inode *iget5_locked(struct super_block * , unsigned long , int (*)(struct inode * ,
                                                                                  void * ) ,
                                  int (*)(struct inode * , void * ) , void * ) ;
extern void clear_inode(struct inode * ) ;
extern struct inode *new_inode(struct super_block * ) ;
extern void __insert_inode_hash(struct inode * , unsigned long ) ;
__inline static void insert_inode_hash(struct inode *inode )
{
  {
  __insert_inode_hash(inode, inode->i_ino);
  return;
}
}
extern int generic_file_mmap(struct file * , struct vm_area_struct * ) ;
extern ssize_t generic_file_aio_read(struct kiocb * , struct iovec const * , unsigned long ,
                                     loff_t ) ;
extern ssize_t generic_file_aio_write(struct kiocb * , struct iovec const * , unsigned long ,
                                      loff_t ) ;
extern ssize_t do_sync_read(struct file * , char * , size_t , loff_t * ) ;
extern ssize_t do_sync_write(struct file * , char const * , size_t , loff_t * ) ;
extern ssize_t generic_file_splice_read(struct file * , loff_t * , struct pipe_inode_info * ,
                                        size_t , unsigned int ) ;
extern ssize_t __blockdev_direct_IO(int , struct kiocb * , struct inode * , struct block_device * ,
                                    struct iovec const * , loff_t , unsigned long ,
                                    get_block_t * , dio_iodone_t * , dio_submit_t * ,
                                    int ) ;
__inline static ssize_t blockdev_direct_IO(int rw , struct kiocb *iocb , struct inode *inode ,
                                           struct iovec const *iov , loff_t offset ,
                                           unsigned long nr_segs , get_block_t *get_block )
{
  ssize_t tmp ;
  {
  tmp = __blockdev_direct_IO(rw, iocb, inode, (inode->i_sb)->s_bdev, iov, offset,
                             nr_segs, get_block, 0, 0, 3);
  return (tmp);
}
}
extern void inode_dio_wait(struct inode * ) ;
extern int inode_change_ok(struct inode const * , struct iattr * ) ;
extern int inode_newsize_ok(struct inode const * , loff_t ) ;
extern void setattr_copy(struct inode * , struct iattr const * ) ;
extern int mpage_writepages(struct address_space * , struct writeback_control * ,
                            get_block_t * ) ;
__inline static size_t iov_length(struct iovec const *iov , unsigned long nr_segs )
{
  unsigned long seg ;
  size_t ret ;
  {
  ret = 0UL;
  seg = 0UL;
  goto ldv_22789;
  ldv_22788:
  ret = (unsigned long )(iov + seg)->iov_len + ret;
  seg = seg + 1UL;
  ldv_22789: ;
  if (seg < nr_segs) {
    goto ldv_22788;
  } else {
  }
  return (ret);
}
}
extern int try_to_free_buffers(struct page * ) ;
extern int block_write_full_page(struct page * , get_block_t * , struct writeback_control * ) ;
extern int block_read_full_page(struct page * , get_block_t * ) ;
extern int generic_write_end(struct file * , struct address_space * , loff_t , unsigned int ,
                             unsigned int , struct page * , void * ) ;
extern int cont_write_begin(struct file * , struct address_space * , loff_t , unsigned int ,
                            unsigned int , struct page ** , void ** , get_block_t * ,
                            loff_t * ) ;
extern sector_t generic_block_bmap(struct address_space * , sector_t , get_block_t * ) ;
void hfs_inode_write_fork(struct inode *inode , struct hfs_extent *ext , __be32 *log_size ,
                          __be32 *phys_size ) ;
int hfs_write_inode(struct inode *inode , struct writeback_control *wbc ) ;
void hfs_evict_inode(struct inode *inode ) ;
int hfs_setxattr(struct dentry *dentry , char const *name , void const *value ,
                 size_t size , int flags ) ;
ssize_t hfs_getxattr(struct dentry *dentry , char const *name , void *value , size_t size ) ;
ssize_t hfs_listxattr(struct dentry *dentry , char *buffer , size_t size ) ;
static struct file_operations const hfs_file_operations ;
static struct inode_operations const hfs_file_inode_operations ;
static int hfs_writepage(struct page *page , struct writeback_control *wbc )
{
  int tmp ;
  {
  tmp = block_write_full_page(page, & hfs_get_block, wbc);
  return (tmp);
}
}
static int hfs_readpage(struct file *file , struct page *page )
{
  int tmp ;
  {
  tmp = block_read_full_page(page, & hfs_get_block);
  return (tmp);
}
}
static void hfs_write_failed(struct address_space *mapping , loff_t to )
{
  struct inode *inode ;
  {
  inode = mapping->host;
  if (inode->i_size < to) {
    truncate_pagecache(inode, to, inode->i_size);
    hfs_file_truncate(inode);
  } else {
  }
  return;
}
}
static int hfs_write_begin(struct file *file , struct address_space *mapping , loff_t pos ,
                           unsigned int len , unsigned int flags , struct page **pagep ,
                           void **fsdata )
{
  int ret ;
  struct inode const *__mptr ;
  long tmp ;
  {
  *pagep = 0;
  __mptr = (struct inode const *)mapping->host;
  ret = cont_write_begin(file, mapping, pos, len, flags, pagep, fsdata, & hfs_get_block,
                         & ((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->phys_size);
  tmp = ldv__builtin_expect(ret != 0, 0L);
  if (tmp != 0L) {
    hfs_write_failed(mapping, (loff_t )len + pos);
  } else {
  }
  return (ret);
}
}
static sector_t hfs_bmap(struct address_space *mapping , sector_t block )
{
  sector_t tmp ;
  {
  tmp = generic_block_bmap(mapping, block, & hfs_get_block);
  return (tmp);
}
}
static int hfs_releasepage(struct page *page , gfp_t mask )
{
  struct inode *inode ;
  struct super_block *sb ;
  struct hfs_btree *tree ;
  struct hfs_bnode *node ;
  u32 nidx ;
  int i ;
  int res ;
  int tmp ;
  u32 tmp___0 ;
  int tmp___1 ;
  int tmp___2 ;
  int tmp___3 ;
  {
  inode = (page->mapping)->host;
  sb = inode->i_sb;
  res = 1;
  switch (inode->i_ino) {
  case 3UL:
  tree = ((struct hfs_sb_info *)sb->s_fs_info)->ext_tree;
  goto ldv_25809;
  case 4UL:
  tree = ((struct hfs_sb_info *)sb->s_fs_info)->cat_tree;
  goto ldv_25809;
  default:
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/hfs/hfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/27/dscv_tempdir/dscv/ri/32_7a/fs/hfs/inode.c.prepared"),
                       "i" (150), "i" (12UL));
  ldv_25812: ;
  goto ldv_25812;
  return (0);
  }
  ldv_25809: ;
  if ((unsigned long )tree == (unsigned long )((struct hfs_btree *)0)) {
    return (0);
  } else {
  }
  if (tree->node_size > 4095U) {
    nidx = (u32 )(page->ldv_16765.ldv_16749.index >> (int )(tree->node_size_shift - 12U));
    spin_lock(& tree->hash_lock);
    node = hfs_bnode_findhash(tree, nidx);
    if ((unsigned long )node == (unsigned long )((struct hfs_bnode *)0)) {
    } else {
      tmp = atomic_read((atomic_t const *)(& node->refcnt));
      if (tmp != 0) {
        res = 0;
      } else {
      }
    }
    if (res != 0 && (unsigned long )node != (unsigned long )((struct hfs_bnode *)0)) {
      hfs_bnode_unhash(node);
      hfs_bnode_free(node);
    } else {
    }
    spin_unlock(& tree->hash_lock);
  } else {
    nidx = (u32 )(page->ldv_16765.ldv_16749.index << (int )(12U - tree->node_size_shift));
    i = 1 << (int )(12U - tree->node_size_shift);
    spin_lock(& tree->hash_lock);
    ldv_25815:
    tmp___0 = nidx;
    nidx = nidx + 1U;
    node = hfs_bnode_findhash(tree, tmp___0);
    if ((unsigned long )node == (unsigned long )((struct hfs_bnode *)0)) {
      goto ldv_25813;
    } else {
    }
    tmp___1 = atomic_read((atomic_t const *)(& node->refcnt));
    if (tmp___1 != 0) {
      res = 0;
      goto ldv_25814;
    } else {
    }
    hfs_bnode_unhash(node);
    hfs_bnode_free(node);
    ldv_25813:
    i = i - 1;
    if (i != 0 && tree->node_count > nidx) {
      goto ldv_25815;
    } else {
    }
    ldv_25814:
    spin_unlock(& tree->hash_lock);
  }
  if (res != 0) {
    tmp___2 = try_to_free_buffers(page);
    tmp___3 = tmp___2;
  } else {
    tmp___3 = 0;
  }
  return (tmp___3);
}
}
static ssize_t hfs_direct_IO(int rw , struct kiocb *iocb , struct iovec const *iov ,
                             loff_t offset , unsigned long nr_segs )
{
  struct file *file ;
  struct address_space *mapping ;
  struct inode *inode ;
  ssize_t ret ;
  loff_t isize ;
  loff_t tmp ;
  loff_t end ;
  size_t tmp___0 ;
  long tmp___1 ;
  long tmp___2 ;
  {
  file = iocb->ki_filp;
  mapping = file->f_mapping;
  inode = (((file->f_path.dentry)->d_inode)->i_mapping)->host;
  ret = blockdev_direct_IO(rw, iocb, inode, iov, offset, nr_segs, & hfs_get_block);
  tmp___1 = ldv__builtin_expect((long )rw & 1L, 0L);
  if (tmp___1 != 0L) {
    tmp___2 = ldv__builtin_expect(ret < 0L, 0L);
    if (tmp___2 != 0L) {
      tmp = i_size_read((struct inode const *)inode);
      isize = tmp;
      tmp___0 = iov_length(iov, nr_segs);
      end = (loff_t )((unsigned long long )tmp___0 + (unsigned long long )offset);
      if (end > isize) {
        hfs_write_failed(mapping, end);
      } else {
      }
    } else {
    }
  } else {
  }
  return (ret);
}
}
static int hfs_writepages(struct address_space *mapping , struct writeback_control *wbc )
{
  int tmp ;
  {
  tmp = mpage_writepages(mapping, wbc, & hfs_get_block);
  return (tmp);
}
}
struct address_space_operations const hfs_btree_aops =
     {& hfs_writepage, & hfs_readpage, 0, 0, 0, & hfs_write_begin, & generic_write_end,
    & hfs_bmap, 0, & hfs_releasepage, 0, 0, 0, 0, 0, 0, 0, 0, 0};
struct address_space_operations const hfs_aops =
     {& hfs_writepage, & hfs_readpage, & hfs_writepages, 0, 0, & hfs_write_begin, & generic_write_end,
    & hfs_bmap, 0, 0, 0, & hfs_direct_IO, 0, 0, 0, 0, 0, 0, 0};
struct inode *hfs_new_inode(struct inode *dir , struct qstr *name , umode_t mode )
{
  struct super_block *sb ;
  struct inode *inode ;
  struct inode *tmp ;
  struct lock_class_key __key ;
  struct inode const *__mptr ;
  struct inode const *__mptr___0 ;
  struct inode const *__mptr___1 ;
  u32 tmp___0 ;
  int tmp___1 ;
  struct task_struct *tmp___2 ;
  int tmp___3 ;
  struct task_struct *tmp___4 ;
  struct timespec tmp___5 ;
  struct timespec tmp___6 ;
  struct timespec __constr_expr_0 ;
  unsigned long tmp___7 ;
  struct inode const *__mptr___2 ;
  struct inode const *__mptr___3 ;
  struct inode const *__mptr___4 ;
  struct inode const *__mptr___5 ;
  struct inode const *__mptr___6 ;
  struct inode const *__mptr___7 ;
  struct inode const *__mptr___8 ;
  struct inode const *__mptr___9 ;
  struct inode const *__mptr___10 ;
  struct inode const *__mptr___11 ;
  struct inode const *__mptr___12 ;
  {
  sb = dir->i_sb;
  tmp = new_inode(sb);
  inode = tmp;
  if ((unsigned long )inode == (unsigned long )((struct inode *)0)) {
    return (0);
  } else {
  }
  __mptr = (struct inode const *)inode;
  __mutex_init(& ((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->extents_lock,
               "&HFS_I(inode)->extents_lock", & __key);
  __mptr___0 = (struct inode const *)inode;
  INIT_LIST_HEAD(& ((struct hfs_inode_info *)__mptr___0 + 0xfffffffffffffed0UL)->open_dir_list);
  __mptr___1 = (struct inode const *)inode;
  hfs_cat_build_key(sb, (btree_key *)(& ((struct hfs_inode_info *)__mptr___1 + 0xfffffffffffffed0UL)->cat_key),
                    (u32 )dir->i_ino, name);
  tmp___0 = ((struct hfs_sb_info *)sb->s_fs_info)->next_id;
  ((struct hfs_sb_info *)sb->s_fs_info)->next_id = ((struct hfs_sb_info *)sb->s_fs_info)->next_id + 1U;
  inode->i_ino = (unsigned long )tmp___0;
  inode->i_mode = mode;
  tmp___1 = debug_lockdep_rcu_enabled();
  tmp___2 = get_current();
  inode->i_uid = (tmp___2->cred)->fsuid;
  tmp___3 = debug_lockdep_rcu_enabled();
  tmp___4 = get_current();
  inode->i_gid = (tmp___4->cred)->fsgid;
  set_nlink(inode, 1U);
  tmp___7 = get_seconds();
  __constr_expr_0.tv_sec = (long )tmp___7;
  __constr_expr_0.tv_nsec = 0L;
  tmp___6 = __constr_expr_0;
  inode->i_ctime = tmp___6;
  tmp___5 = tmp___6;
  inode->i_atime = tmp___5;
  inode->i_mtime = tmp___5;
  __mptr___2 = (struct inode const *)inode;
  ((struct hfs_inode_info *)__mptr___2 + 0xfffffffffffffed0UL)->flags = 0U;
  __mptr___3 = (struct inode const *)inode;
  ((struct hfs_inode_info *)__mptr___3 + 0xfffffffffffffed0UL)->rsrc_inode = 0;
  __mptr___4 = (struct inode const *)inode;
  ((struct hfs_inode_info *)__mptr___4 + 0xfffffffffffffed0UL)->fs_blocks = 0UL;
  if (((int )mode & 61440) == 16384) {
    inode->i_size = 2LL;
    ((struct hfs_sb_info *)sb->s_fs_info)->folder_count = ((struct hfs_sb_info *)sb->s_fs_info)->folder_count + 1U;
    if (dir->i_ino == 2UL) {
      ((struct hfs_sb_info *)sb->s_fs_info)->root_dirs = (u16 )((int )((struct hfs_sb_info *)sb->s_fs_info)->root_dirs + 1);
    } else {
    }
    inode->i_op = & hfs_dir_inode_operations;
    inode->i_fop = & hfs_dir_operations;
    inode->i_mode = (umode_t )((unsigned int )inode->i_mode | 511U);
    inode->i_mode = (umode_t )((int )((short )inode->i_mode) & ~ ((int )((short )((struct hfs_sb_info *)(inode->i_sb)->s_fs_info)->s_dir_umask)));
  } else
  if (((int )mode & 61440) == 32768) {
    __mptr___5 = (struct inode const *)inode;
    ((struct hfs_inode_info *)__mptr___5 + 0xfffffffffffffed0UL)->clump_blocks = (u16 )((struct hfs_sb_info *)sb->s_fs_info)->clumpablks;
    ((struct hfs_sb_info *)sb->s_fs_info)->file_count = ((struct hfs_sb_info *)sb->s_fs_info)->file_count + 1U;
    if (dir->i_ino == 2UL) {
      ((struct hfs_sb_info *)sb->s_fs_info)->root_files = (u16 )((int )((struct hfs_sb_info *)sb->s_fs_info)->root_files + 1);
    } else {
    }
    inode->i_op = & hfs_file_inode_operations;
    inode->i_fop = & hfs_file_operations;
    (inode->i_mapping)->a_ops = & hfs_aops;
    inode->i_mode = (umode_t )((unsigned int )inode->i_mode | 365U);
    if (((int )mode & 128) != 0) {
      inode->i_mode = (umode_t )((unsigned int )inode->i_mode | 146U);
    } else {
    }
    inode->i_mode = (umode_t )((int )((short )inode->i_mode) & ~ ((int )((short )((struct hfs_sb_info *)(inode->i_sb)->s_fs_info)->s_file_umask)));
    __mptr___6 = (struct inode const *)inode;
    ((struct hfs_inode_info *)__mptr___6 + 0xfffffffffffffed0UL)->phys_size = 0LL;
    __mptr___7 = (struct inode const *)inode;
    ((struct hfs_inode_info *)__mptr___7 + 0xfffffffffffffed0UL)->alloc_blocks = 0U;
    __mptr___8 = (struct inode const *)inode;
    ((struct hfs_inode_info *)__mptr___8 + 0xfffffffffffffed0UL)->first_blocks = 0U;
    __mptr___9 = (struct inode const *)inode;
    ((struct hfs_inode_info *)__mptr___9 + 0xfffffffffffffed0UL)->cached_start = 0U;
    __mptr___10 = (struct inode const *)inode;
    ((struct hfs_inode_info *)__mptr___10 + 0xfffffffffffffed0UL)->cached_blocks = 0U;
    __mptr___11 = (struct inode const *)inode;
    memset((void *)(& ((struct hfs_inode_info *)__mptr___11 + 0xfffffffffffffed0UL)->first_extents),
           0, 12UL);
    __mptr___12 = (struct inode const *)inode;
    memset((void *)(& ((struct hfs_inode_info *)__mptr___12 + 0xfffffffffffffed0UL)->cached_extents),
           0, 12UL);
  } else {
  }
  insert_inode_hash(inode);
  mark_inode_dirty(inode);
  set_bit(1U, (unsigned long volatile *)(& ((struct hfs_sb_info *)sb->s_fs_info)->flags));
  hfs_mark_mdb_dirty(sb);
  return (inode);
}
}
void hfs_delete_inode(struct inode *inode )
{
  struct super_block *sb ;
  struct inode const *__mptr ;
  struct inode const *__mptr___0 ;
  {
  sb = inode->i_sb;
  if (((int )inode->i_mode & 61440) == 16384) {
    ((struct hfs_sb_info *)sb->s_fs_info)->folder_count = ((struct hfs_sb_info *)sb->s_fs_info)->folder_count - 1U;
    __mptr = (struct inode const *)inode;
    if (((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->cat_key.ParID == 33554432U) {
      ((struct hfs_sb_info *)sb->s_fs_info)->root_dirs = (u16 )((int )((struct hfs_sb_info *)sb->s_fs_info)->root_dirs - 1);
    } else {
    }
    set_bit(1U, (unsigned long volatile *)(& ((struct hfs_sb_info *)sb->s_fs_info)->flags));
    hfs_mark_mdb_dirty(sb);
    return;
  } else {
  }
  ((struct hfs_sb_info *)sb->s_fs_info)->file_count = ((struct hfs_sb_info *)sb->s_fs_info)->file_count - 1U;
  __mptr___0 = (struct inode const *)inode;
  if (((struct hfs_inode_info *)__mptr___0 + 0xfffffffffffffed0UL)->cat_key.ParID == 33554432U) {
    ((struct hfs_sb_info *)sb->s_fs_info)->root_files = (u16 )((int )((struct hfs_sb_info *)sb->s_fs_info)->root_files - 1);
  } else {
  }
  if (((int )inode->i_mode & 61440) == 32768) {
    if ((unsigned int )inode->ldv_14625.i_nlink == 0U) {
      inode->i_size = 0LL;
      hfs_file_truncate(inode);
    } else {
    }
  } else {
  }
  set_bit(1U, (unsigned long volatile *)(& ((struct hfs_sb_info *)sb->s_fs_info)->flags));
  hfs_mark_mdb_dirty(sb);
  return;
}
}
void hfs_inode_read_fork(struct inode *inode , struct hfs_extent *ext , __be32 __log_size ,
                         __be32 phys_size , u32 clump_size )
{
  struct super_block *sb ;
  u32 log_size ;
  __u32 tmp ;
  u16 count ;
  int i ;
  size_t __len ;
  void *__ret ;
  struct inode const *__mptr ;
  struct inode const *__mptr___0 ;
  __u16 tmp___0 ;
  struct inode const *__mptr___1 ;
  struct inode const *__mptr___2 ;
  loff_t tmp___1 ;
  struct inode const *__mptr___3 ;
  struct inode const *__mptr___4 ;
  struct inode const *__mptr___5 ;
  __u32 tmp___2 ;
  struct inode const *__mptr___6 ;
  struct inode const *__mptr___7 ;
  struct inode const *__mptr___8 ;
  {
  sb = inode->i_sb;
  tmp = __fswab32(__log_size);
  log_size = tmp;
  __len = 12UL;
  if (__len > 63UL) {
    __mptr = (struct inode const *)inode;
    __ret = memcpy((void *)(& ((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->first_extents),
                     (void const *)ext, __len);
  } else {
    __mptr___0 = (struct inode const *)inode;
    __ret = __builtin_memcpy((void *)(& ((struct hfs_inode_info *)__mptr___0 + 0xfffffffffffffed0UL)->first_extents),
                             (void const *)ext, __len);
  }
  count = 0U;
  i = 0;
  goto ldv_25903;
  ldv_25902:
  tmp___0 = __fswab16((int )(ext + (unsigned long )i)->count);
  count = (int )tmp___0 + (int )count;
  i = i + 1;
  ldv_25903: ;
  if (i <= 2) {
    goto ldv_25902;
  } else {
  }
  __mptr___1 = (struct inode const *)inode;
  ((struct hfs_inode_info *)__mptr___1 + 0xfffffffffffffed0UL)->first_blocks = count;
  __mptr___2 = (struct inode const *)inode;
  tmp___1 = (loff_t )log_size;
  ((struct hfs_inode_info *)__mptr___2 + 0xfffffffffffffed0UL)->phys_size = tmp___1;
  inode->i_size = tmp___1;
  __mptr___3 = (struct inode const *)inode;
  ((struct hfs_inode_info *)__mptr___3 + 0xfffffffffffffed0UL)->fs_blocks = (((unsigned long )log_size + sb->s_blocksize) - 1UL) >> (int )sb->s_blocksize_bits;
  __mptr___4 = (struct inode const *)inode;
  inode_set_bytes(inode, (loff_t )(((struct hfs_inode_info *)__mptr___4 + 0xfffffffffffffed0UL)->fs_blocks << (int )sb->s_blocksize_bits));
  __mptr___5 = (struct inode const *)inode;
  tmp___2 = __fswab32(phys_size);
  ((struct hfs_inode_info *)__mptr___5 + 0xfffffffffffffed0UL)->alloc_blocks = (u16 )(tmp___2 / ((struct hfs_sb_info *)sb->s_fs_info)->alloc_blksz);
  __mptr___6 = (struct inode const *)inode;
  ((struct hfs_inode_info *)__mptr___6 + 0xfffffffffffffed0UL)->clump_blocks = (u16 )(clump_size / ((struct hfs_sb_info *)sb->s_fs_info)->alloc_blksz);
  __mptr___8 = (struct inode const *)inode;
  if ((unsigned int )((struct hfs_inode_info *)__mptr___8 + 0xfffffffffffffed0UL)->clump_blocks == 0U) {
    __mptr___7 = (struct inode const *)inode;
    ((struct hfs_inode_info *)__mptr___7 + 0xfffffffffffffed0UL)->clump_blocks = (u16 )((struct hfs_sb_info *)sb->s_fs_info)->clumpablks;
  } else {
  }
  return;
}
}
static int hfs_test_inode(struct inode *inode , void *data )
{
  struct hfs_iget_data *idata ;
  hfs_cat_rec *rec ;
  __u32 tmp ;
  __u32 tmp___0 ;
  {
  idata = (struct hfs_iget_data *)data;
  rec = idata->rec;
  switch ((int )rec->type) {
  case 1:
  tmp = __fswab32(rec->dir.DirID);
  return (inode->i_ino == (unsigned long )tmp);
  case 2:
  tmp___0 = __fswab32(rec->file.FlNum);
  return (inode->i_ino == (unsigned long )tmp___0);
  default:
  __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/hfs/hfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/27/dscv_tempdir/dscv/ri/32_7a/fs/hfs/inode.c.prepared"),
                       "i" (366), "i" (12UL));
  ldv_25933: ;
  goto ldv_25933;
  return (1);
  }
}
}
static int hfs_read_inode(struct inode *inode , void *data )
{
  struct hfs_iget_data *idata ;
  struct hfs_sb_info *hsb ;
  hfs_cat_rec *rec ;
  struct inode const *__mptr ;
  struct inode const *__mptr___0 ;
  struct lock_class_key __key ;
  struct inode const *__mptr___1 ;
  struct inode const *__mptr___2 ;
  struct inode const *__mptr___3 ;
  struct inode const *__mptr___4 ;
  struct inode const *__mptr___5 ;
  __u16 tmp ;
  __u16 tmp___0 ;
  struct inode const *__mptr___6 ;
  __u32 tmp___1 ;
  struct timespec tmp___2 ;
  struct timespec tmp___3 ;
  struct timespec __constr_expr_0 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  __u16 tmp___6 ;
  struct inode const *__mptr___7 ;
  struct timespec tmp___7 ;
  struct timespec tmp___8 ;
  struct timespec __constr_expr_1 ;
  __u32 tmp___9 ;
  {
  idata = (struct hfs_iget_data *)data;
  hsb = (struct hfs_sb_info *)(inode->i_sb)->s_fs_info;
  __mptr = (struct inode const *)inode;
  ((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->flags = 0U;
  __mptr___0 = (struct inode const *)inode;
  ((struct hfs_inode_info *)__mptr___0 + 0xfffffffffffffed0UL)->rsrc_inode = 0;
  __mptr___1 = (struct inode const *)inode;
  __mutex_init(& ((struct hfs_inode_info *)__mptr___1 + 0xfffffffffffffed0UL)->extents_lock,
               "&HFS_I(inode)->extents_lock", & __key);
  __mptr___2 = (struct inode const *)inode;
  INIT_LIST_HEAD(& ((struct hfs_inode_info *)__mptr___2 + 0xfffffffffffffed0UL)->open_dir_list);
  inode->i_uid = hsb->s_uid;
  inode->i_gid = hsb->s_gid;
  set_nlink(inode, 1U);
  if ((unsigned long )idata->key != (unsigned long )((struct hfs_cat_key *)0)) {
    __mptr___3 = (struct inode const *)inode;
    ((struct hfs_inode_info *)__mptr___3 + 0xfffffffffffffed0UL)->cat_key = *(idata->key);
  } else {
    __mptr___4 = (struct inode const *)inode;
    ((struct hfs_inode_info *)__mptr___4 + 0xfffffffffffffed0UL)->flags = ((struct hfs_inode_info *)__mptr___4 + 0xfffffffffffffed0UL)->flags | 1U;
  }
  __mptr___5 = (struct inode const *)inode;
  ((struct hfs_inode_info *)__mptr___5 + 0xfffffffffffffed0UL)->tz_secondswest = sys_tz.tz_minuteswest * 60;
  rec = idata->rec;
  switch ((int )rec->type) {
  case 2:
  __mptr___6 = (struct inode const *)inode;
  if ((((struct hfs_inode_info *)__mptr___6 + 0xfffffffffffffed0UL)->flags & 1U) == 0U) {
    tmp = __fswab16((int )rec->file.ClpSize);
    hfs_inode_read_fork(inode, (struct hfs_extent *)(& rec->file.ExtRec), rec->file.LgLen,
                        rec->file.PyLen, (u32 )tmp);
  } else {
    tmp___0 = __fswab16((int )rec->file.ClpSize);
    hfs_inode_read_fork(inode, (struct hfs_extent *)(& rec->file.RExtRec), rec->file.RLgLen,
                        rec->file.RPyLen, (u32 )tmp___0);
  }
  tmp___1 = __fswab32(rec->file.FlNum);
  inode->i_ino = (unsigned long )tmp___1;
  inode->i_mode = 365U;
  if (((int )rec->file.Flags & 1) == 0) {
    inode->i_mode = (umode_t )((unsigned int )inode->i_mode | 146U);
  } else {
  }
  inode->i_mode = (umode_t )((int )((short )inode->i_mode) & ~ ((int )((short )hsb->s_file_umask)));
  inode->i_mode = (umode_t )((unsigned int )inode->i_mode | 32768U);
  tmp___4 = __fswab32(rec->file.MdDat);
  __constr_expr_0.tv_sec = (long )((tmp___4 + (unsigned int )(sys_tz.tz_minuteswest * 60)) - 2082844800U);
  __constr_expr_0.tv_nsec = 0L;
  tmp___3 = __constr_expr_0;
  inode->i_mtime = tmp___3;
  tmp___2 = tmp___3;
  inode->i_atime = tmp___2;
  inode->i_ctime = tmp___2;
  inode->i_op = & hfs_file_inode_operations;
  inode->i_fop = & hfs_file_operations;
  (inode->i_mapping)->a_ops = & hfs_aops;
  goto ldv_25960;
  case 1:
  tmp___5 = __fswab32(rec->dir.DirID);
  inode->i_ino = (unsigned long )tmp___5;
  tmp___6 = __fswab16((int )rec->dir.Val);
  inode->i_size = (loff_t )((int )tmp___6 + 2);
  __mptr___7 = (struct inode const *)inode;
  ((struct hfs_inode_info *)__mptr___7 + 0xfffffffffffffed0UL)->fs_blocks = 0UL;
  inode->i_mode = (umode_t )((~ ((int )((short )hsb->s_dir_umask)) & 511) | 16384);
  tmp___9 = __fswab32(rec->dir.MdDat);
  __constr_expr_1.tv_sec = (long )((tmp___9 + (unsigned int )(sys_tz.tz_minuteswest * 60)) - 2082844800U);
  __constr_expr_1.tv_nsec = 0L;
  tmp___8 = __constr_expr_1;
  inode->i_mtime = tmp___8;
  tmp___7 = tmp___8;
  inode->i_atime = tmp___7;
  inode->i_ctime = tmp___7;
  inode->i_op = & hfs_dir_inode_operations;
  inode->i_fop = & hfs_dir_operations;
  goto ldv_25960;
  default:
  make_bad_inode(inode);
  }
  ldv_25960: ;
  return (0);
}
}
struct inode *hfs_iget(struct super_block *sb , struct hfs_cat_key *key , hfs_cat_rec *rec )
{
  struct hfs_iget_data data ;
  struct inode *inode ;
  u32 cnid ;
  __u32 tmp ;
  __u32 tmp___0 ;
  {
  data.key = key;
  data.rec = rec;
  switch ((int )rec->type) {
  case 1:
  tmp = __fswab32(rec->dir.DirID);
  cnid = tmp;
  goto ldv_25975;
  case 2:
  tmp___0 = __fswab32(rec->file.FlNum);
  cnid = tmp___0;
  goto ldv_25975;
  default: ;
  return (0);
  }
  ldv_25975:
  inode = iget5_locked(sb, (unsigned long )cnid, & hfs_test_inode, & hfs_read_inode,
                       (void *)(& data));
  if ((unsigned long )inode != (unsigned long )((struct inode *)0) && (inode->i_state & 8UL) != 0UL) {
    unlock_new_inode(inode);
  } else {
  }
  return (inode);
}
}
void hfs_inode_write_fork(struct inode *inode , struct hfs_extent *ext , __be32 *log_size ,
                          __be32 *phys_size )
{
  size_t __len ;
  void *__ret ;
  struct inode const *__mptr ;
  struct inode const *__mptr___0 ;
  __u32 tmp ;
  struct inode const *__mptr___1 ;
  __u32 tmp___0 ;
  {
  __len = 12UL;
  if (__len > 63UL) {
    __mptr = (struct inode const *)inode;
    __ret = memcpy((void *)ext, (void const *)(& ((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->first_extents),
                     __len);
  } else {
    __mptr___0 = (struct inode const *)inode;
    __ret = __builtin_memcpy((void *)ext, (void const *)(& ((struct hfs_inode_info *)__mptr___0 + 0xfffffffffffffed0UL)->first_extents),
                             __len);
  }
  if ((unsigned long )log_size != (unsigned long )((__be32 *)0)) {
    tmp = __fswab32((__u32 )inode->i_size);
    *log_size = tmp;
  } else {
  }
  if ((unsigned long )phys_size != (unsigned long )((__be32 *)0)) {
    __mptr___1 = (struct inode const *)inode;
    tmp___0 = __fswab32((u32 )((struct hfs_inode_info *)__mptr___1 + 0xfffffffffffffed0UL)->alloc_blocks * ((struct hfs_sb_info *)(inode->i_sb)->s_fs_info)->alloc_blksz);
    *phys_size = tmp___0;
  } else {
  }
  return;
}
}
int hfs_write_inode(struct inode *inode , struct writeback_control *wbc )
{
  struct inode *main_inode ;
  struct hfs_find_data fd ;
  hfs_cat_rec rec ;
  struct inode const *__mptr ;
  struct inode const *__mptr___0 ;
  int tmp ;
  struct inode const *__mptr___1 ;
  int tmp___0 ;
  __u32 tmp___1 ;
  int tmp___2 ;
  __u32 tmp___3 ;
  __u16 tmp___4 ;
  __u32 tmp___5 ;
  int tmp___6 ;
  __u32 tmp___7 ;
  struct inode const *__mptr___2 ;
  {
  main_inode = inode;
  hfs_ext_write_extent(inode);
  if (inode->i_ino <= 15UL) {
    switch (inode->i_ino) {
    case 2UL: ;
    goto ldv_26011;
    case 3UL:
    hfs_btree_write(((struct hfs_sb_info *)(inode->i_sb)->s_fs_info)->ext_tree);
    return (0);
    case 4UL:
    hfs_btree_write(((struct hfs_sb_info *)(inode->i_sb)->s_fs_info)->cat_tree);
    return (0);
    default:
    __asm__ volatile ("1:\tud2\n.pushsection __bug_table,\"a\"\n2:\t.long 1b - 2b, %c0 - 2b\n\t.word %c1, 0\n\t.org 2b+%c2\n.popsection": : "i" ((char *)"/home/mikhail/launches/cpachecker-regression/launcher-working-dir/ldv-manager-work-dir/work/current--X--fs/hfs/hfs.ko--X--regression-testlinux-3.8-rc1--X--32_7a--X--cpachecker/linux-3.8-rc1/csd_deg_dscv/27/dscv_tempdir/dscv/ri/32_7a/fs/hfs/inode.c.prepared"),
                         "i" (498), "i" (12UL));
    ldv_26015: ;
    goto ldv_26015;
    return (-5);
    }
    ldv_26011: ;
  } else {
  }
  __mptr___0 = (struct inode const *)inode;
  if ((int )((struct hfs_inode_info *)__mptr___0 + 0xfffffffffffffed0UL)->flags & 1) {
    __mptr = (struct inode const *)inode;
    main_inode = ((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->rsrc_inode;
  } else {
  }
  if ((unsigned int )main_inode->ldv_14625.i_nlink == 0U) {
    return (0);
  } else {
  }
  tmp = hfs_find_init(((struct hfs_sb_info *)(main_inode->i_sb)->s_fs_info)->cat_tree,
                      & fd);
  if (tmp != 0) {
    return (-5);
  } else {
  }
  __mptr___1 = (struct inode const *)main_inode;
  (fd.search_key)->cat = ((struct hfs_inode_info *)__mptr___1 + 0xfffffffffffffed0UL)->cat_key;
  tmp___0 = hfs_brec_find(& fd);
  if (tmp___0 != 0) {
    goto out;
  } else {
  }
  if (((int )main_inode->i_mode & 61440) == 16384) {
    hfs_bnode_read(fd.bnode, (void *)(& rec), fd.entryoffset, 70);
    if ((int )rec.type != 1) {
      tmp___2 = 1;
    } else {
      tmp___1 = __fswab32(rec.dir.DirID);
      if ((unsigned long )tmp___1 != inode->i_ino) {
        tmp___2 = 1;
      } else {
        tmp___2 = 0;
      }
    }
    tmp___3 = __fswab32(((__u32 )inode->i_mtime.tv_sec + (__u32 )(sys_tz.tz_minuteswest * -60)) + 2082844800U);
    rec.dir.MdDat = tmp___3;
    tmp___4 = __fswab16((int )((unsigned int )((__u16 )inode->i_size) + 65534U));
    rec.dir.Val = tmp___4;
    hfs_bnode_write(fd.bnode, (void *)(& rec), fd.entryoffset, 70);
  } else {
    __mptr___2 = (struct inode const *)inode;
    if ((int )((struct hfs_inode_info *)__mptr___2 + 0xfffffffffffffed0UL)->flags & 1) {
      hfs_bnode_read(fd.bnode, (void *)(& rec), fd.entryoffset, 102);
      hfs_inode_write_fork(inode, (struct hfs_extent *)(& rec.file.RExtRec), & rec.file.RLgLen,
                           & rec.file.RPyLen);
      hfs_bnode_write(fd.bnode, (void *)(& rec), fd.entryoffset, 102);
    } else {
      hfs_bnode_read(fd.bnode, (void *)(& rec), fd.entryoffset, 102);
      if ((int )rec.type != 2) {
        tmp___6 = 1;
      } else {
        tmp___5 = __fswab32(rec.file.FlNum);
        if ((unsigned long )tmp___5 != inode->i_ino) {
          tmp___6 = 1;
        } else {
          tmp___6 = 0;
        }
      }
      if (((int )inode->i_mode & 128) != 0) {
        rec.file.Flags = (unsigned int )rec.file.Flags & 254U;
      } else {
        rec.file.Flags = (u8 )((unsigned int )rec.file.Flags | 1U);
      }
      hfs_inode_write_fork(inode, (struct hfs_extent *)(& rec.file.ExtRec), & rec.file.LgLen,
                           & rec.file.PyLen);
      tmp___7 = __fswab32(((__u32 )inode->i_mtime.tv_sec + (__u32 )(sys_tz.tz_minuteswest * -60)) + 2082844800U);
      rec.file.MdDat = tmp___7;
      hfs_bnode_write(fd.bnode, (void *)(& rec), fd.entryoffset, 102);
    }
  }
  out:
  hfs_find_exit(& fd);
  return (0);
}
}
static struct dentry *hfs_file_lookup(struct inode *dir , struct dentry *dentry ,
                                      unsigned int flags )
{
  struct inode *inode ;
  hfs_cat_rec rec ;
  struct hfs_find_data fd ;
  int res ;
  struct inode const *__mptr ;
  int tmp ;
  struct inode const *__mptr___0 ;
  void *tmp___0 ;
  struct inode const *__mptr___1 ;
  struct hfs_iget_data idata ;
  void *tmp___1 ;
  struct inode const *__mptr___2 ;
  struct inode const *__mptr___3 ;
  {
  inode = 0;
  __mptr = (struct inode const *)dir;
  if ((int )((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->flags & 1) {
    goto out;
  } else {
    tmp = strcmp((char const *)dentry->d_name.name, "rsrc");
    if (tmp != 0) {
      goto out;
    } else {
    }
  }
  __mptr___0 = (struct inode const *)dir;
  inode = ((struct hfs_inode_info *)__mptr___0 + 0xfffffffffffffed0UL)->rsrc_inode;
  if ((unsigned long )inode != (unsigned long )((struct inode *)0)) {
    goto out;
  } else {
  }
  inode = new_inode(dir->i_sb);
  if ((unsigned long )inode == (unsigned long )((struct inode *)0)) {
    tmp___0 = ERR_PTR(-12L);
    return ((struct dentry *)tmp___0);
  } else {
  }
  hfs_find_init(((struct hfs_sb_info *)(dir->i_sb)->s_fs_info)->cat_tree, & fd);
  __mptr___1 = (struct inode const *)dir;
  (fd.search_key)->cat = ((struct hfs_inode_info *)__mptr___1 + 0xfffffffffffffed0UL)->cat_key;
  res = hfs_brec_read(& fd, (void *)(& rec), 102);
  if (res == 0) {
    idata.key = 0;
    idata.rec = & rec;
    hfs_read_inode(inode, (void *)(& idata));
  } else {
  }
  hfs_find_exit(& fd);
  if (res != 0) {
    iput(inode);
    tmp___1 = ERR_PTR((long )res);
    return ((struct dentry *)tmp___1);
  } else {
  }
  __mptr___2 = (struct inode const *)inode;
  ((struct hfs_inode_info *)__mptr___2 + 0xfffffffffffffed0UL)->rsrc_inode = dir;
  __mptr___3 = (struct inode const *)dir;
  ((struct hfs_inode_info *)__mptr___3 + 0xfffffffffffffed0UL)->rsrc_inode = inode;
  igrab(dir);
  hlist_add_fake(& inode->i_hash);
  mark_inode_dirty(inode);
  out:
  d_add(dentry, inode);
  return (0);
}
}
void hfs_evict_inode(struct inode *inode )
{
  struct inode const *__mptr ;
  struct inode const *__mptr___0 ;
  struct inode const *__mptr___1 ;
  struct inode const *__mptr___2 ;
  struct inode const *__mptr___3 ;
  {
  truncate_inode_pages(& inode->i_data, 0LL);
  clear_inode(inode);
  __mptr___2 = (struct inode const *)inode;
  if ((int )((struct hfs_inode_info *)__mptr___2 + 0xfffffffffffffed0UL)->flags & 1) {
    __mptr___3 = (struct inode const *)inode;
    if ((unsigned long )((struct hfs_inode_info *)__mptr___3 + 0xfffffffffffffed0UL)->rsrc_inode != (unsigned long )((struct inode *)0)) {
      __mptr___0 = (struct inode const *)inode;
      __mptr = (struct inode const *)((struct hfs_inode_info *)__mptr___0 + 0xfffffffffffffed0UL)->rsrc_inode;
      ((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->rsrc_inode = 0;
      __mptr___1 = (struct inode const *)inode;
      iput(((struct hfs_inode_info *)__mptr___1 + 0xfffffffffffffed0UL)->rsrc_inode);
    } else {
    }
  } else {
  }
  return;
}
}
static int hfs_file_open(struct inode *inode , struct file *file )
{
  struct inode const *__mptr ;
  struct inode const *__mptr___0 ;
  struct inode const *__mptr___1 ;
  {
  __mptr___0 = (struct inode const *)inode;
  if ((int )((struct hfs_inode_info *)__mptr___0 + 0xfffffffffffffed0UL)->flags & 1) {
    __mptr = (struct inode const *)inode;
    inode = ((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->rsrc_inode;
  } else {
  }
  __mptr___1 = (struct inode const *)inode;
  atomic_inc(& ((struct hfs_inode_info *)__mptr___1 + 0xfffffffffffffed0UL)->opencnt);
  return (0);
}
}
static int hfs_file_release(struct inode *inode , struct file *file )
{
  struct inode const *__mptr ;
  struct inode const *__mptr___0 ;
  struct inode const *__mptr___1 ;
  int tmp ;
  {
  __mptr___0 = (struct inode const *)inode;
  if ((int )((struct hfs_inode_info *)__mptr___0 + 0xfffffffffffffed0UL)->flags & 1) {
    __mptr = (struct inode const *)inode;
    inode = ((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->rsrc_inode;
  } else {
  }
  __mptr___1 = (struct inode const *)inode;
  tmp = atomic_dec_and_test(& ((struct hfs_inode_info *)__mptr___1 + 0xfffffffffffffed0UL)->opencnt);
  if (tmp != 0) {
    ldv_mutex_lock_73(& inode->i_mutex);
    hfs_file_truncate(inode);
    ldv_mutex_unlock_74(& inode->i_mutex);
  } else {
  }
  return (0);
}
}
int hfs_inode_setattr(struct dentry *dentry , struct iattr *attr )
{
  struct inode *inode ;
  struct hfs_sb_info *hsb ;
  int error ;
  bool tmp ;
  int tmp___0 ;
  bool tmp___1 ;
  int tmp___2 ;
  loff_t tmp___3 ;
  {
  inode = dentry->d_inode;
  hsb = (struct hfs_sb_info *)(inode->i_sb)->s_fs_info;
  error = inode_change_ok((struct inode const *)inode, attr);
  if (error != 0) {
    return (error);
  } else {
  }
  if ((attr->ia_valid & 2U) != 0U) {
    tmp = uid_eq(attr->ia_uid, hsb->s_uid);
    if (tmp) {
      tmp___0 = 0;
    } else {
      tmp___0 = 1;
    }
    if (tmp___0) {
      return (hsb->s_quiet == 0 ? error : 0);
    } else {
      goto _L___0;
    }
  } else
  _L___0:
  if ((attr->ia_valid & 4U) != 0U) {
    tmp___1 = gid_eq(attr->ia_gid, hsb->s_gid);
    if (tmp___1) {
      tmp___2 = 0;
    } else {
      tmp___2 = 1;
    }
    if (tmp___2) {
      return (hsb->s_quiet == 0 ? error : 0);
    } else {
      goto _L;
    }
  } else
  _L:
  if ((int )attr->ia_valid & 1 && ((((int )inode->i_mode & 61440) == 16384 && (int )attr->ia_mode != (int )inode->i_mode) || ((int )attr->ia_mode & -49664) != 0)) {
    return (hsb->s_quiet == 0 ? error : 0);
  } else {
  }
  if ((int )attr->ia_valid & 1) {
    if (((int )attr->ia_mode & 128) != 0) {
      attr->ia_mode = (umode_t )((unsigned int )inode->i_mode | 146U);
    } else {
      attr->ia_mode = (unsigned int )inode->i_mode & 65389U;
    }
    attr->ia_mode = (umode_t )((int )((short )attr->ia_mode) & (((int )inode->i_mode & 61440) == 16384 ? ~ ((int )((short )hsb->s_dir_umask)) : ~ ((int )((short )hsb->s_file_umask))));
  } else {
  }
  if ((attr->ia_valid & 8U) != 0U) {
    tmp___3 = i_size_read((struct inode const *)inode);
    if (attr->ia_size != tmp___3) {
      inode_dio_wait(inode);
      error = inode_newsize_ok((struct inode const *)inode, attr->ia_size);
      if (error != 0) {
        return (error);
      } else {
      }
      truncate_setsize(inode, attr->ia_size);
      hfs_file_truncate(inode);
    } else {
    }
  } else {
  }
  setattr_copy(inode, (struct iattr const *)attr);
  mark_inode_dirty(inode);
  return (0);
}
}
static int hfs_file_fsync(struct file *filp , loff_t start , loff_t end , int datasync )
{
  struct inode *inode ;
  struct super_block *sb ;
  int ret ;
  int err ;
  {
  inode = (filp->f_mapping)->host;
  ret = filemap_write_and_wait_range(inode->i_mapping, start, end);
  if (ret != 0) {
    return (ret);
  } else {
  }
  ldv_mutex_lock_75(& inode->i_mutex);
  ret = write_inode_now(inode, 0);
  sb = inode->i_sb;
  flush_delayed_work(& ((struct hfs_sb_info *)sb->s_fs_info)->mdb_work);
  err = sync_blockdev(sb->s_bdev);
  if (ret == 0) {
    ret = err;
  } else {
  }
  ldv_mutex_unlock_76(& inode->i_mutex);
  return (ret);
}
}
static struct file_operations const hfs_file_operations =
     {0, & generic_file_llseek, & do_sync_read, & do_sync_write, & generic_file_aio_read,
    & generic_file_aio_write, 0, 0, 0, 0, & generic_file_mmap, & hfs_file_open, 0,
    & hfs_file_release, & hfs_file_fsync, 0, 0, 0, 0, 0, 0, 0, 0, & generic_file_splice_read,
    0, 0, 0};
static struct inode_operations const hfs_file_inode_operations =
     {& hfs_file_lookup, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, & hfs_inode_setattr,
    0, & hfs_setxattr, & hfs_getxattr, & hfs_listxattr, 0, 0, 0, 0};
extern void ldv_check_return_value(int ) ;
void ldv_main8_sequence_infinite_withcheck_stateful(void)
{
  struct file *var_group1 ;
  struct page *var_group2 ;
  struct writeback_control *var_group3 ;
  struct address_space *var_group4 ;
  loff_t var_hfs_write_begin_3_p2 ;
  unsigned int var_hfs_write_begin_3_p3 ;
  unsigned int var_hfs_write_begin_3_p4 ;
  struct page **var_hfs_write_begin_3_p5 ;
  void **var_hfs_write_begin_3_p6 ;
  sector_t var_hfs_bmap_4_p1 ;
  gfp_t var_hfs_releasepage_5_p1 ;
  int var_hfs_direct_IO_6_p0 ;
  struct kiocb *var_group5 ;
  struct iovec const *var_hfs_direct_IO_6_p2 ;
  loff_t var_hfs_direct_IO_6_p3 ;
  unsigned long var_hfs_direct_IO_6_p4 ;
  loff_t var_hfs_file_fsync_21_p1 ;
  loff_t var_hfs_file_fsync_21_p2 ;
  int var_hfs_file_fsync_21_p3 ;
  struct inode *var_group6 ;
  int res_hfs_file_open_18 ;
  struct dentry *var_group7 ;
  unsigned int var_hfs_file_lookup_16_p2 ;
  struct iattr *var_group8 ;
  int ldv_s_hfs_file_operations_file_operations ;
  int tmp ;
  int tmp___0 ;
  {
  ldv_s_hfs_file_operations_file_operations = 0;
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_26159;
  ldv_26158:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_handler_precall();
  hfs_readpage(var_group1, var_group2);
  goto ldv_26140;
  case 1:
  ldv_handler_precall();
  hfs_writepage(var_group2, var_group3);
  goto ldv_26140;
  case 2:
  ldv_handler_precall();
  hfs_write_begin(var_group1, var_group4, var_hfs_write_begin_3_p2, var_hfs_write_begin_3_p3,
                  var_hfs_write_begin_3_p4, var_hfs_write_begin_3_p5, var_hfs_write_begin_3_p6);
  goto ldv_26140;
  case 3:
  ldv_handler_precall();
  hfs_bmap(var_group4, var_hfs_bmap_4_p1);
  goto ldv_26140;
  case 4:
  ldv_handler_precall();
  hfs_releasepage(var_group2, var_hfs_releasepage_5_p1);
  goto ldv_26140;
  case 5:
  ldv_handler_precall();
  hfs_readpage(var_group1, var_group2);
  goto ldv_26140;
  case 6:
  ldv_handler_precall();
  hfs_writepage(var_group2, var_group3);
  goto ldv_26140;
  case 7:
  ldv_handler_precall();
  hfs_write_begin(var_group1, var_group4, var_hfs_write_begin_3_p2, var_hfs_write_begin_3_p3,
                  var_hfs_write_begin_3_p4, var_hfs_write_begin_3_p5, var_hfs_write_begin_3_p6);
  goto ldv_26140;
  case 8:
  ldv_handler_precall();
  hfs_bmap(var_group4, var_hfs_bmap_4_p1);
  goto ldv_26140;
  case 9:
  ldv_handler_precall();
  hfs_direct_IO(var_hfs_direct_IO_6_p0, var_group5, var_hfs_direct_IO_6_p2, var_hfs_direct_IO_6_p3,
                var_hfs_direct_IO_6_p4);
  goto ldv_26140;
  case 10:
  ldv_handler_precall();
  hfs_writepages(var_group4, var_group3);
  goto ldv_26140;
  case 11: ;
  if (ldv_s_hfs_file_operations_file_operations == 0) {
    ldv_handler_precall();
    res_hfs_file_open_18 = hfs_file_open(var_group6, var_group1);
    ldv_check_return_value(res_hfs_file_open_18);
    if (res_hfs_file_open_18 != 0) {
      goto ldv_module_exit;
    } else {
    }
    ldv_s_hfs_file_operations_file_operations = ldv_s_hfs_file_operations_file_operations + 1;
  } else {
  }
  goto ldv_26140;
  case 12: ;
  if (ldv_s_hfs_file_operations_file_operations == 1) {
    ldv_handler_precall();
    hfs_file_release(var_group6, var_group1);
    ldv_s_hfs_file_operations_file_operations = 0;
  } else {
  }
  goto ldv_26140;
  case 13:
  ldv_handler_precall();
  hfs_file_fsync(var_group1, var_hfs_file_fsync_21_p1, var_hfs_file_fsync_21_p2, var_hfs_file_fsync_21_p3);
  goto ldv_26140;
  case 14:
  ldv_handler_precall();
  hfs_file_lookup(var_group6, var_group7, var_hfs_file_lookup_16_p2);
  goto ldv_26140;
  case 15:
  ldv_handler_precall();
  hfs_inode_setattr(var_group7, var_group8);
  goto ldv_26140;
  default: ;
  goto ldv_26140;
  }
  ldv_26140: ;
  ldv_26159:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0 || ldv_s_hfs_file_operations_file_operations != 0) {
    goto ldv_26158;
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
  ldv_mutex_lock_cred_guard_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_70(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_cred_guard_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
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
  ldv_mutex_lock_i_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_74(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_75(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_i_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_76(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_i_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern char *strcpy(char * , char const * ) ;
void ldv_mutex_unlock_86(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_85(struct mutex *ldv_func_arg1 ) ;
int hfs_setxattr(struct dentry *dentry , char const *name , void const *value ,
                 size_t size , int flags )
{
  struct inode *inode ;
  struct hfs_find_data fd ;
  hfs_cat_rec rec ;
  struct hfs_cat_file *file ;
  int res ;
  struct inode const *__mptr ;
  struct inode const *__mptr___0 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  int tmp ;
  int tmp___0 ;
  {
  inode = dentry->d_inode;
  if (((int )inode->i_mode & 61440) != 32768) {
    return (-95);
  } else {
    __mptr = (struct inode const *)inode;
    if ((int )((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->flags & 1) {
      return (-95);
    } else {
    }
  }
  res = hfs_find_init(((struct hfs_sb_info *)(inode->i_sb)->s_fs_info)->cat_tree,
                      & fd);
  if (res != 0) {
    return (res);
  } else {
  }
  __mptr___0 = (struct inode const *)inode;
  (fd.search_key)->cat = ((struct hfs_inode_info *)__mptr___0 + 0xfffffffffffffed0UL)->cat_key;
  res = hfs_brec_find(& fd);
  if (res != 0) {
    goto out;
  } else {
  }
  hfs_bnode_read(fd.bnode, (void *)(& rec), fd.entryoffset, 102);
  file = & rec.file;
  tmp___0 = strcmp(name, "hfs.type");
  if (tmp___0 == 0) {
    if (size == 4UL) {
      __len = 4UL;
      if (__len > 63UL) {
        __ret = memcpy((void *)(& file->UsrWds.fdType), value, __len);
      } else {
        __ret = __builtin_memcpy((void *)(& file->UsrWds.fdType), value, __len);
      }
    } else {
      res = -34;
    }
  } else {
    tmp = strcmp(name, "hfs.creator");
    if (tmp == 0) {
      if (size == 4UL) {
        __len___0 = 4UL;
        if (__len___0 > 63UL) {
          __ret___0 = memcpy((void *)(& file->UsrWds.fdCreator), value, __len___0);
        } else {
          __ret___0 = __builtin_memcpy((void *)(& file->UsrWds.fdCreator), value,
                                       __len___0);
        }
      } else {
        res = -34;
      }
    } else {
      res = -95;
    }
  }
  if (res == 0) {
    hfs_bnode_write(fd.bnode, (void *)(& rec), fd.entryoffset, 102);
  } else {
  }
  out:
  hfs_find_exit(& fd);
  return (res);
}
}
ssize_t hfs_getxattr(struct dentry *dentry , char const *name , void *value , size_t size )
{
  struct inode *inode ;
  struct hfs_find_data fd ;
  hfs_cat_rec rec ;
  struct hfs_cat_file *file ;
  ssize_t res ;
  struct inode const *__mptr ;
  int tmp ;
  struct inode const *__mptr___0 ;
  int tmp___0 ;
  size_t __len ;
  void *__ret ;
  size_t __len___0 ;
  void *__ret___0 ;
  int tmp___1 ;
  int tmp___2 ;
  {
  inode = dentry->d_inode;
  res = 0L;
  if (((int )inode->i_mode & 61440) != 32768) {
    return (-95L);
  } else {
    __mptr = (struct inode const *)inode;
    if ((int )((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->flags & 1) {
      return (-95L);
    } else {
    }
  }
  if (size != 0UL) {
    tmp = hfs_find_init(((struct hfs_sb_info *)(inode->i_sb)->s_fs_info)->cat_tree,
                        & fd);
    res = (ssize_t )tmp;
    if (res != 0L) {
      return (res);
    } else {
    }
    __mptr___0 = (struct inode const *)inode;
    (fd.search_key)->cat = ((struct hfs_inode_info *)__mptr___0 + 0xfffffffffffffed0UL)->cat_key;
    tmp___0 = hfs_brec_find(& fd);
    res = (ssize_t )tmp___0;
    if (res != 0L) {
      goto out;
    } else {
    }
    hfs_bnode_read(fd.bnode, (void *)(& rec), fd.entryoffset, 102);
  } else {
  }
  file = & rec.file;
  tmp___2 = strcmp(name, "hfs.type");
  if (tmp___2 == 0) {
    if (size > 3UL) {
      __len = 4UL;
      if (__len > 63UL) {
        __ret = memcpy(value, (void const *)(& file->UsrWds.fdType), __len);
      } else {
        __ret = __builtin_memcpy(value, (void const *)(& file->UsrWds.fdType), __len);
      }
      res = 4L;
    } else {
      res = size != 0UL ? -34L : 4L;
    }
  } else {
    tmp___1 = strcmp(name, "hfs.creator");
    if (tmp___1 == 0) {
      if (size > 3UL) {
        __len___0 = 4UL;
        if (__len___0 > 63UL) {
          __ret___0 = memcpy(value, (void const *)(& file->UsrWds.fdCreator),
                               __len___0);
        } else {
          __ret___0 = __builtin_memcpy(value, (void const *)(& file->UsrWds.fdCreator),
                                       __len___0);
        }
        res = 4L;
      } else {
        res = size != 0UL ? -34L : 4L;
      }
    } else {
      res = -61L;
    }
  }
  out: ;
  if (size != 0UL) {
    hfs_find_exit(& fd);
  } else {
  }
  return (res);
}
}
ssize_t hfs_listxattr(struct dentry *dentry , char *buffer , size_t size )
{
  struct inode *inode ;
  struct inode const *__mptr ;
  {
  inode = dentry->d_inode;
  if (((int )inode->i_mode & 61440) != 32768) {
    return (-95L);
  } else {
    __mptr = (struct inode const *)inode;
    if ((int )((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->flags & 1) {
      return (-95L);
    } else {
    }
  }
  if ((unsigned long )buffer == (unsigned long )((char *)0) || size == 0UL) {
    return (21L);
  } else {
  }
  if (size <= 20UL) {
    return (-34L);
  } else {
  }
  strcpy(buffer, "hfs.type");
  strcpy(buffer + 9UL, "hfs.creator");
  return (21L);
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
__inline static int test_and_clear_bit(int nr , unsigned long volatile *addr )
{
  int oldbit ;
  {
  __asm__ volatile (".pushsection .smp_locks,\"a\"\n.balign 4\n.long 671f - .\n.popsection\n671:\n\tlock; btr %2,%1\n\tsbb %0,%0": "=r" (oldbit),
                       "+m" (*((long volatile *)addr)): "Ir" (nr): "memory");
  return (oldbit);
}
}
__inline static void be32_add_cpu(__be32 *var , u32 val )
{
  __u32 tmp ;
  __u32 tmp___0 ;
  {
  tmp = __fswab32(*var);
  tmp___0 = __fswab32(tmp + val);
  *var = tmp___0;
  return;
}
}
int ldv_mutex_trylock_92(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_90(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_93(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_89(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_91(struct mutex *ldv_func_arg1 ) ;
extern int ioctl_by_bdev(struct block_device * , unsigned int , unsigned long ) ;
extern int sb_set_blocksize(struct super_block * , int ) ;
extern int sb_min_blocksize(struct super_block * , int ) ;
extern unsigned long __get_free_pages(gfp_t , unsigned int ) ;
extern void free_pages(unsigned long , unsigned int ) ;
extern void unload_nls(struct nls_table * ) ;
extern void mark_buffer_dirty(struct buffer_head * ) ;
extern void __brelse(struct buffer_head * ) ;
extern struct buffer_head *__bread(struct block_device * , sector_t , unsigned int ) ;
extern void unlock_buffer(struct buffer_head * ) ;
extern void __lock_buffer(struct buffer_head * ) ;
extern int sync_dirty_buffer(struct buffer_head * ) ;
__inline static void brelse(struct buffer_head *bh )
{
  {
  if ((unsigned long )bh != (unsigned long )((struct buffer_head *)0)) {
    __brelse(bh);
  } else {
  }
  return;
}
}
__inline static struct buffer_head *sb_bread(struct super_block *sb , sector_t block )
{
  struct buffer_head *tmp ;
  {
  tmp = __bread(sb->s_bdev, block, (unsigned int )sb->s_blocksize);
  return (tmp);
}
}
__inline static int trylock_buffer(struct buffer_head *bh )
{
  int tmp ;
  long tmp___0 ;
  {
  tmp = test_and_set_bit_lock(2, (unsigned long volatile *)(& bh->b_state));
  tmp___0 = ldv__builtin_expect(tmp == 0, 1L);
  return ((int )tmp___0);
}
}
__inline static void lock_buffer(struct buffer_head *bh )
{
  int tmp ;
  {
  __might_sleep("include/linux/buffer_head.h", 333, 0);
  tmp = trylock_buffer(bh);
  if (tmp == 0) {
    __lock_buffer(bh);
  } else {
  }
  return;
}
}
int hfs_mdb_get(struct super_block *sb ) ;
void hfs_mdb_commit(struct super_block *sb ) ;
void hfs_mdb_close(struct super_block *sb ) ;
void hfs_mdb_put(struct super_block *sb ) ;
int hfs_part_find(struct super_block *sb , sector_t *part_start , sector_t *part_size ) ;
static int hfs_get_last_session(struct super_block *sb , sector_t *start , sector_t *size )
{
  struct cdrom_multisession ms_info ;
  struct cdrom_tocentry te ;
  int res ;
  {
  *start = 0UL;
  *size = (sector_t )(((sb->s_bdev)->bd_inode)->i_size >> 9);
  if (((struct hfs_sb_info *)sb->s_fs_info)->session >= 0) {
    te.cdte_track = (__u8 )((struct hfs_sb_info *)sb->s_fs_info)->session;
    te.cdte_format = 1U;
    res = ioctl_by_bdev(sb->s_bdev, 21254U, (unsigned long )(& te));
    if (res == 0 && ((int )te.cdte_ctrl & 4) != 0) {
      *start = (unsigned long )te.cdte_addr.lba << 2;
      return (0);
    } else {
    }
    printk("\vhfs: invalid session number or type of track\n");
    return (-22);
  } else {
  }
  ms_info.addr_format = 1U;
  res = ioctl_by_bdev(sb->s_bdev, 21264U, (unsigned long )(& ms_info));
  if (res == 0 && (unsigned int )ms_info.xa_flag != 0U) {
    *start = (unsigned long )ms_info.addr.lba << 2;
  } else {
  }
  return (0);
}
}
int hfs_mdb_get(struct super_block *sb )
{
  struct buffer_head *bh ;
  struct hfs_mdb *mdb ;
  struct hfs_mdb *mdb2 ;
  unsigned int block ;
  char *ptr ;
  int off2 ;
  int len ;
  int size ;
  int sect ;
  sector_t part_start ;
  sector_t part_size ;
  loff_t off ;
  __be16 attrib ;
  int tmp ;
  struct buffer_head *__bh ;
  sector_t __block ;
  loff_t __start ;
  int __offset ;
  long tmp___0 ;
  int tmp___1 ;
  __u32 tmp___2 ;
  u32 _min1 ;
  unsigned int _min2 ;
  __u16 tmp___3 ;
  int tmp___4 ;
  struct buffer_head *__bh___0 ;
  sector_t __block___0 ;
  loff_t __start___0 ;
  int __offset___0 ;
  long tmp___5 ;
  __u16 tmp___6 ;
  __u32 tmp___7 ;
  __u16 tmp___8 ;
  __u16 tmp___9 ;
  __u32 tmp___10 ;
  __u16 tmp___11 ;
  __u16 tmp___12 ;
  __u32 tmp___13 ;
  __u32 tmp___14 ;
  struct buffer_head *__bh___1 ;
  sector_t __block___1 ;
  loff_t __start___1 ;
  int __offset___1 ;
  long tmp___15 ;
  unsigned long tmp___16 ;
  __u16 tmp___17 ;
  int _min1___0 ;
  int _min2___0 ;
  size_t __len ;
  void *__ret ;
  unsigned long tmp___18 ;
  __u32 tmp___19 ;
  {
  size = sb_min_blocksize(sb, 512);
  if (size == 0) {
    return (-22);
  } else {
  }
  tmp = hfs_get_last_session(sb, & part_start, & part_size);
  if (tmp != 0) {
    return (-22);
  } else {
  }
  ldv_23912:
  __start = (long long )(part_start + 2UL) << 9;
  __block = (sector_t )(__start >> (int )sb->s_blocksize_bits);
  __offset = (int )(((unsigned int )sb->s_blocksize - 1U) & (unsigned int )__start);
  __bh = sb_bread(sb, __block);
  tmp___0 = ldv__builtin_expect((unsigned long )__bh != (unsigned long )((struct buffer_head *)0),
                             1L);
  if (tmp___0 != 0L) {
    mdb = (struct hfs_mdb *)__bh->b_data + (unsigned long )__offset;
  } else {
    mdb = 0;
  }
  bh = __bh;
  if ((unsigned long )bh == (unsigned long )((struct buffer_head *)0)) {
    goto out;
  } else {
  }
  if ((unsigned int )mdb->drSigWord == 17474U) {
    goto ldv_23911;
  } else {
  }
  brelse(bh);
  tmp___1 = hfs_part_find(sb, & part_start, & part_size);
  if (tmp___1 != 0) {
    goto out;
  } else {
  }
  goto ldv_23912;
  ldv_23911:
  tmp___2 = __fswab32(mdb->drAlBlkSiz);
  size = (int )tmp___2;
  ((struct hfs_sb_info *)sb->s_fs_info)->alloc_blksz = (u32 )size;
  if (size == 0 || (size & 511) != 0) {
    printk("\vhfs: bad allocation block size %d\n", size);
    goto out_bh;
  } else {
  }
  _min1 = ((struct hfs_sb_info *)sb->s_fs_info)->alloc_blksz;
  _min2 = 4096U;
  size = (int )(_min1 < _min2 ? _min1 : _min2);
  goto ldv_23918;
  ldv_23917:
  size = size + -512;
  ldv_23918: ;
  if (((size + -1) & size) != 0) {
    goto ldv_23917;
  } else {
  }
  tmp___3 = __fswab16((int )mdb->drAlBlSt);
  sect = (int )((unsigned int )tmp___3 + (unsigned int )part_start);
  goto ldv_23921;
  ldv_23920:
  size = size >> 1;
  ldv_23921: ;
  if ((((size + -1) >> 9) & sect) != 0) {
    goto ldv_23920;
  } else {
  }
  goto ldv_23924;
  ldv_23923:
  size = size >> 1;
  ldv_23924: ;
  if ((((struct hfs_sb_info *)sb->s_fs_info)->alloc_blksz & (u32 )(size + -1)) != 0U) {
    goto ldv_23923;
  } else {
  }
  brelse(bh);
  tmp___4 = sb_set_blocksize(sb, size);
  if (tmp___4 == 0) {
    printk("\vhfs: unable to set blocksize to %u\n", size);
    goto out;
  } else {
  }
  __start___0 = (long long )(part_start + 2UL) << 9;
  __block___0 = (sector_t )(__start___0 >> (int )sb->s_blocksize_bits);
  __offset___0 = (int )(((unsigned int )sb->s_blocksize - 1U) & (unsigned int )__start___0);
  __bh___0 = sb_bread(sb, __block___0);
  tmp___5 = ldv__builtin_expect((unsigned long )__bh___0 != (unsigned long )((struct buffer_head *)0),
                             1L);
  if (tmp___5 != 0L) {
    mdb = (struct hfs_mdb *)__bh___0->b_data + (unsigned long )__offset___0;
  } else {
    mdb = 0;
  }
  bh = __bh___0;
  if ((unsigned long )bh == (unsigned long )((struct buffer_head *)0)) {
    goto out;
  } else {
  }
  if ((unsigned int )mdb->drSigWord != 17474U) {
    goto out_bh;
  } else {
  }
  ((struct hfs_sb_info *)sb->s_fs_info)->mdb_bh = bh;
  ((struct hfs_sb_info *)sb->s_fs_info)->mdb = mdb;
  ((struct hfs_sb_info *)sb->s_fs_info)->part_start = (u32 )part_start;
  tmp___6 = __fswab16((int )mdb->drNmAlBlks);
  ((struct hfs_sb_info *)sb->s_fs_info)->fs_ablocks = tmp___6;
  ((struct hfs_sb_info *)sb->s_fs_info)->fs_div = (int )(((struct hfs_sb_info *)sb->s_fs_info)->alloc_blksz >> (int )sb->s_blocksize_bits);
  tmp___7 = __fswab32(mdb->drClpSiz);
  ((struct hfs_sb_info *)sb->s_fs_info)->clumpablks = tmp___7 / ((struct hfs_sb_info *)sb->s_fs_info)->alloc_blksz;
  if (((struct hfs_sb_info *)sb->s_fs_info)->clumpablks == 0U) {
    ((struct hfs_sb_info *)sb->s_fs_info)->clumpablks = 1U;
  } else {
  }
  tmp___8 = __fswab16((int )mdb->drAlBlSt);
  ((struct hfs_sb_info *)sb->s_fs_info)->fs_start = (u32 )(((sector_t )tmp___8 + part_start) >> ((int )sb->s_blocksize_bits + -9));
  tmp___9 = __fswab16((int )mdb->drFreeBks);
  ((struct hfs_sb_info *)sb->s_fs_info)->free_ablocks = tmp___9;
  tmp___10 = __fswab32(mdb->drNxtCNID);
  ((struct hfs_sb_info *)sb->s_fs_info)->next_id = tmp___10;
  tmp___11 = __fswab16((int )mdb->drNmFls);
  ((struct hfs_sb_info *)sb->s_fs_info)->root_files = tmp___11;
  tmp___12 = __fswab16((int )mdb->drNmRtDirs);
  ((struct hfs_sb_info *)sb->s_fs_info)->root_dirs = tmp___12;
  tmp___13 = __fswab32(mdb->drFilCnt);
  ((struct hfs_sb_info *)sb->s_fs_info)->file_count = tmp___13;
  tmp___14 = __fswab32(mdb->drDirCnt);
  ((struct hfs_sb_info *)sb->s_fs_info)->folder_count = tmp___14;
  sect = (int )(((unsigned int )part_start + (unsigned int )part_size) - 2U);
  __start___1 = (long long )sect << 9;
  __block___1 = (sector_t )(__start___1 >> (int )sb->s_blocksize_bits);
  __offset___1 = (int )(((unsigned int )sb->s_blocksize - 1U) & (unsigned int )__start___1);
  __bh___1 = sb_bread(sb, __block___1);
  tmp___15 = ldv__builtin_expect((unsigned long )__bh___1 != (unsigned long )((struct buffer_head *)0),
                              1L);
  if (tmp___15 != 0L) {
    mdb2 = (struct hfs_mdb *)__bh___1->b_data + (unsigned long )__offset___1;
  } else {
    mdb2 = 0;
  }
  bh = __bh___1;
  if ((unsigned long )bh != (unsigned long )((struct buffer_head *)0)) {
    if ((unsigned int )mdb2->drSigWord == 17474U) {
      ((struct hfs_sb_info *)sb->s_fs_info)->alt_mdb_bh = bh;
      ((struct hfs_sb_info *)sb->s_fs_info)->alt_mdb = mdb2;
    } else {
      brelse(bh);
    }
  } else {
  }
  if ((unsigned long )((struct hfs_sb_info *)sb->s_fs_info)->alt_mdb == (unsigned long )((struct hfs_mdb *)0)) {
    printk("\fhfs: unable to locate alternate MDB\n");
    printk("\fhfs: continuing without an alternate MDB\n");
  } else {
  }
  tmp___16 = __get_free_pages(208U, 1U);
  ((struct hfs_sb_info *)sb->s_fs_info)->bitmap = (__be32 *)tmp___16;
  if ((unsigned long )((struct hfs_sb_info *)sb->s_fs_info)->bitmap == (unsigned long )((__be32 *)0)) {
    goto out;
  } else {
  }
  tmp___17 = __fswab16((int )mdb->drVBMSt);
  block = (unsigned int )tmp___17 + (unsigned int )part_start;
  off = (long long )block << 9;
  size = ((int )((struct hfs_sb_info *)sb->s_fs_info)->fs_ablocks + 8) / 8;
  ptr = (char *)((struct hfs_sb_info *)sb->s_fs_info)->bitmap;
  goto ldv_23943;
  ldv_23942:
  bh = sb_bread(sb, (sector_t )(off >> (int )sb->s_blocksize_bits));
  if ((unsigned long )bh == (unsigned long )((struct buffer_head *)0)) {
    printk("\vhfs: unable to read volume bitmap\n");
    goto out;
  } else {
  }
  off2 = (int )(((unsigned int )sb->s_blocksize - 1U) & (unsigned int )off);
  _min1___0 = (int )sb->s_blocksize - off2;
  _min2___0 = size;
  len = _min1___0 < _min2___0 ? _min1___0 : _min2___0;
  __len = (size_t )len;
  __ret = __builtin_memcpy((void *)ptr, (void const *)bh->b_data + (unsigned long )off2,
                           __len);
  brelse(bh);
  ptr = ptr + (unsigned long )len;
  off = (loff_t )len + off;
  size = size - len;
  ldv_23943: ;
  if (size != 0) {
    goto ldv_23942;
  } else {
  }
  ((struct hfs_sb_info *)sb->s_fs_info)->ext_tree = hfs_btree_open(sb, 3U, & hfs_ext_keycmp);
  if ((unsigned long )((struct hfs_sb_info *)sb->s_fs_info)->ext_tree == (unsigned long )((struct hfs_btree *)0)) {
    printk("\vhfs: unable to open extent tree\n");
    goto out;
  } else {
  }
  ((struct hfs_sb_info *)sb->s_fs_info)->cat_tree = hfs_btree_open(sb, 4U, & hfs_cat_keycmp);
  if ((unsigned long )((struct hfs_sb_info *)sb->s_fs_info)->cat_tree == (unsigned long )((struct hfs_btree *)0)) {
    printk("\vhfs: unable to open catalog tree\n");
    goto out;
  } else {
  }
  attrib = mdb->drAtrb;
  if (((int )attrib & 1) == 0) {
    printk("\fhfs: filesystem was not cleanly unmounted, running fsck.hfs is recommended.  mounting read-only.\n");
    sb->s_flags = sb->s_flags | 1UL;
  } else {
  }
  if (((int )attrib & 128) != 0) {
    printk("\fhfs: filesystem is marked locked, mounting read-only.\n");
    sb->s_flags = sb->s_flags | 1UL;
  } else {
  }
  if ((sb->s_flags & 1UL) == 0UL) {
    attrib = (unsigned int )attrib & 65534U;
    attrib = (__be16 )((unsigned int )attrib | 8U);
    mdb->drAtrb = attrib;
    be32_add_cpu(& mdb->drWrCnt, 1U);
    tmp___18 = get_seconds();
    tmp___19 = __fswab32(((__u32 )tmp___18 + (__u32 )(sys_tz.tz_minuteswest * -60)) + 2082844800U);
    mdb->drLsMod = tmp___19;
    mark_buffer_dirty(((struct hfs_sb_info *)sb->s_fs_info)->mdb_bh);
    sync_dirty_buffer(((struct hfs_sb_info *)sb->s_fs_info)->mdb_bh);
  } else {
  }
  return (0);
  out_bh:
  brelse(bh);
  out:
  hfs_mdb_put(sb);
  return (-5);
}
}
void hfs_mdb_commit(struct super_block *sb )
{
  struct hfs_mdb *mdb ;
  unsigned long tmp ;
  __u32 tmp___0 ;
  __u16 tmp___1 ;
  __u32 tmp___2 ;
  __u16 tmp___3 ;
  __u16 tmp___4 ;
  __u32 tmp___5 ;
  __u32 tmp___6 ;
  int tmp___7 ;
  size_t __len ;
  void *__ret ;
  int tmp___8 ;
  struct buffer_head *bh ;
  sector_t block ;
  char *ptr ;
  int off ;
  int size ;
  int len ;
  __u16 tmp___9 ;
  int _min1 ;
  int _min2 ;
  size_t __len___0 ;
  void *__ret___0 ;
  int tmp___10 ;
  {
  mdb = ((struct hfs_sb_info *)sb->s_fs_info)->mdb;
  if ((int )sb->s_flags & 1) {
    return;
  } else {
  }
  lock_buffer(((struct hfs_sb_info *)sb->s_fs_info)->mdb_bh);
  tmp___7 = test_and_clear_bit(1, (unsigned long volatile *)(& ((struct hfs_sb_info *)sb->s_fs_info)->flags));
  if (tmp___7 != 0) {
    tmp = get_seconds();
    tmp___0 = __fswab32(((__u32 )tmp + (__u32 )(sys_tz.tz_minuteswest * -60)) + 2082844800U);
    mdb->drLsMod = tmp___0;
    tmp___1 = __fswab16((int )((struct hfs_sb_info *)sb->s_fs_info)->free_ablocks);
    mdb->drFreeBks = tmp___1;
    tmp___2 = __fswab32(((struct hfs_sb_info *)sb->s_fs_info)->next_id);
    mdb->drNxtCNID = tmp___2;
    tmp___3 = __fswab16((int )((struct hfs_sb_info *)sb->s_fs_info)->root_files);
    mdb->drNmFls = tmp___3;
    tmp___4 = __fswab16((int )((struct hfs_sb_info *)sb->s_fs_info)->root_dirs);
    mdb->drNmRtDirs = tmp___4;
    tmp___5 = __fswab32(((struct hfs_sb_info *)sb->s_fs_info)->file_count);
    mdb->drFilCnt = tmp___5;
    tmp___6 = __fswab32(((struct hfs_sb_info *)sb->s_fs_info)->folder_count);
    mdb->drDirCnt = tmp___6;
    mark_buffer_dirty(((struct hfs_sb_info *)sb->s_fs_info)->mdb_bh);
  } else {
  }
  tmp___8 = test_and_clear_bit(2, (unsigned long volatile *)(& ((struct hfs_sb_info *)sb->s_fs_info)->flags));
  if (tmp___8 != 0 && (unsigned long )((struct hfs_sb_info *)sb->s_fs_info)->alt_mdb != (unsigned long )((struct hfs_mdb *)0)) {
    hfs_inode_write_fork((((struct hfs_sb_info *)sb->s_fs_info)->ext_tree)->inode,
                         (struct hfs_extent *)(& mdb->drXTExtRec), & mdb->drXTFlSize,
                         0);
    hfs_inode_write_fork((((struct hfs_sb_info *)sb->s_fs_info)->cat_tree)->inode,
                         (struct hfs_extent *)(& mdb->drCTExtRec), & mdb->drCTFlSize,
                         0);
    lock_buffer(((struct hfs_sb_info *)sb->s_fs_info)->alt_mdb_bh);
    __len = 512UL;
    if (__len > 63UL) {
      __ret = memcpy((void *)((struct hfs_sb_info *)sb->s_fs_info)->alt_mdb, (void const *)((struct hfs_sb_info *)sb->s_fs_info)->mdb,
                       __len);
    } else {
      __ret = __builtin_memcpy((void *)((struct hfs_sb_info *)sb->s_fs_info)->alt_mdb,
                               (void const *)((struct hfs_sb_info *)sb->s_fs_info)->mdb,
                               __len);
    }
    (((struct hfs_sb_info *)sb->s_fs_info)->alt_mdb)->drAtrb = (__be16 )((unsigned int )(((struct hfs_sb_info *)sb->s_fs_info)->alt_mdb)->drAtrb | 1U);
    (((struct hfs_sb_info *)sb->s_fs_info)->alt_mdb)->drAtrb = (unsigned int )(((struct hfs_sb_info *)sb->s_fs_info)->alt_mdb)->drAtrb & 65527U;
    unlock_buffer(((struct hfs_sb_info *)sb->s_fs_info)->alt_mdb_bh);
    mark_buffer_dirty(((struct hfs_sb_info *)sb->s_fs_info)->alt_mdb_bh);
    sync_dirty_buffer(((struct hfs_sb_info *)sb->s_fs_info)->alt_mdb_bh);
  } else {
  }
  tmp___10 = test_and_clear_bit(0, (unsigned long volatile *)(& ((struct hfs_sb_info *)sb->s_fs_info)->flags));
  if (tmp___10 != 0) {
    tmp___9 = __fswab16((int )(((struct hfs_sb_info *)sb->s_fs_info)->mdb)->drVBMSt);
    block = (sector_t )((u32 )tmp___9 + ((struct hfs_sb_info *)sb->s_fs_info)->part_start);
    off = (int )(((unsigned int )block << 9U) & ((unsigned int )sb->s_blocksize - 1U));
    block = block >> ((int )sb->s_blocksize_bits + -9);
    size = ((int )((struct hfs_sb_info *)sb->s_fs_info)->fs_ablocks + 7) / 8;
    ptr = (char *)((struct hfs_sb_info *)sb->s_fs_info)->bitmap;
    goto ldv_23966;
    ldv_23965:
    bh = sb_bread(sb, block);
    if ((unsigned long )bh == (unsigned long )((struct buffer_head *)0)) {
      printk("\vhfs: unable to read volume bitmap\n");
      goto ldv_23958;
    } else {
    }
    _min1 = (int )sb->s_blocksize - off;
    _min2 = size;
    len = _min1 < _min2 ? _min1 : _min2;
    lock_buffer(bh);
    __len___0 = (size_t )len;
    __ret___0 = __builtin_memcpy((void *)bh->b_data + (unsigned long )off, (void const *)ptr,
                                 __len___0);
    unlock_buffer(bh);
    mark_buffer_dirty(bh);
    brelse(bh);
    block = block + 1UL;
    off = 0;
    ptr = ptr + (unsigned long )len;
    size = size - len;
    ldv_23966: ;
    if (size != 0) {
      goto ldv_23965;
    } else {
    }
    ldv_23958: ;
  } else {
  }
  unlock_buffer(((struct hfs_sb_info *)sb->s_fs_info)->mdb_bh);
  return;
}
}
void hfs_mdb_close(struct super_block *sb )
{
  {
  if ((int )sb->s_flags & 1) {
    return;
  } else {
  }
  (((struct hfs_sb_info *)sb->s_fs_info)->mdb)->drAtrb = (__be16 )((unsigned int )(((struct hfs_sb_info *)sb->s_fs_info)->mdb)->drAtrb | 1U);
  (((struct hfs_sb_info *)sb->s_fs_info)->mdb)->drAtrb = (unsigned int )(((struct hfs_sb_info *)sb->s_fs_info)->mdb)->drAtrb & 65527U;
  mark_buffer_dirty(((struct hfs_sb_info *)sb->s_fs_info)->mdb_bh);
  return;
}
}
void hfs_mdb_put(struct super_block *sb )
{
  {
  if ((unsigned long )sb->s_fs_info == (unsigned long )((void *)0)) {
    return;
  } else {
  }
  hfs_btree_close(((struct hfs_sb_info *)sb->s_fs_info)->ext_tree);
  hfs_btree_close(((struct hfs_sb_info *)sb->s_fs_info)->cat_tree);
  brelse(((struct hfs_sb_info *)sb->s_fs_info)->mdb_bh);
  brelse(((struct hfs_sb_info *)sb->s_fs_info)->alt_mdb_bh);
  unload_nls(((struct hfs_sb_info *)sb->s_fs_info)->nls_io);
  unload_nls(((struct hfs_sb_info *)sb->s_fs_info)->nls_disk);
  free_pages((unsigned long )((struct hfs_sb_info *)sb->s_fs_info)->bitmap, 1U);
  kfree((void const *)sb->s_fs_info);
  sb->s_fs_info = 0;
  return;
}
}
void ldv_mutex_lock_89(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_90(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_lock_91(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_92(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_93(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern int memcmp(void const * , void const * , size_t ) ;
void ldv_mutex_unlock_100(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_99(struct mutex *ldv_func_arg1 ) ;
int hfs_part_find(struct super_block *sb , sector_t *part_start , sector_t *part_size )
{
  struct buffer_head *bh ;
  __be16 *data ;
  int i ;
  int size ;
  int res ;
  struct buffer_head *__bh ;
  sector_t __block ;
  loff_t __start ;
  int __offset ;
  long tmp ;
  __u16 tmp___0 ;
  struct old_pmap *pm ;
  struct old_pmap_entry *p ;
  __u32 tmp___1 ;
  __u32 tmp___2 ;
  struct new_pmap *pm___0 ;
  __u32 tmp___3 ;
  __u32 tmp___4 ;
  __u32 tmp___5 ;
  int tmp___6 ;
  struct buffer_head *__bh___0 ;
  sector_t __block___0 ;
  loff_t __start___0 ;
  int __offset___0 ;
  long tmp___7 ;
  {
  res = -2;
  __start = (long long )(*part_start + 1UL) << 9;
  __block = (sector_t )(__start >> (int )sb->s_blocksize_bits);
  __offset = (int )(((unsigned int )sb->s_blocksize - 1U) & (unsigned int )__start);
  __bh = sb_bread(sb, __block);
  tmp = ldv__builtin_expect((unsigned long )__bh != (unsigned long )((struct buffer_head *)0),
                         1L);
  if (tmp != 0L) {
    data = (__be16 *)__bh->b_data + (unsigned long )__offset;
  } else {
    data = 0;
  }
  bh = __bh;
  if ((unsigned long )bh == (unsigned long )((struct buffer_head *)0)) {
    return (-5);
  } else {
  }
  tmp___0 = __fswab16((int )*data);
  switch ((int )tmp___0) {
  case 21587:
  pm = (struct old_pmap *)bh->b_data;
  p = (struct old_pmap_entry *)(& pm->pdEntry);
  size = 42;
  i = 0;
  goto ldv_21909;
  ldv_21908: ;
  if (((p->pdStart != 0U && p->pdSize != 0U) && p->pdFSID == 827541076U) && (((struct hfs_sb_info *)sb->s_fs_info)->part < 0 || ((struct hfs_sb_info *)sb->s_fs_info)->part == i)) {
    tmp___1 = __fswab32(p->pdStart);
    *part_start = *part_start + (sector_t )tmp___1;
    tmp___2 = __fswab32(p->pdSize);
    *part_size = (sector_t )tmp___2;
    res = 0;
  } else {
  }
  p = p + 1;
  i = i + 1;
  ldv_21909: ;
  if (i < size) {
    goto ldv_21908;
  } else {
  }
  goto ldv_21911;
  case 20557:
  pm___0 = (struct new_pmap *)bh->b_data;
  tmp___3 = __fswab32(pm___0->pmMapBlkCnt);
  size = (int )tmp___3;
  i = 0;
  goto ldv_21921;
  ldv_21920:
  tmp___6 = memcmp((void const *)(& pm___0->pmPartType), (void const *)"Apple_HFS",
                   9UL);
  if (tmp___6 == 0 && (((struct hfs_sb_info *)sb->s_fs_info)->part < 0 || ((struct hfs_sb_info *)sb->s_fs_info)->part == i)) {
    tmp___4 = __fswab32(pm___0->pmPyPartStart);
    *part_start = *part_start + (sector_t )tmp___4;
    tmp___5 = __fswab32(pm___0->pmPartBlkCnt);
    *part_size = (sector_t )tmp___5;
    res = 0;
    goto ldv_21914;
  } else {
  }
  brelse(bh);
  i = i + 1;
  __start___0 = (long long )((*part_start + (sector_t )i) + 1UL) << 9;
  __block___0 = (sector_t )(__start___0 >> (int )sb->s_blocksize_bits);
  __offset___0 = (int )(((unsigned int )sb->s_blocksize - 1U) & (unsigned int )__start___0);
  __bh___0 = sb_bread(sb, __block___0);
  tmp___7 = ldv__builtin_expect((unsigned long )__bh___0 != (unsigned long )((struct buffer_head *)0),
                             1L);
  if (tmp___7 != 0L) {
    pm___0 = (struct new_pmap *)__bh___0->b_data + (unsigned long )__offset___0;
  } else {
    pm___0 = 0;
  }
  bh = __bh___0;
  if ((unsigned long )bh == (unsigned long )((struct buffer_head *)0)) {
    return (-5);
  } else {
  }
  if ((unsigned int )pm___0->pmSig != 19792U) {
    goto ldv_21914;
  } else {
  }
  ldv_21921: ;
  if (i < size) {
    goto ldv_21920;
  } else {
  }
  ldv_21914: ;
  goto ldv_21911;
  }
  ldv_21911:
  brelse(bh);
  return (res);
}
}
void ldv_mutex_lock_99(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_100(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_104(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_103(struct mutex *ldv_func_arg1 ) ;
__inline static unsigned long partial_name_hash(unsigned long c , unsigned long prevhash )
{
  {
  return ((((c << 4) + prevhash) + (c >> 4)) * 11UL);
}
}
__inline static unsigned long end_name_hash(unsigned long hash )
{
  {
  return ((unsigned long )((unsigned int )hash));
}
}
int hfs_hash_dentry(struct dentry const *dentry , struct inode const *inode ,
                    struct qstr *this ) ;
int hfs_compare_dentry(struct dentry const *parent , struct inode const *pinode ,
                       struct dentry const *dentry , struct inode const *inode ,
                       unsigned int len , char const *str , struct qstr const *name ) ;
static unsigned char caseorder[256U] =
  { 0U, 1U, 2U, 3U,
        4U, 5U, 6U, 7U,
        8U, 9U, 10U, 11U,
        12U, 13U, 14U, 15U,
        16U, 17U, 18U, 19U,
        20U, 21U, 22U, 23U,
        24U, 25U, 26U, 27U,
        28U, 29U, 30U, 31U,
        32U, 34U, 35U, 40U,
        41U, 42U, 43U, 44U,
        47U, 48U, 49U, 50U,
        51U, 52U, 53U, 54U,
        55U, 56U, 57U, 58U,
        59U, 60U, 61U, 62U,
        63U, 64U, 65U, 66U,
        67U, 68U, 69U, 70U,
        71U, 72U, 87U, 89U,
        93U, 95U, 102U, 104U,
        106U, 108U, 114U, 116U,
        118U, 120U, 122U, 126U,
        140U, 142U, 144U, 146U,
        149U, 151U, 158U, 160U,
        162U, 164U, 167U, 169U,
        170U, 171U, 172U, 173U,
        78U, 72U, 87U, 89U,
        93U, 95U, 102U, 104U,
        106U, 108U, 114U, 116U,
        118U, 120U, 122U, 126U,
        140U, 142U, 144U, 146U,
        149U, 151U, 158U, 160U,
        162U, 164U, 167U, 175U,
        176U, 177U, 178U, 179U,
        74U, 76U, 90U, 96U,
        123U, 127U, 152U, 79U,
        73U, 81U, 74U, 75U,
        76U, 90U, 96U, 99U,
        100U, 101U, 110U, 111U,
        112U, 113U, 123U, 132U,
        133U, 134U, 127U, 128U,
        154U, 155U, 156U, 152U,
        180U, 181U, 182U, 183U,
        184U, 185U, 186U, 148U,
        187U, 188U, 189U, 190U,
        191U, 192U, 77U, 129U,
        193U, 194U, 195U, 196U,
        197U, 198U, 199U, 200U,
        201U, 202U, 203U, 85U,
        138U, 204U, 77U, 129U,
        205U, 206U, 207U, 208U,
        209U, 210U, 211U, 38U,
        39U, 212U, 32U, 73U,
        75U, 128U, 130U, 130U,
        213U, 214U, 36U, 37U,
        45U, 46U, 215U, 216U,
        166U, 217U, 218U, 219U,
        220U, 221U, 222U, 223U,
        224U, 225U, 226U, 227U,
        228U, 229U, 230U, 231U,
        232U, 233U, 234U, 235U,
        236U, 237U, 238U, 239U,
        240U, 241U, 242U, 243U,
        244U, 245U, 246U, 247U,
        248U, 249U, 250U, 251U,
        252U, 253U, 254U, 255U};
int hfs_hash_dentry(struct dentry const *dentry , struct inode const *inode ,
                    struct qstr *this )
{
  unsigned char const *name ;
  unsigned int hash ;
  unsigned int len ;
  unsigned char const *tmp ;
  unsigned long tmp___0 ;
  unsigned long tmp___1 ;
  {
  name = this->name;
  len = this->ldv_12996.ldv_12994.len;
  if (len > 31U) {
    len = 31U;
  } else {
  }
  hash = 0U;
  goto ldv_21885;
  ldv_21884:
  tmp = name;
  name = name + 1;
  tmp___0 = partial_name_hash((unsigned long )caseorder[(int )*tmp], (unsigned long )hash);
  hash = (unsigned int )tmp___0;
  len = len - 1U;
  ldv_21885: ;
  if (len != 0U) {
    goto ldv_21884;
  } else {
  }
  tmp___1 = end_name_hash((unsigned long )hash);
  this->ldv_12996.ldv_12994.hash = (u32 )tmp___1;
  return (0);
}
}
int hfs_strcmp(unsigned char const *s1 , unsigned int len1 , unsigned char const *s2 ,
               unsigned int len2 )
{
  int len ;
  int tmp ;
  unsigned char const *tmp___0 ;
  unsigned char const *tmp___1 ;
  int tmp___2 ;
  {
  len = (int )(len2 < len1 ? len2 : len1);
  goto ldv_21896;
  ldv_21895:
  tmp___0 = s1;
  s1 = s1 + 1;
  tmp___1 = s2;
  s2 = s2 + 1;
  tmp = (int )caseorder[(int )*tmp___0] - (int )caseorder[(int )*tmp___1];
  if (tmp != 0) {
    return (tmp);
  } else {
  }
  ldv_21896:
  tmp___2 = len;
  len = len - 1;
  if (tmp___2 != 0) {
    goto ldv_21895;
  } else {
  }
  return ((int )(len1 - len2));
}
}
int hfs_compare_dentry(struct dentry const *parent , struct inode const *pinode ,
                       struct dentry const *dentry , struct inode const *inode ,
                       unsigned int len , char const *str , struct qstr const *name )
{
  unsigned char const *n1 ;
  unsigned char const *n2 ;
  unsigned char const *tmp ;
  unsigned char const *tmp___0 ;
  unsigned int tmp___1 ;
  {
  if (len > 30U) {
    if ((unsigned int )name->ldv_12996.ldv_12994.len <= 30U) {
      return (1);
    } else {
    }
    len = 31U;
  } else
  if ((unsigned int )name->ldv_12996.ldv_12994.len != len) {
    return (1);
  } else {
  }
  n1 = (unsigned char const *)str;
  n2 = name->name;
  goto ldv_21910;
  ldv_21909:
  tmp = n1;
  n1 = n1 + 1;
  tmp___0 = n2;
  n2 = n2 + 1;
  if ((int )caseorder[(int )*tmp] != (int )caseorder[(int )*tmp___0]) {
    return (1);
  } else {
  }
  ldv_21910:
  tmp___1 = len;
  len = len - 1U;
  if (tmp___1 != 0U) {
    goto ldv_21909;
  } else {
  }
  return (0);
}
}
void ldv_mutex_lock_103(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_104(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_lock(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
extern char *strsep(char ** , char const * ) ;
extern void lockdep_init_map(struct lockdep_map * , char const * , struct lock_class_key * ,
                             int ) ;
int ldv_mutex_trylock_112(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_108(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_110(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_107(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_109(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_111(struct mutex *ldv_func_arg1 ) ;
extern int overflowuid ;
extern int overflowgid ;
extern struct user_namespace init_user_ns ;
__inline static bool uid_valid(kuid_t uid )
{
  bool tmp ;
  int tmp___0 ;
  {
  tmp = uid_eq(uid, 4294967295U);
  if ((int )tmp != 0) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  return ((bool )tmp___0);
}
}
__inline static bool gid_valid(kgid_t gid )
{
  bool tmp ;
  int tmp___0 ;
  {
  tmp = gid_eq(gid, 4294967295U);
  if ((int )tmp != 0) {
    tmp___0 = 0;
  } else {
    tmp___0 = 1;
  }
  return ((bool )tmp___0);
}
}
__inline static kuid_t make_kuid(struct user_namespace *from , uid_t uid )
{
  {
  return (uid);
}
}
__inline static kgid_t make_kgid(struct user_namespace *from , gid_t gid )
{
  {
  return (gid);
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
__inline static gid_t from_kgid(struct user_namespace *to , kgid_t kgid )
{
  gid_t tmp ;
  {
  tmp = __kgid_val(kgid);
  return (tmp);
}
}
__inline static uid_t from_kuid_munged(struct user_namespace *to , kuid_t kuid )
{
  uid_t uid ;
  uid_t tmp ;
  {
  tmp = from_kuid(to, kuid);
  uid = tmp;
  if (uid == 4294967295U) {
    uid = (uid_t )overflowuid;
  } else {
  }
  return (uid);
}
}
__inline static gid_t from_kgid_munged(struct user_namespace *to , kgid_t kgid )
{
  gid_t gid ;
  gid_t tmp ;
  {
  tmp = from_kgid(to, kgid);
  gid = tmp;
  if (gid == 4294967295U) {
    gid = (gid_t )overflowgid;
  } else {
  }
  return (gid);
}
}
extern void call_rcu_sched(struct callback_head * , void (*)(struct callback_head * ) ) ;
extern void rcu_barrier(void) ;
extern unsigned long msecs_to_jiffies(unsigned int const ) ;
extern void init_timer_key(struct timer_list * , unsigned int , char const * ,
                           struct lock_class_key * ) ;
extern void delayed_work_timer_fn(unsigned long ) ;
extern void __init_work(struct work_struct * , int ) ;
extern struct workqueue_struct *system_long_wq ;
extern bool queue_delayed_work(struct workqueue_struct * , struct delayed_work * ,
                               unsigned long ) ;
extern bool cancel_delayed_work_sync(struct delayed_work * ) ;
extern struct module __this_module ;
__inline static u32 new_encode_dev(dev_t dev )
{
  unsigned int major ;
  unsigned int minor ;
  {
  major = dev >> 20;
  minor = dev & 1048575U;
  return (((minor & 255U) | (major << 8)) | ((minor & 4294967040U) << 12));
}
}
__inline static u64 huge_encode_dev(dev_t dev )
{
  u32 tmp ;
  {
  tmp = new_encode_dev(dev);
  return ((u64 )tmp);
}
}
extern struct kmem_cache *kmem_cache_create(char const * , size_t , size_t , unsigned long ,
                                            void (*)(void * ) ) ;
extern void kmem_cache_destroy(struct kmem_cache * ) ;
extern void kmem_cache_free(struct kmem_cache * , void * ) ;
extern void *kmem_cache_alloc(struct kmem_cache * , gfp_t ) ;
extern struct dentry *d_make_root(struct inode * ) ;
extern struct dentry *mount_bdev(struct file_system_type * , int , char const * ,
                                 void * , int (*)(struct super_block * , void * ,
                                                  int ) ) ;
extern void kill_block_super(struct super_block * ) ;
extern int register_filesystem(struct file_system_type * ) ;
extern int unregister_filesystem(struct file_system_type * ) ;
extern void inode_init_once(struct inode * ) ;
extern unsigned int dirty_writeback_interval ;
extern struct nls_table *load_nls(char * ) ;
extern struct nls_table *load_nls_default(void) ;
extern int match_token(char * , struct match_token const * , substring_t * ) ;
extern int match_int(substring_t * , int * ) ;
extern int match_octal(substring_t * , int * ) ;
extern char *match_strdup(substring_t const * ) ;
extern int seq_printf(struct seq_file * , char const * , ...) ;
struct dentry_operations const hfs_dentry_operations ;
__inline static char const *hfs_mdb_name(struct super_block *sb )
{
  {
  return ((char const *)(& sb->s_id));
}
}
static struct kmem_cache *hfs_inode_cachep ;
static int hfs_sync_fs(struct super_block *sb , int wait )
{
  {
  hfs_mdb_commit(sb);
  return (0);
}
}
static void hfs_put_super(struct super_block *sb )
{
  {
  cancel_delayed_work_sync(& ((struct hfs_sb_info *)sb->s_fs_info)->mdb_work);
  hfs_mdb_close(sb);
  hfs_mdb_put(sb);
  return;
}
}
static void flush_mdb(struct work_struct *work )
{
  struct hfs_sb_info *sbi ;
  struct super_block *sb ;
  struct work_struct const *__mptr ;
  {
  __mptr = (struct work_struct const *)work;
  sbi = (struct hfs_sb_info *)__mptr + 0xfffffffffffffea8UL;
  sb = sbi->sb;
  spin_lock(& sbi->work_lock);
  sbi->work_queued = 0;
  spin_unlock(& sbi->work_lock);
  hfs_mdb_commit(sb);
  return;
}
}
void hfs_mark_mdb_dirty(struct super_block *sb )
{
  struct hfs_sb_info *sbi ;
  unsigned long delay ;
  {
  sbi = (struct hfs_sb_info *)sb->s_fs_info;
  if ((int )sb->s_flags & 1) {
    return;
  } else {
  }
  spin_lock(& sbi->work_lock);
  if (sbi->work_queued == 0) {
    delay = msecs_to_jiffies(dirty_writeback_interval * 10U);
    queue_delayed_work(system_long_wq, & sbi->mdb_work, delay);
    sbi->work_queued = 1;
  } else {
  }
  spin_unlock(& sbi->work_lock);
  return;
}
}
static int hfs_statfs(struct dentry *dentry , struct kstatfs *buf )
{
  struct super_block *sb ;
  u64 id ;
  u64 tmp ;
  {
  sb = dentry->d_sb;
  tmp = huge_encode_dev((sb->s_bdev)->bd_dev);
  id = tmp;
  buf->f_type = 16964L;
  buf->f_bsize = (long )sb->s_blocksize;
  buf->f_blocks = (u64 )((unsigned int )((struct hfs_sb_info *)sb->s_fs_info)->fs_ablocks * (unsigned int )((struct hfs_sb_info *)sb->s_fs_info)->fs_div);
  buf->f_bfree = (u64 )((unsigned int )((struct hfs_sb_info *)sb->s_fs_info)->free_ablocks * (unsigned int )((struct hfs_sb_info *)sb->s_fs_info)->fs_div);
  buf->f_bavail = buf->f_bfree;
  buf->f_files = (u64 )((struct hfs_sb_info *)sb->s_fs_info)->fs_ablocks;
  buf->f_ffree = (u64 )((struct hfs_sb_info *)sb->s_fs_info)->free_ablocks;
  buf->f_fsid.val[0] = (int )id;
  buf->f_fsid.val[1] = (int )(id >> 32);
  buf->f_namelen = 31L;
  return (0);
}
}
static int hfs_remount(struct super_block *sb , int *flags , char *data )
{
  {
  *flags = *flags | 2048;
  if ((((unsigned long )*flags ^ sb->s_flags) & 1UL) == 0UL) {
    return (0);
  } else {
  }
  if ((*flags & 1) == 0) {
    if (((int )(((struct hfs_sb_info *)sb->s_fs_info)->mdb)->drAtrb & 1) == 0) {
      printk("\fhfs: filesystem was not cleanly unmounted, running fsck.hfs is recommended.  leaving read-only.\n");
      sb->s_flags = sb->s_flags | 1UL;
      *flags = *flags | 1;
    } else
    if (((int )(((struct hfs_sb_info *)sb->s_fs_info)->mdb)->drAtrb & 128) != 0) {
      printk("\fhfs: filesystem is marked locked, leaving read-only.\n");
      sb->s_flags = sb->s_flags | 1UL;
      *flags = *flags | 1;
    } else {
    }
  } else {
  }
  return (0);
}
}
static int hfs_show_options(struct seq_file *seq , struct dentry *root )
{
  struct hfs_sb_info *sbi ;
  gid_t tmp ;
  uid_t tmp___0 ;
  {
  sbi = (struct hfs_sb_info *)(root->d_sb)->s_fs_info;
  if (sbi->s_creator != 1061109567U) {
    seq_printf(seq, ",creator=%.4s", (char *)(& sbi->s_creator));
  } else {
  }
  if (sbi->s_type != 1061109567U) {
    seq_printf(seq, ",type=%.4s", (char *)(& sbi->s_type));
  } else {
  }
  tmp = from_kgid_munged(& init_user_ns, sbi->s_gid);
  tmp___0 = from_kuid_munged(& init_user_ns, sbi->s_uid);
  seq_printf(seq, ",uid=%u,gid=%u", tmp___0, tmp);
  if ((unsigned int )sbi->s_file_umask != 91U) {
    seq_printf(seq, ",file_umask=%o", (int )sbi->s_file_umask);
  } else {
  }
  if ((unsigned int )sbi->s_dir_umask != 18U) {
    seq_printf(seq, ",dir_umask=%o", (int )sbi->s_dir_umask);
  } else {
  }
  if (sbi->part >= 0) {
    seq_printf(seq, ",part=%u", sbi->part);
  } else {
  }
  if (sbi->session >= 0) {
    seq_printf(seq, ",session=%u", sbi->session);
  } else {
  }
  if ((unsigned long )sbi->nls_disk != (unsigned long )((struct nls_table *)0)) {
    seq_printf(seq, ",codepage=%s", (sbi->nls_disk)->charset);
  } else {
  }
  if ((unsigned long )sbi->nls_io != (unsigned long )((struct nls_table *)0)) {
    seq_printf(seq, ",iocharset=%s", (sbi->nls_io)->charset);
  } else {
  }
  if (sbi->s_quiet != 0) {
    seq_printf(seq, ",quiet");
  } else {
  }
  return (0);
}
}
static struct inode *hfs_alloc_inode(struct super_block *sb )
{
  struct hfs_inode_info *i ;
  void *tmp ;
  {
  tmp = kmem_cache_alloc(hfs_inode_cachep, 208U);
  i = (struct hfs_inode_info *)tmp;
  return ((unsigned long )i != (unsigned long )((struct hfs_inode_info *)0) ? & i->vfs_inode : 0);
}
}
static void hfs_i_callback(struct callback_head *head )
{
  struct inode *inode ;
  struct callback_head const *__mptr ;
  struct inode const *__mptr___0 ;
  {
  __mptr = (struct callback_head const *)head;
  inode = (struct inode *)__mptr + 0xfffffffffffffe28UL;
  __mptr___0 = (struct inode const *)inode;
  kmem_cache_free(hfs_inode_cachep, (void *)((struct hfs_inode_info *)__mptr___0 + 0xfffffffffffffed0UL));
  return;
}
}
static void hfs_destroy_inode(struct inode *inode )
{
  {
  call_rcu_sched(& inode->ldv_14645.i_rcu, & hfs_i_callback);
  return;
}
}
static struct super_operations const hfs_super_operations =
     {& hfs_alloc_inode, & hfs_destroy_inode, 0, & hfs_write_inode, 0, & hfs_evict_inode,
    & hfs_put_super, & hfs_sync_fs, 0, 0, & hfs_statfs, & hfs_remount, 0, & hfs_show_options,
    0, 0, 0, 0, 0, 0, 0, 0};
static struct match_token const tokens[13U] =
  { {0, "uid=%u"},
        {1, "gid=%u"},
        {2, "umask=%o"},
        {3, "file_umask=%o"},
        {4, "dir_umask=%o"},
        {5, "part=%u"},
        {6, "session=%u"},
        {7, "type=%s"},
        {8, "creator=%s"},
        {9, "quiet"},
        {10, "codepage=%s"},
        {11, "iocharset=%s"},
        {12, 0}};
__inline static int match_fourchar(substring_t *arg , u32 *result )
{
  size_t __len ;
  void *__ret ;
  {
  if ((long )arg->to - (long )arg->from != 4L) {
    return (-22);
  } else {
  }
  __len = 4UL;
  if (__len > 63UL) {
    __ret = memcpy((void *)result, (void const *)arg->from, __len);
  } else {
    __ret = __builtin_memcpy((void *)result, (void const *)arg->from, __len);
  }
  return (0);
}
}
static int parse_options(char *options , struct hfs_sb_info *hsb )
{
  char *p ;
  substring_t args[3U] ;
  int tmp ;
  int token ;
  int tmp___0 ;
  struct task_struct *tmp___1 ;
  int tmp___2 ;
  struct task_struct *tmp___3 ;
  __be32 tmp___4 ;
  int tmp___5 ;
  bool tmp___6 ;
  int tmp___7 ;
  int tmp___8 ;
  bool tmp___9 ;
  int tmp___10 ;
  int tmp___11 ;
  int tmp___12 ;
  int tmp___13 ;
  int tmp___14 ;
  int tmp___15 ;
  int tmp___16 ;
  int tmp___17 ;
  {
  tmp___0 = debug_lockdep_rcu_enabled();
  tmp___1 = get_current();
  hsb->s_uid = (tmp___1->cred)->uid;
  tmp___2 = debug_lockdep_rcu_enabled();
  tmp___3 = get_current();
  hsb->s_gid = (tmp___3->cred)->gid;
  hsb->s_file_umask = 91U;
  hsb->s_dir_umask = 18U;
  tmp___4 = 1061109567U;
  hsb->s_creator = tmp___4;
  hsb->s_type = tmp___4;
  hsb->s_quiet = 0;
  hsb->part = -1;
  hsb->session = -1;
  if ((unsigned long )options == (unsigned long )((char *)0)) {
    return (1);
  } else {
  }
  goto ldv_30465;
  ldv_30480: ;
  if ((int )((signed char )*p) == 0) {
    goto ldv_30465;
  } else {
  }
  token = match_token(p, (struct match_token const *)(& tokens), (substring_t *)(& args));
  switch (token) {
  case 0:
  tmp___5 = match_int((substring_t *)(& args), & tmp);
  if (tmp___5 != 0) {
    printk("\vhfs: uid requires an argument\n");
    return (0);
  } else {
  }
  hsb->s_uid = make_kuid(& init_user_ns, (unsigned int )tmp);
  tmp___6 = uid_valid(hsb->s_uid);
  if (tmp___6) {
    tmp___7 = 0;
  } else {
    tmp___7 = 1;
  }
  if (tmp___7) {
    printk("\vhfs: invalid uid %d\n", tmp);
    return (0);
  } else {
  }
  goto ldv_30467;
  case 1:
  tmp___8 = match_int((substring_t *)(& args), & tmp);
  if (tmp___8 != 0) {
    printk("\vhfs: gid requires an argument\n");
    return (0);
  } else {
  }
  hsb->s_gid = make_kgid(& init_user_ns, (unsigned int )tmp);
  tmp___9 = gid_valid(hsb->s_gid);
  if (tmp___9) {
    tmp___10 = 0;
  } else {
    tmp___10 = 1;
  }
  if (tmp___10) {
    printk("\vhfs: invalid gid %d\n", tmp);
    return (0);
  } else {
  }
  goto ldv_30467;
  case 2:
  tmp___11 = match_octal((substring_t *)(& args), & tmp);
  if (tmp___11 != 0) {
    printk("\vhfs: umask requires a value\n");
    return (0);
  } else {
  }
  hsb->s_file_umask = (unsigned short )tmp;
  hsb->s_dir_umask = (unsigned short )tmp;
  goto ldv_30467;
  case 3:
  tmp___12 = match_octal((substring_t *)(& args), & tmp);
  if (tmp___12 != 0) {
    printk("\vhfs: file_umask requires a value\n");
    return (0);
  } else {
  }
  hsb->s_file_umask = (unsigned short )tmp;
  goto ldv_30467;
  case 4:
  tmp___13 = match_octal((substring_t *)(& args), & tmp);
  if (tmp___13 != 0) {
    printk("\vhfs: dir_umask requires a value\n");
    return (0);
  } else {
  }
  hsb->s_dir_umask = (unsigned short )tmp;
  goto ldv_30467;
  case 5:
  tmp___14 = match_int((substring_t *)(& args), & hsb->part);
  if (tmp___14 != 0) {
    printk("\vhfs: part requires an argument\n");
    return (0);
  } else {
  }
  goto ldv_30467;
  case 6:
  tmp___15 = match_int((substring_t *)(& args), & hsb->session);
  if (tmp___15 != 0) {
    printk("\vhfs: session requires an argument\n");
    return (0);
  } else {
  }
  goto ldv_30467;
  case 7:
  tmp___16 = match_fourchar((substring_t *)(& args), & hsb->s_type);
  if (tmp___16 != 0) {
    printk("\vhfs: type requires a 4 character value\n");
    return (0);
  } else {
  }
  goto ldv_30467;
  case 8:
  tmp___17 = match_fourchar((substring_t *)(& args), & hsb->s_creator);
  if (tmp___17 != 0) {
    printk("\vhfs: creator requires a 4 character value\n");
    return (0);
  } else {
  }
  goto ldv_30467;
  case 9:
  hsb->s_quiet = 1;
  goto ldv_30467;
  case 10: ;
  if ((unsigned long )hsb->nls_disk != (unsigned long )((struct nls_table *)0)) {
    printk("\vhfs: unable to change codepage\n");
    return (0);
  } else {
  }
  p = match_strdup((substring_t const *)(& args));
  if ((unsigned long )p != (unsigned long )((char *)0)) {
    hsb->nls_disk = load_nls(p);
  } else {
  }
  if ((unsigned long )hsb->nls_disk == (unsigned long )((struct nls_table *)0)) {
    printk("\vhfs: unable to load codepage \"%s\"\n", p);
    kfree((void const *)p);
    return (0);
  } else {
  }
  kfree((void const *)p);
  goto ldv_30467;
  case 11: ;
  if ((unsigned long )hsb->nls_io != (unsigned long )((struct nls_table *)0)) {
    printk("\vhfs: unable to change iocharset\n");
    return (0);
  } else {
  }
  p = match_strdup((substring_t const *)(& args));
  if ((unsigned long )p != (unsigned long )((char *)0)) {
    hsb->nls_io = load_nls(p);
  } else {
  }
  if ((unsigned long )hsb->nls_io == (unsigned long )((struct nls_table *)0)) {
    printk("\vhfs: unable to load iocharset \"%s\"\n", p);
    kfree((void const *)p);
    return (0);
  } else {
  }
  kfree((void const *)p);
  goto ldv_30467;
  default: ;
  return (0);
  }
  ldv_30467: ;
  ldv_30465:
  p = strsep(& options, ",");
  if ((unsigned long )p != (unsigned long )((char *)0)) {
    goto ldv_30480;
  } else {
  }
  if ((unsigned long )hsb->nls_disk != (unsigned long )((struct nls_table *)0) && (unsigned long )hsb->nls_io == (unsigned long )((struct nls_table *)0)) {
    hsb->nls_io = load_nls_default();
    if ((unsigned long )hsb->nls_io == (unsigned long )((struct nls_table *)0)) {
      printk("\vhfs: unable to load default iocharset\n");
      return (0);
    } else {
    }
  } else {
  }
  hsb->s_dir_umask = (unsigned int )hsb->s_dir_umask & 511U;
  hsb->s_file_umask = (unsigned int )hsb->s_file_umask & 383U;
  return (1);
}
}
static int hfs_fill_super(struct super_block *sb , void *data , int silent )
{
  struct hfs_sb_info *sbi ;
  struct hfs_find_data fd ;
  hfs_cat_rec rec ;
  struct inode *root_inode ;
  int res ;
  void *tmp ;
  struct lock_class_key __key ;
  struct lock_class_key __key___0 ;
  atomic_long_t __constr_expr_0 ;
  struct lock_class_key __key___1 ;
  int tmp___0 ;
  struct lock_class_key __key___2 ;
  char const *tmp___1 ;
  {
  tmp = kzalloc(632UL, 208U);
  sbi = (struct hfs_sb_info *)tmp;
  if ((unsigned long )sbi == (unsigned long )((struct hfs_sb_info *)0)) {
    return (-12);
  } else {
  }
  sbi->sb = sb;
  sb->s_fs_info = (void *)sbi;
  spinlock_check(& sbi->work_lock);
  __raw_spin_lock_init(& sbi->work_lock.ldv_5961.rlock, "&(&sbi->work_lock)->rlock",
                       & __key);
  __init_work(& sbi->mdb_work.work, 0);
  __constr_expr_0.counter = 4195328L;
  sbi->mdb_work.work.data = __constr_expr_0;
  lockdep_init_map(& sbi->mdb_work.work.lockdep_map, "(&(&sbi->mdb_work)->work)",
                   & __key___0, 0);
  INIT_LIST_HEAD(& sbi->mdb_work.work.entry);
  sbi->mdb_work.work.func = & flush_mdb;
  init_timer_key(& sbi->mdb_work.timer, 2U, "(&(&sbi->mdb_work)->timer)", & __key___1);
  sbi->mdb_work.timer.function = & delayed_work_timer_fn;
  sbi->mdb_work.timer.data = (unsigned long )(& sbi->mdb_work);
  res = -22;
  tmp___0 = parse_options((char *)data, sbi);
  if (tmp___0 == 0) {
    printk("\vhfs: unable to parse mount options.\n");
    goto bail;
  } else {
  }
  sb->s_op = & hfs_super_operations;
  sb->s_flags = sb->s_flags | 2048UL;
  __mutex_init(& sbi->bitmap_lock, "&sbi->bitmap_lock", & __key___2);
  res = hfs_mdb_get(sb);
  if (res != 0) {
    if (silent == 0) {
      tmp___1 = hfs_mdb_name(sb);
      printk("\fhfs: can\'t find a HFS filesystem on dev %s.\n", tmp___1);
    } else {
    }
    res = -22;
    goto bail;
  } else {
  }
  hfs_find_init(((struct hfs_sb_info *)sb->s_fs_info)->cat_tree, & fd);
  res = hfs_cat_find_brec(sb, 2U, & fd);
  if (res == 0) {
    if ((unsigned int )fd.entrylength > 102U || fd.entrylength < 0) {
      res = -5;
      goto bail;
    } else {
    }
    hfs_bnode_read(fd.bnode, (void *)(& rec), fd.entryoffset, fd.entrylength);
  } else {
  }
  if (res != 0) {
    hfs_find_exit(& fd);
    goto bail_no_root;
  } else {
  }
  res = -22;
  root_inode = hfs_iget(sb, & (fd.search_key)->cat, & rec);
  hfs_find_exit(& fd);
  if ((unsigned long )root_inode == (unsigned long )((struct inode *)0)) {
    goto bail_no_root;
  } else {
  }
  sb->s_d_op = & hfs_dentry_operations;
  res = -12;
  sb->s_root = d_make_root(root_inode);
  if ((unsigned long )sb->s_root == (unsigned long )((struct dentry *)0)) {
    goto bail_no_root;
  } else {
  }
  return (0);
  bail_no_root:
  printk("\vhfs: get root inode failed.\n");
  bail:
  hfs_mdb_put(sb);
  return (res);
}
}
static struct dentry *hfs_mount(struct file_system_type *fs_type , int flags , char const *dev_name___0 ,
                                void *data )
{
  struct dentry *tmp ;
  {
  tmp = mount_bdev(fs_type, flags, dev_name___0, data, & hfs_fill_super);
  return (tmp);
}
}
static struct file_system_type hfs_fs_type =
     {"hfs", 1, & hfs_mount, & kill_block_super, & __this_module, 0, {0}, {{{(char)0},
                                                                          {(char)0},
                                                                          {(char)0},
                                                                          {(char)0},
                                                                          {(char)0},
                                                                          {(char)0},
                                                                          {(char)0},
                                                                          {(char)0}}},
    {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
      {(char)0}}}, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                     {(char)0}, {(char)0}}}, {{{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}},
                                              {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}},
                                              {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                                {(char)0}, {(char)0}, {(char)0}, {(char)0}}}},
    {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
      {(char)0}}}, {{{(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0}, {(char)0},
                     {(char)0}, {(char)0}}}, {{{(char)0}, {(char)0}, {(char)0}, {(char)0},
                                               {(char)0}, {(char)0}, {(char)0}, {(char)0}}}};
static void hfs_init_once(void *p )
{
  struct hfs_inode_info *i ;
  {
  i = (struct hfs_inode_info *)p;
  inode_init_once(& i->vfs_inode);
  return;
}
}
static int init_hfs_fs(void)
{
  int err ;
  {
  hfs_inode_cachep = kmem_cache_create("hfs_inode_cache", 1336UL, 0UL, 8192UL, & hfs_init_once);
  if ((unsigned long )hfs_inode_cachep == (unsigned long )((struct kmem_cache *)0)) {
    return (-12);
  } else {
  }
  err = register_filesystem(& hfs_fs_type);
  if (err != 0) {
    kmem_cache_destroy(hfs_inode_cachep);
  } else {
  }
  return (err);
}
}
static void exit_hfs_fs(void)
{
  {
  unregister_filesystem(& hfs_fs_type);
  rcu_barrier();
  kmem_cache_destroy(hfs_inode_cachep);
  return;
}
}
void ldv_main13_sequence_infinite_withcheck_stateful(void)
{
  struct super_block *var_group1 ;
  struct inode *var_group2 ;
  int var_hfs_sync_fs_0_p1 ;
  struct dentry *var_group3 ;
  struct kstatfs *var_group4 ;
  int *var_hfs_remount_5_p1 ;
  char *var_hfs_remount_5_p2 ;
  struct seq_file *var_group5 ;
  struct file_system_type *var_group6 ;
  int var_hfs_mount_13_p1 ;
  char const *var_hfs_mount_13_p2 ;
  void *var_hfs_mount_13_p3 ;
  int tmp ;
  int tmp___0 ;
  int tmp___1 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  ldv_handler_precall();
  tmp = init_hfs_fs();
  if (tmp != 0) {
    goto ldv_final;
  } else {
  }
  goto ldv_30567;
  ldv_30566:
  tmp___0 = __VERIFIER_nondet_int();
  switch (tmp___0) {
  case 0:
  ldv_handler_precall();
  hfs_alloc_inode(var_group1);
  goto ldv_30557;
  case 1:
  ldv_handler_precall();
  hfs_destroy_inode(var_group2);
  goto ldv_30557;
  case 2:
  ldv_handler_precall();
  hfs_put_super(var_group1);
  goto ldv_30557;
  case 3:
  ldv_handler_precall();
  hfs_sync_fs(var_group1, var_hfs_sync_fs_0_p1);
  goto ldv_30557;
  case 4:
  ldv_handler_precall();
  hfs_statfs(var_group3, var_group4);
  goto ldv_30557;
  case 5:
  ldv_handler_precall();
  hfs_remount(var_group1, var_hfs_remount_5_p1, var_hfs_remount_5_p2);
  goto ldv_30557;
  case 6:
  ldv_handler_precall();
  hfs_show_options(var_group5, var_group3);
  goto ldv_30557;
  case 7:
  ldv_handler_precall();
  hfs_mount(var_group6, var_hfs_mount_13_p1, var_hfs_mount_13_p2, var_hfs_mount_13_p3);
  goto ldv_30557;
  default: ;
  goto ldv_30557;
  }
  ldv_30557: ;
  ldv_30567:
  tmp___1 = __VERIFIER_nondet_int();
  if (tmp___1 != 0) {
    goto ldv_30566;
  } else {
  }
  ldv_handler_precall();
  exit_hfs_fs();
  ldv_final:
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
  ldv_mutex_lock_mutex(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
int ldv_mutex_trylock_112(struct mutex *ldv_func_arg1 )
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
void ldv_mutex_unlock_113(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_unlock_mutex(ldv_func_arg1);
  mutex_unlock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_122(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_121(struct mutex *ldv_func_arg1 ) ;
static int hfs_revalidate_dentry(struct dentry *dentry , unsigned int flags )
{
  struct inode *inode ;
  int diff ;
  struct inode const *__mptr ;
  struct inode const *__mptr___0 ;
  {
  if ((flags & 64U) != 0U) {
    return (-10);
  } else {
  }
  inode = dentry->d_inode;
  if ((unsigned long )inode == (unsigned long )((struct inode *)0)) {
    return (1);
  } else {
  }
  __mptr = (struct inode const *)inode;
  diff = sys_tz.tz_minuteswest * 60 - ((struct hfs_inode_info *)__mptr + 0xfffffffffffffed0UL)->tz_secondswest;
  if (diff != 0) {
    inode->i_ctime.tv_sec = inode->i_ctime.tv_sec + (__kernel_time_t )diff;
    inode->i_atime.tv_sec = inode->i_atime.tv_sec + (__kernel_time_t )diff;
    inode->i_mtime.tv_sec = inode->i_mtime.tv_sec + (__kernel_time_t )diff;
    __mptr___0 = (struct inode const *)inode;
    ((struct hfs_inode_info *)__mptr___0 + 0xfffffffffffffed0UL)->tz_secondswest = ((struct hfs_inode_info *)__mptr___0 + 0xfffffffffffffed0UL)->tz_secondswest + diff;
  } else {
  }
  return (1);
}
}
struct dentry_operations const hfs_dentry_operations =
     {& hfs_revalidate_dentry, & hfs_hash_dentry, & hfs_compare_dentry, 0, 0, 0, 0,
    0, 0, 0};
void ldv_main14_sequence_infinite_withcheck_stateful(void)
{
  struct dentry *var_group1 ;
  unsigned int var_hfs_revalidate_dentry_0_p1 ;
  int tmp ;
  int tmp___0 ;
  {
  LDV_IN_INTERRUPT = 1;
  ldv_initialize();
  goto ldv_22000;
  ldv_21999:
  tmp = __VERIFIER_nondet_int();
  switch (tmp) {
  case 0:
  ldv_handler_precall();
  hfs_revalidate_dentry(var_group1, var_hfs_revalidate_dentry_0_p1);
  goto ldv_21997;
  default: ;
  goto ldv_21997;
  }
  ldv_21997: ;
  ldv_22000:
  tmp___0 = __VERIFIER_nondet_int();
  if (tmp___0 != 0) {
    goto ldv_21999;
  } else {
  }
  ldv_check_final_state();
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
void ldv_mutex_unlock_126(struct mutex *ldv_func_arg1 ) ;
void ldv_mutex_lock_125(struct mutex *ldv_func_arg1 ) ;
int hfs_mac2asc(struct super_block *sb , char *out , struct hfs_name const *in )
{
  struct nls_table *nls_disk ;
  struct nls_table *nls_io ;
  char const *src ;
  char *dst ;
  int srclen ;
  int dstlen ;
  int size ;
  wchar_t ch ;
  char const *tmp ;
  char ch___0 ;
  char *tmp___0 ;
  char const *tmp___1 ;
  {
  nls_disk = ((struct hfs_sb_info *)sb->s_fs_info)->nls_disk;
  nls_io = ((struct hfs_sb_info *)sb->s_fs_info)->nls_io;
  src = (char const *)(& in->name);
  srclen = (int )in->len;
  if (srclen > 31) {
    srclen = 31;
  } else {
  }
  dst = out;
  dstlen = 128;
  if ((unsigned long )nls_io != (unsigned long )((struct nls_table *)0)) {
    goto ldv_21964;
    ldv_21963: ;
    if ((unsigned long )nls_disk != (unsigned long )((struct nls_table *)0)) {
      size = (*(nls_disk->char2uni))((unsigned char const *)src, srclen, & ch);
      if (size <= 0) {
        ch = 63U;
        size = 1;
      } else {
      }
      src = src + (unsigned long )size;
      srclen = srclen - size;
    } else {
      tmp = src;
      src = src + 1;
      ch = (wchar_t )*tmp;
      srclen = srclen - 1;
    }
    if ((unsigned int )ch == 47U) {
      ch = 58U;
    } else {
    }
    size = (*(nls_io->uni2char))((int )ch, (unsigned char *)dst, dstlen);
    if (size < 0) {
      if (size == -36) {
        goto out;
      } else {
      }
      *dst = 63;
      size = 1;
    } else {
    }
    dst = dst + (unsigned long )size;
    dstlen = dstlen - size;
    ldv_21964: ;
    if (srclen > 0) {
      goto ldv_21963;
    } else {
    }
  } else {
    goto ldv_21968;
    ldv_21967:
    tmp___0 = dst;
    dst = dst + 1;
    tmp___1 = src;
    src = src + 1;
    ch___0 = *tmp___1;
    *tmp___0 = (int )((signed char )ch___0) != 47 ? ch___0 : 58;
    ldv_21968:
    srclen = srclen - 1;
    if (srclen >= 0) {
      goto ldv_21967;
    } else {
    }
  }
  out: ;
  return ((int )((unsigned int )((long )dst) - (unsigned int )((long )out)));
}
}
void hfs_asc2mac(struct super_block *sb , struct hfs_name *out , struct qstr *in )
{
  struct nls_table *nls_disk ;
  struct nls_table *nls_io ;
  char const *src ;
  char *dst ;
  int srclen ;
  int dstlen ;
  int size ;
  wchar_t ch ;
  char *tmp ;
  char ch___0 ;
  char *tmp___0 ;
  char const *tmp___1 ;
  char *tmp___2 ;
  {
  nls_disk = ((struct hfs_sb_info *)sb->s_fs_info)->nls_disk;
  nls_io = ((struct hfs_sb_info *)sb->s_fs_info)->nls_io;
  src = (char const *)in->name;
  srclen = (int )in->ldv_12996.ldv_12994.len;
  dst = (char *)(& out->name);
  dstlen = 31;
  if ((unsigned long )nls_io != (unsigned long )((struct nls_table *)0)) {
    goto ldv_21985;
    ldv_21984:
    size = (*(nls_io->char2uni))((unsigned char const *)src, srclen, & ch);
    if (size < 0) {
      ch = 63U;
      size = 1;
    } else {
    }
    src = src + (unsigned long )size;
    srclen = srclen - size;
    if ((unsigned int )ch == 58U) {
      ch = 47U;
    } else {
    }
    if ((unsigned long )nls_disk != (unsigned long )((struct nls_table *)0)) {
      size = (*(nls_disk->uni2char))((int )ch, (unsigned char *)dst, dstlen);
      if (size < 0) {
        if (size == -36) {
          goto out;
        } else {
        }
        *dst = 63;
        size = 1;
      } else {
      }
      dst = dst + (unsigned long )size;
      dstlen = dstlen - size;
    } else {
      tmp = dst;
      dst = dst + 1;
      *tmp = (unsigned int )ch <= 255U ? (char )ch : 63;
      dstlen = dstlen - 1;
    }
    ldv_21985: ;
    if (srclen > 0) {
      goto ldv_21984;
    } else {
    }
  } else {
    if (dstlen > srclen) {
      dstlen = srclen;
    } else {
    }
    goto ldv_21989;
    ldv_21988:
    tmp___0 = dst;
    dst = dst + 1;
    tmp___1 = src;
    src = src + 1;
    ch___0 = *tmp___1;
    *tmp___0 = (int )((signed char )ch___0) != 58 ? ch___0 : 47;
    ldv_21989:
    dstlen = dstlen - 1;
    if (dstlen >= 0) {
      goto ldv_21988;
    } else {
    }
  }
  out:
  out->len = (int )((u8 )((long )dst)) - (int )((u8 )((long )(& out->name)));
  dstlen = 31 - (int )out->len;
  goto ldv_21992;
  ldv_21991:
  tmp___2 = dst;
  dst = dst + 1;
  *tmp___2 = 0;
  ldv_21992:
  dstlen = dstlen - 1;
  if (dstlen >= 0) {
    goto ldv_21991;
  } else {
  }
  return;
}
}
void ldv_mutex_lock_125(struct mutex *ldv_func_arg1 )
{
  {
  ldv_mutex_lock_lock(ldv_func_arg1);
  mutex_lock(ldv_func_arg1);
  return;
}
}
void ldv_mutex_unlock_126(struct mutex *ldv_func_arg1 )
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
static int ldv_mutex_bitmap_lock ;
int ldv_mutex_lock_interruptible_bitmap_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_bitmap_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_bitmap_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_bitmap_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_bitmap_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_bitmap_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_bitmap_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_bitmap_lock == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_bitmap_lock = 2;
  return;
}
}
int ldv_mutex_trylock_bitmap_lock(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_bitmap_lock == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_bitmap_lock = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_bitmap_lock(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_bitmap_lock == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_bitmap_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_bitmap_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_bitmap_lock == 1) {
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
void ldv_mutex_unlock_bitmap_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_bitmap_lock == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_bitmap_lock = 1;
  return;
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
static int ldv_mutex_extents_lock ;
int ldv_mutex_lock_interruptible_extents_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_extents_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_extents_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_extents_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_extents_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_extents_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_extents_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_extents_lock == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_extents_lock = 2;
  return;
}
}
int ldv_mutex_trylock_extents_lock(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_extents_lock == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_extents_lock = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_extents_lock(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_extents_lock == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_extents_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_extents_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_extents_lock == 1) {
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
void ldv_mutex_unlock_extents_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_extents_lock == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_extents_lock = 1;
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
static int ldv_mutex_tree_lock ;
int ldv_mutex_lock_interruptible_tree_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_tree_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_tree_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
int ldv_mutex_lock_killable_tree_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_tree_lock == 1) {
  } else {
    ldv_error();
  }
  nondetermined = __VERIFIER_nondet_int();
  if (nondetermined) {
    ldv_mutex_tree_lock = 2;
    return (0);
  } else {
    return (-4);
  }
}
}
void ldv_mutex_lock_tree_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_tree_lock == 1) {
  } else {
    ldv_error();
  }
  ldv_mutex_tree_lock = 2;
  return;
}
}
int ldv_mutex_trylock_tree_lock(struct mutex *lock )
{
  int is_mutex_held_by_another_thread ;
  {
  if (ldv_mutex_tree_lock == 1) {
  } else {
    ldv_error();
  }
  is_mutex_held_by_another_thread = __VERIFIER_nondet_int();
  if (is_mutex_held_by_another_thread) {
    return (0);
  } else {
    ldv_mutex_tree_lock = 2;
    return (1);
  }
}
}
int ldv_atomic_dec_and_mutex_lock_tree_lock(atomic_t *cnt , struct mutex *lock )
{
  int atomic_value_after_dec ;
  {
  if (ldv_mutex_tree_lock == 1) {
  } else {
    ldv_error();
  }
  atomic_value_after_dec = __VERIFIER_nondet_int();
  if (atomic_value_after_dec == 0) {
    ldv_mutex_tree_lock = 2;
    return (1);
  } else {
  }
  return (0);
}
}
int ldv_mutex_is_locked_tree_lock(struct mutex *lock )
{
  int nondetermined ;
  {
  if (ldv_mutex_tree_lock == 1) {
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
void ldv_mutex_unlock_tree_lock(struct mutex *lock )
{
  {
  if (ldv_mutex_tree_lock == 2) {
  } else {
    ldv_error();
  }
  ldv_mutex_tree_lock = 1;
  return;
}
}
void ldv_initialize(void)
{
  {
  ldv_mutex_bitmap_lock = 1;
  ldv_mutex_cred_guard_mutex = 1;
  ldv_mutex_extents_lock = 1;
  ldv_mutex_i_mutex = 1;
  ldv_mutex_lock = 1;
  ldv_mutex_mutex = 1;
  ldv_mutex_tree_lock = 1;
  return;
}
}
void ldv_check_final_state(void)
{
  {
  if (ldv_mutex_bitmap_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_cred_guard_mutex == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_extents_lock == 1) {
  } else {
    ldv_error();
  }
  if (ldv_mutex_i_mutex == 1) {
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
  if (ldv_mutex_tree_lock == 1) {
  } else {
    ldv_error();
  }
  return;
}
}
long __VERIFIER_nondet_long(void);
ssize_t __blockdev_direct_IO(int arg0, struct kiocb *arg1, struct inode *arg2, struct block_device *arg3, const struct iovec *arg4, loff_t arg5, unsigned long arg6, get_block_t *arg7, dio_iodone_t *arg8, dio_submit_t *arg9, int arg10) {
  return __VERIFIER_nondet_long();
}
void *external_alloc(void);
struct buffer_head *__bread(struct block_device *arg0, sector_t arg1, unsigned int arg2) {
  return (struct buffer_head *)external_alloc();
}
void __brelse(struct buffer_head *arg0) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int __get_free_pages(gfp_t arg0, unsigned int arg1) {
  return __VERIFIER_nondet_ulong();
}
void __init_waitqueue_head(wait_queue_head_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __init_work(struct work_struct *arg0, int arg1) {
  return;
}
void __insert_inode_hash(struct inode *arg0, unsigned long arg1) {
  return;
}
void __list_add(struct list_head *arg0, struct list_head *arg1, struct list_head *arg2) {
  return;
}
void __lock_buffer(struct buffer_head *arg0) {
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
void __raw_spin_lock_init(raw_spinlock_t *arg0, const char *arg1, struct lock_class_key *arg2) {
  return;
}
void __wake_up(wait_queue_head_t *arg0, unsigned int arg1, int arg2, void *arg3) {
  return;
}
int __VERIFIER_nondet_int(void);
int _atomic_dec_and_lock(atomic_t *arg0, spinlock_t *arg1) {
  return __VERIFIER_nondet_int();
}
void _raw_spin_lock(raw_spinlock_t *arg0) {
  return;
}
void _raw_spin_unlock(raw_spinlock_t *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int block_read_full_page(struct page *arg0, get_block_t *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int block_write_full_page(struct page *arg0, get_block_t *arg1, struct writeback_control *arg2) {
  return __VERIFIER_nondet_int();
}
void call_rcu_sched(struct callback_head *arg0, void (*arg1)(struct callback_head *)) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool cancel_delayed_work_sync(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
void clear_inode(struct inode *arg0) {
  return;
}
void clear_nlink(struct inode *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int cont_write_begin(struct file *arg0, struct address_space *arg1, loff_t arg2, unsigned int arg3, unsigned int arg4, struct page **arg5, void **arg6, get_block_t *arg7, loff_t *arg8) {
  return __VERIFIER_nondet_int();
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
int __VERIFIER_nondet_int(void);
int debug_lockdep_rcu_enabled() {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int filemap_write_and_wait_range(struct address_space *arg0, loff_t arg1, loff_t arg2) {
  return __VERIFIER_nondet_int();
}
void finish_wait(wait_queue_head_t *arg0, wait_queue_t *arg1) {
  return;
}
bool __VERIFIER_nondet_bool(void);
bool flush_delayed_work(struct delayed_work *arg0) {
  return __VERIFIER_nondet_bool();
}
void free_pages(unsigned long arg0, unsigned int arg1) {
  return;
}
unsigned long __VERIFIER_nondet_ulong(void);
sector_t generic_block_bmap(struct address_space *arg0, sector_t arg1, get_block_t *arg2) {
  return __VERIFIER_nondet_ulong();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int get_seconds() {
  return __VERIFIER_nondet_ulong();
}
void *external_alloc(void);
struct inode *iget5_locked(struct super_block *arg0, unsigned long arg1, int (*arg2)(struct inode *, void *), int (*arg3)(struct inode *, void *), void *arg4) {
  return (struct inode *)external_alloc();
}
void *external_alloc(void);
struct inode *iget_locked(struct super_block *arg0, unsigned long arg1) {
  return (struct inode *)external_alloc();
}
void *external_alloc(void);
struct inode *igrab(struct inode *arg0) {
  return (struct inode *)external_alloc();
}
void init_timer_key(struct timer_list *arg0, unsigned int arg1, const char *arg2, struct lock_class_key *arg3) {
  return;
}
void inode_add_bytes(struct inode *arg0, loff_t arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int inode_change_ok(const struct inode *arg0, struct iattr *arg1) {
  return __VERIFIER_nondet_int();
}
void inode_dio_wait(struct inode *arg0) {
  return;
}
void inode_init_once(struct inode *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int inode_newsize_ok(const struct inode *arg0, loff_t arg1) {
  return __VERIFIER_nondet_int();
}
void inode_set_bytes(struct inode *arg0, loff_t arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int ioctl_by_bdev(struct block_device *arg0, unsigned int arg1, unsigned long arg2) {
  return __VERIFIER_nondet_int();
}
void iput(struct inode *arg0) {
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
struct nls_table *load_nls(char *arg0) {
  return (struct nls_table *)external_alloc();
}
void *external_alloc(void);
struct nls_table *load_nls_default() {
  return (struct nls_table *)external_alloc();
}
void lockdep_init_map(struct lockdep_map *arg0, const char *arg1, struct lock_class_key *arg2, int arg3) {
  return;
}
void make_bad_inode(struct inode *arg0) {
  return;
}
void mark_buffer_dirty(struct buffer_head *arg0) {
  return;
}
void mark_page_accessed(struct page *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int match_int(substring_t *arg0, int *arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int match_octal(substring_t *arg0, int *arg1) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
char *match_strdup(const substring_t *arg0) {
  return (char *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int match_token(char *arg0, const struct match_token *arg1, substring_t *arg2) {
  return __VERIFIER_nondet_int();
}
void *external_alloc(void);
struct dentry *mount_bdev(struct file_system_type *arg0, int arg1, const char *arg2, void *arg3, int (*arg4)(struct super_block *, void *, int)) {
  return (struct dentry *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int mpage_writepages(struct address_space *arg0, struct writeback_control *arg1, get_block_t *arg2) {
  return __VERIFIER_nondet_int();
}
unsigned long __VERIFIER_nondet_ulong(void);
unsigned long int msecs_to_jiffies(const unsigned int arg0) {
  return __VERIFIER_nondet_ulong();
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
void *external_alloc(void);
struct inode *new_inode(struct super_block *arg0) {
  return (struct inode *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int pagecache_write_begin(struct file *arg0, struct address_space *arg1, loff_t arg2, unsigned int arg3, unsigned int arg4, struct page **arg5, void **arg6) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int pagecache_write_end(struct file *arg0, struct address_space *arg1, loff_t arg2, unsigned int arg3, unsigned int arg4, struct page *arg5, void *arg6) {
  return __VERIFIER_nondet_int();
}
void panic(const char *arg0, ...) {
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
bool __VERIFIER_nondet_bool(void);
bool queue_delayed_work(struct workqueue_struct *arg0, struct delayed_work *arg1, unsigned long arg2) {
  return __VERIFIER_nondet_bool();
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
int __VERIFIER_nondet_int(void);
int sb_min_blocksize(struct super_block *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int sb_set_blocksize(struct super_block *arg0, int arg1) {
  return __VERIFIER_nondet_int();
}
void schedule() {
  return;
}
int __VERIFIER_nondet_int(void);
int seq_printf(struct seq_file *arg0, const char *arg1, ...) {
  return __VERIFIER_nondet_int();
}
void set_nlink(struct inode *arg0, unsigned int arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int set_page_dirty(struct page *arg0) {
  return __VERIFIER_nondet_int();
}
void setattr_copy(struct inode *arg0, const struct iattr *arg1) {
  return;
}
void *external_alloc(void);
char *strsep(char **arg0, const char *arg1) {
  return (char *)external_alloc();
}
int __VERIFIER_nondet_int(void);
int sync_blockdev(struct block_device *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int sync_dirty_buffer(struct buffer_head *arg0) {
  return __VERIFIER_nondet_int();
}
void truncate_inode_pages(struct address_space *arg0, loff_t arg1) {
  return;
}
void truncate_pagecache(struct inode *arg0, loff_t arg1, loff_t arg2) {
  return;
}
void truncate_setsize(struct inode *arg0, loff_t arg1) {
  return;
}
int __VERIFIER_nondet_int(void);
int try_to_free_buffers(struct page *arg0) {
  return __VERIFIER_nondet_int();
}
void unload_nls(struct nls_table *arg0) {
  return;
}
void unlock_buffer(struct buffer_head *arg0) {
  return;
}
void unlock_new_inode(struct inode *arg0) {
  return;
}
int __VERIFIER_nondet_int(void);
int unregister_filesystem(struct file_system_type *arg0) {
  return __VERIFIER_nondet_int();
}
int __VERIFIER_nondet_int(void);
int write_inode_now(struct inode *arg0, int arg1) {
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
