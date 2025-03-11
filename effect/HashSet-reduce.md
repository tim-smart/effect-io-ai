## reduce

Reduces the specified state over the values of the `HashSet`.

**Signature**

```ts
declare const reduce: { <A, Z>(zero: Z, f: (accumulator: Z, value: A) => Z): (self: HashSet<A>) => Z; <A, Z>(self: HashSet<A>, zero: Z, f: (accumulator: Z, value: A) => Z): Z; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/HashSet.ts#L271)

Since v2.0.0