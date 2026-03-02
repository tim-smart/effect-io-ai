Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromArray

Creates a stream from an array of values.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Stream.fromChunk`

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const stream = Stream.fromArray([1, 2, 3])
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3 ]
```

**Signature**

```ts
declare const fromArray: <A>(array: ReadonlyArray<A>) => Stream<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1085)

Since v4.0.0