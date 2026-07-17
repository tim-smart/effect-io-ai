Package: `effect`<br />
Module: `Option`<br />

## Option.OptionTypeLambda

Type lambda interface for higher-kinded type encodings with `Option`.

**When to use**

Use when defining higher-kinded abstractions that must accept optional-value
types as one of their type-lambda inputs.

**Signature**

```ts
export interface OptionTypeLambda extends TypeLambda {
  readonly type: Option<this["Target"]>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L224)

Since v2.0.0