Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromArrays

Creates a stream from an arbitrary number of arrays.

**Example** (Creating a stream from an arbitrary number of arrays)

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const stream = Stream.fromArrays([1, 2], [3, 4])
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3, 4 ]
```

**Signature**

```ts
declare const fromArrays: <Arr extends ReadonlyArray<ReadonlyArray<any>>>(...arrays: Arr) => Stream<Arr[number][number]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1257)

Since v4.0.0