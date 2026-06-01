Package: `@effect/opentelemetry`<br />
Module: `Resource`<br />

## Resource.configToAttributes

Converts resource configuration into OpenTelemetry attributes, adding service name, optional service version, and telemetry SDK metadata.

**When to use**

Use to turn explicit service metadata into a raw OpenTelemetry attribute map
for lower-level resource construction or merging with environment-derived
attributes via `layerFromEnv`.

**Details**

The returned record copies `attributes` first, then sets `service.name`,
`telemetry.sdk.name`, and `telemetry.sdk.language`. `service.version` is
included only when `serviceVersion` is provided.

**Gotchas**

Custom values for `service.name` and `telemetry.sdk.*` are overwritten by this
helper. An empty `serviceVersion` is treated as absent.

**See**

- `layer` for creating a `Resource` layer from explicit metadata
- `layerFromEnv` for merging attributes with OpenTelemetry environment variables

**Signature**

```ts
declare const configToAttributes: (options: { readonly serviceName: string; readonly serviceVersion?: string; readonly attributes?: OtelApi.Attributes; }) => Record<string, string>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/Resource.ts#L101)

Since v4.0.0