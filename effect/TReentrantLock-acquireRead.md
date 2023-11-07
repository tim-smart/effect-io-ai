# acquireRead

Acquires a read lock. The transaction will suspend until no other fiber is
holding a write lock. Succeeds with the number of read locks held by this
fiber.

To import and use `acquireRead` from the "TReentrantLock" module:

```ts
import * as TReentrantLock from 'effect/TReentrantLock'

// Can be accessed like this
TReentrantLock.acquireRead
```

**Signature**

```ts
export declare const acquireRead: (self: TReentrantLock) => STM.STM<never, never, number>
```
