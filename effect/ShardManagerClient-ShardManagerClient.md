Package: `@effect/cluster`<br />
Module: `ShardManagerClient`<br />

## ShardManagerClient.ShardManagerClient

ShardManagerClient provides the methods exposed by the ShardManager and called by the Pod.

**Signature**

```ts
export interface ShardManagerClient {
  readonly [ShardManagerClientTypeId]: ShardManagerClientTypeId
  readonly register: (podAddress: PodAddress.PodAddress) => Effect.Effect<void>
  readonly unregister: (podAddress: PodAddress.PodAddress) => Effect.Effect<void>
  readonly notifyUnhealthyPod: (podAddress: PodAddress.PodAddress) => Effect.Effect<void>
  readonly getAssignments: Effect.Effect<HashMap.HashMap<ShardId.ShardId, Option.Option<PodAddress.PodAddress>>>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/ShardManagerClient.ts#L32)

Since v1.0.0