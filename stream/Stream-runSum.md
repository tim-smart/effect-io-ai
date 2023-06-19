# runSum

Runs the stream to a sink which sums elements, provided they are Numeric.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const runSum: <R, E>(self: Stream<R, E, number>) => Effect.Effect<R, E, number>
```
