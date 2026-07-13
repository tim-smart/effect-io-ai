Package: `effect`<br />
Module: `HttpApiClient`<br />

## HttpApiClient.Client.TopLevelMethods

Extracts client methods for endpoints in top-level groups so they can be exposed
directly on the generated client object.

**Signature**

```ts
type TopLevelMethods<Groups, E, R> = {
    readonly [
      Endpoint in Extract<
        HttpApiGroup.Endpoints<Extract<Groups, { readonly topLevel: true }>>,
        HttpApiEndpoint.ConstraintRequest
      > as Endpoint["identifier"]
    ]: Method<Endpoint, E, R>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiClient.ts#L193)

Since v4.0.0