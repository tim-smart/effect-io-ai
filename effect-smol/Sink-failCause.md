Package: `effect`<br />
Module: `Sink`<br />

## Sink.failCause

Creates a sink halting with a specified `Cause`.

**Example**

```ts
import { Cause, Effect, Sink, Stream } from "effect"

// Create a sink that fails with a specific cause
const sink = Sink.failCause(Cause.fail(new Error("Custom cause")))

// Use it with a stream
const stream = Stream.make(1, 2, 3)
const program = Stream.run(stream, sink)

Effect.runPromise(program).catch(console.log)
// Output: Error: Custom cause
```

**Signature**

```ts
declare const failCause: <E>(cause: Cause.Cause<E>) => Sink<never, unknown, never, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L552)

Since v2.0.0