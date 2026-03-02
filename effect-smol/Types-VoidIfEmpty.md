Package: `effect`<br />
Module: `Types`<br />

## Types.VoidIfEmpty

Conditional type that returns `void` if `S` is an empty object type,
otherwise returns `S`.

**Signature**

```ts
type VoidIfEmpty<S> = MatchRecord<S, void, S>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Types.ts#L739)

Since v4.0.0