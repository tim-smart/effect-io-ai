Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Middleware

Extracts the middleware identifiers attached to an endpoint.

**Signature**

```ts
type Middleware<Endpoint> = Endpoint extends { readonly "~Middleware": infer M } ? M
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L400)

Since v4.0.0