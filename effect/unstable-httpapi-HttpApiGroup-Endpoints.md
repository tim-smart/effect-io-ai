Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.Endpoints

Extracts the endpoint union contained in an `HttpApiGroup`.

**Signature**

```ts
type Endpoints<Group> = Group extends HttpApiGroup<infer _Identifier, infer _Endpoints, infer _TopLevel> ?
  _Endpoints
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiGroup.ts#L209)

Since v4.0.0