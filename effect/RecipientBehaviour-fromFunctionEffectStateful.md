# fromFunctionEffectStateful

This is a stateful version of fromFunctionEffect.
You can provide a function to get the initialState, and then it will be passed as Ref.
Everything here is just stored in memory, so eventual persistence of the state is up to you!

To import and use `fromFunctionEffectStateful` from the "RecipientBehaviour" module:

ts
import \* as RecipientBehaviour from "@effect/cluster/RecipientBehaviour"
// Can be accessed like this
RecipientBehaviour.fromFunctionEffectStateful
undefined

**Signature**

```ts
export declare const fromFunctionEffectStateful: <S, R, Msg extends Message.Message.Any, R2>(
  initialState: (entityId: string) => Effect.Effect<S, never, R>,
  handler: (
    entityId: string,
    message: Msg,
    stateRef: Ref.Ref<S>
  ) => Effect.Effect<MessageState.MessageState<Message.Message.Exit<Msg>>, never, R2>
) => RecipientBehaviour<Msg, R | R2>
```
