# makeTopicType

Given a name and a schema for the protocol, constructs an TopicType.

To import and use `makeTopicType` from the "RecipientType" module:

ts
import \* as RecipientType from "@effect/cluster/RecipientType"
// Can be accessed like this
RecipientType.makeTopicType
undefined

**Signature**

```ts
export declare function makeTopicType<Msg extends Message.Message.Any, I>(
  name: string,
  schema: Schema.Schema<Msg, I>
): TopicType<Msg>
```
