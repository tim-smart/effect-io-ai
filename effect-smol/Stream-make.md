Package: `effect`<br />
Module: `Stream`<br />

## Stream.make

Creates a stream from a sequence of values.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3)

const program = Effect.gen(function*() {
  const values = yield* Stream.runCollect(stream)
  yield* Console.log(values) // [ 1, 2, 3 ]
})

Effect.runPromise(program)
```

**Signature**

```ts
declare const make: <const As extends ReadonlyArray<any>>(...values: As) => Stream<As[number]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L762)

Since v2.0.0