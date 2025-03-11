## RecipientBehaviour

A RecipientBehaviour describes how a specific RecipientType should behave.
This is the actual implementation of what an entity should do upon receiving a Msg,
this could require additional context.

The scope provided in the context is controlled by the cluster EntityManager,
and is used to request the shoutdown of the entity,
so you can safely scope whatever resource you want to use for your behaviour
 and the EntityManager will close the scope for you when the entity is shoutdown.

The function returned by the RecipientBehaviour effect is what we call "offer" effect.
The offer effect is used by the EntityManager to give messages to the RecipientBehaviour.

**Signature**

```ts
export interface RecipientBehaviour<Msg, R> extends
  Effect.Effect<
    <A extends Msg>(
      message: A
    ) => Effect.Effect<
      MessageState.MessageState<Message.Message.Exit<A>>,
      ShardingException.ExceptionWhileOfferingMessageException
    >,
    never,
    R | RecipientBehaviourContext.RecipientBehaviourContext | Scope.Scope
  >
{}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/RecipientBehaviour.ts#L33)

Since v1.0.0