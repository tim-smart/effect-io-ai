# Fiber

A fiber is a lightweight thread of execution that never consumes more than a
whole thread (but may consume much less, depending on contention and
asynchronicity). Fibers are spawned by forking effects, which run
concurrently with the parent effect.

Fibers can be joined, yielding their result to other fibers, or interrupted,
which terminates the fiber, safely releasing all resources.

To import and use `Fiber` from the "Fiber" module:

```ts
import * as Fiber from 'effect/Fiber'

// Can be accessed like this
Fiber.Fiber
```
