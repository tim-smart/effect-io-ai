## greaterThan

Test whether one value is _strictly greater than_ another.

**Signature**

```ts
declare const greaterThan: <A>(O: Order<A>) => { (that: A): (self: A) => boolean; (self: A, that: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Order.ts#L272)

Since v2.0.0