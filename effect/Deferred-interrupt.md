# interrupt

Completes the `Deferred` with interruption. This will interrupt all fibers
waiting on the value of the `Deferred` with the `FiberId` of the fiber
calling this method.

To import and use `interrupt` from the "Deferred" module:

ts
import \* as Deferred from "effect/Deferred"
// Can be accessed like this
Deferred.interrupt
undefined

**Signature**

```ts
export declare const interrupt: <A, E>(self: Deferred<A, E>) => Effect.Effect<boolean>
```
