## flattenTake

Unwraps `Exit` values and flatten chunks that also signify end-of-stream
by failing with `None`.

**Signature**

```ts
declare const flattenTake: <A, E2, E, R>(self: Stream<Take.Take<A, E2>, E, R>) => Stream<A, E | E2, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1867)

Since v2.0.0