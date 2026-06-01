Package: `effect`<br />
Module: `Effect`<br />

## Effect.makeSpan

Creates a new tracing span and returns it without managing its lifetime.

**Details**

The span is not added to the current span stack and is not ended
automatically. Use `withSpan`, `useSpan`, or `makeSpanScoped` when the span
should be installed as context or closed automatically.

**Example** (Creating a span manually)

```ts
import { Effect } from "effect"

const program = Effect.gen(function*() {
  const span = yield* Effect.makeSpan("my-operation")
  yield* Effect.log("Operation in progress")
  return "completed"
})
```

**Signature**

```ts
declare const makeSpan: (name: string, options?: SpanOptionsNoTrace) => Effect<Span>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L8221)

Since v2.0.0