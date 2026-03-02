Package: `effect`<br />
Module: `Array`<br />

## Array.ReadonlyArrayTypeLambda

Type lambda for `ReadonlyArray`, used for higher-kinded type operations.

**Signature**

```ts
export interface ReadonlyArrayTypeLambda extends TypeLambda {
  readonly type: ReadonlyArray<this["Target"]>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Array.ts#L130)

Since v2.0.0