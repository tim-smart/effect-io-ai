Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.match

Pattern matches an `AsyncResult` by calling the handler for `Initial`, `Failure`, or `Success`.

**Signature**

```ts
declare const match: { <A, E, X, Y, Z>(options: { readonly onInitial: (_: Initial<A, E>) => X; readonly onFailure: (_: Failure<A, E>) => Y; readonly onSuccess: (_: Success<A, E>) => Z; }): (self: AsyncResult<A, E>) => X | Y | Z; <A, E, X, Y, Z>(self: AsyncResult<A, E>, options: { readonly onInitial: (_: Initial<A, E>) => X; readonly onFailure: (_: Failure<A, E>) => Y; readonly onSuccess: (_: Success<A, E>) => Z; }): X | Y | Z; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L555)

Since v4.0.0