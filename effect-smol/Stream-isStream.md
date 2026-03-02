Package: `effect`<br />
Module: `Stream`<br />

## Stream.isStream

Checks whether a value is a Stream.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const stream = Stream.make(1, 2, 3)
  const notStream = { data: [1, 2, 3] }

  yield* Console.log(Stream.isStream(stream))
  // true
  yield* Console.log(Stream.isStream(notStream))
  // false
})

Effect.runPromise(program)
```

**Signature**

```ts
declare const isStream: (u: unknown) => u is Stream<unknown, unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L263)

Since v2.0.0