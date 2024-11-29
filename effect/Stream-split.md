# split

Splits elements based on a predicate or refinement.

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

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.split
undefined

**Signature**

```ts
export declare const split: {
  <A, B extends A>(
    refinement: Refinement<NoInfer<A>, B>
  ): <E, R>(self: Stream<A, E, R>) => Stream<Chunk.Chunk<Exclude<A, B>>, E, R>
  <A>(predicate: Predicate<NoInfer<A>>): <E, R>(self: Stream<A, E, R>) => Stream<Chunk.Chunk<A>, E, R>
  <A, E, R, B extends A>(self: Stream<A, E, R>, refinement: Refinement<A, B>): Stream<Chunk.Chunk<Exclude<A, B>>, E, R>
  <A, E, R>(self: Stream<A, E, R>, predicate: Predicate<A>): Stream<Chunk.Chunk<A>, E, R>
}
```
