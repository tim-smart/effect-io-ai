Package: `effect`<br />
Module: `Cause`<br />

## Cause.InvalidPubSubCapacityException

An error indicating invalid capacity for a `PubSub`.

**Signature**

```ts
export interface InvalidPubSubCapacityException extends YieldableError {
  readonly _tag: "InvalidPubSubCapacityException"
  readonly [InvalidPubSubCapacityExceptionTypeId]: InvalidPubSubCapacityExceptionTypeId
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Cause.ts#L400)

Since v2.0.0