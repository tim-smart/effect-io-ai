Package: `effect`<br />
Module: `Schema`<br />

## Schema.SerializableWithResult

The `SerializableWithResult` trait is specifically designed to model remote
procedures that require serialization of their input and output, managing
both successful and failed outcomes.

This trait combines functionality from both the `Serializable` and `WithResult`
traits to handle data serialization and the bifurcation of operation results
into success or failure categories.

**Signature**

```ts
export interface SerializableWithResult<
  A,
  I,
  R,
  Success,
  SuccessEncoded,
  Failure,
  FailureEncoded,
  ResultR
> extends Serializable<A, I, R>, WithResult<Success, SuccessEncoded, Failure, FailureEncoded, ResultR> {}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L10441)

Since v3.10.0