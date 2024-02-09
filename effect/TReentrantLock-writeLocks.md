# writeLocks

Computes the number of write locks held by fibers.

To import and use `writeLocks` from the "TReentrantLock" module:

```ts
import * as TReentrantLock from "effect/TReentrantLock"
// Can be accessed like this
TReentrantLock.writeLocks
```

**Signature**

```ts
export declare const writeLocks: (self: TReentrantLock) => STM.STM<number>
```
