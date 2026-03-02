Package: `effect`<br />
Module: `Stream`<br />

## Stream.decodeText

Decodes Uint8Array chunks into strings using TextDecoder with an optional encoding.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const encoder = new TextEncoder()
const stream = Stream.make(
  encoder.encode("Hello"),
  encoder.encode(" World")
)

const program = Effect.gen(function*() {
  const decoded = yield* stream.pipe(
    Stream.decodeText,
    Stream.runCollect
  )
  yield* Console.log(decoded)
})

Effect.runPromise(program)
// ["Hello", " World"]
```

**Signature**

```ts
declare const decodeText: <Arg extends Stream<Uint8Array, any, any> | { readonly encoding?: string | undefined; } | undefined = { readonly encoding?: string | undefined; }>(streamOrOptions?: Arg, options?: { readonly encoding?: string | undefined; } | undefined) => [Arg] extends [Stream<Uint8Array, infer _E, infer _R>] ? Stream<string, _E, _R> : <E, R>(self: Stream<Uint8Array, E, R>) => Stream<string, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L8559)

Since v2.0.0