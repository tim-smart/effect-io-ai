Package: `effect`<br />
Module: `MessageStorage`<br />

## MessageStorage.SaveResult.DuplicateEncoded

Encoded duplicate-save variant returned by lower-level storage drivers.

**Details**

It carries the original request ID and the latest encoded reply, when one is
available.

**Signature**

```ts
export interface DuplicateEncoded {
    readonly _tag: "Duplicate"
    readonly originalId: Snowflake.Snowflake
    readonly lastReceivedReply: Option.Option<Reply.Encoded>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MessageStorage.ts#L262)

Since v4.0.0