Package: `effect`<br />
Module: `Mailbox`<br />

## Mailbox.toChannel

Create a `Channel` from a `Mailbox`.

**Signature**

```ts
declare const toChannel: <A, E>(self: ReadonlyMailbox<A, E>) => Channel<Chunk<A>, unknown, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Mailbox.ts#L236)

Since v3.8.0