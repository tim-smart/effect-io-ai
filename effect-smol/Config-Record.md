Package: `effect`<br />
Module: `Config`<br />

## Config.Record

A `Schema.Codec` for key-value record types that can also be parsed from
a flat comma-separated string.

When to use:
- Reading key-value maps from a single env var (e.g. OpenTelemetry
  resource attributes).

Accepts either a JSON-like record from the provider or a flat string like
`"key1=val1,key2=val2"`. The `separator` (default `","`) and
`keyValueSeparator` (default `"="`) can be customized.

**Example** (Parsing a comma-separated record)

```ts
import { Config, ConfigProvider, Effect, Schema } from "effect"

const schema = Config.Record(Schema.String, Schema.String)
const config = Config.schema(schema, "OTEL_RESOURCE_ATTRIBUTES")

const provider = ConfigProvider.fromEnv({
  env: {
    OTEL_RESOURCE_ATTRIBUTES:
      "service.name=my-service,service.version=1.0.0,custom.attribute=value"
  }
})

console.dir(Effect.runSync(config.parse(provider)))
// {
//   'service.name': 'my-service',
//   'service.version': '1.0.0',
//   'custom.attribute': 'value'
// }
```

**Signature**

```ts
declare const Record: <K extends Schema.Record.Key, V extends Schema.Top>(key: K, value: V, options?: { readonly separator?: string | undefined; readonly keyValueSeparator?: string | undefined; }) => Schema.Union<readonly [Schema.$Record<K, V>, Schema.compose<Schema.$Record<K, V>, Schema.decodeTo<Schema.$Record<Schema.String, Schema.String>, Schema.String, never, never>>]>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L795)

Since v4.0.0