Package: `effect`<br />
Module: `Effect`<br />

## Effect.Effect

The `Effect` interface defines a value that lazily describes a workflow or
job. The workflow requires some context `R`, and may fail with an error of
type `E`, or succeed with a value of type `A`.

`Effect` values model resourceful interaction with the outside world,
including synchronous, asynchronous, concurrent, and parallel interaction.
They use a fiber-based concurrency model, with built-in support for
scheduling, fine-grained interruption, structured concurrency, and high
scalability.

To run an `Effect` value, you need a `Runtime`, which is a type that is
capable of executing `Effect` values.

**Example**

```ts
import { Data, Effect } from "effect"

class TaskError extends Data.TaggedError("TaskError")<{ readonly message: string }> {}

// A simple effect that succeeds with a value
const success = Effect.succeed(42)

// An effect that will always fail
const risky = Effect.fail(new TaskError({ message: "Something went wrong" }))

// Effects can be composed using generator functions
const program = Effect.gen(function*() {
  const value = yield* success
  console.log(value) // 42
  return value * 2
})
```

**Signature**

```ts
export interface Effect<out A, out E = never, out R = never>
  extends Pipeable, Inspectable, Yieldable<Effect<A, E, R>, A, E, R>
{
  readonly [TypeId]: Variance<A, E, R>
  [Unify.typeSymbol]?: unknown
  [Unify.unifySymbol]?: EffectUnify<this>
  [Unify.ignoreSymbol]?: {}
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L173)

Since v2.0.0