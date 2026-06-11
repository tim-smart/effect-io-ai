Package: `effect`<br />
Module: `Tracer`<br />

## Tracer.ParentSpanKey

Defines the string key for the parent-span context service.

**When to use**

Use when you need the raw context key for parent span lookup in lower-level
tracing code.

**Example** (Reading the parent span key)

```ts
import { Tracer } from "effect"

// The key used to identify parent spans in the context
console.log(Tracer.ParentSpanKey) // "effect/Tracer/ParentSpan"
```

**Signature**

```ts
declare const ParentSpanKey: "effect/Tracer/ParentSpan"
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tracer.ts#L147)

Since v4.0.0