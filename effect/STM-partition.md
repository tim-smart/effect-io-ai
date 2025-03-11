## partition

Feeds elements of type `A` to a function `f` that returns an effect.
Collects all successes and failures in a tupled fashion.

**Signature**

```ts
declare const partition: { <A, A2, E, R>(f: (a: A) => STM<A2, E, R>): (elements: Iterable<A>) => STM<[excluded: Array<E>, satisfying: Array<A2>], never, R>; <A, A2, E, R>(elements: Iterable<A>, f: (a: A) => STM<A2, E, R>): STM<[excluded: Array<E>, satisfying: Array<A2>], never, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L1433)

Since v2.0.0