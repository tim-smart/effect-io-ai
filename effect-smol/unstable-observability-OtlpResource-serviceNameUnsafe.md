Package: `effect`<br />
Module: `OtlpResource`<br />

## OtlpResource.serviceNameUnsafe

Returns the `service.name` attribute from an OTLP resource.

**When to use**

Use when an OTLP resource is known to contain a string `service.name` and
throwing is acceptable if that invariant is broken.

**Gotchas**

Throws if the resource does not contain a string `service.name` attribute.

**Signature**

```ts
declare const serviceNameUnsafe: (resource: Resource) => string
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/OtlpResource.ts#L169)

Since v4.0.0