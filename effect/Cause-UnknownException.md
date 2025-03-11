## UnknownException

A checked exception for handling unknown or unexpected errors.

**Details**

This interface captures errors that don't fall under known categories. It is
especially helpful for wrapping low-level or third-party library errors that
might provide little or no context, such as from a rejected promise.

**Signature**

```ts
export interface UnknownException extends YieldableError {
  readonly _tag: "UnknownException"
  readonly [UnknownExceptionTypeId]: UnknownExceptionTypeId
  readonly error: unknown
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L439)

Since v2.0.0