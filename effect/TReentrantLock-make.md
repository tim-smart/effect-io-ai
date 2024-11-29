# make

Makes a new reentrant read/write lock.

To import and use `make` from the "TReentrantLock" module:

ts
import \* as TReentrantLock from "effect/TReentrantLock"
// Can be accessed like this
TReentrantLock.make
undefined

**Signature**

```ts
export declare const make: STM.STM<TReentrantLock, never, never>
```
