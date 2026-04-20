Package: `effect`<br />
Module: `Schema`<br />

## Schema.ArrayEnsure

Decodes a single value or an array of values into an array.

Decoding:
- a single value is decoded as a one-element array
- an array is decoded as-is

Encoding:
- a one-element array is encoded as a single value
- arrays with more than one element are encoded as arrays

**Signature**

```ts
declare const ArrayEnsure: <S extends Top>(schema: S) => ArrayEnsure<S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3323)

Since v4.0.0