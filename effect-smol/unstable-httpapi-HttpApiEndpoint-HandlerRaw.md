Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.HandlerRaw

The raw server handler for an endpoint, receiving a request shape without a
decoded payload so the handler can read the raw `HttpServerRequest` directly.

**Signature**

```ts
type HandlerRaw<Endpoint, E, R> = (
  request: Simplify<Endpoint["~RequestRaw"]>
) => Effect<SuccessType<Endpoint["~Success"]> | HttpServerResponse, Endpoint["~Error"]["Type"] | E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L582)

Since v4.0.0