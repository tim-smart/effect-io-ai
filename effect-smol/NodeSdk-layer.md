Package: `@effect/opentelemetry`<br />
Module: `NodeSdk`<br />

## NodeSdk.layer

Creates a Node OpenTelemetry layer from configuration, enabling tracing, metrics, and logging only when their processors or readers are supplied.

**Signature**

```ts
declare const layer: { (evaluate: LazyArg<Configuration>): Layer.Layer<Resource.Resource>; <R, E>(evaluate: Effect.Effect<Configuration, E, R>): Layer.Layer<Resource.Resource, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/NodeSdk.ts#L105)

Since v4.0.0