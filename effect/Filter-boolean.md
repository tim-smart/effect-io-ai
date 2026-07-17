Package: `effect`<br />
Module: `Filter`<br />

## Filter.boolean

A predefined filter that only passes through boolean values.

**When to use**

Use when accepting an unknown input only if it is already a boolean and you
want a `Filter` result rather than a plain predicate result.

**Details**

Implemented with `fromPredicate(Predicate.isBoolean)`, so `true` and `false`
succeed and non-booleans fail with the original input.

**See**

- `Predicate.isBoolean` for the underlying guard
- `fromPredicate` for custom predicate-based filters

**Signature**

```ts
declare const boolean: Filter<unknown, boolean, unknown>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Filter.ts#L384)

Since v4.0.0