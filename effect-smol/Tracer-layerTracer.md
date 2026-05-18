Package: `@effect/opentelemetry`<br />
Module: `Tracer`<br />

## Tracer.layerTracer

Layer that creates an OpenTelemetry tracer from the provided tracer provider and resource metadata.

**Signature**

```ts
declare const layerTracer: Layer.Layer<OtelTracer, never, OtelTracerProvider | Resource>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/Tracer.ts#L182)

Since v4.0.0