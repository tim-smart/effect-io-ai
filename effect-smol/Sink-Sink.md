Package: `effect`<br />
Module: `Sink`<br />

## Sink.Sink

A `Sink<A, In, L, E, R>` is used to consume elements produced by a `Stream`.
You can think of a sink as a function that will consume a variable amount of
`In` elements (could be 0, 1, or many), might fail with an error of type `E`,
and will eventually yield a value of type `A` together with a remainder of
type `L` (i.e. any leftovers).

**Example**

```ts
import { Effect } from "effect"
import * as Sink from "effect/Sink"
import * as Stream from "effect/Stream"

// Create a simple sink that always succeeds with a value
const sink: Sink.Sink<number> = Sink.succeed(42)

// Use the sink to consume a stream
const stream = Stream.make(1, 2, 3)
const program = Stream.run(stream, sink)

Effect.runPromise(program).then(console.log)
// Output: 42
```

**Signature**

```ts
export interface Sink<out A, in In = unknown, out L = never, out E = never, out R = never>
  extends Sink.Variance<A, In, L, E, R>, Pipeable
{
  readonly transform: (
    upstream: Pull.Pull<NonEmptyReadonlyArray<In>, never, void>,
    scope: Scope.Scope
  ) => Effect.Effect<End<A, L>, E, R>
  [Unify.typeSymbol]?: unknown
  [Unify.unifySymbol]?: SinkUnify<this>
  [Unify.ignoreSymbol]?: SinkUnifyIgnore
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sink.ts#L59)

Since v2.0.0