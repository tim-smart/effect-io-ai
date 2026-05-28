Package: `effect`<br />
Module: `Schema`<br />

## Schema.Enum

Type-level representation returned by `Enum`.

**Signature**

```ts
export interface Enum<A extends { [x: string]: string | number }>
  extends Bottom<A[keyof A], A[keyof A], never, never, AST.Enum, Enum<A>>
{
  readonly enums: A
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2424)

Since v4.0.0