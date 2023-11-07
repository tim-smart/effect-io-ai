# writeLock

Obtains a write lock in a scoped context.

To import and use `writeLock` from the "TReentrantLock" module:

```ts
import * as TReentrantLock from 'effect/TReentrantLock'

// Can be accessed like this
TReentrantLock.writeLock
```

**Signature**

```ts
export declare const writeLock: (self: TReentrantLock) => Effect.Effect<Scope.Scope, never, number>
```
