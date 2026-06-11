Package: `effect`<br />
Module: `Atom`<br />

## Atom.mapResult

Maps the successful value inside an `AsyncResult` atom.

**Details**

Initial and failure states are preserved, and writable source atoms keep their
original write input type.

**Signature**

```ts
declare const mapResult: { <R extends Atom<AsyncResult.AsyncResult<any, any>>, B>(f: (_: AsyncResult.AsyncResult.Success<Type<R>>) => B): (self: R) => [R] extends [Writable<infer _, infer RW>] ? Writable<AsyncResult.AsyncResult<B, AsyncResult.AsyncResult.Failure<Type<R>>>, RW> : Atom<AsyncResult.AsyncResult<B, AsyncResult.AsyncResult.Failure<Type<R>>>>; <R extends Atom<AsyncResult.AsyncResult<any, any>>, B>(self: R, f: (_: AsyncResult.AsyncResult.Success<Type<R>>) => B): [R] extends [Writable<infer _, infer RW>] ? Writable<AsyncResult.AsyncResult<B, AsyncResult.AsyncResult.Failure<Type<R>>>, RW> : Atom<AsyncResult.AsyncResult<B, AsyncResult.AsyncResult.Failure<Type<R>>>>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Atom.ts#L1660)

Since v4.0.0