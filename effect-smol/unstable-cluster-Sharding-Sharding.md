Package: `effect`<br />
Module: `Sharding`<br />

## Sharding.Sharding

Service that registers entities and singletons, routes messages to owned
shards, generates runner-local snowflake ids, and polls
storage for persisted work.

**When to use**

Use to access or provide cluster routing, shard ownership, entity
registration, singleton registration, and persisted-work polling.

**Signature**

```ts
declare class Sharding
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Sharding.ts#L118)

Since v4.0.0