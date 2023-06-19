# zipWithPreviousAndNext

Zips each element with both the previous and next element.

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const zipWithPreviousAndNext: <R, E, A>(
  self: Stream<R, E, A>
) => Stream<R, E, readonly [Option.Option<A>, A, Option.Option<A>]>
```
