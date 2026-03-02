Package: `effect`<br />
Module: `Stream`<br />

## Stream.forever

Repeats this stream forever.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make("A", "B").pipe(
  Stream.forever,
  Stream.take(5)
)

const program = Effect.gen(function*() {
  const output = yield* Stream.runCollect(stream)
  yield* Console.log(output)
})

Effect.runPromise(program)
// Output: [ "A", "B", "A", "B", "A" ]
```

**Signature**

```ts
declare const forever: <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L2698)

Since v2.0.0