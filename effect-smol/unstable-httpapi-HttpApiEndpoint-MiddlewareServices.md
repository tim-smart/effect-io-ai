Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.MiddlewareServices

Extracts the additional services required by middleware applied to an endpoint.

**Signature**

```ts
type MiddlewareServices<Endpoint> = Endpoint extends { readonly "~MiddlewareServices": infer R } ? R
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L549)

Since v4.0.0