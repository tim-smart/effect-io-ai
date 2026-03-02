Package: `effect`<br />
Module: `Sink`<br />

## Sink.die

Creates a sink halting with a specified defect.

**Example**

```ts
import { Effect, Sink, Stream } from "effect"

// Create a sink that dies with a defect
const sink = Sink.die(new Error("Defect error"))

// Use it with a stream
const stream = Stream.make(1, 2, 3)
const program = Stream.run(stream, sink)

Effect.runPromise(program).catch(console.log)
// Output: Error: Defect error
```

**Signature**

```ts
declare const die: (defect: unknown) => Sink<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L597)

Since v2.0.0