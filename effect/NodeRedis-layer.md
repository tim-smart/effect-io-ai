Package: `@effect/platform-node`<br />
Module: `NodeRedis`<br />

## NodeRedis.layer

Provides `Redis` and `NodeRedis` services backed by an `ioredis` client
created with the supplied options and closed when the layer scope ends.

**Signature**

```ts
declare const layer: (options?: IoRedis.RedisOptions | undefined) => Layer.Layer<Redis.Redis | NodeRedis>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-node/src/NodeRedis.ts#L72)

Since v4.0.0