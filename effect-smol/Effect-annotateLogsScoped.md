Package: `effect`<br />
Module: `Effect`<br />

## Effect.annotateLogsScoped

Adds log annotations to the current scope.

**When to use**

Use to attach log annotations that last until the current scope closes.

**Details**

This differs from `annotateLogs`, which only annotates a specific effect.
`annotateLogsScoped` updates annotations for the entire current `Scope` and
restores the previous annotations when the scope closes.

**Example** (Adding scoped log annotations)

```ts
import { Effect } from "effect"

const program = Effect.scoped(
  Effect.gen(function*() {
    yield* Effect.log("before")
    yield* Effect.annotateLogsScoped({ requestId: "req-123" })
    yield* Effect.log("inside scope")
  })
)

Effect.runPromise(program)
```

**See**

- `annotateLogs` for annotating one effect

**Signature**

```ts
declare const annotateLogsScoped: { (key: string, value: unknown): Effect<void, never, Scope>; (values: Record<string, unknown>): Effect<void, never, Scope>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L14012)

Since v3.1.0