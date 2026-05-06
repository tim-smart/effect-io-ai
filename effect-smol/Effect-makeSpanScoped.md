Package: `effect`<br />
Module: `Effect`<br />

## Effect.makeSpanScoped

Create a new span for tracing, and automatically close it when the Scope
finalizes.

The span is not added to the current span stack, so no child spans will be
created for it.

**Example**

```ts
import { Effect } from "effect"

const program = Effect.scoped(
  Effect.gen(function*() {
    const span = yield* Effect.makeSpanScoped("scoped-operation")
    yield* Effect.log("Working...")
    return "done"
    // Span automatically closes when scope ends
  })
)
```

**Signature**

```ts
declare const makeSpanScoped: (name: string, options?: SpanOptionsNoTrace | undefined) => Effect<Span, never, Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L7840)

Since v2.0.0