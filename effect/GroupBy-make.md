# make

Constructs a `GroupBy` from a `Stream`.

To import and use `make` from the "GroupBy" module:

```ts
import * as GroupBy from "effect/GroupBy"
// Can be accessed like this
GroupBy.make
```

**Signature**

```ts
export declare const make: <R, E, K, V>(
  grouped: Stream.Stream<readonly [K, Queue.Dequeue<Take.Take<V, E>>], E, R>
) => GroupBy<R, E, K, V>
```
