Package: `@effect/opentelemetry`<br />
Module: `WebSdk`<br />

## WebSdk.layer

Creates a Web OpenTelemetry layer from configuration, providing the resource and enabling tracing, metrics, and logging when configured.

**When to use**

Use to install browser OpenTelemetry support when service metadata is
configured in code and telemetry processors or readers are supplied directly.

**Details**

The configuration can be provided lazily or effectfully. The layer always
provides `Resource.Resource`; tracing, metrics, and logging are installed only
when the corresponding processors or readers are non-empty.

**Gotchas**

Browser resource metadata is explicit; this layer does not read
OpenTelemetry environment variables. Empty processor or reader arrays are
treated as not configured.

**Signature**

```ts
declare const layer: { (evaluate: LazyArg<Configuration>): Layer.Layer<Resource.Resource>; <E, R>(evaluate: Effect.Effect<Configuration, E, R>): Layer.Layer<Resource.Resource, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/WebSdk.ts#L120)

Since v4.0.0