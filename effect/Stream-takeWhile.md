# takeWhile

Takes all elements of the stream for as long as the specified predicate
evaluates to `true`.

To import and use `takeWhile` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.takeWhile
undefined

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.takeWhile(
  Stream.iterate(0, (n) => n + 1),
  (n) => n < 5
)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 0, 1, 2, 3, 4 ] }
```

**Signature**

```ts
export declare const takeWhile: {
  <A, B extends A>(refinement: Refinement<NoInfer<A>, B>): <E, R>(self: Stream<A, E, R>) => Stream<B, E, R>
  <A>(predicate: Predicate<NoInfer<A>>): <E, R>(self: Stream<A, E, R>) => Stream<A, E, R>
  <A, E, R, B extends A>(self: Stream<A, E, R>, refinement: Refinement<A, B>): Stream<B, E, R>
  <A, E, R>(self: Stream<A, E, R>, predicate: Predicate<A>): Stream<A, E, R>
}
```
