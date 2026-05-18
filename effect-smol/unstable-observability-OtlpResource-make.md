Package: `effect`<br />
Module: `OtlpResource`<br />

## OtlpResource.make

Creates an OTLP resource from service metadata and additional attributes.

The resource always includes `service.name`, includes `service.version` when
provided, and converts custom attributes into OTLP attribute values.

**Signature**

```ts
declare const make: (options: { readonly serviceName: string; readonly serviceVersion?: string | undefined; readonly attributes?: Record<string, unknown> | undefined; }) => Resource
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OtlpResource.ts#L50)

Since v4.0.0