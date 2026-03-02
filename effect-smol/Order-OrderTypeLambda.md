Package: `effect`<br />
Module: `Order`<br />

## Order.OrderTypeLambda

Type lambda for the `Order` type class, used internally for higher-kinded type operations.

When to use this:
- When working with type-level operations that require higher-kinded types
- When implementing generic type classes that work with orders

Behavior:
- Type-level only: no runtime representation
- Used internally by the Effect type system

**Signature**

```ts
export interface OrderTypeLambda extends TypeLambda {
  readonly type: Order<this["Target"]>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Order.ts#L113)

Since v2.0.0