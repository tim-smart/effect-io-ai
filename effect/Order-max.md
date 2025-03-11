## max

Take the maximum of two values. If they are considered equal, the first argument is chosen.

**Signature**

```ts
declare const max: <A>(O: Order<A>) => { (that: A): (self: A) => A; (self: A, that: A): A; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Order.ts#L312)

Since v2.0.0