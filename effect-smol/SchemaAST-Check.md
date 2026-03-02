Package: `effect`<br />
Module: `SchemaAST`<br />

## SchemaAST.Check

A validation check — either a single `Filter` or a composite
`FilterGroup`.

Stored in the `Checks` array on `Base.checks`.

**See**

- `Filter`
- `FilterGroup`

**Signature**

```ts
type Check<T> = Filter<T> | FilterGroup<T>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaAST.ts#L2538)

Since v4.0.0