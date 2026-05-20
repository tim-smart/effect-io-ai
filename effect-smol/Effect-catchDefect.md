Package: `effect`<br />
Module: `Effect`<br />

## Effect.catchDefect

Recovers from defects using a provided recovery function.

**When to Use**

Use this sparingly, usually at integration boundaries where defects must be
reported or translated for an external system.

**Details**

`catchDefect` handles unexpected defects, such as thrown exceptions or
values passed to `die`, without catching typed failures or interruptions.

**When to Recover from Defects**

Defects are unexpected errors that typically should not be recovered from, as
they often indicate serious issues. In some cases, such as dynamically loaded
plugins, controlled recovery may be needed.

**Example** (Recovering from defects)

```ts
import { Console, Effect } from "effect"

// An effect that might throw an unexpected error (defect)
const program = Effect.sync(() => {
  throw new Error("Unexpected error")
})

// Recover from defects only
const recovered = Effect.catchDefect(program, (defect) => {
  return Console.log(`Caught defect: ${defect}`).pipe(
    Effect.as("Recovered from defect")
  )
})
```

**Signature**

```ts
declare const catchDefect: { <A2, E2, R2>(f: (defect: unknown) => Effect<A2, E2, R2>): <A, E, R>(self: Effect<A, E, R>) => Effect<A2 | A, E2 | E, R2 | R>; <A, E, R, A2, E2, R2>(self: Effect<A, E, R>, f: (defect: unknown) => Effect<A2, E2, R2>): Effect<A | A2, E | E2, R | R2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L3018)

Since v4.0.0