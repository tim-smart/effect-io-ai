Package: `effect`<br />
Module: `Effect`<br />

## Effect.withSpanScoped

Wraps the effect with a new span for tracing.

The span is ended when the Scope is finalized.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.scoped(
  Effect.gen(function*() {
    const task = Effect.log("Working...")
    yield* Effect.withSpanScoped(task, "scoped-task")
    return "completed"
  })
)
```

**Signature**

```ts
declare const withSpanScoped: { (name: string, options?: SpanOptions): <A, E, R>(self: Effect<A, E, R>) => Effect<A, E, Exclude<R, ParentSpan> | Scope>; <A, E, R>(self: Effect<A, E, R>, name: string, options?: SpanOptions): Effect<A, E, Exclude<R, ParentSpan> | Scope>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7887)

Since v2.0.0