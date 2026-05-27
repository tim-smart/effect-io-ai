Package: `effect`<br />
Module: `UrlParams`<br />

## UrlParams.UrlParams

Immutable collection of URL query parameters.

**Details**

Parameters are stored as ordered string key-value pairs and can contain multiple
values for the same key.

**Signature**

```ts
export interface UrlParams extends Pipeable, Inspectable, Iterable<readonly [string, string]> {
  readonly [TypeId]: typeof TypeId
  readonly params: ReadonlyArray<readonly [string, string]>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/UrlParams.ts#L71)

Since v4.0.0