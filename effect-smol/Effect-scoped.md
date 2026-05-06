Package: `effect`<br />
Module: `Effect`<br />

## Effect.scoped

Scopes all resources used in this workflow to the lifetime of the workflow,
ensuring that their finalizers are run as soon as this workflow completes
execution, whether by success, failure, or interruption.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L6174)

Since v2.0.0