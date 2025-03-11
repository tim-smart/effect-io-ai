## make

Constructs a `GroupBy` from a `Stream`.

**Signature**

```ts
declare const make: <K, V, E, R>(grouped: Stream.Stream<readonly [K, Queue.Dequeue<Take.Take<V, E>>], E, R>) => GroupBy<K, V, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/GroupBy.ts#L101)

Since v2.0.0