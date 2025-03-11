## catchTag

Switches over to the stream produced by the provided function in case this
one fails with an error matching the given `_tag`.

**Signature**

```ts
declare const catchTag: { <K extends E["_tag"] & string, E extends { _tag: string; }, A1, E1, R1>(k: K, f: (e: Extract<E, { _tag: K; }>) => Stream<A1, E1, R1>): <A, R>(self: Stream<A, E, R>) => Stream<A1 | A, E1 | Exclude<E, { _tag: K; }>, R1 | R>; <A, E extends { _tag: string; }, R, K extends E["_tag"] & string, A1, E1, R1>(self: Stream<A, E, R>, k: K, f: (e: Extract<E, { _tag: K; }>) => Stream<A1, E1, R1>): Stream<A | A1, E1 | Exclude<E, { _tag: K; }>, R | R1>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L813)

Since v2.0.0