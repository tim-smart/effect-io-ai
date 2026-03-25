Package: `effect`<br />
Module: `Stream`<br />

## Stream.ensuring

Executes the provided finalizer after this stream's finalizers run.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const stream = Stream.fromArray([1, 2]).pipe(
  Stream.ensuring(Effect.orDie(Console.log("cleanup")))
)

const program = Effect.gen(function*() {
  const collected = yield* Stream.runCollect(stream)
  yield* Console.log(collected)
})

Effect.runPromise(program)
//=> cleanup
//=> [1, 2]
```

**Signature**

```ts
declare const ensuring: { <R2>(finalizer: Effect.Effect<unknown, never, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R | R2>; <A, E, R, R2>(self: Stream<A, E, R>, finalizer: Effect.Effect<unknown, never, R2>): Stream<A, E, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9208)

Since v4.0.0