# releaseWrite

Releases a write lock held by this fiber. Succeeds with the outstanding
number of write locks held by this fiber.

To import and use `releaseWrite` from the "TReentrantLock" module:

```ts
import * as TReentrantLock from "effect/TReentrantLock"
// Can be accessed like this
TReentrantLock.releaseWrite
```

**Signature**

```ts
export declare const releaseWrite: (self: TReentrantLock) => STM.STM<never, never, number>
```
