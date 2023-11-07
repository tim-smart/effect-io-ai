# readLocks

Retrieves the total number of acquired read locks.

To import and use `readLocks` from the "TReentrantLock" module:

```ts
import * as TReentrantLock from 'effect/TReentrantLock'

// Can be accessed like this
TReentrantLock.readLocks
```

**Signature**

```ts
export declare const readLocks: (self: TReentrantLock) => STM.STM<never, never, number>
```
