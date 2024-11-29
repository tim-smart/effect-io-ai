# interruptWhenPossible

Interrupts the child effect when requests are no longer needed

To import and use `interruptWhenPossible` from the "Request" module:

ts
import \* as Request from "effect/Request"
// Can be accessed like this
Request.interruptWhenPossible
undefined

**Signature**

```ts
export declare const interruptWhenPossible: {
  (all: Iterable<Request<any, any>>): <A, E, R>(self: Effect.Effect<A, E, R>) => Effect.Effect<void, E, R>
  <A, E, R>(self: Effect.Effect<A, E, R>, all: Iterable<Request<any, any>>): Effect.Effect<void, E, R>
}
```
