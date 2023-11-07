# lock

Just a convenience method for applications that only need reentrant locks,
without needing a distinction between readers / writers.

See `TReentrantLock.writeLock`.

To import and use `lock` from the "TReentrantLock" module:

```ts
import * as TReentrantLock from 'effect/TReentrantLock'

// Can be accessed like this
TReentrantLock.lock
```

**Signature**

```ts
export declare const lock: (self: TReentrantLock) => Effect.Effect<Scope.Scope, never, number>
```
