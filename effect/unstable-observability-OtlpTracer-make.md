Package: `effect`<br />
Module: `OtlpTracer`<br />

## OtlpTracer.make

Creates a `Tracer` that exports ended sampled spans to an OTLP traces endpoint.

**Details**

Spans are batched using the configured interval and batch size, serialized
with `OtlpSerialization`, and flushed when the surrounding `Scope` closes.

**Signature**

```ts
declare const make: (options: { readonly url: string; readonly resource?: { readonly serviceName?: string | undefined; readonly serviceVersion?: string | undefined; readonly attributes?: Record<string, unknown>; } | undefined; readonly headers?: Headers.Input | undefined; readonly exportInterval?: Duration.Input | undefined; readonly maxBatchSize?: number | undefined; readonly context?: (<X>(primitive: Tracer.EffectPrimitive<X>, span: Tracer.AnySpan) => X) | undefined; readonly shutdownTimeout?: Duration.Input | undefined; }) => Effect.Effect<Tracer.Tracer, never, OtlpSerialization | HttpClient.HttpClient | Scope.Scope>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/OtlpTracer.ts#L45)

Since v4.0.0