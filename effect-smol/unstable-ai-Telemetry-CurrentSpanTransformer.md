Package: `effect`<br />
Module: `Telemetry`<br />

## Telemetry.CurrentSpanTransformer

Service tag for providing a `SpanTransformer` to large language model
operations.

**When to use**

Use to retrieve or provide the current `SpanTransformer` through context for
language model span annotation.

**See**

- `SpanTransformer` for the transformer contract provided by this service

**Signature**

```ts
declare class CurrentSpanTransformer
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Telemetry.ts#L537)

Since v4.0.0