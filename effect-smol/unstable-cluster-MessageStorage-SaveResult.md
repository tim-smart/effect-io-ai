Package: `effect`<br />
Module: `MessageStorage`<br />

## MessageStorage.SaveResult

Result of saving a request or envelope into message storage.

A duplicate result carries the original request ID and the last reply already
received for the duplicated request.

**Signature**

```ts
type SaveResult<R> = SaveResult.Success | SaveResult.Duplicate<R>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MessageStorage.ts#L192)

Since v4.0.0