Package: `effect`<br />
Module: `Stream`<br />

## Stream.async

Creates a stream from an asynchronous callback that can be called multiple
times. The optionality of the error type `E` in `Emit` can be used to
signal the end of the stream by setting it to `None`.

The registration function can optionally return an `Effect`, which will be
executed if the `Fiber` executing this Effect is interrupted.

**Example**

```ts
import type { StreamEmit } from "effect"
import { Chunk, Effect, Option, Stream } from "effect"

const events = [1, 2, 3, 4]

const stream = Stream.async(
  (emit: StreamEmit.Emit<never, never, number, void>) => {
    events.forEach((n) => {
      setTimeout(() => {
        if (n === 3) {
          emit(Effect.fail(Option.none())) // Terminate the stream
        } else {
          emit(Effect.succeed(Chunk.of(n))) // Add the current item to the stream
        }
      }, 100 * n)
    })
  }
)

Effect.runPromise(Stream.runCollect(stream)).then(console.log)
// { _id: 'Chunk', values: [ 1, 2 ] }

```

**Signature**

```ts
declare const async: <A, E = never, R = never>(register: (emit: Emit.Emit<R, E, A, void>) => Effect.Effect<void, never, R> | void, bufferSize?: number | "unbounded" | { readonly bufferSize?: number | undefined; readonly strategy?: "dropping" | "sliding" | "suspend" | undefined; } | undefined) => Stream<A, E, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Stream.ts#L360)

Since v2.0.0