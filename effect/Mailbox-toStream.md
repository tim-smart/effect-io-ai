## toStream

Create a `Stream` from a `Mailbox`.

**Signature**

```ts
declare const toStream: <A, E>(self: ReadonlyMailbox<A, E>) => Stream<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Mailbox.ts#L245)

Since v3.8.0