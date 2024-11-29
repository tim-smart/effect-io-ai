# withLock

Runs the specified workflow with a lock.

To import and use `withLock` from the "TReentrantLock" module:

ts
import \* as TReentrantLock from "effect/TReentrantLock"
// Can be accessed like this
TReentrantLock.withLock
undefined

**Signature**

```ts
export declare const withLock: {
  (self: TReentrantLock): <A, E, R>(effect: Effect.Effect<A, E, R>) => Effect.Effect<A, E, R>
  <A, E, R>(effect: Effect.Effect<A, E, R>, self: TReentrantLock): Effect.Effect<A, E, R>
}
```
