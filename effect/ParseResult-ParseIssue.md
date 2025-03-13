Package: `effect`<br />
Module: `ParseResult`<br />

## ParseResult.ParseIssue

`ParseIssue` is a type that represents the different types of errors that can occur when decoding/encoding a value.

**Signature**

```ts
type ParseIssue = | Type
  | Missing
  | Unexpected
  | Forbidden
  // composite
  | Pointer
  | Refinement
  | Transformation
  | Composite
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/ParseResult.ts#L29)

Since v3.10.0