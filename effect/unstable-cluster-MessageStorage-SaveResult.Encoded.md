Package: `effect`<br />
Module: `MessageStorage`<br />

## MessageStorage.SaveResult.Encoded

Encoded storage-driver form of `SaveResult`.

**Details**

Duplicate results contain an encoded last received reply instead of a decoded
reply.

**Signature**

```ts
type Encoded = SaveResult.Success | SaveResult.DuplicateEncoded
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/MessageStorage.ts#L222)

Since v4.0.0