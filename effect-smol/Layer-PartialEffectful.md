Package: `effect`<br />
Module: `Layer`<br />

## Layer.PartialEffectful

A utility type for creating partial mocks of services in testing.

This type makes Effect methods and Effect-returning functions optional,
while keeping non-Effect properties required. This allows you to provide
only the methods you need to test while leaving others unimplemented.

**Signature**

```ts
type PartialEffectful<A> = Types.Simplify<
  & {
    [
      K in keyof A as A[K] extends Effect<any, any, any> | ((...args: any) => Effect<any, any, any>) ? K
        : never
    ]?: A[K]
  }
  & {
    [
      K in keyof A as A[K] extends Effect<any, any, any> | ((...args: any) => Effect<any, any, any>) ? never
        : K
    ]: A[K]
  }
>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L1781)

Since v4.0.0