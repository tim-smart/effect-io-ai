Package: `effect`<br />
Module: `Stream`<br />

## Stream.when

Returns the specified stream if the given condition is satisfied, otherwise
returns an empty stream.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.gen(function*() {
  const result = yield* Stream.runCollect(
    Stream.when(Stream.make(1, 2, 3), Effect.succeed(false))
  )
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: []
```

**Signature**

```ts
declare const when: { <EX = never, RX = never>(test: Effect.Effect<boolean, EX, RX>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E | EX, R | RX>; <A, E, R, EX = never, RX = never>(self: Stream<A, E, R>, test: Effect.Effect<boolean, EX, RX>): Stream<A, E | EX, R | RX>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L4449)

Since v2.0.0