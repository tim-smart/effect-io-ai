Package: `@effect/cluster`<br />
Module: `ShardingRegistrationEvent`<br />

## ShardingRegistrationEvent.SingletonRegistered

Represents an event that occurs when a new singleton is registered with a
runner.

**Signature**

```ts
export interface SingletonRegistered {
  readonly _tag: "SingletonRegistered"
  readonly address: SingletonAddress
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/ShardingRegistrationEvent.ts#L36)

Since v1.0.0