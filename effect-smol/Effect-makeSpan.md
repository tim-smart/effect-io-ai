Package: `effect`<br />
Module: `Effect`<br />

## Effect.makeSpan

Create a new span for tracing.

**Example**

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7724)

Since v2.0.0