Package: `effect`<br />
Module: `Stream`<br />

## Stream.range

Constructs a stream from a range of integers, including both endpoints.

If the provided `min` is greater than `max`, the stream will not emit any
values.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const values = yield* Stream.range(1, 5).pipe(Stream.runCollect)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3, 4, 5 ]
```

**Signature**

```ts
declare const range: (min: number, max: number, chunkSize?: number) => Stream<number>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1613)

Since v4.0.0