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
  }): <R, E, A>(effects: Iterable<Effect<R, E, A>>) => Effect<R, never, Fiber.Fiber<E, A[]>>
  (options: { readonly discard: true }): <R, E, A>(effects: Iterable<Effect<R, E, A>>) => Effect<R, never, void>
  <R, E, A>(
    effects: Iterable<Effect<R, E, A>>,
    options?: { readonly discard?: false | undefined }
  ): Effect<R, never, Fiber.Fiber<E, A[]>>
  <R, E, A>(effects: Iterable<Effect<R, E, A>>, options: { readonly discard: true }): Effect<R, never, void>
}
```
