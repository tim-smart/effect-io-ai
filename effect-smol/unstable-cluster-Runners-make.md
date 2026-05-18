Package: `effect`<br />
Module: `Runners`<br />

## Runners.make

Builds the `Runners` service from remote runner callbacks and adds local
message persistence, duplicate request handling, optional local serialization
simulation, and polling for persisted replies.

**Signature**

```ts
declare const make: (options: Omit<Runners["Service"], "sendLocal" | "notifyLocal">) => Effect.Effect<Runners["Service"], never, MessageStorage.MessageStorage | Snowflake.Generator | ShardingConfig | Scope>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Runners.ts#L156)

Since v4.0.0