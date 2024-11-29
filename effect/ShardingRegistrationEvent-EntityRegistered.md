# EntityRegistered

Constructs and event that occurs when a new EntityType gets registered.

To import and use `EntityRegistered` from the "ShardingRegistrationEvent" module:

ts
import \* as ShardingRegistrationEvent from "@effect/cluster/ShardingRegistrationEvent"
// Can be accessed like this
ShardingRegistrationEvent.EntityRegistered
undefined

**Signature**

```ts
export declare function EntityRegistered<Msg extends Message.Message.Any>(
  entityType: RecipientType.EntityType<Msg>
): ShardingRegistrationEvent
```
