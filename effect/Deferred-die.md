# die

Kills the `Deferred` with the specified defect, which will be propagated to
all fibers waiting on the value of the `Deferred`.

To import and use `die` from the "Deferred" module:

ts
import \* as Deferred from "effect/Deferred"
// Can be accessed like this
Deferred.die
undefined

**Signature**

```ts
export declare const die: {
  (defect: unknown): <A, E>(self: Deferred<A, E>) => Effect.Effect<boolean>
  <A, E>(self: Deferred<A, E>, defect: unknown): Effect.Effect<boolean>
}
```
