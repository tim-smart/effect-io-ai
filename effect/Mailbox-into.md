# into

Run an `Effect` into a `Mailbox`, where success ends the mailbox and failure
fails the mailbox.

To import and use `into` from the "Mailbox" module:

```ts
import * as Mailbox from "effect/Mailbox"
// Can be accessed like this
Mailbox.into
```

**Signature**

```ts
export declare const into: {
  <A, E>(self: Mailbox<A, E>): <AX, EX extends E, RX>(effect: Effect<AX, EX, RX>) => Effect<boolean, never, RX>
  <AX, E, EX extends E, RX, A>(effect: Effect<AX, EX, RX>, self: Mailbox<A, E>): Effect<boolean, never, RX>
}
```
