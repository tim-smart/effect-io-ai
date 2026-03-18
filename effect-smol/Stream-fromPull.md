Package: `effect`<br />
Module: `Stream`<br />

## Stream.fromPull

Creates a stream from a pull effect, such as one produced by `Stream.toPull`.

A pull effect yields chunks on demand and completes when the upstream stream ends.
See `Stream.toPull` for a matching producer.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Effect.scoped(
  Effect.gen(function*() {
    const source = Stream.make(1, 2, 3)
    const pull = yield* Stream.toPull(source)
    const stream = Stream.fromPull(Effect.succeed(pull))
    const values = yield* Stream.runCollect(stream)
    yield* Console.log(values)
  })
)

Effect.runPromise(program)
// Output: [1, 2, 3]
```

**Signature**

```ts
declare const fromPull: <A, E, R, EX, RX>(pull: Effect.Effect<Pull.Pull<Arr.NonEmptyReadonlyArray<A>, E, void, R>, EX, RX>) => Stream<A, Pull.ExcludeDone<E> | EX, R | RX>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L528)

Since v2.0.0