Package: `effect`<br />
Module: `Option`<br />

## Option.OptionUnifyIgnore

Marker interface used by Effect's `Unify` machinery for `Option` values.

**When to use**

Use when marking generic code so `Option` unification should be ignored.

**Details**

This supports type-level unification behavior for `Option`. Users normally
do not need to reference this interface directly.

**Signature**

```ts
export interface OptionUnifyIgnore {}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L211)

Since v2.0.0