Package: `effect`<br />
Module: `Param`<br />

## Param.Param.Variance

Variance and pipeability marker carried by every `Param` value.

**Signature**

```ts
export interface Variance<out A> extends Pipeable {
    readonly [TypeId]: {
      readonly _A: Covariant<A>
    }
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Param.ts#L155)

Since v4.0.0