Package: `effect`<br />
Module: `Tracer`<br />

## Tracer.SpanLink

A relationship from one span to another span, with attributes describing the
relationship.

**Example** (Linking spans)

```ts
import { Effect, Tracer } from "effect"

// Create a span link to connect spans
const externalSpan = Tracer.externalSpan({
  spanId: "external-span-123",
  traceId: "trace-456"
})

const link: Tracer.SpanLink = {
  span: externalSpan,
  attributes: { "link.type": "follows-from", "service": "external-api" }
}

const program = Effect.succeed("result").pipe(
  Effect.withSpan("linked-operation", { links: [link] })
)
```

**Signature**

```ts
export interface SpanLink {
  readonly span: AnySpan
  readonly attributes: Readonly<Record<string, unknown>>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tracer.ts#L420)

Since v2.0.0