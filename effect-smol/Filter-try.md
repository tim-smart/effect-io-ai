Package: `effect`<br />
Module: `Filter`<br />

## Filter.try

Creates a Filter that tries to apply a function and returns `fail` on
error.

**Signature**

```ts
declare const try: <Input, Output>(f: (input: Input) => Output) => Filter<Input, Output>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L166)

Since v4.0.0