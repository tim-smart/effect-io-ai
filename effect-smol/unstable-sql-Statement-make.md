Package: `effect`<br />
Module: `Statement`<br />

## Statement.make

Creates a cached SQL statement constructor from a connection acquirer,
compiler, tracing attributes, and optional row transformation function.

**Signature**

```ts
declare const make: (acquirer: Acquirer, compiler: Compiler, spanAttributes: ReadonlyArray<readonly [string, unknown]>, transformRows: (<A extends object>(row: ReadonlyArray<A>) => ReadonlyArray<A>) | undefined) => Constructor
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L538)

Since v4.0.0