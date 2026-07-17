Package: `effect`<br />
Module: `Statement`<br />

## Statement.CompilerOptions

Callbacks used by `makeCompiler` to render dialect placeholders,
identifiers, insert helpers, update helpers, and custom SQL segments.

**Signature**

```ts
type CompilerOptions<C> = {
  readonly dialect: Dialect
  readonly placeholder: (index: number, value: unknown) => string
  readonly onIdentifier: (value: string, withoutTransform: boolean) => string
  readonly onRecordUpdate: (
    placeholders: string,
    alias: string,
    columns: string,
    values: ReadonlyArray<ReadonlyArray<unknown>>,
    returning: readonly [sql: string, params: ReadonlyArray<unknown>] | undefined
  ) => readonly [sql: string, params: ReadonlyArray<unknown>]
  readonly onCustom: (
    type: C,
    placeholder: (u: unknown) => string,
    withoutTransform: boolean
  ) => readonly [sql: string, params: ReadonlyArray<unknown>]
  readonly onInsert?: (
    columns: ReadonlyArray<string>,
    placeholders: string,
    values: ReadonlyArray<ReadonlyArray<unknown>>,
    returning: readonly [sql: string, params: ReadonlyArray<unknown>] | undefined
  ) => readonly [sql: string, binds: ReadonlyArray<unknown>]
  readonly onRecordUpdateSingle?: (
    columns: ReadonlyArray<string>,
    values: ReadonlyArray<unknown>,
    returning: readonly [sql: string, params: ReadonlyArray<unknown>] | undefined
  ) => readonly [sql: string, params: ReadonlyArray<unknown>]
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Statement.ts#L759)

Since v4.0.0