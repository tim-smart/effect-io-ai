Package: `effect`<br />
Module: `Newtype`<br />

## Newtype.Newtype.Key

Extracts the key literal type from a newtype.

**When to use**

Use to inspect or constrain a newtype's key in generic code.

**Signature**

```ts
type Key<N> = N extends Newtype<infer Key, unknown> ? Key : never
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Newtype.ts#L99)

Since v4.0.0