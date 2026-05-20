Package: `effect`<br />
Module: `RequestResolver`<br />

## RequestResolver.RequestResolver.Variance

Variance marker carried by every `RequestResolver`.

**Details**

This marker preserves the request type accepted by the resolver for
Effect's type-level machinery. Users normally do not implement it directly.

**Signature**

```ts
export interface Variance<in A> {
    readonly [TypeId]: {
      readonly _A: Types.Contravariant<A>
    }
  }
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/RequestResolver.ts#L156)

Since v2.0.0