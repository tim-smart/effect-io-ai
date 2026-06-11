Package: `effect`<br />
Module: `Tracer`<br />

## Tracer.externalSpan

Creates an `ExternalSpan` from trace and span identifiers, defaulting
`sampled` to `true` and annotations to an empty context when they are not
provided.

**Example** (Creating an external span)

```ts
import { Effect, Tracer } from "effect"

// Create an external span from another tracing system
const span = Tracer.externalSpan({
  spanId: "span-abc-123",
  traceId: "trace-xyz-789",
  sampled: true
})

// Use the external span as a parent
const program = Effect.succeed("Hello").pipe(
  Effect.withSpan("child-operation", { parent: span })
)
```

**Signature**

```ts
declare const externalSpan: (options: { readonly spanId: string; readonly traceId: string; readonly sampled?: boolean | undefined; readonly annotations?: Context.Context<never> | undefined; }) => ExternalSpan
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tracer.ts#L447)

Since v2.0.0