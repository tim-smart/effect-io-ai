Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.Service

Type-level service produced by the layer that implements one group of an HTTP
API.

**Details**

`HttpApiBuilder.group` provides this service, and `HttpApiBuilder.layer`
requires one service for each group in the API. The type carries both the API
id and the group identifier so the relationship between an API and its
implemented groups is checked at compile time.

**Signature**

```ts
export interface Service<ApiId extends string, Identifier extends string> {
  readonly _: unique symbol
  readonly apiId: ApiId
  readonly identifier: Identifier
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiGroup.ts#L142)

Since v4.0.0