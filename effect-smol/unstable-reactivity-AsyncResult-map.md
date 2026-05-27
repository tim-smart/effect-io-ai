Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.map

Maps the success value of an `AsyncResult`, also mapping any previous success stored in a failure while leaving initial results unchanged.

**Signature**

```ts
declare const map: { <A, B>(f: (a: A) => B): <E>(self: AsyncResult<A, E>) => AsyncResult<B, E>; <E, A, B>(self: AsyncResult<A, E>, f: (a: A) => B): AsyncResult<B, E>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L521)

Since v4.0.0