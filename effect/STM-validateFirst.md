Package: `effect`<br />
Module: `STM`<br />

## STM.validateFirst

Feeds elements of type `A` to `f` until it succeeds. Returns first success
or the accumulation of all errors.

**Signature**

```ts
declare const validateFirst: { <A, B, E, R>(f: (a: A) => STM<B, E, R>): (elements: Iterable<A>) => STM<B, Array<E>, R>; <A, B, E, R>(elements: Iterable<A>, f: (a: A) => STM<B, E, R>): STM<B, Array<E>, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1889)

Since v2.0.0