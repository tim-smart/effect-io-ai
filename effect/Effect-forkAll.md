# forkAll

Returns an effect that forks all of the specified values, and returns a
composite fiber that produces a list of their results, in order.

To import and use `forkAll` from the "Effect" module:

```ts
import * as Effect from "effect/Effect"
// Can be accessed like this
Effect.forkAll
```

**Signature**

```ts
export declare const forkAll: {
  (options?: {
    readonly discard?: false | undefined
  }): <A, E, R>(effects: Iterable<Effect<A, E, R>>) => Effect<Fiber.Fiber<A[], E>, never, R>
  (options: { readonly discard: true }): <A, E, R>(effects: Iterable<Effect<A, E, R>>) => Effect<void, never, R>
  <A, E, R>(
    effects: Iterable<Effect<A, E, R>>,
    options?: { readonly discard?: false | undefined }
  ): Effect<Fiber.Fiber<A[], E>, never, R>
  <A, E, R>(effects: Iterable<Effect<A, E, R>>, options: { readonly discard: true }): Effect<void, never, R>
}
```
