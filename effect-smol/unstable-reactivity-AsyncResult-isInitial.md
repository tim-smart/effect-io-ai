Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.isInitial

Returns `true` when an `AsyncResult` is in the `Initial` state.

**Signature**

```ts
declare const isInitial: <A, E>(result: AsyncResult<A, E>) => result is Initial<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L208)

Since v4.0.0