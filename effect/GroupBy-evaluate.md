## evaluate

Run the function across all groups, collecting the results in an
arbitrary order.

**Signature**

```ts
declare const evaluate: { <K, V, E, A, E2, R2>(f: (key: K, stream: Stream.Stream<V, E, never>) => Stream.Stream<A, E2, R2>, options?: { readonly bufferSize?: number | undefined; } | undefined): <R>(self: GroupBy<K, V, E, R>) => Stream.Stream<A, E | E2, R2 | R>; <K, V, E, R, A, E2, R2>(self: GroupBy<K, V, E, R>, f: (key: K, stream: Stream.Stream<V, E, never>) => Stream.Stream<A, E2, R2>, options?: { readonly bufferSize?: number | undefined; } | undefined): Stream.Stream<A, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/GroupBy.ts#L61)

Since v2.0.0