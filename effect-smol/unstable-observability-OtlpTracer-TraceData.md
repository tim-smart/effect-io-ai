Package: `effect`<br />
Module: `OtlpTracer`<br />

## OtlpTracer.TraceData

Root OTLP traces payload containing spans grouped by resource.

**Signature**

```ts
export interface TraceData {
  readonly resourceSpans: Array<ResourceSpan>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OtlpTracer.ts#L356)

Since v4.0.0