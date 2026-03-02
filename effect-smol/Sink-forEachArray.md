Package: `effect`<br />
Module: `Sink`<br />

## Sink.forEachArray

A sink that executes the provided effectful function for every Chunk fed
to it.

**Example**

```ts
import { Console, Effect, Sink, Stream } from "effect"

// Create a sink that processes chunks
const sink = Sink.forEachArray((chunk: ReadonlyArray<number>) =>
  Console.log(
    `Processing chunk of ${chunk.length} items: [${chunk.join(", ")}]`
  )
)

// Use it with a stream
const stream = Stream.make(1, 2, 3, 4, 5)
const program = Stream.run(stream, sink)

Effect.runPromise(program)
// Output: Processing chunk of 5 items: [1, 2, 3, 4, 5]
```

**Signature**

```ts
declare const forEachArray: <In, X, E, R>(f: (input: NonEmptyReadonlyArray<In>) => Effect.Effect<X, E, R>) => Sink<void, In, never, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1516)

Since v4.0.0