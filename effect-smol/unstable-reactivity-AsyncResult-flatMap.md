Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.flatMap

Maps the success value of an `AsyncResult` and flattens the result.

**When to use**

Use to sequence computations that may return another `AsyncResult` while
preserving initial and failure states.

**Details**

Initial results are left unchanged. Failures preserve their cause and remap
the stored previous success when the mapping function returns a success.

**Signature**

```ts
declare const flatMap: { <A, E, B, E2>(f: (a: A, prev: Success<A, E>) => AsyncResult<A, E2>): (self: AsyncResult<A, E>) => AsyncResult<B, E | E2>; <E, A, B, E2>(self: AsyncResult<A, E>, f: (a: A, prev: Success<A, E>) => AsyncResult<B, E2>): AsyncResult<B, E | E2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L523)

Since v4.0.0