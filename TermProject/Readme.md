# Buffer-Manager
Implementation of a buffer manager managing a cache of pages in memory including reading/flushing to disk and page replacement by FIFO and LRU algorithms

The buffer manager manages a fixed number of pages in memory that represent pages from a page file managed by the storage manager.
It manages a buffer of blocks in memory including reading/flushing to disk and block replacement.
The FIFO,LRU, and Clock replacement strategies have been implemented for the buffer manager.
