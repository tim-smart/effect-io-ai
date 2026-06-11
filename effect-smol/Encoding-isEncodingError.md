Package: `effect`<br />
Module: `Encoding`<br />

## Encoding.isEncodingError

Checks whether a value is an `EncodingError`.

**When to use**

Use to narrow an unknown value before handling it as an `EncodingError` from
encoding or decoding code.

**Details**

Returns `true` when the value carries the `EncodingErrorTypeId` marker and
narrows the value to `EncodingError`.

**See**

- `EncodingError` for the structured error produced by failed
encoding and decoding operations

**Signature**

```ts
declare const isEncodingError: (u: unknown) => u is EncodingError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Encoding.ts#L107)

Since v4.0.0