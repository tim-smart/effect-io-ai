Package: `effect`<br />
Module: `Schema`<br />

## Schema.suspend

Creates a suspended schema that defers evaluation until needed. This is
essential for creating recursive schemas where a schema references itself,
preventing infinite recursion during schema definition.

**Signature**

```ts
declare const suspend: <S extends Top>(f: () => S) => suspend<S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2598)

Since v4.0.0