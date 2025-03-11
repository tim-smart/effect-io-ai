## lessThanOrEqualTo

Test whether one value is _non-strictly less than_ another.

**Signature**

```ts
declare const lessThanOrEqualTo: <A>(O: Order<A>) => { (that: A): (self: A) => boolean; (self: A, that: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Order.ts#L282)

Since v2.0.0