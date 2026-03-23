Package: `effect`<br />
Module: `Sink`<br />

## Sink.unwrap

Creates a sink produced from a scoped effect.

**Example**

```ts
import { Console, Effect, Sink, Stream } from "effect"

// Create a sink from an effect that produces a sink
const sinkEffect = Effect.succeed(
  Sink.forEach((item: number) => Console.log(`Item: ${item}`))
)
const sink = Sink.unwrap(sinkEffect)

// Use it with a stream
const stream = Stream.make(1, 2, 3)
const program = Stream.run(stream, sink)

Effect.runPromise(program)
// Output:
// Item: 1
// Item: 2
// Item: 3
```

**Signature**

```ts
declare const unwrap: <A, In, L, E, R, R2>(effect: Effect.Effect<Sink<A, In, L, E, R2>, E, R>) => Sink<A, In, L, E, Exclude<R, Scope.Scope> | R2>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L1588)

Since v2.0.0