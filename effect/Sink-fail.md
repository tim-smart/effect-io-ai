Package: `effect`<br />
Module: `Sink`<br />

## Sink.fail

A sink that always fails with the specified error.

**Example** (Failing with an error)

```ts
import { Effect, Sink, Stream } from "effect"

// Create a sink that always fails
const sink = Sink.fail(new Error("Sink failed"))

// Use it with a stream
const stream = Stream.make(1, 2, 3)
const program = Stream.run(stream, sink)

Effect.runPromise(program).catch(console.log)
// Output: Error: Sink failed
```

**Signature**

```ts
declare const fail: <E>(e: E) => Sink<never, unknown, never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Sink.ts#L556)

Since v2.0.0