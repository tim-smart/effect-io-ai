## as

Replaces this sink's result with the provided value.

**Signature**

```ts
declare const as: { <A2>(a: A2): <A, In, L, E, R>(self: Sink<A, In, L, E, R>) => Sink<A2, In, L, E, R>; <A, In, L, E, R, A2>(self: Sink<A, In, L, E, R>, a: A2): Sink<A2, In, L, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L118)

Since v2.0.0