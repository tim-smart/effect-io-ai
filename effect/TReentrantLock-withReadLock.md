# withReadLock

Runs the specified workflow with a read lock.

To import and use `withReadLock` from the "TReentrantLock" module:

```ts
import * as TReentrantLock from 'effect/TReentrantLock'

// Can be accessed like this
TReentrantLock.withReadLock
```

**Signature**

```ts
export declare const withReadLock: {
  (self: TReentrantLock): <R, E, A>(effect: Effect.Effect<R, E, A>) => Effect.Effect<R, E, A>
  <R, E, A>(effect: Effect.Effect<R, E, A>, self: TReentrantLock): Effect.Effect<R, E, A>
}
```
