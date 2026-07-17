Package: `effect`<br />
Module: `Pool`<br />

## Pool.isPool

Returns `true` if the specified value is a `Pool`, `false` otherwise.

**When to use**

Use to validate unknown values at runtime boundaries before treating them as
`Pool` values.

**Details**

This predicate narrows the input to `Pool<unknown, unknown>`.

**Signature**

```ts
declare const isPool: (u: unknown) => u is Pool<unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Pool.ts#L190)

Since v2.0.0