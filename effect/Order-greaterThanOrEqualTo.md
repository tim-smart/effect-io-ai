## greaterThanOrEqualTo

Test whether one value is _non-strictly greater than_ another.

**Signature**

```ts
declare const greaterThanOrEqualTo: <A>(O: Order<A>) => { (that: A): (self: A) => boolean; (self: A, that: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Order.ts#L292)

Since v2.0.0