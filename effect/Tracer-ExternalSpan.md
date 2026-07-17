Package: `effect`<br />
Module: `Tracer`<br />

## Tracer.ExternalSpan

Represents a span created outside Effect's tracer, carrying trace and span
identifiers, sampling state, and annotations so it can be used as a parent or
link in Effect tracing.

**Example** (Creating an external span value)

```ts
import { Context } from "effect"
import type { Tracer } from "effect"

// Create an external span from another tracing system
const externalSpan: Tracer.ExternalSpan = {
  _tag: "ExternalSpan",
  spanId: "span-abc-123",
  traceId: "trace-xyz-789",
  sampled: true,
  annotations: Context.empty()
}

console.log(`External span: ${externalSpan.spanId}`)
```

**Signature**

```ts
export interface ExternalSpan {
  readonly _tag: "ExternalSpan"
  readonly spanId: string
  readonly traceId: string
  readonly sampled: boolean
  readonly annotations: Context.Context<never>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Tracer.ts#L196)

Since v2.0.0