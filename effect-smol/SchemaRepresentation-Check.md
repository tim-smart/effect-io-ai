Package: `effect`<br />
Module: `SchemaRepresentation`<br />

## SchemaRepresentation.Check

A validation constraint attached to a type. Either a single `Filter`
or a `FilterGroup` combining multiple checks.

**See**

- `Filter`
- `FilterGroup`

**Signature**

```ts
type Check<M> = Filter<M> | FilterGroup<M>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/SchemaRepresentation.ts#L527)

Since v4.0.0