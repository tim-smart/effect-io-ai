# messenger

Get an object that allows sending messages to a given entity type.
You can provide a custom send timeout to override the one globally defined.

To import and use `messenger` from the "Sharding" module:

ts
import \* as Sharding from "@effect/cluster/Sharding"
// Can be accessed like this
Sharding.messenger
undefined

**Signature**

```ts
export declare const messenger: <Msg extends Message.Message.Any>(
  entityType: RecipentType.EntityType<Msg>
) => Effect.Effect<Messenger<Msg>, never, Sharding>
```
