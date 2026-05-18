Package: `effect`<br />
Module: `UrlParams`<br />

## UrlParams.Coercible

Primitive value that can be converted into a URL parameter string.

`undefined` values are skipped when constructing from input.

**Signature**

```ts
type Coercible = string | number | bigint | boolean | null | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UrlParams.ts#L93)

Since v4.0.0