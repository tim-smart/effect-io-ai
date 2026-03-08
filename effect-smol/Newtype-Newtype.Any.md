Package: `effect`<br />
Module: `Newtype`<br />

## Newtype.Newtype.Any

A type that matches any `Newtype`, useful as a generic constraint:
`<N extends Newtype.Any>`.

**See**

- `Newtype` — the base tagged interface

**Signature**

```ts
type Any = Newtype<any, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Newtype.ts#L121)

Since v4.0.0