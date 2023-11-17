# ensuringWith

Executes the provided finalizer after this stream's finalizers run.

To import and use `ensuringWith` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.ensuringWith
```

**Signature**

```ts
export declare const ensuringWith: {
  <E, R2>(
    finalizer: (exit: Exit.Exit<E, unknown>) => Effect.Effect<R2, never, unknown>
  ): <R, A>(self: Stream<R, E, A>) => Stream<R2 | R, E, A>
  <R, E, A, R2>(
    self: Stream<R, E, A>,
    finalizer: (exit: Exit.Exit<E, unknown>) => Effect.Effect<R2, never, unknown>
  ): Stream<R | R2, E, A>
}
```
