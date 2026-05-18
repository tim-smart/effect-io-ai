Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.ToService

Derives the API-specific `ApiGroup` service identity for an HTTP API group.

**Signature**

```ts
type ToService<ApiId, A> = A extends HttpApiGroup<infer Name, infer _Endpoints, infer _TopLevel> ?
  ApiGroup<ApiId, Name>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiGroup.ts#L166)

Since v4.0.0