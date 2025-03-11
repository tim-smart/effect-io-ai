## ensuring

Executes the provided finalizer after this stream's finalizers run.

**Example**

```ts
import { Console, Effect, Stream } from "effect"

const program = Stream.fromEffect(Console.log("Application Logic.")).pipe(
  Stream.concat(Stream.finalizer(Console.log("Finalizing the stream"))),
  Stream.ensuring(
    Console.log("Doing some other works after stream's finalization")
  )
)

// Effect.runPromise(Stream.runCollect(program)).then(console.log)
// Application Logic.
// Finalizing the stream
// Doing some other works after stream's finalization
// { _id: 'Chunk', values: [ undefined, undefined ] }
```

**Signature**

```ts
declare const ensuring: { <X, R2>(finalizer: Effect.Effect<X, never, R2>): <A, E, R>(self: Stream<A, E, R>) => Stream<A, E, R2 | R>; <A, E, R, X, R2>(self: Stream<A, E, R>, finalizer: Effect.Effect<X, never, R2>): Stream<A, E, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L1495)

Since v2.0.0