Package: `effect`<br />
Module: `ShardingRegistrationEvent`<br />

## ShardingRegistrationEvent.EntityRegistered

Represents an event that occurs when a new entity is registered with a runner.

**Signature**

```ts
export interface EntityRegistered {
  readonly _tag: "EntityRegistered"
  readonly entity: Entity<any, any>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ShardingRegistrationEvent.ts#L24)

Since v4.0.0