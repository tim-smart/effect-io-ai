# split

Splits elements based on a predicate.

```ts
import * as Stream from "./Stream"
import { pipe } from "./Function"

pipe(
  Stream.range(1, 10),
  Stream.split((n) => n % 4 === 0),
  Stream.runCollect
)
// => Chunk(Chunk(1, 2, 3), Chunk(5, 6, 7), Chunk(9))
```

To import and use `split` from the "Stream" module:

```ts
import * as Stream from "effect/Stream"
// Can be accessed like this
Stream.split
```

**Signature**

```ts
export declare const split: {
  <B extends A, A = B>(predicate: Predicate<A>): <R, E>(self: Stream<R, E, B>) => Stream<R, E, Chunk.Chunk<B>>
  <R, E, A>(self: Stream<R, E, A>, predicate: Predicate<A>): Stream<R, E, Chunk.Chunk<A>>
}
```
