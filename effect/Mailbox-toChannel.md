# toChannel

Create a `Channel` from a `Mailbox`.

To import and use `toChannel` from the "Mailbox" module:

```ts
import * as Mailbox from "effect/Mailbox"
// Can be accessed like this
Mailbox.toChannel
```

**Signature**

```ts
export declare const toChannel: <A, E>(self: ReadonlyMailbox<A, E>) => Channel<Chunk<A>, unknown, E>
```
