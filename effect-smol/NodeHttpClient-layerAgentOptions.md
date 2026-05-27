Package: `@effect/platform-node`<br />
Module: `NodeHttpClient`<br />

## NodeHttpClient.layerAgentOptions

Provides the `HttpAgent` service using scoped Node `http` and `https`
agents configured with the supplied options.

**Signature**

```ts
declare const layerAgentOptions: (options?: Https.AgentOptions | undefined) => Layer.Layer<HttpAgent>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeHttpClient.ts#L435)

Since v4.0.0