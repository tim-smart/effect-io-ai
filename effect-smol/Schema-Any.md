Package: `effect`<br />
Module: `Schema`<br />

## Schema.Any

Schema for the `any` type. Accepts any value without validation.

**See**

- `Any` for the schema value.

**Signature**

```ts
export interface Any extends Bottom<any, any, never, never, AST.Any, Any> {
  readonly "~rebuild.out": this
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L2009)

Since v4.0.0