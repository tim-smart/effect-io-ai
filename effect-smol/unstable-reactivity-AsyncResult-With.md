Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.With

Rebuilds an `AsyncResult` with new success and failure types while preserving the variant of another result.

**Signature**

```ts
type With<R, A, E> = R extends Initial<infer _A, infer _E> ? Initial<A, E>
  : R extends Success<infer _A, infer _E> ? Success<A, E>
  : R extends Failure<infer _A, infer _E> ? Failure<A, E>
  : never
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L106)

Since v4.0.0