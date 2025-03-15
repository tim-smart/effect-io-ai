Package: `effect`<br />
Module: `Cause`<br />

## Cause.NoSuchElementException

An error that occurs when an expected element is missing.

**Details**

This interface indicates scenarios like looking up an item in a collection
or searching for data that should be present but isn't. It helps your code
signal a more specific issue rather than a general error.

**Signature**

```ts
export interface NoSuchElementException extends YieldableError {
  readonly _tag: "NoSuchElementException"
  readonly [NoSuchElementExceptionTypeId]: NoSuchElementExceptionTypeId
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L390)

Since v2.0.0