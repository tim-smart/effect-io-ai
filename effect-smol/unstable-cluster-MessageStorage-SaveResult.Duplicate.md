Package: `effect`<br />
Module: `MessageStorage`<br />

## MessageStorage.SaveResult.Duplicate

Variant indicating that the request duplicates an existing stored request.

It carries the original request ID and the latest decoded reply, when one is
available.

**Signature**

```ts
export interface Duplicate<R extends Rpc.Any> {
    readonly _tag: "Duplicate"
    readonly originalId: Snowflake.Snowflake
    readonly lastReceivedReply: Option.Option<Reply.Reply<R>>
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MessageStorage.ts#L247)

Since v4.0.0