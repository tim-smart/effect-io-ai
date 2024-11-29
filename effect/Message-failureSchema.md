# failureSchema

Extracts the failure schema from a Message. This schema will be used to encode remote failures of the Message processor.

To import and use `failureSchema` from the "Message" module:

ts
import \* as Message from "@effect/cluster/Message"
// Can be accessed like this
Message.failureSchema
undefined

**Signature**

```ts
export declare const failureSchema: <A extends Message.Any>(message: A) => Schema.Schema<Message.Error<A>, unknown>
```
