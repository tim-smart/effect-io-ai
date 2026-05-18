Package: `effect`<br />
Module: `Effect`<br />

## Effect.All.IsDiscard

Detects whether `Effect.all` should discard collected values.

**Signature**

```ts
type IsDiscard<A> = [Extract<A, { readonly discard: true }>] extends [
    never
  ] ? false
    : true
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Effect.ts#L368)

Since v2.0.0