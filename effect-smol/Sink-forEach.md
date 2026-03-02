Package: `effect`<br />
Module: `Sink`<br />

## Sink.forEach

A sink that executes the provided effectful function for every item fed
to it.

**Example**

```ts
import { Console, Effect, Sink, Stream } from "effect"

// Create a sink that logs each item
const sink = Sink.forEach((item: number) => Console.log(`Processing: ${item}`))

// Use it with a stream
const stream = Stream.make(1, 2, 3)
const program = Stream.run(stream, sink)

Effect.runPromise(program)
// Output:
// Processing: 1
// Processing: 2
// Processing: 3
```

**Signature**

```ts
declare const forEach: <In, X, E, R>(f: (input: In) => Effect.Effect<X, E, R>) => Sink<void, In, never, E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1486)

Since v2.0.0