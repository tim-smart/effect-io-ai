Package: `effect`<br />
Module: `Sink`<br />

## Sink.succeed

A sink that immediately ends with the specified value.

**Example**

```ts
import { Effect, Sink, Stream } from "effect"

// Create a sink that always yields the same value
const sink = Sink.succeed(42)

// Use it with a stream
const stream = Stream.make(1, 2, 3)
const program = Stream.run(stream, sink)

Effect.runPromise(program).then(console.log)
// Output: 42
```

**Signature**

```ts
declare const succeed: <A, L = never>(a: A, leftovers?: NonEmptyReadonlyArray<L> | undefined) => Sink<A, unknown, L>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L464)

Since v2.0.0