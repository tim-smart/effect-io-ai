Package: `effect`<br />
Module: `Tracer`<br />

## Tracer.AnySpan

A span value that can participate in tracing, either an Effect-managed
`Span` or an `ExternalSpan` propagated from another tracing system.

**Example** (Accepting any span)

```ts
import { Effect, Tracer } from "effect"

// Function that accepts any span type
const logSpan = (span: Tracer.AnySpan) => {
  console.log(`Span ID: ${span.spanId}, Trace ID: ${span.traceId}`)
  return Effect.succeed(span)
}

// Works with both Span and ExternalSpan
const externalSpan = Tracer.externalSpan({
  spanId: "span-123",
  traceId: "trace-456"
})
```

**Signature**

```ts
type AnySpan = Span | ExternalSpan
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tracer.ts#L125)

Since v2.0.0