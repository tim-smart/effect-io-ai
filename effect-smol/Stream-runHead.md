Package: `effect`<br />
Module: `Stream`<br />

## Stream.runHead

Runs the stream and returns the first element as an `Option`.

**Example**

```ts
import { Console, Effect, Option, Stream } from "effect"

const program = Effect.gen(function*() {
  const head = yield* Stream.runHead(Stream.make(1, 2, 3))
  yield* Console.log(Option.getOrThrow(head))
})

Effect.runPromise(program)
// 1
```

**Signature**

```ts
declare const runHead: <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<Option.Option<A>, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L10012)

Since v2.0.0