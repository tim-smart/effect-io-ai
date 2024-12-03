# recipientType

Gets the current recipientType

To import and use `recipientType` from the "RecipientBehaviourContext" module:

```ts
import * as RecipientBehaviourContext from "@effect/cluster/RecipientBehaviourContext"
// Can be accessed like this
RecipientBehaviourContext.recipientType
```

**Signature**

```ts
export declare const recipientType: Effect.Effect<
  RecipientType.RecipientType<Message.Message.Any>,
  never,
  RecipientBehaviourContext
>
```
