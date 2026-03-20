Package: `effect`<br />
Module: `Schema`<br />

## Schema.Null

Schema for the `null` literal. Validates that the input is strictly `null`.

**See**

- `Null` for the schema value.

**Signature**

```ts
export interface Null extends Bottom<null, null, never, never, AST.Null, Null> {
  readonly "~rebuild.out": this
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2069)

Since v4.0.0