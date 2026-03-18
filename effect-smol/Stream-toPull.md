Package: `effect`<br />
Module: `Stream`<br />

## Stream.toPull

Returns a scoped pull for manually consuming the stream's output chunks.

The pull fails with `Cause.Done` when the stream ends and with the stream
error on failure.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.make(1, 2, 3)

const program = Effect.scoped(
  Effect.gen(function*() {
    const pull = yield* Stream.toPull(stream)
    const chunk = yield* pull
    yield* Console.log(chunk)
  })
)

Effect.runPromise(program)
// [1, 2, 3]
```

**Signature**

```ts
declare const toPull: <A, E, R>(self: Stream<A, E, R>) => Effect.Effect<Pull.Pull<Arr.NonEmptyReadonlyArray<A>, E>, never, R | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L10139)

Since v2.0.0