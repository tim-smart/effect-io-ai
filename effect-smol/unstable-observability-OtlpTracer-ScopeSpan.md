Package: `effect`<br />
Module: `OtlpTracer`<br />

## OtlpTracer.ScopeSpan

Group of OTLP spans emitted by a single instrumentation scope.

**Signature**

```ts
export interface ScopeSpan {
  readonly scope: Scope
  readonly spans: Array<OtlpSpan>
  readonly schemaUrl?: string | undefined
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OtlpTracer.ts#L378)

Since v4.0.0