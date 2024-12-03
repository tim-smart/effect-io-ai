# Processed

Constructs a ProcessedMessageState from the result of the message being processed.

To import and use `Processed` from the "MessageState" module:

```ts
import * as MessageState from "@effect/cluster/MessageState"
// Can be accessed like this
MessageState.Processed
```

**Signature**

```ts
export declare const Processed: <A>(result: A) => MessageStateProcessed<A>
```
