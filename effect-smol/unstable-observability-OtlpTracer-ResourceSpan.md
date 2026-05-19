Package: `effect`<br />
Module: `OtlpTracer`<br />

## OtlpTracer.ResourceSpan

Group of OTLP scope spans associated with a single resource.

**Signature**

```ts
export interface ResourceSpan {
  readonly resource: Resource
  readonly scopeSpans: Array<ScopeSpan>
  readonly schemaUrl?: string | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OtlpTracer.ts#L322)

Since v4.0.0