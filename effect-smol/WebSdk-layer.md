Package: `@effect/opentelemetry`<br />
Module: `WebSdk`<br />

## WebSdk.layer

Creates a Web OpenTelemetry layer from configuration, providing the resource and enabling tracing, metrics, and logging when configured.

**Signature**

```ts
declare const layer: { (evaluate: LazyArg<Configuration>): Layer.Layer<Resource.Resource>; <E, R>(evaluate: Effect.Effect<Configuration, E, R>): Layer.Layer<Resource.Resource, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/WebSdk.ts#L103)

Since v4.0.0