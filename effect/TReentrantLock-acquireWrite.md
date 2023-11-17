# acquireWrite

Acquires a write lock. The transaction will suspend until no other fibers
are holding read or write locks. Succeeds with the number of write locks
held by this fiber.

To import and use `acquireWrite` from the "TReentrantLock" module:

```ts
import * as TReentrantLock from "effect/TReentrantLock"
// Can be accessed like this
TReentrantLock.acquireWrite
```

**Signature**

```ts
export declare const acquireWrite: (self: TReentrantLock) => STM.STM<never, never, number>
```
