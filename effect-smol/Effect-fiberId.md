Package: `effect`<br />
Module: `Effect`<br />

## Effect.fiberId

Access the current fiber id executing the effect.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.log("event").pipe(
  // Read the current span with the fiber id for tagging.
  Effect.andThen(Effect.all([Effect.currentSpan, Effect.fiberId])),
  Effect.withSpan("A"),
  Effect.map(([span, fiberId]) => ({
    spanName: span.name,
    fiberId
  }))
)
```

**Signature**

```ts
declare const fiberId: Effect<number, never, never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8329)

Since v4.0.0