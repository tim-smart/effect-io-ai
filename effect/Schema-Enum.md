Package: `effect`<br />
Module: `Schema`<br />

## Schema.Enum

Type-level representation returned by `Enum`.

**Signature**

```ts
export interface Enum<A extends { [x: string]: string | number }>
  extends Bottom<A[keyof A], A[keyof A], never, never, SchemaAST.Enum, Enum<A>>
{
  readonly enums: A
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L2878)

Since v4.0.0