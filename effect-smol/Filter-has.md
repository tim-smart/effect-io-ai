Package: `effect`<br />
Module: `Filter`<br />

## Filter.has

Creates a `Filter` that passes inputs whose `has(key)` method returns
`true` for the specified key.

**When to use**

Use to keep inputs that expose a `has` method, such as `Set` or `Map`, when
they contain a required key.

**See**

- `fromPredicate` for custom predicate filters or inputs without a
`has` method
- `Predicate.hasProperty` for guarding property presence instead of
calling an input's `has` method

**Signature**

```ts
declare const has: <K>(key: K) => <Input extends { readonly has: (key: K) => boolean; }>(input: Input) => Result.Result<Input, Input>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L316)

Since v4.0.0