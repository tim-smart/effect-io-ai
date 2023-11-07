# releaseRead

Releases a read lock held by this fiber. Succeeds with the outstanding
number of read locks held by this fiber.

To import and use `releaseRead` from the "TReentrantLock" module:

```ts
import * as TReentrantLock from 'effect/TReentrantLock'

// Can be accessed like this
TReentrantLock.releaseRead
```

**Signature**

```ts
export declare const releaseRead: (self: TReentrantLock) => STM.STM<never, never, number>
```
