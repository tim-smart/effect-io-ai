## RuntimeException

An error representing a runtime error.

**Details**

This interface is used for errors that occur at runtime but are still
considered recoverable or typed.

**Signature**

```ts
export interface RuntimeException extends YieldableError {
  readonly _tag: "RuntimeException"
  readonly [RuntimeExceptionTypeId]: RuntimeExceptionTypeId
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L338)

Since v2.0.0