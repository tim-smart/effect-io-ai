Package: `effect`<br />
Module: `Tracer`<br />

## Tracer.SpanKind

OpenTelemetry-style role describing the kind of operation represented by a
span: internal work, server handling, client calls, producing, or consuming.

**Example** (Configuring span kinds)

```ts
import type { Tracer } from "effect"
import { Effect } from "effect"

// Different span kinds for different operations
const serverSpan = Effect.withSpan("handle-request", {
  kind: "server" as Tracer.SpanKind
})

const clientSpan = Effect.withSpan("api-call", {
  kind: "client" as Tracer.SpanKind
})

const internalSpan = Effect.withSpan("internal-process", {
  kind: "internal" as Tracer.SpanKind
})
```

**Signature**

```ts
type SpanKind = "internal" | "server" | "client" | "producer" | "consumer"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tracer.ts#L319)

Since v3.1.0