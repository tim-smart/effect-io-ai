Package: `effect`<br />
Module: `Tracer`<br />

## Tracer.SpanOptions

Options accepted by span-creating APIs, combining span metadata such as
attributes, links, parent/root selection, kind, sampling, and trace level
with stack trace capture settings.

**Example** (Configuring span options)

```ts
import { Effect } from "effect"
import type { Tracer } from "effect"

// Create an effect with span options
const options: Tracer.SpanOptions = {
  attributes: { "user.id": "123", "operation": "data-processing" },
  kind: "internal",
  root: false,
  captureStackTrace: true
}

const program = Effect.succeed("Hello World").pipe(
  Effect.withSpan("my-operation", options)
)
```

**Signature**

```ts
export interface SpanOptions extends SpanOptionsNoTrace, TraceOptions {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tracer.ts#L261)

Since v3.1.0