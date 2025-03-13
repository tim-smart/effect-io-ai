Package: `effect`<br />
Module: `GroupBy`<br />

## GroupBy.GroupBy

Representation of a grouped stream. This allows to filter which groups will
be processed. Once this is applied all groups will be processed in parallel
and the results will be merged in arbitrary order.

**Signature**

```ts
export interface GroupBy<out K, out V, out E = never, out R = never> extends GroupBy.Variance<K, V, E, R>, Pipeable {
  readonly grouped: Stream.Stream<readonly [K, Queue.Dequeue<Take.Take<V, E>>], E, R>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/GroupBy.ts#L32)

Since v2.0.0