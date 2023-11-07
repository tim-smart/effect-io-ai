# fiberReadLocks

Retrieves the number of acquired read locks for this fiber.

To import and use `fiberReadLocks` from the "TReentrantLock" module:

```ts
import * as TReentrantLock from 'effect/TReentrantLock'

// Can be accessed like this
TReentrantLock.fiberReadLocks
```

**Signature**

```ts
export declare const fiberReadLocks: (self: TReentrantLock) => STM.STM<never, never, number>
```
