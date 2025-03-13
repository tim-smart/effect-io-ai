Package: `@effect/cluster`<br />
Module: `RecipientBehaviourContext`<br />

## RecipientBehaviourContext.RecipientBehaviourContext

This is the context information that is available to the RecipientBehaviour and has general informations
about this specific entity, like the entityId or the recipientType.

**Signature**

```ts
export interface RecipientBehaviourContext {
  readonly [RecipientBehaviourContextTypeId]: RecipientBehaviourContextTypeId
  readonly recipientAddress: RecipientAddress.RecipientAddress
  readonly shardId: ShardId.ShardId
  readonly recipientType: RecipientType.RecipientType<Message.Message.Any>
  readonly forkShutdown: Effect.Effect<void>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/RecipientBehaviourContext.ts#L31)

Since v1.0.0