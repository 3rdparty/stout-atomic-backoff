#pragma once

#include <thread>

namespace stout {
namespace this_thread {

void pause() {
#if defined(_M_X64) || defined(__x86_64__)
  __asm__ volatile("pause"
                   :
                   :
                   : "memory");
#elif defined(_M_IX86) || defined(__i386__) || defined(__i386)
  __asm__ volatile("pause"
                   :
                   :
                   : "memory");
#else
  std::this_thread::yield();
#endif
}

} // namespace this_thread
} // namespace stout