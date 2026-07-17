Package: `effect`<br />
Module: `UrlParams`<br />

## UrlParams.Input

Input accepted when constructing `UrlParams`.

**Details**

Values can be provided as a coercible record, an iterable of key-value pairs, or
a native `URLSearchParams` value.

**Signature**

```ts
type Input = | UrlParams
  | CoercibleRecordInput
  | Iterable<readonly [string, Coercible]>
  | URLSearchParams
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/UrlParams.ts#L65)

Since v4.0.0