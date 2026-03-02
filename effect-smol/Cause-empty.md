Package: `effect`<br />
Module: `Cause`<br />

## Cause.empty

A `Cause` with an empty `reasons` array.

Represents the absence of failure. Combining any cause with `empty` via
`combine` returns the original cause unchanged.

**See**

- `combine`

**Signature**

```ts
declare const empty: Cause<never>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Cause.ts#L480)

Since v2.0.0