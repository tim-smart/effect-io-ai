Package: `effect`<br />
Module: `Option`<br />

## Option.OptionTypeLambda

Type lambda interface for higher-kinded type encodings with `Option`.

**Signature**

```ts
export interface OptionTypeLambda extends TypeLambda {
  readonly type: Option<this["Target"]>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Option.ts#L275)

Since v2.0.0