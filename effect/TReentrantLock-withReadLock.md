# withReadLock

Runs the specified workflow with a read lock.

To import and use `withReadLock` from the "TReentrantLock" module:

ts
import \* as TReentrantLock from "effect/TReentrantLock"
// Can be accessed like this
TReentrantLock.withReadLock
undefined

**Signature**

```ts
export declare const withReadLock: {
  (self: TReentrantLock): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
  <A, E, R>(effect: Effect.Effect<A, E, R>, self: TReentrantLock): Effect.Effect<A, E, R>
}
```
