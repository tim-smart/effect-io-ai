Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.ExcludeName

Removes endpoints with the specified name from a union of endpoints.

**Signature**

```ts
type ExcludeName<Endpoints, Name> = Exclude<Endpoints, { readonly name: Name }>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L745)

Since v4.0.0