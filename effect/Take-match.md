Package: `effect`<br />
Module: `Take`<br />

## Take.match

Folds over the failure cause, success value and end-of-stream marker to
yield a value.

**Signature**

```ts
declare const match: { <Z, E, Z2, A, Z3>(options: { readonly onEnd: () => Z; readonly onFailure: (cause: Cause.Cause<E>) => Z2; readonly onSuccess: (chunk: Chunk.Chunk<A>) => Z3; }): (self: Take<A, E>) => Z | Z2 | Z3; <A, E, Z, Z2, Z3>(self: Take<A, E>, options: { readonly onEnd: () => Z; readonly onFailure: (cause: Cause.Cause<E>) => Z2; readonly onSuccess: (chunk: Chunk.Chunk<A>) => Z3; }): Z | Z2 | Z3; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Take.ts#L191)

Since v2.0.0