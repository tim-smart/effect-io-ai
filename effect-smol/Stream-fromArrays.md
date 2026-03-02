Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromArrays

Creates a stream from an arbitrary number of arrays.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Stream.fromChunks`

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1138)

Since v4.0.0