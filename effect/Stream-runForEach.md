# runForEach

Consumes all elements of the stream, passing them to the specified
callback.

To import and use `runForEach` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.runForEach
```

**Signature**

```ts
export declare const runForEach: {
  <A, R2, E2, _>(
    f: (a: A) => Effect.Effect<R2, E2, _>
  ): <R, E>(self: Stream<R, E, A>) => Effect.Effect<R2 | R, E2 | E, void>
  <R, E, A, R2, E2, _>(
    self: Stream<R, E, A>,
    f: (a: A) => Effect.Effect<R2, E2, _>
  ): Effect.Effect<R | R2, E | E2, void>
}
```
