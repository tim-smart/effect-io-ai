# readLocked

Determines if any fiber has a read lock.

To import and use `readLocked` from the "TReentrantLock" module:

```ts
import * as TReentrantLock from 'effect/TReentrantLock'

// Can be accessed like this
TReentrantLock.readLocked
```

**Signature**

```ts
export declare const readLocked: (self: TReentrantLock) => STM.STM<never, never, boolean>
```
