Package: `effect`<br />
Module: `ClusterError`<br />

## ClusterError.MailboxFull

Represents an error that occurs when the entity mailbox is full.

**Details**

Carries the `address` whose bounded mailbox is at capacity.

**Gotchas**

Volatile requests fail immediately. Persisted or durable messages are retried
or resumed from storage when the mailbox is full.

**Signature**

```ts
declare class MailboxFull
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ClusterError.ts#L184)

Since v4.0.0