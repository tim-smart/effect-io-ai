Package: `effect`<br />
Module: `Stream`<br />

## Stream.mkString

Concatenates all emitted strings into a single string.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make("Hello", " ", "World", "!")
const program = Effect.gen(function*() {
  const text = yield* Stream.mkString(stream)
  yield* Console.log(text)
})

Effect.runPromise(program)
// Hello World!
```

**Signature**

```ts
declare const mkString: <E, R>(self: Stream<string, E, R>) => Effect.Effect<string, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L10149)

Since v2.0.0