Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.WithName

Selects the endpoint with the specified name from a union of endpoints.

**Signature**

```ts
type WithName<Endpoints, Name> = Extract<Endpoints, { readonly name: Name }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L708)

Since v4.0.0