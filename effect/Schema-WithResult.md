Package: `effect`<br />
Module: `Schema`<br />

## Schema.WithResult

The `WithResult` trait is designed to encapsulate the outcome of an
operation, distinguishing between success and failure cases. Each case is
associated with a schema that defines the structure and types of the success
or failure data.

**Signature**

```ts
export interface WithResult<Success, SuccessEncoded, Failure, FailureEncoded, ResultR> {
  readonly [symbolWithResult]: {
    readonly success: Schema<Success, SuccessEncoded, ResultR>
    readonly failure: Schema<Failure, FailureEncoded, ResultR>
  }
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L10218)

Since v3.10.0