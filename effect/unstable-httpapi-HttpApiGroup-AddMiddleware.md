Package: `effect`<br />
Module: `HttpApiGroup`<br />

## HttpApiGroup.AddMiddleware

Returns the type of a group after applying a middleware identifier to every endpoint in the group.

**Signature**

```ts
type AddMiddleware<Group, Id> = Group extends
  HttpApiGroup<infer _Identifier, infer _Endpoints, infer _TopLevel> ?
  HttpApiGroup<_Identifier, HttpApiEndpoint.AddMiddleware<_Endpoints, Id>, _TopLevel>
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiGroup.ts#L301)

Since v4.0.0