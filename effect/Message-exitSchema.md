# exitSchema

Extracts the exit schema from a Message. This schema will be used to encode the remote exit of the Message processor.

To import and use `exitSchema` from the "Message" module:

ts
import \* as Message from "@effect/cluster/Message"
// Can be accessed like this
Message.exitSchema
undefined

**Signature**

```ts
export declare const exitSchema: <A extends Message.Any>(message: A) => Schema.Schema<Message.Exit<A>, unknown>
```
