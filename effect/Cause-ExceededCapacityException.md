## ExceededCapacityException

An error that occurs when resource capacity is exceeded.

**Signature**

```ts
export interface ExceededCapacityException extends YieldableError {
  readonly _tag: "ExceededCapacityException"
  readonly [ExceededCapacityExceptionTypeId]: ExceededCapacityExceptionTypeId
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L411)

Since v3.5.0