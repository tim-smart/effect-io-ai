Package: `effect`<br />
Module: `Stream`<br />

## Stream.unwrap

Creates a stream produced from an `Effect`.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const effect = Effect.succeed(Stream.make(1, 2, 3))

const stream = Stream.unwrap(effect)

const program = Effect.gen(function*() {
  const chunk = yield* Stream.runCollect(stream)
  yield* Console.log(chunk)
})
// [1, 2, 3]
```

**Signature**

```ts
declare const unwrap: <A, E2, R2, E, R>(effect: Effect.Effect<Stream<A, E2, R2>, E, R>) => Stream<A, E | E2, R2 | Exclude<R, Scope.Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L1677)

Since v2.0.0