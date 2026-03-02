Package: `effect`<br />
Module: `Sink`<br />

## Sink.failCauseSync

Creates a sink halting with a specified lazily evaluated `Cause`.

**Example**

```ts
import { Cause, Effect, Sink, Stream } from "effect"

// Create a sink that fails with a lazy cause
const sink = Sink.failCauseSync(() => Cause.fail(new Error("Lazy cause")))

// Use it with a stream
const stream = Stream.make(1, 2, 3)
const program = Stream.run(stream, sink)

Effect.runPromise(program).catch(console.log)
// Output: Error: Lazy cause
```

**Signature**

```ts
declare const failCauseSync: <E>(evaluate: LazyArg<Cause.Cause<E>>) => Sink<never, unknown, never, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L573)

Since v2.0.0