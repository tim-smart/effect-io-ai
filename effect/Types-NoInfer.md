Package: `effect`<br />
Module: `Types`<br />

## Types.NoInfer

Avoid inference on a specific parameter

**Signature**

```ts
type NoInfer<A> = [A][A extends any ? 0 : never]
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Types.ts#L273)

Since v2.0.0