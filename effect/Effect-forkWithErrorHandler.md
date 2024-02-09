# forkWithErrorHandler

Like fork but handles an error with the provided handler.

To import and use `forkWithErrorHandler` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.forkWithErrorHandler
```

**Signature**

```ts
export declare const forkWithErrorHandler: {
  <E, X>(
    handler: (e: E) => Effect<X, never, never>
  ): <R, A>(self: Effect<A, E, R>) => Effect<Fiber.RuntimeFiber<A, E>, never, R>
  <R, E, A, X>(
    self: Effect<A, E, R>,
    handler: (e: E) => Effect<X, never, never>
  ): Effect<Fiber.RuntimeFiber<A, E>, never, R>
}
```
