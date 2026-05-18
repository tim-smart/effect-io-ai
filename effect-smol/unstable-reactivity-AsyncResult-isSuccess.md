Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.isSuccess

Returns `true` when an `AsyncResult` is a `Success`.

**Signature**

```ts
declare const isSuccess: <A, E>(result: AsyncResult<A, E>) => result is Success<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L250)

Since v4.0.0