Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.AsyncResult

Represents the state of an asynchronous value as `Initial`, `Success`, or `Failure`, with a `waiting` flag for in-flight refreshes.

**Signature**

```ts
type AsyncResult<A, E> = Initial<A, E> | Success<A, E> | Failure<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/AsyncResult.ts#L53)

Since v4.0.0