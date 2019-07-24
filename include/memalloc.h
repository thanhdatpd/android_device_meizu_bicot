#ifndef GRALLOC_MEMALLOC_H
#define GRALLOC_MEMALLOC_H

#include <stdlib.h>

namespace gralloc {

enum {
    CACHE_CLEAN = 0x1,
    CACHE_INVALIDATE,
    CACHE_CLEAN_AND_INVALIDATE,
};

struct alloc_data {
    void           *base;
    int            fd;
    int            offset;
    size_t         size;
    size_t         align;
    unsigned int   pHandle;
    bool           uncached;
    unsigned int   flags;
    int            allocType;
};

class IMemAlloc {

    public:
    // Allocate buffer - fill in the alloc_data
    // structure and pass it in. Mapped address
    // and fd are returned in the alloc_data struct
    virtual int alloc_buffer(alloc_data& data) = 0;

    // Free buffer
    virtual int free_buffer(void *base, size_t size,
                            int offset, int fd) = 0;

    // Map buffer
    virtual int map_buffer(void **pBase, size_t size,
                           int offset, int fd) = 0;

    // Unmap buffer
    virtual int unmap_buffer(void *base, size_t size,
                             int offset) = 0;

    // Clean and invalidate
    virtual int clean_buffer(void *base, size_t size,
                             int offset, int fd, int op) = 0;

    // Destructor
    virtual ~IMemAlloc() {};

    enum {
        FD_INIT = -1,
    };

};

} // end gralloc namespace
#endif // GRALLOC_MEMALLOC_H
