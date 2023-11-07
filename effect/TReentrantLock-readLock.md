# readLock

Obtains a read lock in a scoped context.

To import and use `readLock` from the "TReentrantLock" module:

```ts
import * as TReentrantLock from 'effect/TReentrantLock'

// Can be accessed like this
TReentrantLock.readLock
```

**Signature**

```ts
export declare const readLock: (self: TReentrantLock) => Effect.Effect<Scope.Scope, never, number>
```
