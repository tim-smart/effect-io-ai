Package: `effect`<br />
Module: `Stream`<br />

## Stream.run

Runs a stream with a sink and returns the sink result.

**Example**

```ts
import { Console, Effect, Sink, Stream } from "effect"

const program = Stream.run(Stream.make(1, 2, 3), Sink.sum)

Effect.runPromise(Effect.flatMap(program, Console.log))
// 6
```

**Signature**

```ts
declare const run: { <A2, A, L, E2, R2>(sink: Sink.Sink<A2, A, L, E2, R2>): <E, R>(self: Stream<A, E, R>) => Effect.Effect<A2, E2 | E, R | R2>; <A, E, R, L, A2, E2, R2>(self: Stream<A, E, R>, sink: Sink.Sink<A2, A, L, E2, R2>): Effect.Effect<A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Stream.ts#L9692)

Since v2.0.0