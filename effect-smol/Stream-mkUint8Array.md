Package: `effect`<br />
Module: `Stream`<br />

## Stream.mkUint8Array

Concatenates the stream's `Uint8Array` chunks into a single `Uint8Array`.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(new Uint8Array([1, 2]), new Uint8Array([3, 4]))
const program = Effect.gen(function*() {
  const bytes = yield* Stream.mkUint8Array(stream)
  yield* Console.log([...bytes])
})

Effect.runPromise(program)
// [1, 2, 3, 4]
```

**Signature**

```ts
declare const mkUint8Array: <E, R>(self: Stream<Uint8Array, E, R>) => Effect.Effect<Uint8Array, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L10341)

Since v4.0.0