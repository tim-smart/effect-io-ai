# interruptWhenPossible

Interrupts the child effect when requests are no longer needed

To import and use `interruptWhenPossible` from the "Request" module:

```ts
import * as Request from '@effect/io/Request'

// Can be accessed like this
Request.interruptWhenPossible
```

**Signature**

```ts
export declare const interruptWhenPossible: {
  (all: Iterable<Request<any, any>>): <R, E, A>(self: Effect.Effect<R, E, A>) => Effect.Effect<R, E, void>
  <R, E, A>(self: Effect.Effect<R, E, A>, all: Iterable<Request<any, any>>): Effect.Effect<R, E, void>
}
```
