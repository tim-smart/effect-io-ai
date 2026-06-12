Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.SuccessWithName

Extracts the decoded success value type for the endpoint with the specified name
in an endpoint union.

**Signature**

```ts
type SuccessWithName<Endpoints, Name> = Success<
  WithName<Endpoints, Name>
> extends infer S ? SuccessType<S> : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L780)

Since v4.0.0