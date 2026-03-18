Package: `effect`<br />
Module: `Schema`<br />

## Schema.Annotations.Documentation

Extends `Augment` with type-parametric `default` and `examples` fields.

**Signature**

```ts
export interface Documentation<T> extends Augment {
    readonly default?: T | undefined
    readonly examples?: ReadonlyArray<T> | undefined
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L11209)

Since v4.0.0