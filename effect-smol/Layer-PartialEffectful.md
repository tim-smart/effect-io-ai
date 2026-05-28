Package: `effect`<br />
Module: `Layer`<br />

## Layer.PartialEffectful

A utility type for creating partial mocks of services in testing.

**When to use**

Use to type partial test service implementations where only exercised
effectful members are stubbed.

**Details**

This type makes `Effect`, `Stream`, and `Channel` values and functions
returning them optional, while keeping non-effectful properties required.
This allows you to provide only the methods you need to test while leaving
others unimplemented.

**See**

- `mock` for creating a mock layer from a partial service implementation

**Signature**

```ts
type PartialEffectful<A> = Types.Simplify<
  & {
    [K in keyof A as A[K] extends AnyEffectOrStream ? K : never]?: A[K]
  }
  & {
    [K in keyof A as A[K] extends AnyEffectOrStream ? never : K]: A[K]
  }
>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Layer.ts#L2230)

Since v3.17.0