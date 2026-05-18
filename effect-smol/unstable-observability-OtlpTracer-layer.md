Package: `effect`<br />
Module: `OtlpTracer`<br />

## OtlpTracer.layer

Provides `Tracer.Tracer` using the OTLP tracer created by `make`.

**Signature**

```ts
declare const layer: (options: { readonly url: string; readonly resource?: { readonly serviceName?: string | undefined; readonly serviceVersion?: string | undefined; readonly attributes?: Record<string, unknown>; } | undefined; readonly headers?: Headers.Input | undefined; readonly exportInterval?: Duration.Input | undefined; readonly maxBatchSize?: number | undefined; readonly context?: (<X>(primitive: Tracer.EffectPrimitive<X>, span: Tracer.AnySpan) => X) | undefined; readonly shutdownTimeout?: Duration.Input | undefined; }) => Layer.Layer<never, never, OtlpSerialization | HttpClient.HttpClient>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OtlpTracer.ts#L135)

Since v4.0.0