Package: `effect`<br />
Module: `Effect`<br />

## Effect.scoped

Runs an effect with a scope that closes when the effect completes.

**When to use**

Use to acquire scoped resources for the duration of a single workflow.

**Details**

Finalizers for resources acquired inside the workflow run as soon as the
workflow completes, whether by success, failure, or interruption.

**Example** (Running a scoped acquisition)

```ts
import { Console, Effect } from "effect"

const resource = Effect.acquireRelease(
  Console.log("Acquiring resource").pipe(Effect.as("resource")),
  () => Console.log("Releasing resource")
)

const program = Effect.scoped(
  Effect.gen(function*() {
    const res = yield* resource
    yield* Console.log(`Using ${res}`)
    return res
  })
)

Effect.runFork(program)
// Output: "Acquiring resource"
// Output: "Using resource"
// Output: "Releasing resource"
```

**Signature**

```ts
declare const scoped: <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6379)

Since v2.0.0