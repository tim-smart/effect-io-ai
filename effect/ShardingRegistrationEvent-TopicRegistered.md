# TopicRegistered

Constructs a new event that occurs when a topic is Registered.

To import and use `TopicRegistered` from the "ShardingRegistrationEvent" module:

```ts
import * as ShardingRegistrationEvent from "@effect/cluster/ShardingRegistrationEvent"
// Can be accessed like this
ShardingRegistrationEvent.TopicRegistered
```

**Signature**

```ts
export declare function TopicRegistered<Msg extends Message.Message.Any>(
  topicType: RecipientType.TopicType<Msg>
): ShardingRegistrationEvent
```
