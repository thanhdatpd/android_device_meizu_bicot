/****************************************************************************
 ****************************************************************************
 ***
 ***   This header was automatically generated from a Linux kernel header
 ***   of the same name, to make information necessary for userspace to
 ***   call into the kernel available to libc.  It contains only constants,
 ***   structures, and macros generated from the original header, and thus,
 ***   contains no copyrightable information.
 ***
 ***   To edit the content of this header, modify the corresponding
 ***   source file (e.g. under external/kernel-headers/original/) then
 ***   run bionic/libc/kernel/tools/update_all.py
 ***
 ***   Any manual change here will be lost the next time this script will
 ***   be run. You've been warned!
 ***
 ****************************************************************************
 ****************************************************************************/
#ifndef _UAPI_MSM_ION_H
#define _UAPI_MSM_ION_H
#include "ion.h"
enum msm_ion_heap_types {
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
  ION_HEAP_TYPE_MSM_START = ION_HEAP_TYPE_CUSTOM + 1,
  ION_HEAP_TYPE_SECURE_DMA = ION_HEAP_TYPE_MSM_START,
  ION_HEAP_TYPE_SYSTEM_SECURE,
  ION_HEAP_TYPE_HYP_CMA,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
};
enum ion_heap_ids {
  INVALID_HEAP_ID = - 1,
  ION_CP_MM_HEAP_ID = 8,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
  ION_SECURE_HEAP_ID = 9,
  ION_SECURE_DISPLAY_HEAP_ID = 10,
  ION_CP_MFC_HEAP_ID = 12,
  ION_CP_WB_HEAP_ID = 16,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
  ION_CAMERA_HEAP_ID = 20,
  ION_SYSTEM_CONTIG_HEAP_ID = 21,
  ION_ADSP_HEAP_ID = 22,
  ION_PIL1_HEAP_ID = 23,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
  ION_SF_HEAP_ID = 24,
  ION_SYSTEM_HEAP_ID = 25,
  ION_PIL2_HEAP_ID = 26,
  ION_QSECOM_HEAP_ID = 27,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
  ION_AUDIO_HEAP_ID = 28,
  ION_MM_FIRMWARE_HEAP_ID = 29,
  ION_HEAP_ID_RESERVED = 31
};
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define ION_IOMMU_HEAP_ID ION_SYSTEM_HEAP_ID
#define ION_HEAP_TYPE_IOMMU ION_HEAP_TYPE_SYSTEM
enum ion_fixed_position {
  NOT_FIXED,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
  FIXED_LOW,
  FIXED_MIDDLE,
  FIXED_HIGH,
};
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
enum cp_mem_usage {
  VIDEO_BITSTREAM = 0x1,
  VIDEO_PIXEL = 0x2,
  VIDEO_NONPIXEL = 0x3,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
  DISPLAY_SECURE_CP_USAGE = 0x4,
  CAMERA_SECURE_CP_USAGE = 0x5,
  MAX_USAGE = 0x6,
  UNKNOWN = 0x7FFFFFFF,
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
};
#define ION_FLAG_CP_TOUCH (1 << 17)
#define ION_FLAG_CP_BITSTREAM (1 << 18)
#define ION_FLAG_CP_PIXEL (1 << 19)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define ION_FLAG_CP_NON_PIXEL (1 << 20)
#define ION_FLAG_CP_CAMERA (1 << 21)
#define ION_FLAG_CP_HLOS (1 << 22)
#define ION_FLAG_CP_HLOS_FREE (1 << 23)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define ION_FLAG_CP_SEC_DISPLAY (1 << 25)
#define ION_FLAG_CP_APP (1 << 26)
#define ION_FLAG_ALLOW_NON_CONTIG (1 << 24)
#define ION_FLAG_SECURE (1 << ION_HEAP_ID_RESERVED)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define ION_FLAG_FORCE_CONTIGUOUS (1 << 30)
#define ION_FLAG_POOL_FORCE_ALLOC (1 << 16)
#define ION_FLAG_POOL_PREFETCH (1 << 27)
#define ION_SECURE ION_FLAG_SECURE
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define ION_FORCE_CONTIGUOUS ION_FLAG_FORCE_CONTIGUOUS
#define ION_HEAP(bit) (1 << (bit))
#define ION_ADSP_HEAP_NAME "adsp"
#define ION_SYSTEM_HEAP_NAME "system"
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define ION_VMALLOC_HEAP_NAME ION_SYSTEM_HEAP_NAME
#define ION_KMALLOC_HEAP_NAME "kmalloc"
#define ION_AUDIO_HEAP_NAME "audio"
#define ION_SF_HEAP_NAME "sf"
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define ION_MM_HEAP_NAME "mm"
#define ION_CAMERA_HEAP_NAME "camera_preview"
#define ION_IOMMU_HEAP_NAME "iommu"
#define ION_MFC_HEAP_NAME "mfc"
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define ION_WB_HEAP_NAME "wb"
#define ION_MM_FIRMWARE_HEAP_NAME "mm_fw"
#define ION_PIL1_HEAP_NAME "pil_1"
#define ION_PIL2_HEAP_NAME "pil_2"
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define ION_QSECOM_HEAP_NAME "qsecom"
#define ION_SECURE_HEAP_NAME "secure_heap"
#define ION_SECURE_DISPLAY_HEAP_NAME "secure_display"
#define ION_SET_CACHED(__cache) (__cache | ION_FLAG_CACHED)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define ION_SET_UNCACHED(__cache) (__cache & ~ION_FLAG_CACHED)
#define ION_IS_CACHED(__flags) ((__flags) & ION_FLAG_CACHED)
struct ion_flush_data {
  ion_user_handle_t handle;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
  int fd;
  void * vaddr;
  unsigned int offset;
  unsigned int length;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
};
struct ion_prefetch_regions {
  unsigned int vmid;
  size_t __user * sizes;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
  unsigned int nr_sizes;
};
struct ion_prefetch_data {
  int heap_id;
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
  unsigned long len;
  struct ion_prefetch_regions __user * regions;
  unsigned int nr_regions;
};
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define ION_IOC_MSM_MAGIC 'M'
#define ION_IOC_CLEAN_CACHES _IOWR(ION_IOC_MSM_MAGIC, 0, struct ion_flush_data)
#define ION_IOC_INV_CACHES _IOWR(ION_IOC_MSM_MAGIC, 1, struct ion_flush_data)
#define ION_IOC_CLEAN_INV_CACHES _IOWR(ION_IOC_MSM_MAGIC, 2, struct ion_flush_data)
/* WARNING: DO NOT EDIT, AUTO-GENERATED CODE - SEE TOP FOR INSTRUCTIONS */
#define ION_IOC_PREFETCH _IOWR(ION_IOC_MSM_MAGIC, 3, struct ion_prefetch_data)
#define ION_IOC_DRAIN _IOWR(ION_IOC_MSM_MAGIC, 4, struct ion_prefetch_data)
#endif

