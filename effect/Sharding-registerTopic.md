Package: `@effect/cluster`<br />
Module: `Sharding`<br />

## Sharding.registerTopic

Register a new topic type, allowing pods to broadcast messages to subscribers.

**Signature**

```ts
declare const registerTopic: <Msg extends Message.Message.Any>(topicType: RecipentType.TopicType<Msg>) => <R>(behavior: RecipientBehaviour.RecipientBehaviour<Msg, R>, options?: RecipientBehaviour.EntityBehaviourOptions | undefined) => Effect.Effect<void, never, Sharding | Exclude<R, RecipientBehaviourContext.RecipientBehaviourContext>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Sharding.ts#L154)

Since v1.0.0