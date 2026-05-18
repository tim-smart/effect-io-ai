Package: `effect`<br />
Module: `Statement`<br />

## Statement.statement

Builds a `Statement` from template strings and arguments, preserving
fragments and helper segments while converting ordinary interpolated values
into bound parameters.

**Signature**

```ts
declare const statement: <A = Row>(acquirer: Acquirer, compiler: Compiler, strings: TemplateStringsArray, args: Array<any>, spanAttributes: ReadonlyArray<readonly [string, unknown]>, transformRows: (<A extends object>(row: ReadonlyArray<A>) => ReadonlyArray<A>) | undefined) => Statement<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L620)

Since v4.0.0