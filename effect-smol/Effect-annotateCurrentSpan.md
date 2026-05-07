Package: `effect`<br />
Module: `Effect`<br />

## Effect.annotateCurrentSpan

Adds an annotation to the current span if available.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  yield* Effect.annotateCurrentSpan("userId", "123")
  yield* Effect.annotateCurrentSpan({
    operation: "user-lookup",
    timestamp: Date.now()
  })
  yield* Effect.log("User lookup completed")
  return "success"
})

const traced = Effect.withSpan(program, "user-operation")
```

**Signature**

```ts
declare const annotateCurrentSpan: { (key: string, value: unknown): Effect<void>; (values: Record<string, unknown>): Effect<void>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7672)

Since v2.0.0