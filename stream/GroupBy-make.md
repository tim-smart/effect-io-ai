# make

Constructs a `GroupBy` from a `Stream`.

Part of the `GroupBy` module, imported from `@effect/stream/GroupBy`.

**Signature**

```ts
export declare const make: <R, E, K, V>(
  grouped: Stream.Stream<R, E, readonly [K, Queue.Dequeue<Take.Take<E, V>>]>
) => GroupBy<R, E, K, V>
```
