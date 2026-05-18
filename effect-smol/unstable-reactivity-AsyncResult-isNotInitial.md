Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.isNotInitial

Returns `true` when an `AsyncResult` is either `Success` or `Failure`.

**Signature**

```ts
declare const isNotInitial: <A, E>(result: AsyncResult<A, E>) => result is Success<A, E> | Failure<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L216)

Since v4.0.0