Package: `@effect/platform-node`<br />
Module: `NodeRedis`<br />

## NodeRedis.layerConfig

Provides `Redis` and `NodeRedis` services from `Config`-backed ioredis
options, closing the client when the layer scope ends.

**Signature**

```ts
declare const layerConfig: (options: Config.Wrap<IoRedis.RedisOptions>) => Layer.Layer<Redis.Redis | NodeRedis, Config.ConfigError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeRedis.ts#L83)

Since v4.0.0