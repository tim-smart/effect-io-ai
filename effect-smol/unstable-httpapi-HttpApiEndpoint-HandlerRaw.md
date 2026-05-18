Package: `effect`<br />
Module: `HttpApiEndpoint`<br />

## HttpApiEndpoint.HandlerRaw

The raw server handler for an endpoint, receiving a request shape without a
decoded payload so the handler can read the raw `HttpServerRequest` directly.

**Signature**

```ts
type HandlerRaw<Endpoint, E, R> = (
  request: Types.Simplify<RequestRaw<Endpoint>>
) => Effect<Endpoint["~Success"]["Type"] | HttpServerResponse, Endpoint["~Error"]["Type"] | E, R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpApiEndpoint.ts#L698)

Since v4.0.0