Package: `@effect/platform-bun`<br />
Module: `BunRedis`<br />

## BunRedis.layer

Creates scoped Bun Redis layers for `Redis.Redis` and `BunRedis`, closing the underlying client when the scope finalizes.

**Signature**

```ts
declare const layer: (options?: ({ readonly url?: string; } & RedisOptions) | undefined) => Layer.Layer<Redis.Redis | BunRedis>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/platform-bun/src/BunRedis.ts#L96)

Since v4.0.0