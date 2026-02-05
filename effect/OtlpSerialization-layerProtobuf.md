Package: `@effect/opentelemetry`<br />
Module: `OtlpSerialization`<br />

## OtlpSerialization.layerProtobuf

Protobuf serializer layer for OTLP telemetry data.

This serializer encodes telemetry data using Protocol Buffers binary
format with `application/x-protobuf` content type. It provides more
efficient wire format compared to JSON.

**Signature**

```ts
declare const layerProtobuf: Layer.Layer<OtlpSerialization, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/opentelemetry/src/OtlpSerialization.ts#L60)

Since v1.0.0