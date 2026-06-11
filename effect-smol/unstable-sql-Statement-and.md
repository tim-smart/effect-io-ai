Package: `effect`<br />
Module: `Statement`<br />

## Statement.and

Combines clauses with `AND`, parenthesizing multiple clauses and returning
`1=1` when the list is empty.

**Signature**

```ts
declare const and: (clauses: ReadonlyArray<string | Fragment>) => Fragment
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L692)

Since v4.0.0