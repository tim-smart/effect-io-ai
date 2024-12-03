# registerTopic

Register a new topic type, allowing pods to broadcast messages to subscribers.

To import and use `registerTopic` from the "Sharding" module:

```ts
import * as Sharding from "@effect/cluster/Sharding"
// Can be accessed like this
Sharding.registerTopic
```

**Signature**

```ts
export declare const registerTopic: <Msg extends Message.Message.Any>(
  topicType: RecipentType.TopicType<Msg>
) => <R>(
  behavior: RecipientBehaviour.RecipientBehaviour<Msg, R>,
  options?: RecipientBehaviour.EntityBehaviourOptions | undefined
) => Effect.Effect<void, never, Sharding | Exclude<R, RecipientBehaviourContext.RecipientBehaviourContext>>
```
