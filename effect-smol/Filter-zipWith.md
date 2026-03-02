Package: `effect`<br />
Module: `Filter`<br />

## Filter.zipWith

Combines two filters and applies a function to their results.

Both filters must succeed (not return `fail`) for the combination to succeed.
If both filters pass, their outputs are combined using the provided function.

**Signature**

```ts
declare const zipWith: { <PassL, InputR, PassR, FailR, A>(right: Filter<InputR, PassR, FailR>, f: (left: PassL, right: PassR) => A): <InputL, FailL>(left: Filter<InputL, PassL, FailL>) => Filter<InputL & InputR, A, FailL | FailR>; <InputL, PassL, FailL, InputR, PassR, FailR, A>(left: Filter<InputL, PassL, FailL>, right: Filter<InputR, PassR, FailR>, f: (left: PassL, right: PassR) => A): Filter<InputL & InputR, A, FailL | FailR>; }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L411)

Since v4.0.0