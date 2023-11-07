# forkWithErrorHandler

Like fork but handles an error with the provided handler.

To import and use `forkWithErrorHandler` from the "Effect" module:

```ts
import * as Effect from 'effect/Effect'

// Can be accessed like this
Effect.forkWithErrorHandler
```

**Signature**

```ts
export declare const forkWithErrorHandler: {
  <E, X>(handler: (e: E) => Effect<never, never, X>): <R, A>(
    self: Effect<R, E, A>
  ) => Effect<R, never, Fiber.RuntimeFiber<E, A>>
  <R, E, A, X>(self: Effect<R, E, A>, handler: (e: E) => Effect<never, never, X>): Effect<
    R,
    never,
    Fiber.RuntimeFiber<E, A>
  >
}
```
