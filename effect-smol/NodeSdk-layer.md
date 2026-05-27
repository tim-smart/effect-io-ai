Package: `@effect/opentelemetry`<br />
Module: `NodeSdk`<br />

## NodeSdk.layer

Creates a Node OpenTelemetry layer from configuration, enabling tracing, metrics, and logging only when their processors or readers are supplied.

**When to use**

Use to install OpenTelemetry support for a Node.js Effect application from
one configuration object, enabling tracing, metrics, logging, or any
combination of those signals based on the processors and readers supplied.

**Details**

The configuration can be provided lazily or effectfully. The layer always
provides `Resource.Resource`, building it from environment variables and any
explicit resource metadata in the configuration.

**Gotchas**

Register Node auto-instrumentations before importing modules that should be
patched, because many Node instrumentations hook module loading.

**Signature**

```ts
declare const layer: { (evaluate: LazyArg<Configuration>): Layer.Layer<Resource.Resource>; <R, E>(evaluate: Effect.Effect<Configuration, E, R>): Layer.Layer<Resource.Resource, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/NodeSdk.ts#L122)

Since v4.0.0