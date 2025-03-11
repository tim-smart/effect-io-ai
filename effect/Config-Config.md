## Config

A `Config` describes the structure of some configuration data.

**Signature**

```ts
export interface Config<out A> extends Config.Variance<A>, Effect.Effect<A, ConfigError.ConfigError> {}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Config.ts#L38)

Since v2.0.0