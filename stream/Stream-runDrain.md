# runDrain

Runs the stream only for its effects. The emitted elements are discarded.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const runDrain: <R, E, A>(self: Stream<R, E, A>) => Effect.Effect<R, E, void>
```
