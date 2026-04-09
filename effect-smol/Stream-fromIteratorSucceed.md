Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromIteratorSucceed

Creates a stream that consumes values from an iterator.

The `maxChunkSize` parameter controls how many values are pulled per chunk.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

function* numbers() {
  yield 1
  yield 2
  yield 3
}

const stream = Stream.fromIteratorSucceed(numbers())

const program = Effect.gen(function* () {
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3 ]
```

**Signature**

```ts
declare const fromIteratorSucceed: <A>(iterator: IterableIterator<A>, maxChunkSize?: number) => Stream<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1043)

Since v2.0.0