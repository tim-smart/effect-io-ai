Package: `@effect/cluster`<br />
Module: `ShardingRegistrationEvent`<br />

## ShardingRegistrationEvent.TopicRegistered

Constructs a new event that occurs when a topic is Registered.

**Signature**

```ts
declare const TopicRegistered: <Msg extends Message.Message.Any>(topicType: RecipientType.TopicType<Msg>) => ShardingRegistrationEvent
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/ShardingRegistrationEvent.ts#L49)

Since v1.0.0