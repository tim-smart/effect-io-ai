Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.isWaiting

Returns whether an `AsyncResult` is currently waiting for an asynchronous computation or refresh to finish.

**Signature**

```ts
declare const isWaiting: <A, E>(result: AsyncResult<A, E>) => boolean
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L158)

Since v4.0.0