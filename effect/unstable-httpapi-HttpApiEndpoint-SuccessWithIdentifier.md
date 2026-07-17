Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.SuccessWithIdentifier

Extracts the decoded success value type for the endpoint with the specified
identifier in an endpoint union.

**Signature**

```ts
type SuccessWithIdentifier<Endpoints, Identifier> = Success<
  WithIdentifier<Endpoints, Identifier>
> extends infer S ? SuccessType<S> : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiEndpoint.ts#L641)

Since v4.0.0