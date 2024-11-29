# registerEntity

Register a new entity type, allowing pods to send messages to entities of this type.

To import and use `registerEntity` from the "Sharding" module:

ts
import \* as Sharding from "@effect/cluster/Sharding"
// Can be accessed like this
Sharding.registerEntity
undefined

**Signature**

```ts
export declare const registerEntity: <Msg extends Message.Message.Any>(
  entityType: RecipentType.EntityType<Msg>
) => <R>(
  behavior: RecipientBehaviour.RecipientBehaviour<Msg, R>,
  options?: RecipientBehaviour.EntityBehaviourOptions | undefined
) => Effect.Effect<void, never, Sharding | Exclude<R, RecipientBehaviourContext.RecipientBehaviourContext>>
```
