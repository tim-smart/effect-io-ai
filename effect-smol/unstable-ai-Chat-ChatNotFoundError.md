Package: `effect`<br />
Module: `Chat`<br />

## Chat.ChatNotFoundError

Represents an error that occurs when attempting to retrieve a persisted `Chat` that
does not exist in the backing persistence store.

**When to use**

Use to represent a missing persisted conversation when lookup by id cannot
find stored history.

**Signature**

```ts
declare class ChatNotFoundError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Chat.ts#L667)

Since v4.0.0