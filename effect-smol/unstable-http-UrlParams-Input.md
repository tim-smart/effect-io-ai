Package: `effect`<br />
Module: `UrlParams`<br />

## UrlParams.Input

Input accepted when constructing `UrlParams`.

**Details**

Values can be provided as a coercible record, an iterable of key-value pairs, or
a native `URLSearchParams` value.

**Signature**

```ts
type Input = | CoercibleRecordInput
  | Iterable<readonly [string, Coercible]>
  | URLSearchParams
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UrlParams.ts#L67)

Since v4.0.0