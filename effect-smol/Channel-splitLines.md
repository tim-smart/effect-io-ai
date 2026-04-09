Package: `effect`<br />
Module: `Channel`<br />

## Channel.splitLines

Splits upstream string chunks into lines, recognizing `\n`, `\r\n`, and
standalone `\r` as line terminators. The behavior matches
`String.linesIterator` regardless of how the input is chunked.

A line terminator at the very end of the stream does **not** produce a
trailing empty line (consistent with `String.linesIterator`). Conversely,
if the stream ends without a terminator the final partial line is still
emitted.

**Example**

```ts
import { Effect, Stream } from "effect"

Effect.runPromise(Effect.gen(function*() {
  const result = yield* Stream.runCollect(
    Stream.splitLines(Stream.make("hel", "lo\r\nwor", "ld\n"))
  )
  console.log(result)
  // [ 'hello', 'world' ]
}))
```

**Signature**

```ts
declare const splitLines: <Err, Done>() => Channel<Arr.NonEmptyReadonlyArray<string>, Err, Done, Arr.NonEmptyReadonlyArray<string>, Err, Done>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Channel.ts#L5924)

Since v2.0.0