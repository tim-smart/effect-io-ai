Package: `@effect/opentelemetry`<br />
Module: `Tracer`<br />

## Tracer.layer

Layer that creates an OpenTelemetry tracer from a provider and resource, then installs it as the Effect tracer.

**When to use**

Use when you already provide an `OtelTracerProvider` and a `Resource`, and
want Effect spans backed by a tracer derived from them.

**See**

- `layerTracer` for creating only the OpenTelemetry tracer service
- `layerGlobal` for installing the Effect tracer from the global provider
- `layerWithoutOtelTracer` for installing an already-provided `OtelTracer`

**Signature**

```ts
declare const layer: Layer.Layer<OtelTracer, never, OtelTracerProvider | Resource>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/Tracer.ts#L237)

Since v4.0.0