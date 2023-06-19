# flattenParUnbounded

Like `Stream.flattenPar`, but executes all streams concurrently.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const flattenParUnbounded: <R, E, R2, E2, A>(
  self: Stream<R, E, Stream<R2, E2, A>>
) => Stream<R | R2, E | E2, A>
```
