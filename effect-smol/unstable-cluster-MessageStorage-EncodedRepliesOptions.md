Package: `effect`<br />
Module: `MessageStorage`<br />

## MessageStorage.EncodedRepliesOptions

Cursor options for reading encoded replies across request sets.

**Details**

The fields distinguish existing requests from new requests and carry the
driver-specific pagination cursor.

**Signature**

```ts
type EncodedRepliesOptions<A> = {
  readonly existingRequests: Array<string>
  readonly newRequests: Array<string>
  readonly cursor: Option.Option<A>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/MessageStorage.ts#L435)

Since v4.0.0