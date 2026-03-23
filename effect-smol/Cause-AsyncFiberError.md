Package: `effect`<br />
Module: `Cause`<br />

## Cause.AsyncFiberError

An error that occurs when trying to run an async fiber with Effect.runSync.

**Signature**

```ts
export interface AsyncFiberError extends YieldableError {
  readonly [AsyncFiberErrorTypeId]: typeof AsyncFiberErrorTypeId
  readonly _tag: "AsyncFiberError"
  readonly fiber: Fiber<unknown, unknown>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L1495)

Since v4.0.0