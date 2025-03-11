## drop

Drop a max number of elements from the start of an `Iterable`

**Note**. `n` is normalized to a non negative integer.

**Signature**

```ts
declare const drop: { (n: number): <A>(self: Iterable<A>) => Iterable<A>; <A>(self: Iterable<A>, n: number): Iterable<A>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Iterable.ts#L359)

Since v2.0.0