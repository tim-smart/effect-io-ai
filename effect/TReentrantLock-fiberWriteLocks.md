# fiberWriteLocks

Retrieves the number of acquired write locks for this fiber.

To import and use `fiberWriteLocks` from the "TReentrantLock" module:

```ts
import * as TReentrantLock from "effect/TReentrantLock"
// Can be accessed like this
TReentrantLock.fiberWriteLocks
```

**Signature**

```ts
export declare const fiberWriteLocks: (self: TReentrantLock) => STM.STM<number>
```
