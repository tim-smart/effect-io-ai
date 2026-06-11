Package: `effect`<br />
Module: `Brand`<br />

## Brand.nominal

Returns a `Constructor` that **does not apply any runtime checks** and just
returns the provided value.

**When to use**

Use to create nominal types that allow distinguishing between two values
of the same type but with different meanings.

**See**

- `make` for constructing branded values with validation.
- `check` for constructing branded values from schema checks.

**Signature**

```ts
declare const nominal: <A extends Brand<any>>() => Constructor<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Brand.ts#L228)

Since v2.0.0