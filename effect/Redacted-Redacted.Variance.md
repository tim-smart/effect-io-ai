Package: `effect`<br />
Module: `Redacted`<br />

## Redacted.Redacted.Variance

Type-level variance marker for `Redacted`.

**When to use**

Use when defining internals that need to preserve the covariant value type
carried by `Redacted`.

**Details**

This interface records the covariant value type carried by a `Redacted`
value and is not normally referenced directly by users.

**Signature**

```ts
export interface Variance<out A> {
    readonly [TypeId]: {
      readonly _A: Covariant<A>
    }
  }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Redacted.ts#L97)

Since v3.3.0