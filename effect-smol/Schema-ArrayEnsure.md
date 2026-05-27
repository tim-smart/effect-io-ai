Package: `effect`<br />
Module: `Schema`<br />

## Schema.ArrayEnsure

Schema interface returned by `ArrayEnsure`, which normalizes a single item or
an array of items into a readonly array.

**When to use**

Use as the schema type returned by `ArrayEnsure` when generic code needs to
retain the original item schema.

**Details**

The schema decodes from `S` or `Schema.Array(S)` and produces
`ReadonlyArray<S["Type"]>`.

**See**

- `ArrayEnsure` for constructing this schema type

**Signature**

```ts
export interface ArrayEnsure<S extends Top> extends decodeTo<$Array<toType<S>>, Union<readonly [S, $Array<S>]>> {
  readonly "Rebuild": ArrayEnsure<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3883)

Since v3.10.0