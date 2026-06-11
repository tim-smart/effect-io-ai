Package: `effect`<br />
Module: `UrlParams`<br />

## UrlParams.fromInput

Creates `UrlParams` from a supported input shape.

**Details**

Primitive values are converted to strings, arrays produce repeated parameters,
nested records use bracket notation, and `undefined` values are omitted.

**Signature**

```ts
declare const fromInput: (input: Input) => UrlParams
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UrlParams.ts#L159)

Since v4.0.0