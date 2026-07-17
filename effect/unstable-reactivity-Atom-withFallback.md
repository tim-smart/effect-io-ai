Package: `effect`<br />
Module: `Atom`<br />

## Atom.withFallback

Uses a fallback `AsyncResult` atom while the primary atom is `Initial`, marking the fallback result as waiting until the primary atom produces a non-initial result.

**Signature**

```ts
declare const withFallback: { <E2, A2>(fallback: Atom<AsyncResult.AsyncResult<A2, E2>>): <R extends Atom<AsyncResult.AsyncResult<any, any>>>(self: R) => [R] extends [Writable<infer _, infer RW>] ? Writable<AsyncResult.AsyncResult<AsyncResult.AsyncResult.Success<Type<R>> | A2, AsyncResult.AsyncResult.Failure<Type<R>> | E2>, RW> : Atom<AsyncResult.AsyncResult<AsyncResult.AsyncResult.Success<Type<R>> | A2, AsyncResult.AsyncResult.Failure<Type<R>> | E2>>; <R extends Atom<AsyncResult.AsyncResult<any, any>>, A2, E2>(self: R, fallback: Atom<AsyncResult.AsyncResult<A2, E2>>): [R] extends [Writable<infer _, infer RW>] ? Writable<AsyncResult.AsyncResult<AsyncResult.AsyncResult.Success<Type<R>> | A2, AsyncResult.AsyncResult.Failure<Type<R>> | E2>, RW> : Atom<AsyncResult.AsyncResult<AsyncResult.AsyncResult.Success<Type<R>> | A2, AsyncResult.AsyncResult.Failure<Type<R>> | E2>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Atom.ts#L1386)

Since v4.0.0