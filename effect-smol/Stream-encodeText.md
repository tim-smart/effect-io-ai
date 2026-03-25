Package: `effect`<br />
Module: `Stream`<br />

## Stream.encodeText

Encodes a stream of strings into UTF-8 `Uint8Array` chunks.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make("Hello", " ", "World")
const program = Effect.gen(function*() {
  const encoded = Stream.encodeText(stream)
  const chunks = yield* Stream.runCollect(encoded)
  const bytes = chunks.map((chunk) => [...chunk])
  yield* Console.log(bytes)
})

Effect.runPromise(program)
// [[72, 101, 108, 108, 111], [32], [87, 111, 114, 108, 100]]
```

**Signature**

```ts
declare const encodeText: <E, R>(self: Stream<string, E, R>) => Stream<Uint8Array, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L8690)

Since v2.0.0