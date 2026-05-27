Package: `effect`<br />
Module: `HttpBody`<br />

## HttpBody.FormDataCoercible

Value that can be appended by `formDataRecord`.

**Details**

`File` and `Blob` values are appended directly, primitive values are converted to strings, and `null` or `undefined` values are skipped.

**Signature**

```ts
type FormDataCoercible = string | number | boolean | globalThis.File | globalThis.Blob | null | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpBody.ts#L442)

Since v4.0.0