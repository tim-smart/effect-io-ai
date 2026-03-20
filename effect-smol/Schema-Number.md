Package: `effect`<br />
Module: `Schema`<br />

## Schema.Number

Schema for `number` values, including `NaN`, `Infinity`, and `-Infinity`.

**See**

- `Number` for the schema value.

**Signature**

```ts
export interface Number extends Bottom<number, number, never, never, AST.Number, Number> {
  readonly "~rebuild.out": this
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2122)

Since v4.0.0