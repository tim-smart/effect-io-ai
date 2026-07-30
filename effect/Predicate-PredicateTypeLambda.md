Package: `effect`<br />
Module: `Predicate`<br />

## Predicate.PredicateTypeLambda

A `TypeLambda` for `Predicate`. This is used to support higher-kinded types
and allows `Predicate` to be used in generic contexts within the `effect` ecosystem.

**Signature**

```ts
export interface PredicateTypeLambda extends TypeLambda {
  readonly type: Predicate<this["Target"]>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Predicate.ts#L52)

Since v2.0.0