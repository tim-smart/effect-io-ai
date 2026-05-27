Package: `effect`<br />
Module: `HttpBody`<br />

## HttpBody.formDataRecord

Creates a `FormData` HTTP body from a record.

**Details**

Array fields append each item under the same key; primitive values are stringified, `File` and `Blob` values are appended directly, and nullish values are skipped.

**Signature**

```ts
declare const formDataRecord: (entries: FormDataInput) => FormData
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpBody.ts#L465)

Since v4.0.0