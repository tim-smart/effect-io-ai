Package: `effect`<br />
Module: `Tracer`<br />

## Tracer.ParentSpan

Context service containing the `Span` or `ExternalSpan` to use as the parent
of newly-created child spans.

**Example** (Accessing the parent span)

```ts
import { Effect, Tracer } from "effect"

// Access the parent span from the context
const program = Effect.gen(function*() {
  const parentSpan = yield* Effect.service(Tracer.ParentSpan)
  console.log(`Parent span: ${parentSpan.spanId}`)
})
```

**Signature**

```ts
declare class ParentSpan
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tracer.ts#L198)

Since v2.0.0