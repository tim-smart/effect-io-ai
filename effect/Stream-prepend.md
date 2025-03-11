## prepend

Emits the provided chunk before emitting any other value.

**Signature**

```ts
declare const prepend: { <B>(values: Chunk.Chunk<B>): <A, E, R>(self: Stream<A, E, R>) => Stream<B | A, E, R>; <A, E, R, B>(self: Stream<A, E, R>, values: Chunk.Chunk<B>): Stream<A | B, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L3614)

Since v2.0.0