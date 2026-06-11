Package: `effect`<br />
Module: `HttpBody`<br />

## HttpBody.ErrorReason

Reason for an `HttpBodyError`.

**Details**

`JsonError` represents a `JSON.stringify` failure; `SchemaError` represents a schema encoding issue.

**Signature**

```ts
type ErrorReason = {
  readonly _tag: "JsonError"
} | {
  readonly _tag: "SchemaError"
  readonly issue: Issue
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/HttpBody.ts#L118)

Since v4.0.0