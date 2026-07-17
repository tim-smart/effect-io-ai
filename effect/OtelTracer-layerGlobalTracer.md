Package: `@effect/opentelemetry`<br />
Module: `OtelTracer`<br />

## OtelTracer.layerGlobalTracer

Layer that creates an OpenTelemetry tracer from the global tracer provider and the current resource.

**Signature**

```ts
declare const layerGlobalTracer: Layer.Layer<OtelTracer, never, Resource>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/OtelTracer.ts#L200)

Since v4.0.0