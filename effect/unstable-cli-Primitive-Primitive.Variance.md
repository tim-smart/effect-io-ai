Package: `effect`<br />
Module: `Primitive`<br />

## Primitive.Primitive.Variance

Type-level variance marker for the value parsed by a `Primitive`.

**Signature**

```ts
export interface Variance<out A> {
    readonly [TypeId]: {
      readonly _A: Covariant<A>
    }
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Primitive.ts#L77)

Since v4.0.0