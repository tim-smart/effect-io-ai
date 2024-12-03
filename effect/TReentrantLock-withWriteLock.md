# withWriteLock

Runs the specified workflow with a write lock.

To import and use `withWriteLock` from the "TReentrantLock" module:

```ts
import * as TReentrantLock from "effect/TReentrantLock"
// Can be accessed like this
TReentrantLock.withWriteLock
```

**Signature**

```ts
export declare const withWriteLock: {
  (self: TReentrantLock): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
  <A, E, R>(effect: Effect.Effect<A, E, R>, self: TReentrantLock): Effect.Effect<A, E, R>
}
```
