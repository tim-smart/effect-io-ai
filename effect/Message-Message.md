# Message

A Message is a request for an entity that will process it.
A Message also has a PrimaryKey so that the receiver is eventually able to detect duplicated messages.

To import and use `Message` from the "Message" module:

```ts
import * as Message from "@effect/cluster/Message"
// Can be accessed like this
Message.Message
```
