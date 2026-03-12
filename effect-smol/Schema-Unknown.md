Package: `effect`<br />
Module: `Schema`<br />

## Schema.Unknown

Schema for the `unknown` type. Accepts any value without validation.

**See**

- `Unknown` for the schema value.

**Signature**

```ts
export interface Unknown extends Bottom<unknown, unknown, never, never, AST.Unknown, Unknown> {
  readonly "~rebuild.out": this
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2027)

Since v4.0.0