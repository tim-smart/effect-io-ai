Package: `effect`<br />
Module: `Filter`<br />

## Filter.composePassthrough

Composes two filters sequentially, passing the successful output of the first
filter to the second.

**Details**

If either filter fails, the returned filter fails with the original input
instead of the intermediate failure value.

**Signature**

```ts
declare const composePassthrough: { <InputL, PassL, PassR, FailR>(right: Filter<PassL, PassR, FailR>): <FailL>(left: Filter<InputL, PassL, FailL>) => Filter<InputL, PassR, InputL>; <InputL, PassL, FailL, PassR, FailR>(left: Filter<InputL, PassL, FailL>, right: Filter<PassL, PassR, FailR>): Filter<InputL, PassR, InputL>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L788)

Since v4.0.0