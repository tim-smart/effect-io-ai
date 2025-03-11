## layerTestClient

Layer producing an `HttpClient` with prepended url of the running http server.

**Signature**

```ts
declare const layerTestClient: Layer.Layer<Client.HttpClient, never, HttpServer | Client.HttpClient>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform/src/HttpServer.ts#L208)

Since v1.0.0