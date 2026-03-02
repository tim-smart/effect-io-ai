Package: `effect`<br />
Module: `Filter`<br />

## Filter.composePassthrough

Composes two filters sequentially, allowing the output of the first to be
passed to the second.

This is similar to `compose`, but it will always fail with the original
input.

**Signature**

```ts
declare const composePassthrough: { <InputL, PassL, PassR, FailR>(right: Filter<PassL, PassR, FailR>): <FailL>(left: Filter<InputL, PassL, FailL>) => Filter<InputL, PassR, InputL>; <InputL, PassL, FailL, PassR, FailR>(left: Filter<InputL, PassL, FailL>, right: Filter<PassL, PassR, FailR>): Filter<InputL, PassR, InputL>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L580)

Since v4.0.0