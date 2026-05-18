Package: `@effect/opentelemetry`<br />
Module: `NodeSdk`<br />

## NodeSdk.layerTracerProvider

Creates a scoped Node OpenTelemetry tracer provider from one or more span processors and shuts it down when the layer is released.

**Signature**

```ts
declare const layerTracerProvider: (processor: SpanProcessor | NonEmptyReadonlyArray<SpanProcessor>, config?: Omit<TracerConfig, "resource"> & { readonly shutdownTimeout?: Duration.Input | undefined; }) => Layer.Layer<Tracer.OtelTracerProvider, never, Resource.Resource>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/NodeSdk.ts#L70)

Since v4.0.0