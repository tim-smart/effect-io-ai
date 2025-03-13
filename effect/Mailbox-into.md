Package: `effect`<br />
Module: `Mailbox`<br />

## Mailbox.into

Run an `Effect` into a `Mailbox`, where success ends the mailbox and failure
fails the mailbox.

**Signature**

```ts
declare const into: { <A, E>(self: Mailbox<A, E>): <AX, EX extends E, RX>(effect: Effect<AX, EX, RX>) => Effect<boolean, never, RX>; <AX, E, EX extends E, RX, A>(effect: Effect<AX, EX, RX>, self: Mailbox<A, E>): Effect<boolean, never, RX>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Mailbox.ts#L224)

Since v3.8.0