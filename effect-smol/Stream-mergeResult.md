Package: `effect`<br />
Module: `Stream`<br />

## Stream.mergeResult

Merges this stream and the specified stream together, tagging values from the
left stream as `Result.succeed` and values from the right stream as `Result.fail`.

**Previously Known As**

This API replaces the following from Effect 3.x:

- `Stream.mergeEither`

**Example**

```ts
import { Console, Effect, Result, Stream } from "effect"

const left = Stream.fromEffect(Effect.succeed("left"))
const right = Stream.fromEffect(Effect.delay(Effect.succeed("right"), "10 millis"))

const merged = left.pipe(
  Stream.mergeResult(right),
  Stream.map(
    Result.match({
      onFailure: (value) => `right:${value}`,
      onSuccess: (value) => `left:${value}`
    })
  )
)

const program = Effect.gen(function*() {
  const result = yield* Stream.runCollect(merged)
  yield* Console.log(result)
})

Effect.runPromise(program)
// Output: [ "left:left", "right:right" ]
```

**Signature**

```ts
declare const mergeResult: { <A2, E2, R2>(that: Stream<A2, E2, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<Result.Result<A, A2>, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Stream<A, E, R>, that: Stream<A2, E2, R2>): Stream<Result.Result<A, A2>, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L2963)

Since v2.0.0