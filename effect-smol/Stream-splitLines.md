Package: `effect`<br />
Module: `Stream`<br />

## Stream.splitLines

Splits a stream of strings into lines, handling `\n`, `\r`, and `\r\n` delimiters across chunks.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

Effect.runPromise(Effect.gen(function* () {
  const lines = yield* Stream.runCollect(
    Stream.make("a\nb\r\n", "c\n").pipe(Stream.splitLines)
  )
  yield* Console.log(lines)
}))
// ["a", "b", "c"]
```

**Signature**

```ts
declare const splitLines: <E, R>(self: Stream<string, E, R>) => Stream<string, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L8633)

Since v2.0.0