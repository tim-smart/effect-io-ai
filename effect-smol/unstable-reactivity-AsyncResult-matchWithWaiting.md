Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.matchWithWaiting

Pattern matches a result by calling `onWaiting` for waiting or initial states, otherwise handling successes and splitting failures into typed errors or squashed non-error causes.

**Signature**

```ts
declare const matchWithWaiting: { <A, E, W, X, Y, Z>(options: { readonly onWaiting: (_: AsyncResult<A, E>) => W; readonly onError: (error: E, _: Failure<A, E>) => X; readonly onDefect: (defect: unknown, _: Failure<A, E>) => Y; readonly onSuccess: (_: Success<A, E>) => Z; }): (self: AsyncResult<A, E>) => W | X | Y | Z; <A, E, W, X, Y, Z>(self: AsyncResult<A, E>, options: { readonly onWaiting: (_: AsyncResult<A, E>) => W; readonly onError: (error: E, _: Failure<A, E>) => X; readonly onDefect: (defect: unknown, _: Failure<A, E>) => Y; readonly onSuccess: (_: Success<A, E>) => Z; }): W | X | Y | Z; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L627)

Since v4.0.0