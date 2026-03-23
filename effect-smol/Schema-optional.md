Package: `effect`<br />
Module: `Schema`<br />

## Schema.optional

Schema type for an optional struct key that also accepts `undefined`.
Equivalent to `optionalKey<UndefinedOr<S>>`. Produced by `optional`.

**Signature**

```ts
export interface optional<S extends Top> extends optionalKey<UndefinedOr<S>> {}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1530)

Since v4.0.0