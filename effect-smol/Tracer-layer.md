Package: `@effect/opentelemetry`<br />
Module: `Tracer`<br />

## Tracer.layer

Layer that creates an OpenTelemetry tracer from a provider and resource, then installs it as the Effect tracer.

**Signature**

```ts
declare const layer: Layer.Layer<OtelTracer, never, OtelTracerProvider | Resource>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/Tracer.ts#L228)

Since v4.0.0