Package: `@effect/platform-node`<br />
Module: `NodeHttpClient`<br />

## NodeHttpClient.makeNodeHttp

Creates an `HttpClient` backed by Node `http` and `https`, using the
current `HttpAgent`, streaming request bodies, and wrapping Node responses
as `HttpClientResponse` values.

**Signature**

```ts
declare const makeNodeHttp: Effect.Effect<Client.HttpClient, never, HttpAgent>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeHttpClient.ts#L465)

Since v4.0.0