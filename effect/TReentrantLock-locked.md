# locked

Determines if any fiber has a read or write lock.

To import and use `locked` from the "TReentrantLock" module:

```ts
import * as TReentrantLock from "effect/TReentrantLock"
// Can be accessed like this
TReentrantLock.locked
```

**Signature**

```ts
export declare const locked: (self: TReentrantLock) => STM.STM<never, never, boolean>
```
