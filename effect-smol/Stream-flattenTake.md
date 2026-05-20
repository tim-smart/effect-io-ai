Package: `effect`<br />
Module: `Stream`<br />

## Stream.flattenTake

Unwraps `Take` values, emitting elements from non-empty arrays and ending or
failing when the `Exit` signals completion.

**Example** (Flattening Take values)

```ts
import { Array, Console, Effect, Exit, Stream } from "effect"

const program = Effect.gen(function*() {
  const takes = Stream.make(
    Array.make(1, 2),
    Array.make(3),
    Exit.succeed<void>(undefined)
  )

  const values = yield* Stream.flattenTake(takes).pipe(Stream.runCollect)
  yield* Console.log(values)
})

Effect.runPromise(program)
// Output: [ 1, 2, 3 ]
```

**Signature**

```ts
declare const flattenTake: <A, E, E2, R>(self: Stream<Take.Take<A, E>, E2, R>) => Stream<A, E | E2, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L3004)

Since v2.0.0