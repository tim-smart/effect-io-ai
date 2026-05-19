Package: `effect`<br />
Module: `AsyncResult`<br />

## AsyncResult.flatMap

Flat maps a success result with a function returning another `AsyncResult`, leaves initial results unchanged, and preserves failure causes while remapping stored previous successes when possible.

**Signature**

```ts
declare const flatMap: { <A, E, B, E2>(f: (a: A, prev: Success<A, E>) => AsyncResult<A, E2>): (self: AsyncResult<A, E>) => AsyncResult<B, E | E2>; <E, A, B, E2>(self: AsyncResult<A, E>, f: (a: A, prev: Success<A, E>) => AsyncResult<B, E2>): AsyncResult<B, E | E2>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/AsyncResult.ts#L523)

Since v4.0.0