# split

Splits elements based on a predicate.

```ts
import * as Stream from '@effect/stream/Stream'
import { pipe } from '@effect/data/Function'

pipe(
  Stream.range(1, 10),
  Stream.split((n) => n % 4 === 0),
  Stream.runCollect
)
// => Chunk(Chunk(1, 2, 3), Chunk(5, 6, 7), Chunk(9))
```

Part of the `Stream` module, imported from `@effect/stream/Stream`.

**Signature**

```ts
export declare const split: {
  <A>(predicate: Predicate<A>): <R, E>(self: Stream<R, E, A>) => Stream<R, E, Chunk.Chunk<A>>
  <R, E, A>(self: Stream<R, E, A>, predicate: Predicate<A>): Stream<R, E, Chunk.Chunk<A>>
}
```
