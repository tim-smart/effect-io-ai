# ensuringWith

Returns a new sink with an attached finalizer. The finalizer is guaranteed
to be executed so long as the sink begins execution (and regardless of
whether or not it completes).

To import and use `ensuringWith` from the "Sink" module:

```ts
import * as Sink from 'effect/Sink'

// Can be accessed like this
Sink.ensuringWith
```

**Signature**

```ts
export declare const ensuringWith: {
  <E, Z, R2, _>(finalizer: (exit: Exit.Exit<E, Z>) => Effect.Effect<R2, never, _>): <R, In, L>(
    self: Sink<R, E, In, L, Z>
  ) => Sink<R2 | R, E, In, L, Z>
  <R, In, L, E, Z, R2, _>(
    self: Sink<R, E, In, L, Z>,
    finalizer: (exit: Exit.Exit<E, Z>) => Effect.Effect<R2, never, _>
  ): Sink<R | R2, E, In, L, Z>
}
```
