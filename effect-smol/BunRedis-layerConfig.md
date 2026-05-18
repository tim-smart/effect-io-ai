Package: `@effect/platform-bun`<br />
Module: `BunRedis`<br />

## BunRedis.layerConfig

Creates scoped Bun Redis layers from configurable Redis options, closing the underlying client when the scope finalizes.

**Signature**

```ts
declare const layerConfig: (options: Config.Wrap<{ readonly url?: string; } & RedisOptions>) => Layer.Layer<Redis.Redis | BunRedis, Config.ConfigError>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunRedis.ts#L97)

Since v4.0.0