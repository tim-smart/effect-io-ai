Package: `effect`<br />
Module: `Schema`<br />

## Schema.Enum

Represents a schema derived from a TypeScript `const enum` or a plain enum object,
accepting any of its values.

**See**

- `Enum` for the constructor function.

**Signature**

```ts
export interface Enum<A extends { [x: string]: string | number }>
  extends Bottom<A[keyof A], A[keyof A], never, never, AST.Enum, Enum<A>>
{
  readonly "~rebuild.out": this
  readonly enums: A
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1950)

Since v4.0.0