# flattenEffect

Flattens `Effect` values into the stream's structure, preserving all
information about the effect.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const flattenEffect: <R, E, R2, E2, A>(
  self: Stream<R, E, Effect.Effect<R2, E2, A>>
) => Stream<R | R2, E | E2, A>
```
