## ShardingEvent

This are the events that may occur over the ShardManager during its lifetime.

**Signature**

```ts
type ShardingEvent = | ShardsAssigned
  | ShardsUnassigned
  | PodHealthChecked
  | PodRegistered
  | PodUnregistered
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/ShardingEvent.ts#L116)

Since v1.0.0