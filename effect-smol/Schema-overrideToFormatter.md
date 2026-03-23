Package: `effect`<br />
Module: `Schema`<br />

## Schema.overrideToFormatter

**Technical Note**

This annotation cannot be added to `Annotations.Bottom` because it would make
the schema invariant.

**Signature**

```ts
declare const overrideToFormatter: <S extends Top>(toFormatter: () => Formatter<S["Type"]>) => (self: S) => S["~rebuild.out"]
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L10297)

Since v4.0.0