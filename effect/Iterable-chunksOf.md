Package: `effect`<br />
Module: `Iterable`<br />

## Iterable.chunksOf

Splits an `Iterable` into length-`n` pieces. The last piece will be shorter if `n` does not evenly divide the length of
the `Iterable`.

**Signature**

```ts
declare const chunksOf: { (n: number): <A>(self: Iterable<A>) => Iterable<Array<A>>; <A>(self: Iterable<A>, n: number): Iterable<Array<A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L562)

Since v2.0.0