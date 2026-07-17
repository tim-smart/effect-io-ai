Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Query

Extracts the schema used for an endpoint's query parameters.

**Signature**

```ts
type Query<Endpoint> = Endpoint extends ConstraintRequest ? Endpoint["~Query"]
  : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiEndpoint.ts#L373)

Since v4.0.0