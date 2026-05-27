Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.isFailure

Returns `true` when an `AsyncResult` is a `Failure`.

**Signature**

```ts
declare const isFailure: <A, E>(result: AsyncResult<A, E>) => result is Failure<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L311)

Since v4.0.0