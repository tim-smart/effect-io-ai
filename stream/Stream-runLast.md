# runLast

Runs the stream to completion and yields the last value emitted by it,
discarding the rest of the elements.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const runLast: <R, E, A>(self: Stream<R, E, A>) => Effect.Effect<R, E, Option.Option<A>>
```
