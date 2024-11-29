# fromInMemoryQueue

This behaviour uses a Queue where the entity will accumulate messages to be processed,
and then you can use the Dequeue to take messages and process them.
A PoisonPill is provided to request interruption of the entity behaviour.

To import and use `fromInMemoryQueue` from the "RecipientBehaviour" module:

ts
import \* as RecipientBehaviour from "@effect/cluster/RecipientBehaviour"
// Can be accessed like this
RecipientBehaviour.fromInMemoryQueue
undefined

**Signature**

```ts
export declare const fromInMemoryQueue: <Msg extends Message.Message.Any, R>(
  handler: (
    entityId: string,
    dequeue: Queue.Dequeue<Msg | PoisonPill.PoisonPill>,
    processed: <A extends Msg>(
      message: A,
      value: Option.Option<Message.Message.Exit<A>>
    ) => Effect.Effect<void, never, never>
  ) => Effect.Effect<void, never, R>
) => RecipientBehaviour<Msg, R>
```
