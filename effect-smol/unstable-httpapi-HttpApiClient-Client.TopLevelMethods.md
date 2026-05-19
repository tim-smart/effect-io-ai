Package: `effect`<br />
Module: `HttpApiClient`<br />

## HttpApiClient.Client.TopLevelMethods

Extracts client methods for endpoints in top-level groups so they can be exposed
directly on the generated client object.

**Signature**

```ts
type TopLevelMethods<Groups, E, R> = Extract<Groups, { readonly topLevel: true }> extends
      HttpApiGroup.HttpApiGroup<infer _Id, infer _Endpoints, infer _TopLevel> ?
      _Endpoints extends infer Endpoint ? [HttpApiEndpoint.Name<Endpoint>, Method<Endpoint, E, R>]
      : never :
      never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiClient.ts#L172)

Since v4.0.0