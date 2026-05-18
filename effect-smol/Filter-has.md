Package: `effect`<br />
Module: `Filter`<br />

## Filter.has

Creates a `Filter` that passes inputs whose `has(key)` method returns
`true` for the specified key.

**Signature**

```ts
declare const has: <K>(key: K) => <Input extends { readonly has: (key: K) => boolean; }>(input: Input) => Result.Result<Input, Input>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L299)

Since v4.0.0