# broadcaster

Get an object that allows broadcasting messages to a given topic type.
You can provide a custom send timeout to override the one globally defined.

To import and use `broadcaster` from the "Sharding" module:

ts
import \* as Sharding from "@effect/cluster/Sharding"
// Can be accessed like this
Sharding.broadcaster
undefined

**Signature**

```ts
export declare const broadcaster: <Msg extends Message.Message.Any>(
  topicType: RecipentType.TopicType<Msg>
) => Effect.Effect<Broadcaster<Msg>, never, Sharding>
```
