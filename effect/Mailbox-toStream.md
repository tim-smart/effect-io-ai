# toStream

Create a `Stream` from a `Mailbox`.

To import and use `toStream` from the "Mailbox" module:

```ts
import * as Mailbox from "effect/Mailbox"
// Can be accessed like this
Mailbox.toStream
```

**Signature**

```ts
export declare const toStream: <A, E>(self: ReadonlyMailbox<A, E>) => Stream<A, E>
```
