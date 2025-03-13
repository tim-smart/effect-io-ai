Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.take

Keep only a max number of elements from the start of an `Iterable`, creating a new `Iterable`.

**Note**. `n` is normalized to a non negative integer.

**Signature**

```ts
declare const take: { (n: number): <A>(self: Iterable<A>) => Iterable<A>; <A>(self: Iterable<A>, n: number): Iterable<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L305)

Since v2.0.0