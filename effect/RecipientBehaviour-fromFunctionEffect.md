# fromFunctionEffect

This is the simplest behaviour you can have.
You provide a function that given the entityId and the message, it will immediatly process it.
You are then required to return a MessageState to tell the caller
if the message has just arrived and will be later processed or it has been processed.

To import and use `fromFunctionEffect` from the "RecipientBehaviour" module:

ts
import \* as RecipientBehaviour from "@effect/cluster/RecipientBehaviour"
// Can be accessed like this
RecipientBehaviour.fromFunctionEffect
undefined

**Signature**

```ts
export declare const fromFunctionEffect: <Msg extends Message.Message.Any, R>(
  handler: (
    entityId: string,
    message: Msg
  ) => Effect.Effect<MessageState.MessageState<Message.Message.Exit<Msg>>, never, R>
) => RecipientBehaviour<Msg, R>
```
