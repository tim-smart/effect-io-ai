Package: `effect`<br />
Module: `Stream`<br />

## Stream.empty

Creates an empty stream.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const values = yield* Stream.empty.pipe(Stream.runCollect)
  yield* Console.log(values)
})

Effect.runPromise(program)
// []
```

**Signature**

```ts
declare const empty: Stream<never, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L709)

Since v4.0.0