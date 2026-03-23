Package: `effect`<br />
Module: `Sink`<br />

## Sink.failSync

A sink that always fails with the specified lazily evaluated error.

**Example**

```ts
import { Effect, Sink, Stream } from "effect"

// Create a sink that fails with a lazy error
const sink = Sink.failSync(() => new Error("Lazy error"))

// Use it with a stream
const stream = Stream.make(1, 2, 3)
const program = Stream.run(stream, sink)

Effect.runPromise(program).catch(console.log)
// Output: Error: Lazy error
```

**Signature**

```ts
declare const failSync: <E>(evaluate: LazyArg<E>) => Sink<never, unknown, never, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L528)

Since v2.0.0