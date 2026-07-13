Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Headers

Extracts the schema used for an endpoint's request headers.

**Signature**

```ts
type Headers<Endpoint> = Endpoint extends ConstraintRequest ? Endpoint["~Headers"]
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L391)

Since v4.0.0