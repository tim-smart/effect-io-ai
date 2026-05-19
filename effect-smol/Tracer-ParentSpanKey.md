Package: `effect`<br />
Module: `Tracer`<br />

## Tracer.ParentSpanKey

The string key used to identify the `ParentSpan` context service.

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

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Tracer.ts#L175)

Since v4.0.0