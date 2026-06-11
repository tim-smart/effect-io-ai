Package: `@effect/platform-node-shared`<br />
Module: `NodeClusterSocket`<br />

## NodeClusterSocket.layerSocketServer

Provides the socket server used by cluster runners, listening on
`ShardingConfig.runnerListenAddress` or `runnerAddress`.

**Signature**

```ts
declare const layerSocketServer: Layer.Layer<SocketServer.SocketServer, SocketServer.SocketServerError, ShardingConfig.ShardingConfig>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeClusterSocket.ts#L59)

Since v4.0.0