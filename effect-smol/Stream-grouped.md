Package: `effect`<br />
Module: `Stream`<br />

## Stream.grouped

Partitions the stream into non-empty arrays of the specified size.

The final array may be smaller if there are not enough elements to fill it.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const grouped = yield* Stream.range(1, 8).pipe(
    Stream.grouped(3),
    Stream.runCollect
  )
  yield* Console.log(grouped)
})

Effect.runPromise(program)
// Output: [ [ 1, 2, 3 ], [ 4, 5, 6 ], [ 7, 8 ] ]
```

**Signature**

```ts
declare const grouped: { (n: number): <A, E, R>(self: Stream<A, E, R>) => Stream<Arr.NonEmptyReadonlyArray<A>, E, R>; <A, E, R>(self: Stream<A, E, R>, n: number): Stream<Arr.NonEmptyReadonlyArray<A>, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L7531)

Since v2.0.0