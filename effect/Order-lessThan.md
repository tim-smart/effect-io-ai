Package: `effect`<br />
Module: `Order`<br />

## Order.lessThan

Test whether one value is _strictly less than_ another.

**Signature**

```ts
declare const lessThan: <A>(O: Order<A>) => { (that: A): (self: A) => boolean; (self: A, that: A): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Order.ts#L262)

Since v2.0.0