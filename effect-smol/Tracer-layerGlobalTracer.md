Package: `@effect/opentelemetry`<br />
Module: `Tracer`<br />

## Tracer.layerGlobalTracer

Layer that creates an OpenTelemetry tracer from the global tracer provider and the current resource.

**Signature**

```ts
declare const layerGlobalTracer: Layer.Layer<OtelTracer, never, Resource>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/Tracer.ts#L200)

Since v4.0.0