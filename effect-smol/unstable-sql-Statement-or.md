Package: `effect`<br />
Module: `Statement`<br />

## Statement.or

Combines clauses with `OR`, parenthesizing multiple clauses and returning
`1=1` when the list is empty.

**Signature**

```ts
declare const or: (clauses: ReadonlyArray<string | Fragment>) => Fragment
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L705)

Since v4.0.0