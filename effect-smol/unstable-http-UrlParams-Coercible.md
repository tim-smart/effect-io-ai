Package: `effect`<br />
Module: `UrlParams`<br />

## UrlParams.Coercible

Primitive value that can be converted into a URL parameter string.

**Gotchas**

`undefined` values are skipped when constructing from input.

**Signature**

```ts
type Coercible = string | number | bigint | boolean | null | undefined
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UrlParams.ts#L85)

Since v4.0.0