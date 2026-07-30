Package: `@effect/printer`<br />
Module: `PageWidth`<br />

## PageWidth.PageWidth

Represents the maximum number of characters that fit onto a single line in a
document. The layout algorithms will try to avoid exceeding the set character
limit by inserting line breaks where appropriate (e.g., via `softLine`).

**Signature**

```ts
type PageWidth = AvailablePerLine | Unbounded
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/printer/src/PageWidth.ts#L32)

Since v1.0.0