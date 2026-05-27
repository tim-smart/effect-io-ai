Package: `effect`<br />
Module: `Effect`<br />

## Effect.EffectTypeLambda

Type lambda used to represent `Effect` in higher-kinded APIs.

**Signature**

```ts
export interface EffectTypeLambda extends TypeLambda {
  readonly type: Effect<this["Target"], this["Out1"], this["Out2"]>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L210)

Since v2.0.0