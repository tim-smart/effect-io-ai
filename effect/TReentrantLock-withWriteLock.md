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
  (self: TReentrantLock): <R, E, A>(effect: Effect.Effect<R, E, A>) => Effect.Effect<R, E, A>
  <R, E, A>(effect: Effect.Effect<R, E, A>, self: TReentrantLock): Effect.Effect<R, E, A>
}
```
