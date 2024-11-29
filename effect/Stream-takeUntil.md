# takeUntil

Takes all elements of the stream until the specified predicate evaluates to
`true`.

To import and use `takeUntil` from the "Stream" module:

ts
import \* as Stream from "effect/Stream"
// Can be accessed like this
Stream.takeUntil
undefined

**Example**

```ts
import { Effect, Stream } from "effect"

const stream = Stream.takeUntil(
  Stream.iterate(0, (n) => n + 1),
  (n) => n === 4
)

// Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 0, 1, 2, 3, 4 ] }
```

**Signature**

```ts
export declare const takeUntil: {
  <A>(predicate: Predicate<NoInfer<A>>): <E, R>(self: Stream<A, E, R>) => Stream<A, E, R>
  <A, E, R>(self: Stream<A, E, R>, predicate: Predicate<A>): Stream<A, E, R>
}
```
