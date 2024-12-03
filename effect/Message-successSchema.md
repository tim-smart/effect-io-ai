# successSchema

Extracts the success schema from a Message. This schema will be used to encode the remote success of the Message processor.

To import and use `successSchema` from the "Message" module:

```ts
import * as Message from "@effect/cluster/Message"
// Can be accessed like this
Message.successSchema
```

**Signature**

```ts
export declare const successSchema: <A extends Message.Any>(message: A) => Schema.Schema<Message.Success<A>, unknown>
```
