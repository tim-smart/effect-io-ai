Package: `effect`<br />
Module: `Stream`<br />

## Stream.zipWithIndex

Zips this stream together with the index of elements.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const indexed = yield* Stream.make("a", "b", "c", "d").pipe(
    Stream.zipWithIndex,
    Stream.runCollect
  )
  yield* Console.log(indexed)
})

Effect.runPromise(program)
// Output: [["a", 0], ["b", 1], ["c", 2], ["d", 3]]
```

**Signature**

```ts
declare const zipWithIndex: <A, E, R>(self: Stream<A, E, R>) => Stream<[A, number], E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L3525)

Since v2.0.0