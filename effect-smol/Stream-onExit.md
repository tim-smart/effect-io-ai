Package: `effect`<br />
Module: `Stream`<br />

## Stream.onExit

Runs the provided finalizer when the stream exits, passing the exit value.

**Example**

```ts
import { Console, Effect, Exit, Stream } from "effect"

const stream = Stream.make(1, 2, 3).pipe(
  Stream.onExit((exit) =>
    Exit.isSuccess(exit)
      ? Console.log("Stream completed successfully")
      : Console.log("Stream failed")
  )
)

Effect.runPromise(Effect.gen(function*() {
  yield* Stream.runCollect(stream)
}))
// Output:
// Stream completed successfully
```

**Signature**

```ts
declare const onExit: { <E, R2>(finalizer: (exit: Exit.Exit<unknown, E>) => Effect.Effect<unknown, never, R2>): <A, R>(self: Stream<A, E, R>) => Stream<A, E, R | R2>; <A, E, R, R2>(self: Stream<A, E, R>, finalizer: (exit: Exit.Exit<unknown, E>) => Effect.Effect<unknown, never, R2>): Stream<A, E, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L8930)

Since v4.0.0