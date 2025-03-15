Package: `effect`<br />
Module: `Cause`<br />

## Cause.InterruptedException

An error representing fiber interruption.

**Details**

This interface represents errors that occur when a fiber is forcefully
interrupted. Interruption can happen for various reasons, including
cancellations or system directives to halt operations. Code that deals with
concurrency might need to catch or handle these to ensure proper cleanup.

**Signature**

```ts
export interface InterruptedException extends YieldableError {
  readonly _tag: "InterruptedException"
  readonly [InterruptedExceptionTypeId]: InterruptedExceptionTypeId
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L357)

Since v2.0.0