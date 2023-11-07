# withLock

Runs the specified workflow with a lock.

To import and use `withLock` from the "TReentrantLock" module:

```ts
import * as TReentrantLock from 'effect/TReentrantLock'

// Can be accessed like this
TReentrantLock.withLock
```

**Signature**

```ts
export declare const withLock: {
  (self: TReentrantLock): <R, E, A>(effect: Effect.Effect<R, E, A>) => Effect.Effect<R, E, A>
  <R, E, A>(effect: Effect.Effect<R, E, A>, self: TReentrantLock): Effect.Effect<R, E, A>
}
```
