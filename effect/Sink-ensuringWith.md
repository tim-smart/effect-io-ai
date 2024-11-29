# ensuringWith

Returns a new sink with an attached finalizer. The finalizer is guaranteed
to be executed so long as the sink begins execution (and regardless of
whether or not it completes).

To import and use `ensuringWith` from the "Sink" module:

ts
import \* as Sink from "effect/Sink"
// Can be accessed like this
Sink.ensuringWith
undefined

**Signature**

```ts
export declare const ensuringWith: {
  <A, E, X, R2>(
    finalizer: (exit: Exit.Exit<A, E>) => Effect.Effect<X, never, R2>
  ): <In, L, R>(self: Sink<A, In, L, E, R>) => Sink<A, In, L, E, R2 | R>
  <A, In, L, E, R, X, R2>(
    self: Sink<A, In, L, E, R>,
    finalizer: (exit: Exit.Exit<A, E>) => Effect.Effect<X, never, R2>
  ): Sink<A, In, L, E, R | R2>
}
```
