Package: `effect`<br />
Module: `ClusterCron`<br />

## ClusterCron.make

Creates a layer that runs a cron job through the cluster sharding system.

**Details**

The job is scheduled as persisted entity messages, with an initial singleton
scheduling step and optional controls for shard group, next-run calculation,
and skipping stale scheduled runs.

**Signature**

```ts
declare const make: <E, R>(options: { readonly name: string; readonly cron: Cron.Cron; readonly execute: Effect.Effect<void, E, R>; readonly shardGroup?: string | undefined; readonly calculateNextRunFromPrevious?: boolean | undefined; readonly skipIfOlderThan?: Duration.Input | undefined; }) => Layer.Layer<never, never, Sharding | Exclude<R, Scope>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ClusterCron.ts#L63)

Since v4.0.0