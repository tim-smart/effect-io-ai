Package: `effect`<br />
Module: `Statement`<br />

## Statement.join

Creates a helper that joins SQL clauses with a literal separator, optionally
wrapping multiple clauses in parentheses and using a fallback for an empty
list.

**Signature**

```ts
declare const join: (lit: string, addParens?: boolean, fallback?: string) => (clauses: ReadonlyArray<string | Fragment>) => Fragment
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L657)

Since v4.0.0