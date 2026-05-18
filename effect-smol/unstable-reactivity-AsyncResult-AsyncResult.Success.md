Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.AsyncResult.Success

Extracts the success value type from an `AsyncResult`.

**Signature**

```ts
type Success<R> = R extends AsyncResult<infer A, infer _> ? A : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L100)

Since v4.0.0