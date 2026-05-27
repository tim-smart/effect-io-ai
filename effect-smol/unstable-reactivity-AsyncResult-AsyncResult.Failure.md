Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.AsyncResult.Failure

Extracts the failure error type from an `AsyncResult`.

**Signature**

```ts
type Failure<R> = R extends AsyncResult<infer _, infer E> ? E : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L129)

Since v4.0.0