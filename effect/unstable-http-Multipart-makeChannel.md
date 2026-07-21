Package: `effect`<br />
Module: `Multipart`<br />

## Multipart.makeChannel

Creates a channel that parses multipart byte chunks into multipart parts.

**Details**

The channel consumes non-empty batches of `Uint8Array` chunks and emits
non-empty batches of parsed `Part` values, failing with `MultipartError` for
parser and limit failures.

**Signature**

```ts
declare const makeChannel: <IE>(headers: Record<string, string>) => Channel.Channel<Arr.NonEmptyReadonlyArray<Part>, MultipartError | IE, void, Arr.NonEmptyReadonlyArray<Uint8Array>, IE, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Multipart.ts#L441)

Since v4.0.0