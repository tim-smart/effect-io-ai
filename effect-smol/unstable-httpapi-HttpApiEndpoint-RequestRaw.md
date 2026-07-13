Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.RequestRaw

Builds the request shape passed to a raw endpoint handler, including decoded
params, query, and headers plus the raw request, endpoint, and group, while
leaving payload handling to the raw request.

**Signature**

```ts
type RequestRaw<Endpoint> = Endpoint extends ConstraintRequest ? Endpoint["~RequestRaw"]
  : {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L470)

Since v4.0.0