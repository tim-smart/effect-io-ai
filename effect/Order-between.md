## between

Test whether a value is between a minimum and a maximum (inclusive).

**Signature**

```ts
declare const between: <A>(O: Order<A>) => { (options: { minimum: A; maximum: A; }): (self: A) => boolean; (self: A, options: { minimum: A; maximum: A; }): boolean; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Order.ts#L357)

Since v2.0.0