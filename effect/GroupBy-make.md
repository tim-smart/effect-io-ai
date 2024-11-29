# make

Constructs a `GroupBy` from a `Stream`.

To import and use `make` from the "GroupBy" module:

ts
import \* as GroupBy from "effect/GroupBy"
// Can be accessed like this
GroupBy.make
undefined

**Signature**

```ts
export declare const make: <K, V, E, R>(
  grouped: Stream.Stream<readonly [K, Queue.Dequeue<Take.Take<V, E>>], E, R>
) => GroupBy<K, V, E, R>
```
