Package: `effect`<br />
Module: `OtlpResource`<br />

## OtlpResource.serviceNameUnsafe

Returns the `service.name` attribute from an OTLP resource.

Throws if the resource does not contain a string `service.name` attribute.

**Signature**

```ts
declare const serviceNameUnsafe: (resource: Resource) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OtlpResource.ts#L129)

Since v4.0.0