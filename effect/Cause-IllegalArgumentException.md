Package: `effect`<br />
Module: `Cause`<br />

## Cause.IllegalArgumentException

An error representing an invalid argument passed to a method.

**Details**

This interface is used for signaling that a function or method received an
argument that does not meet its preconditions.

**Signature**

```ts
export interface IllegalArgumentException extends YieldableError {
  readonly _tag: "IllegalArgumentException"
  readonly [IllegalArgumentExceptionTypeId]: IllegalArgumentExceptionTypeId
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L372)

Since v2.0.0