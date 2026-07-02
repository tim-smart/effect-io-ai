Package: `effect`<br />
Module: `UrlParams`<br />

## UrlParams.toReadonlyRecord

Builds a readonly record from `UrlParams`.

**Details**

Keys with one value map to a string, and keys with multiple values map to a
non-empty readonly array of strings.

**Signature**

```ts
declare const toReadonlyRecord: (self: UrlParams) => ReadonlyRecord<string, string | Arr.NonEmptyReadonlyArray<string>>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UrlParams.ts#L513)

Since v4.0.0