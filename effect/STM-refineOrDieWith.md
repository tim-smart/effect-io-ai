Package: `effect`<br />
Module: `STM`<br />

## STM.refineOrDieWith

Keeps some of the errors, and terminates the fiber with the rest, using the
specified function to convert the `E` into a `Throwable`.

**Signature**

```ts
declare const refineOrDieWith: { <E, E2>(pf: (error: E) => Option.Option<E2>, f: (error: E) => unknown): <A, R>(self: STM<A, E, R>) => STM<A, E2, R>; <A, E, R, E2>(self: STM<A, E, R>, pf: (error: E) => Option.Option<E2>, f: (error: E) => unknown): STM<A, E2, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1558)

Since v2.0.0