# writeLocked

Determines if a write lock is held by some fiber.

To import and use `writeLocked` from the "TReentrantLock" module:

```ts
import * as TReentrantLock from "effect/TReentrantLock"
// Can be accessed like this
TReentrantLock.writeLocked
```

**Signature**

```ts
export declare const writeLocked: (self: TReentrantLock) => STM.STM<boolean>
```
