Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.isInterrupted

Returns `true` when an `AsyncResult` is a `Failure` whose cause contains only interruptions.

**Signature**

```ts
declare const isInterrupted: <A, E>(result: AsyncResult<A, E>) => result is Failure<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/AsyncResult.ts#L287)

Since v4.0.0