Package: `effect`<br />
Module: `Order`<br />

## Order.OrderTypeLambda

Type lambda for the `Order` type class, used internally for higher-kinded type operations.

**When to use**

Use when you need to abstract over `Order` in higher-kinded type code.

**Details**

This is type-level only, has no runtime representation, and is used
internally by the Effect type system.

**Signature**

```ts
export interface OrderTypeLambda extends TypeLambda {
  readonly type: Order<this["Target"]>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Order.ts#L72)

Since v2.0.0