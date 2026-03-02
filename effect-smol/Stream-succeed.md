Package: `effect`<br />
Module: `Stream`<br />

## Stream.succeed

Creates a single-valued pure stream.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const values = yield* Stream.succeed(3).pipe(Stream.runCollect)
  yield* Console.log(values)
})

Effect.runPromise(program)
// [ 3 ]
```

**Signature**

```ts
declare const succeed: <A>(value: A) => Stream<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L730)

Since v2.0.0