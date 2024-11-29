# runForEachWhile

Consumes elements of the stream, passing them to the specified callback,
and terminating consumption when the callback returns `false`.

To import and use `runForEachWhile` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.runForEachWhile
undefined

**Signature**

```ts
export declare const runForEachWhile: {
  <A, E2, R2>(
    f: (a: A) => Effect.Effect<boolean, E2, R2>
  ): <E, R>(self: Stream<A, E, R>) => Effect.Effect<void, E2 | E, R2 | R>
  <A, E, R, E2, R2>(
    self: Stream<A, E, R>,
    f: (a: A) => Effect.Effect<boolean, E2, R2>
  ): Effect.Effect<void, E | E2, R | R2>
}
```
