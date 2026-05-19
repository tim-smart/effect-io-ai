Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.failure

Creates a `Failure` result from a `Cause`, optionally preserving a previous success and marking the result as waiting.

**Signature**

```ts
declare const failure: <A, E = never>(cause: Cause.Cause<E>, options?: { readonly previousSuccess?: Option.Option<Success<A, E>> | undefined; readonly waiting?: boolean | undefined; }) => Failure<A, E>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L307)

Since v4.0.0