## registerEntity

Register a new entity type, allowing pods to send messages to entities of this type.

**Signature**

```ts
declare const registerEntity: <Msg extends Message.Message.Any>(entityType: RecipentType.EntityType<Msg>) => <R>(behavior: RecipientBehaviour.RecipientBehaviour<Msg, R>, options?: RecipientBehaviour.EntityBehaviourOptions | undefined) => Effect.Effect<void, never, Sharding | Exclude<R, RecipientBehaviourContext.RecipientBehaviourContext>>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Sharding.ts#L140)

Since v1.0.0