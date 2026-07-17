Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.ClientServices

Computes the schema encoding and decoding services required by clients for all endpoints in a group.

**Signature**

```ts
type ClientServices<Group> = Group extends HttpApiGroup<infer _Identifier, infer _Endpoints, infer _TopLevel> ?
  HttpApiEndpoint.ClientServices<_Endpoints>
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiGroup.ts#L280)

Since v4.0.0