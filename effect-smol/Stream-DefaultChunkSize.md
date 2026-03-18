Package: `effect`<br />
Module: `Stream`<br />

## Stream.DefaultChunkSize

The default chunk size used by Stream constructors and combinators.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  yield* Console.log(Stream.DefaultChunkSize)
})

Effect.runPromise(program)
// Output: 4096
```

**Signature**

```ts
declare const DefaultChunkSize: number
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L293)

Since v2.0.0