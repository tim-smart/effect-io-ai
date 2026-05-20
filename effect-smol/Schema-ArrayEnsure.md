Package: `effect`<br />
Module: `Schema`<br />

## Schema.ArrayEnsure

Schema interface returned by `ArrayEnsure`, which normalizes a single item or
an array of items into a readonly array.

**Details**

The schema decodes from `S` or `Schema.Array(S)` and produces
`ReadonlyArray<S["Type"]>`.

**Signature**

```ts
export interface ArrayEnsure<S extends Top> extends decodeTo<$Array<toType<S>>, Union<readonly [S, $Array<S>]>> {
  readonly "Rebuild": ArrayEnsure<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L3787)

Since v3.10.0