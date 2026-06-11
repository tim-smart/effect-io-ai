Package: `effect`<br />
Module: `Statement`<br />

## Statement.Compiler

Dialect-specific compiler that converts a SQL `Fragment` into SQL text and
bind parameters, with a no-transform variant.

**Signature**

```ts
export interface Compiler {
  readonly dialect: Dialect
  readonly compile: (
    statement: Fragment,
    withoutTransform: boolean
  ) => readonly [sql: string, params: ReadonlyArray<unknown>]
  readonly withoutTransform: this
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Statement.ts#L742)

Since v4.0.0