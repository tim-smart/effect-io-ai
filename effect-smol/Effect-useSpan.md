Package: `effect`<br />
Module: `Effect`<br />

## Effect.useSpan

Create a new span for tracing, and automatically close it when the effect
completes.

The span is not added to the current span stack, so no child spans will be
created for it.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.useSpan(
  "user-operation",
  (span) =>
    Effect.gen(function*() {
      yield* Effect.log("Processing user data")
      return "success"
    })
)
```

**Signature**

```ts
declare const useSpan: { <A, E, R>(name: string, evaluate: (span: Span) => Effect<A, E, R>): Effect<A, E, R>; <A, E, R>(name: string, options: SpanOptionsNoTrace, evaluate: (span: Span) => Effect<A, E, R>): Effect<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7814)

Since v2.0.0