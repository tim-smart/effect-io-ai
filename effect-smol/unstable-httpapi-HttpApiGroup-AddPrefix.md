Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.AddPrefix

Returns the type of a group after adding the supplied path prefix to each endpoint in the group.

**Signature**

```ts
type AddPrefix<Group, Prefix> = Group extends
  HttpApiGroup<infer _Name, infer _Endpoints, infer _TopLevel> ?
  HttpApiGroup<_Name, HttpApiEndpoint.AddPrefix<_Endpoints, Prefix>, _TopLevel>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiGroup.ts#L288)

Since v4.0.0