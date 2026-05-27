Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.matchWithError

Pattern matches a result, handling successes and initials directly while splitting failures into typed errors or squashed non-error causes passed to `onDefect`.

**Signature**

```ts
declare const matchWithError: { <A, E, W, X, Y, Z>(options: { readonly onInitial: (_: Initial<A, E>) => W; readonly onError: (error: E, _: Failure<A, E>) => X; readonly onDefect: (defect: unknown, _: Failure<A, E>) => Y; readonly onSuccess: (_: Success<A, E>) => Z; }): (self: AsyncResult<A, E>) => W | X | Y | Z; <A, E, W, X, Y, Z>(self: AsyncResult<A, E>, options: { readonly onInitial: (_: Initial<A, E>) => W; readonly onError: (error: E, _: Failure<A, E>) => X; readonly onDefect: (defect: unknown, _: Failure<A, E>) => Y; readonly onSuccess: (_: Success<A, E>) => Z; }): W | X | Y | Z; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L610)

Since v4.0.0