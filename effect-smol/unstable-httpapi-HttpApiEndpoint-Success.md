Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.Success

Extracts the success schema associated with an endpoint.

**Signature**

```ts
type Success<Endpoint> = Endpoint extends Constraint ? Endpoint["~Success"] : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L348)

Since v4.0.0