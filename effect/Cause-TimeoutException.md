Package: `effect`<br />
Module: `Cause`<br />

## Cause.TimeoutException

An error representing a computation that timed out.

**Signature**

```ts
export interface TimeoutException extends YieldableError {
  readonly _tag: "TimeoutException"
  readonly [TimeoutExceptionTypeId]: TimeoutExceptionTypeId
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L422)

Since v2.0.0