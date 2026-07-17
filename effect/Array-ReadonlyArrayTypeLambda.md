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

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Array.ts#L57)

Since v2.0.0