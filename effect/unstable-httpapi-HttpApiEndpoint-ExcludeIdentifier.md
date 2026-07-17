Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.ExcludeIdentifier

Removes endpoints with the specified identifier from a union of endpoints.

**Signature**

```ts
type ExcludeIdentifier<Endpoints, Identifier> = Exclude<
  Endpoints,
  { readonly identifier: Identifier }
>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiEndpoint.ts#L603)

Since v4.0.0