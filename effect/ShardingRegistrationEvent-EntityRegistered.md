Package: `@effect/cluster`<br />
Module: `ShardingRegistrationEvent`<br />

## ShardingRegistrationEvent.EntityRegistered

Constructs and event that occurs when a new EntityType gets registered.

**Signature**

```ts
declare const EntityRegistered: <Msg extends Message.Message.Any>(entityType: RecipientType.EntityType<Msg>) => ShardingRegistrationEvent
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/ShardingRegistrationEvent.ts#L18)

Since v1.0.0