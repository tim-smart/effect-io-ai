# flattenTake

Unwraps `Exit` values and flatten chunks that also signify end-of-stream
by failing with `None`.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const flattenTake: <R, E, E2, A>(self: Stream<R, E, Take.Take<E2, A>>) => Stream<R, E | E2, A>
```
