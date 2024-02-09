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
    f: (a: A) => Effect.Effect<_, E2, R2>
  ): <R, E>(self: Stream<A, E, R>) => Effect.Effect<void, E2 | E, R2 | R>
  <R, E, A, R2, E2, _>(
    self: Stream<A, E, R>,
    f: (a: A) => Effect.Effect<_, E2, R2>
  ): Effect.Effect<void, E | E2, R | R2>
}
```
