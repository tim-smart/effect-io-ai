Package: `effect`<br />
Module: `Resource`<br />

## Resource.isResource

Returns `true` if the specified value is a `Resource`.

**When to use**

Use to validate unknown values at runtime boundaries before treating them as
`Resource` values.

**Details**

This predicate narrows the input to `Resource<unknown, unknown>`.

**Signature**

```ts
declare const isResource: (u: unknown) => u is Resource<unknown, unknown>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Resource.ts#L87)

Since v4.0.0