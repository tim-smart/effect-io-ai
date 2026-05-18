Package: `effect`<br />
Module: `Encoding`<br />

## Encoding.isEncodingError

Checks whether a value is an `EncodingError`.

Returns `true` when the value carries the `EncodingErrorTypeId` marker and
narrows the value to `EncodingError`.

**Signature**

```ts
declare const isEncodingError: (u: unknown) => u is EncodingError
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Encoding.ts#L65)

Since v4.0.0