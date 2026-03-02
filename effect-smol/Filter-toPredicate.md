Package: `effect`<br />
Module: `Filter`<br />

## Filter.toPredicate

Converts a Filter into a predicate function.

**Signature**

```ts
declare const toPredicate: <A, Pass, Fail>(self: Filter<A, Pass, Fail>) => Predicate.Predicate<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Filter.ts#L215)

Since v4.0.0