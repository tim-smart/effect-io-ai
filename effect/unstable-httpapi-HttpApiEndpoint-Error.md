Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Error

Extracts the error schema associated with an endpoint.

**Signature**

```ts
type Error<Endpoint> = Endpoint extends Constraint ? Endpoint["~Error"] : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HttpApiEndpoint.ts#L356)

Since v4.0.0